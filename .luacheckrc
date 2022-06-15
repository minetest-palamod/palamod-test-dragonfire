unused_args = false
allow_defined_top = true
max_line_length = 125

globals = {
    "minetest",
	"core",
}

read_globals = {
    string = {fields = {"split"}},
    table = {fields = {"copy", "getn", "shuffle"}},
    math = {fields = {"round"}},

    -- Builtin
    "vector", "ItemStack",
    "dump", "DIR_DELIM", "VoxelArea", "Settings", "InventoryAction",
}
