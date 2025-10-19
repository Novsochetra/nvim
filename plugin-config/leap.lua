-- Highly recommended: define a preview filter to reduce visual noise
-- and the blinking effect after the first keypress
-- (`:h leap.opts.preview_filter`). You can still target any visible
-- positions if needed, but you can define what is considered an
-- exceptional case.
-- Exclude whitespace and the middle of alphabetic words from preview:
--   foobar[baaz] = quux
--   ^----^^^--^^-^-^--^
require('leap').opts.preview_filter =
  function (ch0, ch1, ch2)
    return not (
      ch1:match('%s') or
      ch0:match('%a') and ch1:match('%a') and ch2:match('%a')
    )
  end

-- Define equivalence classes for brackets and quotes, in addition to
-- the default whitespace group:
require('leap').opts.equivalence_classes = {
  ' \t\r\n', '([{', ')]}', '\'"`'
}

-- Use the traversal keys to repeat the previous motion without
-- explicitly invoking Leap:
-- require('leap.user').set_repeat_keys('<enter>', '<backspace>')

vim.keymap.set({'n', 'x', 'o'}, 's', '<Plug>(leap)')
vim.keymap.set('n',             'S', '<Plug>(leap-from-window)')

