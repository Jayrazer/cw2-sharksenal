local path = "weapons/cw2_shark/cz75/czub_cz75_sp01_"

CustomizableWeaponry:addFireSound("CZ75_FIRE", path .. "fire_unsuppressed.wav", 1, 100, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CZ75_FIRE_SUPP", path .. "fire_suppressed.wav", 1, 100, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CZ75_SLIDEBACK", path .. "slideback.wav")
CustomizableWeaponry:addReloadSound("CZ75_SLIDEFORWARD", path .. "sliderelease.wav")
CustomizableWeaponry:addReloadSound("CZ75_SLIDERELEASE", path .. "sliderelease.wav")
CustomizableWeaponry:addReloadSound("CZ75_MAGIN", path .. "maginsert.wav")
CustomizableWeaponry:addReloadSound("CZ75_MAGIN2", path .. "magin.wav")
CustomizableWeaponry:addReloadSound("CZ75_MAGOUT", path .. "magout.wav")