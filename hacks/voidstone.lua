--TODO: dont forget to update formspec
local form = table.concat({
	"formspec_version[4]",
	"size[12,7]",
	"list[current_player;main;0.5,2;9,4;0]",
	"label[0.5,0.5;Voidstone]",
	"list[detached:voidstone_trash;main;5.5,0.5;1,1;0]",
	"listring[]",
})

minetest.register_cheat("Voidstone", "Inventory", function() minetest.show_formspec("pala_dragonfire:voidstone", form) end)