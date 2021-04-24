# Start sway on login on tty1
if [ "$(tty)" = "/dev/tty1" ]; then
	# various wayland enables
	export MOZ_ENABLE_WAYLAND=1
	export QT_QPA_PLATFORM=wayland
	exec systemd-cat --identifier=sway sway
fi
