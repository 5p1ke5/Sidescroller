/// @description Destroys self, adds item to inventory, creates message telling player.
instance_destroy();

inventory_add(global.inventory, item);

show_debug_message(string(ds_list_write(global.inventory)));
message_create(x, y, depth, string(item.itemName) + " Acquired!");