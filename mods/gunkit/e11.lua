gunkit.register_firearm("gunkit:e11", {
    description = "E-11 blaster rifle",
    wield_scale = {x = 1, y = 1, z = 1},
    inventory_image = "e11.png",
    mag_type = "smg",
    sounds = {
        mag_load = nil,
        mag_drop = nil,
        fire_empty = nil,
    },
    {
        bullet_texture = "blaster_red.png",
        sounds = {
            fire = nil,
            shell_drop = nil,
            fire_toggle = nil,
        },
        range = 60,
        speed = 50,
        spread = 1,
        dmg = 3,
        shots = 1,
        interval = 0.1,
        zoom = 2,
        zoom_time = 1,
    },
})

gunkit.register_mag("gunkit:cartrage", {
    description = "Blaster cartrage",
    inventory_image = "blaster cartrage.png",
    mag_type = "smg",
    ammo = "gunkit:blaster_red",
    max_ammo = 120,
})