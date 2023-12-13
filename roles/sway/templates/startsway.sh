set -eu

export SDL_VIDEODRIVER=wayland
export _JAVA_AWT_WM_NONREPARENTING=1
export QT_QPA_PLATFORM=wayland
export XDG_CURRENT_DESKTOP=sway
export XDG_SESSION_DESKTOP=sway
export XDG_SESSION_TYPE=wayland
export GDK_BACKEND="wayland"
export MOZ_ENABLE_WAYLAND=1

if command -v dbus-update-activation-environment >/dev/null; then
  dbus-update-activation-environment XDG_CURRENT_DESKTOP XDG_SESSION_DESKTOP XDG_SESSION_TYPE
fi
# without this, systemd starts xdg-desktop-portal without these environment variables,
# and the xdg-desktop-portal does not start xdg-desktop-portal-wrl as expected
# https://github.com/emersion/xdg-desktop-portal-wlr/issues/39#issuecomment-638752975
systemctl --user import-environment XDG_CURRENT_DESKTOP XDG_SESSION_DESKTOP XDG_SESSION_TYPE

# use systemd-run here, because systemd units inherit variables from ~/.config/environment.d
# true: ignore errors here so we always do the teardown afterwards
# shellcheck disable=SC2068
systemd-run --quiet --unit=sway --user --wait sway $@ || true
