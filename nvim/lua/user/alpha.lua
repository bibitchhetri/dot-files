local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
[[ ________  ___  __    ________      ________  ________  ________  _________   ]],
[[|\   __  \|\  \|\  \ |\   ____\    |\   __  \|\   __  \|\   __  \|\___   ___\ ]],
[[\ \  \|\ /\ \  \/  /|\ \  \___|    \ \  \|\  \ \  \|\  \ \  \|\  \|___ \  \_| ]],
[[ \ \   __  \ \   ___  \ \  \        \ \   _  _\ \  \\\  \ \  \\\  \   \ \  \  ]],
[[  \ \  \|\  \ \  \\ \  \ \  \____  __\ \  \\  \\ \  \\\  \ \  \\\  \   \ \  \ ]],
[[   \ \_______\ \__\\ \__\ \_______\\__\ \__\\ _\\ \_______\ \_______\   \ \__\]],
[[    \|_______|\|__| \|__|\|_______\|__|\|__|\|__|\|_______|\|_______|    \|__|]],
[[                                                                              ]],
}

dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Configuration", ":e $MYVIMRC <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
-- NOTE: requires the fortune-mod package to work
	-- local handle = io.popen("fortune")
	-- local fortune = handle:read("*a")
	-- handle:close()
	-- return fortune
	return "bibitkunwar.com.np"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
