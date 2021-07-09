local form = table.concat({
	"formspec_version[4]",
	"size[12,18]",
	"list[current_player;backpack;0.5,1;9,9;]",
	"list[current_player;main;0.5,13;9,4;]",
	"listring[]",
	"label[0.5,0.5;Backpack]",
	"label[0.5,12.5;Inventory]",
})

minetest.register_cheat("PalaBackpack", "Inventory", function() minetest.show_formspec("df_blabla:pala_backpack", form) end)