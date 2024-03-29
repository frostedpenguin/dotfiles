--[[ jlvim is the global options object
Linters should be

filled in as strings with either
a global executable or a path to
an executable
]]

lvim.builtin.dap.active = true
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT
local dap_install = require("dap-install")
dap_install.config("chrome", {})

--langmap
vim.opt.listchars.eol = "»"
-- vim.opt.listchars.tab = "."
-- vim.opt.listchars = {
--   tab = "»",
--   trail = "·",
--   extends = "»",
--   precedes = "«",
--   nbsp = "␣",
--   eol = "↲",
-- }
vim.o.langmap =
	[[ΑA,ΒB,ΨC,ΔD,ΕE,ΦF,ΓG,ΗH,ΙI,ΞJ,ΚK,ΛL,ΜM,ΝN,ΟO,ΠP,QQ,ΡR,ΣS,ΤT,ΘU,ΩV,WW,ΧX,ΥY,ΖZ,αa,βb,ψc,δd'
  ,εe,φf,γg,ηh,ιi,ξj,κk,λl,μm,νn,οo,πp,qq,ρr,σs,τt,θu,ωv,ςw,χx,υy,ζz]]
-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "tokyonight"
-- vim.g:tokyonight_italic_functions(1)
-- vim.g.material_style = "palenight"
-- lvim.colorscheme = "tokyonight"
-- vim.g.tokyonight_style="night"
-- haskell_mode = require("haskell_mode")
-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
lvim.keys.normal_mode["cs"] = ":WhichKey z= <enter>"
lvim.keys.normal_mode["ζ="] = ":WhichKey z= <enter>"
lvim.keys.normal_mode["L"] = ":bnext<cr>"
lvim.keys.normal_mode["H"] = ":bprev<cr>"
lvim.keys.normal_mode["Λ"] = ":bnext<cr>"
lvim.keys.normal_mode["Η"] = ":bprev<cr>"
lvim.keys.normal_mode["$"] = "g_"
lvim.keys.visual_mode["$"] = "g_"
lvim.keys.normal_mode["ω"] = "v"
lvim.keys.normal_mode["V"] = "vg_"
lvim.keys.normal_mode["vv"] = "^vg_"
lvim.keys.normal_mode["Ω"] = "vg_"
lvim.keys.normal_mode["ωω"] = "^vg_"
lvim.keys.insert_mode["ξκ"] = "<Esc>"
lvim.keys.insert_mode["jk"] = "<Esc>"
lvim.keys.insert_mode["kj"] = "<Esc>"
lvim.keys.normal_mode["<C-t>"] = ":ToggleTerm <cr>"
local comment_of_buf = function()
	return vim.cmd("echo split(&commentstring, '%s')[0]")
end
---@diagnostic disable-next-line: missing-parameter
lvim.keys.normal_mode["tt"] = "o" .. vim.split(vim.bo.commentstring, "%%s")[1] .. " 🔧 TODO:"

-- add your own keymapping
-- vim.g["copilot_no_tab_map"] = "v:true"
-- vim.g["copilot_assume_mapped"] = "v:true"
-- unmap a default keymapping lvim.keys.normal_mode["<C-Up>"] = false
-- edit a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>"
lvim.keys.normal_mode["<f6>"] = ":set spell <enter>"
vim.g.tokyonight_style = "night"
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_italic_comments = true
-- vim.g.tokyonight_colors = { hint = "gray" }

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }

-- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["n"] = { "]s", "Next misspell" }
lvim.builtin.which_key.mappings["N"] = { "[s", "Previous misspell" }
lvim.builtin.which_key.mappings["n"] = { "]s", "Next misspell" }
lvim.builtin.which_key.mappings["N"] = { "[s", "Previous misspell" }
lvim.builtin.which_key.mappings["t"] = { ":ToggleTerm <enter>", "terminal" }
lvim.builtin.which_key.mappings["la"] = { ":CodeActionMenu <enter>", "code actions" }
lvim.builtin.which_key.mappings["S"] = { ":WhichKey z= <enter>", "spelling suggestions" }
lvim.builtin.which_key.mappings["ς"] = { ":w<cr>", "saving file" }
lvim.builtin.which_key.mappings["p"] = { '"_dP', "pasting deleted register" }
-- lvim.builtin.which_key.mappings["m"] = {
--   name = "+Spelling",
--   n = { "]s", "Next misspell" },
--   N = { "]s", "Previous misspell" },
-- }

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
-- lvim.builtin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
	"bash",
	"c",
	"javascript",
	"json",
	"lua",
	"python",
	"typescript",
	"tsx",
	"css",
	"rust",
	"java",
	"yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- generic LSP settings

-- ---@usage disable automatic installation of servers
-- lvim.lsp.automatic_servers_installation = false

-- ---@usage Select which servers should be configured manually. Requires `:LvimCacheReset` to take effect.
-- See the full default list `:lua print(vim.inspect(lvim.lsp.override))`
-- vim.list_extend(lvim.lsp.override, { "pyright" })

-- ---@usage setup a server -- see: https://www.lunarvim.org/languages/#overriding-the-default-configuration
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pylsp", opts)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ command = "stylua", filetypes = { "lua" } },
	{ command = "fixjson", filetypes = { "json" } },
	{
		command = "prettier",
		filetypes = { "javascript", "typescript", "typescriptreact" },
		extra_args = { "--single-quote", "true" },
	},
	--   {
	--     -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
	--     command = "prettier",
	--     ---@usage arguments to pass to the formatter
	--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
	--     extra_args = { "--print-with", "100" },
	--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
	--     filetypes = { "typescript", "typescriptreact" },
	--   },
})

-- -- set additional linters
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
	--   { command = "flake8", filetypes = { "python" } },
	{ command = "luacheck", filetypes = { "lua" }, extra_args = { "--globals", "vim lvim" } },
	--   {
	--     -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
	--     command = "shellcheck",
	--     ---@usage arguments to pass to the formatter
	--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
	--     extra_args = { "--severity", "warning" },
	--   },
	{
		command = "eslint",
		---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
		filetypes = { "javascript", "typescript", "typescriptreact" },
	},
})
lvim.plugins = {
	-- { "folke/tokyonight.nvim" },
	{
		"folke/trouble.nvim",
		cmd = "TroubleToggle",
	},
	{ "tpope/vim-surround" },
	{
		"iamcco/markdown-preview.nvim",
		run = "cd app && yarn install",
		ft = { "markdown" },
	},
	{
		"vim-test/vim-test",
	},
	{
		"tpope/vim-eunuch",
	},
	{
		"jalvesaq/Nvim-R",
	},
	{
		"lervag/vimtex",
	},
	{ "tpope/vim-repeat" },
	{ "folke/lsp-colors.nvim" },
	{ "marko-cerovac/material.nvim" },
	{ "ggandor/lightspeed.nvim" },
	{ "andweeb/presence.nvim" },
	{ "dylon/vim-antlr" },
	-- {
	-- 	"Maan2003/lsp_lines.nvim",
	-- 	config = function()
	-- 		require("lsp_lines").register_lsp_virtual_lines()
	-- 	end,
	-- },
	-- {
	-- 	"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
	-- 	config = function() require("lsp_lines").setup()
	-- 	end,
	-- },
	{
		"github/copilot.vim",
		disable = not lvim.builtin.sell_soul_to_devel,
		config = function()
			-- copilot assume mapped
			vim.g.copilot_assume_mapped = true
			vim.g.copilot_no_tab_map = true
		end,
	},
	{ "Mofiqul/dracula.nvim" },
	{ "kdheepak/lazygit.nvim" },
	{
		"hrsh7th/cmp-copilot",
		disable = not lvim.builtin.sell_soul_to_devel,
		config = function()
			lvim.builtin.cmp.formatting.source_names["copilot"] = "(Cop)"
			table.insert(lvim.builtin.cmp.sources, { name = "copilot" })
		end,
	},
	-- Plug 'RishabhRD/popfix'
	-- Plug 'RishabhRD/nvim-lsputils'
	{
		"kosayoda/nvim-lightbulb",
		requires = "antoinemadec/FixCursorHold.nvim",
	},
	{ "weilbith/nvim-code-action-menu", cmd = "CodeActionMenu" },
	{ "rcarriga/nvim-dap-ui" },
}
-- Disable virtual_text since it's redundant due to lsp_lines.
vim.diagnostic.config({
	virtual_text = false,
})
vim.diagnostic.config({
	virtual_lines = true,
})
lvim.builtin.sell_soul_to_devel = true
vim.g["vimtex_view_method"] = "zathura"
vim.g.copilot_assume_mapped = true
-- vim.g.copilot_no_tab_map = true
-- vim.api.nvim_set_keymap("i", "]]", 'copilot#Accept("<CR>")', { silent = true, expr = true })
-- vim.api.nvim_set_keymap("i", "[[", 'copilot#Accept("<CR>")', { silent = true, expr = true })
-- Autocommands (https://neovim.io/doc/user/autocmd.html)
local md_latex_augroup = vim.api.nvim_create_augroup("md_latex", {
	clear = false,
})

---@type {tex: string, md: string}
local patterns = { tex = "*.tex", md = "*.md" }

lvim.autocommands = {
	{
		"BufWinEnter",
		{
			pattern = { patterns.tex, patterns.md },
			callback = function()
				vim.cmd("setlocal spelllang=el2,en_us")
				vim.cmd("setlocal spell")
				vim.cmd("set tw=80")
			end,
		},
	},
	{ "BufWinEnter", {
		pattern = patterns.tex,
		command = "VimtexCompile",
	} },
	{ "BufWinEnter", {
		pattern = patterns.md,
		command = "MarkdownPreview",
	} },
}
-- lvim.autocommands.custom_groups = {
-- 	{ "BufWinEnter", "*.tex,*.md", "set spelllang=el2,en_us" },
-- 	{ "BufWinEnter", "*.tex,*.md", "set spell" },
-- 	{ "BufWinEnter", "*.tex,*.md", "set tw=80" },
-- 	{ "BufWinEnter", "*.tex", "VimtexCompile" },
-- 	{ "BufWinEnter", "*.md", "MarkdownPreview" },
-- 	{ "BufWinEnter", "*", "set nu rnu" },
-- }
