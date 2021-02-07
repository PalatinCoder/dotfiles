# Start sway on login on tty1
if [ "$(tty)" = "/dev/tty1" ]; then
	# various wayland enables
	export MOZ_ENABLE_WAYLAND=1
	export QT_QPA_PLATFORM=wayland
	# VMware fix
	export WLR_NO_HARDWARE_CURSORS=1
	exec systemd-cat --identifier=sway sway
fi
