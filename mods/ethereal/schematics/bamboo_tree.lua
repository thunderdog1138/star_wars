
local _ = {name = "air", param1 = 000}
local B = {name = "default:bamboo", param1 = 255}
local L = {name = "default:bamboo_leaves", param1 = 255}
local l = {name = "default:bamboo_leaves", param1 = 100}

ethereal.bamboo_tree = {

	size = {x = 3, y = 18, z = 3},

	yslice_prob = {
		{ypos = 0, prob = 127},
		{ypos = 1, prob = 127},
		{ypos = 2, prob = 127},
	},

	data = {

	_,_,_,
	_,_,_,
	_,_,_,
	_,_,_,
	_,_,_,
	_,_,_,
	_,_,_,
	_,_,_,
	_,_,_,
	_,_,_,
	_,_,_,
	_,_,_,
	_,_,_,
	_,_,_,
	_,_,_,
	l,L,l,
	_,L,_,
	_,_,_,

	_,B,_,
	_,B,_,
	_,B,_,
	_,B,_,
	_,B,_,
	_,B,_,
	_,B,_,
	_,B,_,
	_,B,_,
	_,B,_,
	_,B,_,
	_,B,_,
	_,B,_,
	_,B,_,
	_,B,_,
	l,L,l,
	_,L,_,
	_,l,_,

	_,_,_,
	_,_,_,
	_,_,_,
	_,_,_,
	_,_,_,
	_,_,_,
	_,_,_,
	_,_,_,
	_,_,_,
	_,_,_,
	_,_,_,
	_,_,_,
	_,_,_,
	_,_,_,
	_,_,_,
	l,L,l,
	_,L,_,
	_,_,_,

	}
}
