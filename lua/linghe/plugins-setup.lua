local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()
local status,packer = pcall(require,"packer")
if not status then
    return
end

return packer.startup(function(use)
    use("wbthomason/packer.nvim")
    -- 编辑器颜色主题
    use("bluz71/vim-nightfly-guicolors")
    use("folke/tokyonight.nvim")
    use('glepnir/zephyr-nvim')
    use {
        "ellisonleao/gruvbox.nvim",
        requires = {"rktjmp/lush.nvim"}
    }

    -- 配置代码提示工具
    use {
        "neoclide/coc.nvim",branch = "release"
    }

    -- 配置代码高亮工具
    -- react jsx 代码高亮工具
    use('maxmellon/vim-jsx-pretty')
    -- 代码片段
    use('honza/vim-snippets')

    -- 配置文件树工具
    use("nvim-tree/nvim-tree.lua") 

    -- 状态栏美化
    use("nvim-tree/nvim-web-devicons")
    use("nvim-lualine/lualine.nvim")

    -- 文件搜索插件
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
         requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- auto closing
    use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
    use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags
    use("jiangmiao/auto-pairs")

    -- 标签页插件
    use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

       if packer_bootstrap then
        require("packer").sync()
    end
end)
