name = "Safe on load"
description = "加载时处于无敌状态，避免因为客机卡顿无法操纵而导致玩家死亡\n\nMake player invincible when game loading"
author = "Fengying"
version = "0.0.1"
api_version_dst = 10

icon_atlas = "modicon.xml"
icon = "modicon.tex"

dst_compatible = true
all_clients_require_mod = true

configuration_options = {
	{
		label = "无敌时间\nSeconds of invulnerability",
		hover = "可操控后延迟几秒解除无敌\nDelay to remove invincibility for how many seconds after player can controll",
		name = "delay_time",
		options = {
			{description = "0", data = 0},
			{description = "3", data = 3},
			{description = "5", data = 5}
		},
		default = 0
	}
}
