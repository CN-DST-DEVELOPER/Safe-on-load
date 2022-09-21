GLOBAL.setmetatable(
	env,
	{
		__index = function(t, k)
			return GLOBAL.rawget(GLOBAL, k)
		end
	}
)

local delay_time = GetModConfigData("delay_time") or 0

AddModRPCHandler(
	"save_on_load",
	"playerloaded",
	function(inst)
		inst.components.health:SetInvincible(false)
		print("save_on_load", "playerloaded")
	end
)

AddPlayerPostInit(
	function(inst)
		if not TheWorld.ismastersim then
			inst:DoTaskInTime(
				delay_time,
				function()
					SendModRPCToServer(MOD_RPC["save_on_load"]["playerloaded"])
				end
			)
			return
		end
		inst.components.health:SetInvincible(true)
	end
)
