SWEP.Sounds = {
	draw = {
		{time = 0, sound = "CW_FOLEY_MEDIUM"},
	},
	
	shoot_1 = {
		{time = 0.3, sound = "STAKEOUT_BOLTBACK"},
		{time = 0.65, sound = "STAKEOUT_BOLTFORWARD"},
	},	
	
	shoot_2 = {
		{time = 0.3, sound = "STAKEOUT_BOLTBACK"},
		{time = 0.65, sound = "STAKEOUT_BOLTFORWARD"},
	},	
	
	shoot_aim = {
		{time = 0.3, sound = "STAKEOUT_BOLTBACK"},
		{time = 0.65, sound = "STAKEOUT_BOLTFORWARD"},
	},	
	
	reload_start = {
		{time = 2/42, sound = "STAKEOUT_DEPLOY"},
	},
	
	reload_start_empty = {
		{time = 2/42, sound = "STAKEOUT_DEPLOY"},
		{time = 37/42, sound = "STAKEOUT_INSERT1"},
		{time = 40/42, sound = "STAKEOUT_INSERT2"},
		{time = 62/42, sound = "STAKEOUT_BOLTBACK"},
		{time = 75/42, sound = "STAKEOUT_BOLTFORWARD"},
	},

	reload_insert = {
		{time = 5/42, sound = "STAKEOUT_INSERT1"},
		{time = 6/42, sound = "STAKEOUT_INSERT2"},
	},
	
	reload_end = {
		{time = 2/42, sound = "STAKEOUT_DEPLOY"},
	},
}
