#! /bin/sh
#
# Script to set colors generated by 'wal'
# https://github.com/dylanaraps/wal

# Source generated colors.
. "${HOME}/.cache/wal/colors.sh"

reload_dunst() {
    pkill dunst && \
        dunst \
            -lb "$color0" \
            -nb "$color0" \
            -cb "$color0" \
            -lf "$color15"  \
            -bf "$color15"  \
            -cf "$color15"  \
            -nf "$color15"  \
            -fn "${DUNST_FONT:-lemon 7}" \
            -geometry "${DUNST_SIZES:-250x10-40+40}" &
}

main() {
    reload_dunst &
}

main >/dev/null 2>&1
