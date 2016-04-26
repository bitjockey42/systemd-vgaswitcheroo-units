install: install_service install_scripts

install_service:
	install -Dm644 "${CURDIR}/vgaswitcheroo.service" "/etc/systemd/system/vgaswitcheroo.service"

install_scripts: install_start_script install_stop_script install_gpu_checker

install_start_script:
	install -Dm755 "${CURDIR}/vgaswitcheroo_start.sh" "/usr/bin/vgaswitcheroo_start.sh"

install_stop_script:
	install -Dm755 "${CURDIR}/vgaswitcheroo_stop.sh" "/usr/bin/vgaswitcheroo_stop.sh"

install_gpu_checker:
	install -Dm755 "${CURDIR}/check_active_gpu.sh" "/usr/bin/check_active_gpu.sh"

uninstall: uninstall_service uninstall_scripts

uninstall_service:
	rm /etc/systemd/system/vgaswitcheroo.service

uninstall_scripts: uninstall_start_script uninstall_stop_script uninstall_gpu_checker

uninstall_start_script:
	rm /usr/bin/vgaswitcheroo_start.sh

uninstall_stop_script:
	rm /usr/bin/vgaswitcheroo_stop.sh

uninstall_gpu_checker:
	rm /usr/bin/check_active_gpu.sh


