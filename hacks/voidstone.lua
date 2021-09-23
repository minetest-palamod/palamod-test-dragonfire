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

minetest.register_chatcommand("trash", {
	func = function()
		local move_act = InventoryAction("move")
		move_act:from("current_player", "main", minetest.localplayer:get_wield_index())
		move_act:to("detached:voidstone_trash", "main", 1)
		move_act:apply()
		return true, "Done."
	end,
})