return {
  'numToStr/Comment.nvim',
  opts = {},
  lazy = false,
  config = function ()
    require("Comment").setup({})
function _G.__toggle_contextual(vmode)
    local cfg = require('Comment.config'):get()
    local U = require('Comment.utils')
    local Op = require('Comment.opfunc')
    local range = U.get_region(vmode)
    local same_line = range.srow == range.erow

    local ctx = {
        cmode = U.cmode.toggle,
        range = range,
        cmotion = U.cmotion[vmode] or U.cmotion.line,
        ctype = same_line and U.ctype.linewise or U.ctype.blockwise,
    }

    local lcs, rcs = U.parse_cstr(cfg, ctx)
    local lines = U.get_lines(range)

    local params = {
        range = range,
        lines = lines,
        cfg = cfg,
        cmode = ctx.cmode,
        lcs = lcs,
        rcs = rcs,
    }

    if same_line then
        Op.linewise(params)
    else
        Op.blockwise(params)
    end
end

vim.keymap.set('n', '<Leader>c', '<cmd>set operatorfunc=v:lua.__toggle_contextual<CR>g@')
vim.keymap.set('x', '<Leader>c', '<cmd>set operatorfunc=v:lua.__toggle_contextual<CR>g@')
  end
}
