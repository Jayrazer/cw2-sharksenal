local path = "weapons/cw2_shark/mp5/mp5_"

CustomizableWeaponry:addFireSound("MP5_FIRE", {
path .. "fire.wav",
path .. "fire2.wav"
}, 1, 100, CHAN_WEAPON)
CustomizableWeaponry:addFireSound("MP5_FIRE_SUPP", path .. "sil1.wav", 1, 100, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("MP5_MAGREL", path .. "magrelease.wav")
CustomizableWeaponry:addReloadSound("MP5_MAGOUT", path .. "magout.wav")
CustomizableWeaponry:addReloadSound("MP5_MAGIN", path .. "magin.wav")
CustomizableWeaponry:addReloadSound("MP5_MAGTAP", path .. "magtap.wav")
CustomizableWeaponry:addReloadSound("MP5_BOLTBACK", path .. "boltback.wav")
CustomizableWeaponry:addReloadSound("MP5_BOLTLOCK", path .. "boltlock.wav")
CustomizableWeaponry:addReloadSound("MP5_SLAP", path .. "boltrelease.wav")

