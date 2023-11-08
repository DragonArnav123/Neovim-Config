vim.g.neoterm_size = tostring(0.4 * vim.o.columns)
vim.g.neoterm_default_mod = 'botright vertical'

local Input = require("nui.input")
local event = require("nui.utils.autocmd").event

local stored_task_command = nil

local trigger_set_command_input = function(callback_fn)
  local input_component = Input({
    position = "50%",
    size = {
      width = 50,
    },
    border = {
      style = "single",
      text = {
        top = "Commmand to run:",
        top_align = "center",
      },
    },
    win_options = {
      winhighlight = "Normal:Normal,FloatBorder:Normal",
    },
  }, {
    prompt = "> ",
    default_value = "",
    on_submit = function(value)
      stored_task_command = value
      callback_fn();
    end,
  })

  input_component:mount()
  input_component:on(event.BufLeave, function()
    input_component:unmount()
  end)
end

vim.api.nvim_create_user_command('TaskPersist', function(input)
  local execute = function(cmd)
    vim.api.nvim_command(":1Tclear")
    vim.api.nvim_command(":1T " .. cmd)
  end

  if stored_task_command == nil then
    -- Load up the Input component to get a value, then run it
    trigger_set_command_input(function()
      execute(stored_task_command)
    end)
  else
    execute(stored_task_command)
  end
end, { nargs = '*' })
