" Switch the material colorscheme style
command MaterialSchemeToggle :lua require('material.functions').toggle_style()<CR>

lua << EOF

require('material').setup({
    contrast = true, -- Enable contrast for sidebars, floating windows and popup menus like Nvim-Tree
    borders = true, -- Enable borders between verticaly split windows

    popup_menu = "colorful", -- Popup menu style ( can be: 'dark', 'light', 'colorful' or 'stealth' )

    italics = {
    	comments = false, -- Enable italic comments
    	keywords = true, -- Enable italic keywords
    	functions = false, -- Enable italic functions
    	strings = false, -- Enable italic strings
    	variables = false -- Enable italic variables
    },

    contrast_windows = { -- Specify which windows get the contrasted (darker) background
    	"terminal", -- Darker terminal background
    	"packer", -- Darker packer background
    	"qf" -- Darker qf list background
    },

    text_contrast = {
    	lighter = false, -- Enable higher contrast text for lighter style
    	darker = false -- Enable higher contrast text for darker style
    },

    disable = {
    	background = false, -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
    	term_colors = false, -- Prevent the theme from setting terminal colors
    	eob_lines = false -- Hide the end-of-buffer lines
    },

    custom_highlights = {} -- Overwrite highlights with your own
})

EOF

" Set light and dark theme according to time
lua << EOF
local this_time = tonumber(os.date("%H"))
local material_style = 'lighter'
-- 7AM to 7PM is lighter mode
if this_time <= 7 or this_time >= 17 then
    material_style = 'darker'
end

vim.g.material_style = material_style
EOF

" Set color scheme to material
colorscheme material
