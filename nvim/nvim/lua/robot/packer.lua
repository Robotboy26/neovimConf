-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

    use({
        'ggandor/lightspeed.nvim',
        requires = { { 'tpope/vim-repeat' } }
    })

    use({
        "folke/trouble.nvim",
        requires = { { "nvim-tree/nvim-web-devicons" } }
    })

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/playground')

    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { {"nvim-lua/plenary.nvim"} }
    }

    -- mabey at some point "ThePrimeagen/refactoring.nvim"

	use('mbbill/undotree')
	use('tpope/vim-fugitive')
    use('ThePrimeagen/Vim-Be-Good')

    use('shaunsingh/moonlight.nvim') -- main
    require('moonlight').set()
    vim.cmd('colorscheme moonlight')
    -- backup
	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function() end
	})

	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup({
				mappings = {
					basic = true,
					extra = false,
				},
			})
		end
	}

    -- find an lsp not lsp zero

end)

  
