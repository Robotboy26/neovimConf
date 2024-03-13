function ColorMyPencils(color)
    -- rose-pine is the backup color scheme
	color = color or "rose-pine"
	vim.cmd.colorscheme(moonlight)
end
