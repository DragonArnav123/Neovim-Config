-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\DESHPA~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1693350652\\share\\lua\\5.1\\?.lua;C:\\Users\\DESHPA~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1693350652\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\DESHPA~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1693350652\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\DESHPA~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1693350652\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\DESHPA~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1693350652\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "C:\\Users\\Deshpande\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "C:\\Users\\Deshpande\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Deshpande\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  ["feline.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Deshpande\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\feline.nvim",
    url = "https://github.com/feline-nvim/feline.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Deshpande\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "C:\\Users\\Deshpande\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  ["gruvbox-baby"] = {
    loaded = true,
    path = "C:\\Users\\Deshpande\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gruvbox-baby",
    url = "https://github.com/luisiacc/gruvbox-baby"
  },
  harpoon = {
    loaded = true,
    path = "C:\\Users\\Deshpande\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Deshpande\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  neoterm = {
    loaded = true,
    path = "C:\\Users\\Deshpande\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neoterm",
    url = "https://github.com/kassio/neoterm"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Deshpande\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\Users\\Deshpande\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Deshpande\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Deshpande\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ripgrep = {
    loaded = true,
    path = "C:\\Users\\Deshpande\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\ripgrep",
    url = "https://github.com/BurntSushi/ripgrep"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Deshpande\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Deshpande\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  undotree = {
    loaded = true,
    path = "C:\\Users\\Deshpande\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\undotree",
    url = "https://github.com/mbill/undotree"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "C:\\Users\\Deshpande\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "C:\\Users\\Deshpande\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  vimtex = {
    config = { "\27LJ\2\n�\2\0\0\2\0\v\0\0216\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\1\0'\1\6\0=\1\5\0006\0\0\0009\0\1\0'\1\b\0=\1\a\0006\0\0\0009\0\1\0'\1\n\0=\1\t\0K\0\1\0\r--unique(vimtex_view_general_options_latexmk&--unique file:@pdf\\#src:@line@tex vimtex_view_general_options\bnvr\29vimtex_compiler_progname\24tex_comment_nospell\vokular\31vimtex_view_general_viewer\6g\bvim\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "C:\\Users\\Deshpande\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vimtex",
    url = "https://github.com/lervag/vimtex"
  }
}

time([[Defining packer_plugins]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType tex ++once lua require("packer.load")({'vimtex'}, { ft = "tex" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: C:\Users\Deshpande\AppData\Local\nvim-data\site\pack\packer\opt\vimtex\ftdetect\cls.vim]], true)
vim.cmd [[source C:\Users\Deshpande\AppData\Local\nvim-data\site\pack\packer\opt\vimtex\ftdetect\cls.vim]]
time([[Sourcing ftdetect script at: C:\Users\Deshpande\AppData\Local\nvim-data\site\pack\packer\opt\vimtex\ftdetect\cls.vim]], false)
time([[Sourcing ftdetect script at: C:\Users\Deshpande\AppData\Local\nvim-data\site\pack\packer\opt\vimtex\ftdetect\tex.vim]], true)
vim.cmd [[source C:\Users\Deshpande\AppData\Local\nvim-data\site\pack\packer\opt\vimtex\ftdetect\tex.vim]]
time([[Sourcing ftdetect script at: C:\Users\Deshpande\AppData\Local\nvim-data\site\pack\packer\opt\vimtex\ftdetect\tex.vim]], false)
time([[Sourcing ftdetect script at: C:\Users\Deshpande\AppData\Local\nvim-data\site\pack\packer\opt\vimtex\ftdetect\tikz.vim]], true)
vim.cmd [[source C:\Users\Deshpande\AppData\Local\nvim-data\site\pack\packer\opt\vimtex\ftdetect\tikz.vim]]
time([[Sourcing ftdetect script at: C:\Users\Deshpande\AppData\Local\nvim-data\site\pack\packer\opt\vimtex\ftdetect\tikz.vim]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
