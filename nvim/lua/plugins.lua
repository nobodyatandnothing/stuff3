return require('packer').startup({function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'marcuscf/vim-lua'

  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  
  use 'vifm/vifm.vim'

  use {"https://gitlab.com/HiPhish/info.vim"}

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
--  use 'tamton-aquib/staline.nvim'
--  use 'beauwilliams/statusline.lua'

  -- colorschemes
  use {'challenger-deep-theme/vim', as = 'challenger-deep'}
  use 'shaunsingh/moonlight.nvim' 
  use 'LunarVim/onedarker.nvim'
  use {'srcery-colors/srcery-vim', as = 'srcery'}
  use {'theniceboy/nvim-deus', as = 'deus'}
  use 'Mofiqul/dracula.nvim' 
  use 'folke/tokyonight.nvim'
  use {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
  use 'shaunsingh/nord.nvim'

end,
config={
	display={
		open_fn=require('packer.util').float,
	}
}})
