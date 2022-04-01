# vim: set tabstop=4:set shiftwidth=4
if status is-interactive
	set fish_vi_cursor
	set fish_cursor_default block
	set fish_cursor_insert line
	set fish_cursor_replace_one underscore
	set fish_cursor_replace underscore
	set -g fish_term24bit 1
	cd ~/Desktop
	set -e LS_COLORS
end

if test $TERM = 'foot'
    set -gx TERM foot-direct
end
