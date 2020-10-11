dofile(minetest.get_modpath(minetest.get_current_modname()) .. "/api.lua")

gunkit.register_firearm("gunkit:e11", {
    description = "E-11 Trooper Rifle",
    wield_scale = {x = 1, y = 1, z = 1},
    inventory_image = "e11.png",
    mag_type = "blaster",
    sounds = {
        mag_load = "gunkit:blaster-reload",
        mag_drop = "gunkit:blaster-drop",
        fire_empty = "gunkit:blaster-empty",
    },
    {
        bullet_texture = "blaster_red.png",
        -- Texture to be used for bullet projectiles.
        sounds = {
            fire = "gunkit:blaster-1",
            -- Sound to be played when firing the gun.
            shell_drop = nil,
            -- Sound to be played when firing the gun.
            fire_toggle = nil,
            -- Sound to be played when swapping from this fire mode.
        },
        range = 50,
        -- Firearms bullet range.
        speed = 50,
        -- Speed of bullet projectiles, time to projectile hit is always range / speed.
        spread = 1,
        -- Max bullet spread (in degrees).
        dmg = 3,
        -- Bullet damage.
        shots = 1,
        -- Amount of bullets fired each shot.
        interval = 0.1,
        -- Time between shots (in seconds).
        zoom = 2,
        -- Level of zoom when using ADS (if applicable).
        zoom_time = 1,
        -- Time in seconds till fov hits fov*zoom
    }
})