local modpath = minetest.get_modpath(minetest.get_current_modname())

dofile(modpath.."/settings.lua")
dofile(modpath.."/misc.lua")
dofile(modpath.."/e11.lua")
dofile(modpath.."/explosives.lua")
dofile(modpath.."/door_breaking.lua")
dofile(modpath.."/glass_breaking.lua")

local rangedweapons_empty_shell = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.3, y=0.3},
	textures = {"rangedweapons:shelldrop"},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
rangedweapons_empty_shell.on_step = function(self, dtime, pos)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)
	if self.lastpos.y ~= nil then
		if minetest.registered_nodes[node.name].walkable then
	local vel = self.object:getvelocity()
	local acc = self.object:getacceleration()
	self.object:setvelocity({x=vel.x*-0.3, y=vel.y*-0.75, z=vel.z*-0.3})
			minetest.sound_play("rangedweapons_shellhit", {pos = self.lastpos, gain = 0.8})
	self.object:setacceleration({x=acc.x, y=acc.y, z=acc.z})
			end
	end
	if self.timer > 1.69 then
			minetest.sound_play("rangedweapons_bulletdrop", {pos = self.lastpos, gain = 0.8})
		self.object:remove()

	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("rangedweapons:empty_shell", rangedweapons_empty_shell )



local rangedweapons_empty_shell_shotgun = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.35, y=0.35},
	textures = {"rangedweapons:shell_shotgundrop"},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
rangedweapons_empty_shell_shotgun.on_step = function(self, dtime, pos)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)
	if self.lastpos.y ~= nil then
		if minetest.registered_nodes[node.name].walkable then
	local vel = self.object:getvelocity()
	local acc = self.object:getacceleration()
	self.object:setvelocity({x=vel.x*-0.3, y=vel.y*-0.75, z=vel.z*-0.3})
			minetest.sound_play("rangedweapons_shellhit", {pos = self.lastpos, gain = 0.8})
	self.object:setacceleration({x=acc.x, y=acc.y, z=acc.z})
			end
	end
	if self.timer > 1.69 then
			minetest.sound_play("rangedweapons_bulletdrop", {pos = self.lastpos, gain = 0.8})
		self.object:remove()

	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("rangedweapons:empty_shell_shotgun", rangedweapons_empty_shell_shotgun )



local rangedweapons_empty_shell_white = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.30, y=0.30},
	textures = {"rangedweapons:shell_whitedrop"},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
rangedweapons_empty_shell_white.on_step = function(self, dtime, pos)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)
	if self.lastpos.y ~= nil then
		if minetest.registered_nodes[node.name].walkable then
	local vel = self.object:getvelocity()
	local acc = self.object:getacceleration()
	self.object:setvelocity({x=vel.x*-0.3, y=vel.y*-0.75, z=vel.z*-0.3})
			minetest.sound_play("rangedweapons_shellhit", {pos = self.lastpos, gain = 0.8})
	self.object:setacceleration({x=acc.x, y=acc.y, z=acc.z})
			end
	end
	if self.timer > 1.69 then
			minetest.sound_play("rangedweapons_bulletdrop", {pos = self.lastpos, gain = 0.8})
		self.object:remove()

	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("rangedweapons:empty_shell_white", rangedweapons_empty_shell_white )



local rangedweapons_empty_shell_grenade = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.30, y=0.30},
	textures = {"rangedweapons:shell_grenadedrop"},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
rangedweapons_empty_shell_grenade.on_step = function(self, dtime, pos)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)
	if self.lastpos.y ~= nil then
		if minetest.registered_nodes[node.name].walkable then
	local vel = self.object:getvelocity()
	local acc = self.object:getacceleration()
	self.object:setvelocity({x=vel.x*-0.3, y=vel.y*-0.75, z=vel.z*-0.3})
			minetest.sound_play("rangedweapons_shellhit", {pos = self.lastpos, gain = 0.8})
	self.object:setacceleration({x=acc.x, y=acc.y, z=acc.z})
			end
	end
	if self.timer > 1.69 then
			minetest.sound_play("rangedweapons_bulletdrop", {pos = self.lastpos, gain = 0.8})
		self.object:remove()

	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("rangedweapons:empty_shell_grenade", rangedweapons_empty_shell_grenade )


minetest.register_abm({
	nodenames = {"doors:hidden"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y-1
		if minetest.get_node(pos).name == "air" then
		pos.y = pos.y+1
			node.name = "air"
			minetest.set_node(pos, node)
		end
	end
})


