. /lib/ipq806x.sh

PART_NAME=firmware

platform_check_image() {
	local board=$(ipq806x_board_name)

	case "$board" in
	ap148 |\
	d7800 |\
	r7500 |\
	ea8500)
		nand_do_platform_check $board $1
		return $?;
		;;
	*)
		return 1;
	esac
}

platform_pre_upgrade() {
	local board=$(ipq806x_board_name)

	case "$board" in
	ap148 |\
	d7800 |\
	r7500)
		nand_do_upgrade "$1"
		;;
	ea8500)
		linksys_preupgrade "$1"
		;;
	esac
}

platform_do_upgrade() {
	local board=$(ipq806x_board_name)

	case "$board" in
	ea8500)
		platform_do_upgrade_linksys "$ARGV"
		;;
	*)
		default_do_upgrade "$ARGV"
		;;
	esac
}
