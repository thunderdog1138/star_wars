
local _ = {name = "air", param1 = 0}
local L = {name = "default:jogan_leaves", param1 = 255}
local l = {name = "default:jogan_leaves", param1 = 200}
local T = {name = "default:jogan_trunk", param1 = 255}
local j = {name = "default:jogan_fruit", param1 = 200}

ethereal.jogan_tree = {

	size = {x = 3, y = 6, z = 3},

	yslice_prob = {
		{ypos = 0, prob = 127},
		{ypos = 3, prob = 127},
	},

	data = {

	_,_,_,
	_,_,_,
	_,_,_,
	l,l,j,
	L,L,L,
	l,j,l,

	_,T,_,
	_,T,_,
	_,T,_,
	l,T,l,
	L,T,L,
	l,L,l,

	_,_,_,
	_,_,_,
	_,_,_,
	j,l,l,
	L,L,L,
	l,l,l,

	}
}
