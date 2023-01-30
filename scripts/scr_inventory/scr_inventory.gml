///Inventory functions. inventory_* functions and Item* constructors.
///Structs for item types

/// @function Item(_itemName) constructor 
/// @description Constructor for an item struct.
/// @param _itemName <String> item's name.
/// @param _inventory Inventory list the item is inside of.
/// @param _icon <sprite> Sprite representation of item.
/// @param _amount  quantity of item in stack.
/// @param _description <String> string description of item.
/// @param _value Value of item when buying or selling.
function Item(_itemName,  _inventory, _icon, _amount, _description, _value) constructor
{
		itemName = _itemName;
		icon = _icon;
		inventory = _inventory;
		amount = _amount;
		description = _description;
		value = _value;
		
		/// @description Uses the item. Called when owner tries to use an item in the inventory.
		static Use = function(_user)
		{
			show_debug_message("Item used!" + string(self) + "by " + string(_user));
		}
		
		static GetAmount = function()
		{
			return amount;
		}
		static GetName = function()
		{
			return itemName;
		}
		static GetInventory = function()
		{
			return inventory;
		}
		
		static GetIcon = function()
		{
			return icon;
		}
		
		static GetId = function()
		{
			return GetName() + string(icon);
		}
		
		static SetAmount = function(_amount)
		{
			amount = _amount;
		}
		
		static SetName = function(_name)
		{
			name = _name;
		}
		
		static SetInventory = function(_inventory)
		{
			inventory = _inventory;
		}
}

/// @function ItemConsumable(_itemName, _icon, _inventory) constructor 
/// @description Constructor for an item struct that consumes itself on use.
/// @param _itemName <String> item's name.
/// @param _inventory Inventory list the item is inside of.
/// @param _icon <sprite> Sprite representation of item.
/// @param _amount  quantity of item in stack.
/// @param _description <String> string description of item.
/// @param _value Value of item when buying or selling.
function ItemConsumable(_itemName,  _inventory, _icon, _amount, _description, _value)  : Item(_itemName,  _inventory, _icon, _amount, _description, _value) constructor
{
		static Use = function(_user)
		{
			Consume(_user);
		}
		
		//Consumes the item, removing it from the inventory.
		static Consume = function(_user)
		{
			show_debug_message("Consumable Item used!"  + string(self));
			
			if (inventory != noone)
			{
				inventory_remove(inventory, self, _user);
			}
		}
}


/// @function ItemFirearm(_itemName, _inventory, _icon, _amount, _description, _value, _sprite, _damage, _cooldown, _rounds, _object = obj_bullet)
/// @description Constructor for an item struct that creates a firearm object using passed parameters and binds it to myHeld.
/// @param _itemName <String> item's name.
/// @param _inventory Inventory list the item is inside of.
/// @param _icon <sprite> Sprite representation of item.
/// @param _amount  quantity of item in stack.
/// @param _description <String> string description of item.
/// @param _value Value of item when buying or selling.
/// @param _sprite Sprite for the weapon object.
/// @param _damage Damage each round does.
/// @param _cooldown number of frames to wait between firing rounds. Once all rounds are fired despawns.
/// @param _rounds number of rounds to fire off. After each round waits _cooldown frames and once all rounds are fired despawns.
/// @param _projectile object the spawned gun object will fire. By default is normal bullets but could be set to a grenade or something.
function ItemFirearm(_itemName, _inventory, _icon, _amount, _description, _value, _sprite, _damage, _cooldown, _rounds, _projectile = obj_round) : Item(_itemName,  _inventory, _icon, _amount, _description, _value)  constructor
{
	sprite = _sprite;
	damage = _damage;
	cooldown = _cooldown;
	rounds = _rounds;
	projectile = _projectile;
	
	static Use  = function(_user)
	{
		var _firearm = doll_instance_create(_user, FIREARM, 0);
		
		var _sprite = sprite;
		var _damage = damage;
		var _cooldown = cooldown;
		var _rounds = rounds;
		var _angle = _user.angle;
		show_debug_message(string(_angle));
		
		var _projectile = projectile;
		
		with (_firearm)
		{
			doll_firearmInstance_initialize(_user, _sprite, _damage, _cooldown, _rounds, _angle, _projectile);
		}
		
		with (_user)
		{
			myHeld = _firearm;
		}
	}
}

/// @description function ItemMelee(_itemName,  _inventory, _icon, _amount, _description, _value, _sprite, _damage, _spd, _arc)  constructor
/// @description Constructor for an item struct that creates an object. May fire in the mouse direction (see _spd)
/// @param _itemName <String> item's name.
/// @param _inventory Inventory list the item is inside of.
/// @param _icon <sprite> Sprite representation of item.
/// @param _amount  quantity of item in stack.
/// @param _description <String> string description of item.
/// @param _value Value of item when buying or selling.
/// @param _sprite Sprite the melee weapon takes the appearance of.
/// @param _dmg how much damage the weapon does.
/// @param _spd How fast the weapon is swung.
/// @param _arc How many degress the weapon is swung.
function ItemMelee(_itemName,  _inventory, _icon, _amount, _description, _value, _sprite, _damage, _spd, _arc)  : Item(_itemName,  _inventory, _icon, _amount, _description, _value)  constructor
{
	sprite = _sprite;
	damage = _damage;
	spd = _spd;
	arc = _arc;
	
	static Use = function(_user)
	{
		var _melee =  doll_instance_create(_user, MELEE, undefined);
		
		var _sprite = sprite;
		var _damage = damage;
		var _arc = arc;
		var _spd = spd;
		var _angle = _user.angle;
	
		
		
		with (_melee)
		{
			doll_meleeInstance_initialize(_user, _sprite, _damage, _arc, _spd, _angle);
		}
		
		with (_user)
		{
			myHeld = _melee;
		}
	}
}

/// @function ItemInstancer(_itemName, _icon, _inventory, _object, _spd = 0)
/// @description Constructor for an item struct that creates a n object. May fire in the mouse direction (see _spd)
/// @param _itemName <String> item's name.
/// @param _inventory Inventory list the item is inside of.
/// @param _icon <sprite> Sprite representation of item.
/// @param _amount  quantity of item in stack.
/// @param _description <String> string description of item.
/// @param _value Value of item when buying or selling.
/// @param _object Object to create an instance of.
/// @param [_spd] Optionally specifies a speed for the object to be set to.
function ItemInstancer(_itemName,  _inventory, _icon, _amount, _description, _value, _object, _spd = 0)  : Item(_itemName,  _inventory, _icon, _amount, _description, _value)  constructor
{
	object = _object;
	spd = _spd;
	
	static Use = function(_user)
	{
		doll_instance_create(_user, object, spd);
	}
}



/// @function ItemConsumableInstancer(_itemName, _icon, _inventory, _object, _spd = 0)
/// @description Constructor for an item struct that creates a n object it and then consumes itself. May fire in the mouse direction (see _spd)
/// @param _itemName <String> item's name.
/// @param _inventory Inventory list the item is inside of.
/// @param _icon <sprite> Sprite representation of item.
/// @param _amount  quantity of item in stack.
/// @param _description <String> string description of item.
/// @param _value Value of item when buying or selling.
/// @param _object Object to create an instance of.
/// @param [_spd] Optionally specifies a speed for the object to be set to.
/// @param [_color] Color for object to be set to. If not set defaults to c_white.
function ItemConsumableInstancer(_itemName,  _inventory, _icon, _amount, _description, _value, _object, _spd = 0)  :  ItemConsumable(_itemName,  _inventory, _icon, _amount, _description, _value) constructor
{
	object = _object;
	spd = _spd;
	
	static Use = function(_user)
	{
		doll_instance_create(_user, object, spd);
		Consume(_user);
	}
}

/// @function ItemConsumableInstancerColored(_itemName, _icon, _inventory, _object, _spd = 0, _color = c_red)
/// @description Constructor for an item struct that creates a colored object and then consumes itself. May fire in the mouse direction (see _spd)
/// @param _itemName <String> item's name.
/// @param _inventory Inventory list the item is inside of.
/// @param _icon <sprite> Sprite representation of item.
/// @param _amount  quantity of item in stack.
/// @param _description <String> string description of item.
/// @param _value Value of item when buying or selling.
/// @param _object Object to create an instance of.
/// @param _spd Specifies a speed for the object to be set to. If Undefined does not define hsp or vsp within the Use function for the created instance.
/// @param [_color] Sets color of created balloon.
function ItemConsumableInstancerColored(_itemName,  _inventory, _icon, _amount, _description, _value, _object, _spd, _color = c_white)  : ItemConsumableInstancer(_itemName,  _inventory, _icon, _amount, _description, _value, _object, _spd = 0) constructor
{
	color = _color;
	
	static Use = function(_user)
	{
		var _object = doll_instance_create(_user, object, spd);
		var _blendColor = color;
		
		with (_object)
		{
			image_blend = _blendColor;
		}
		
		Consume(_user);
	}
		
		static GetId = function()
		{
			return GetName() + string(color);
		}
}


///@function inventory_initialize()
///@description Initializes the inventory. Returns he ds_list for the inventory. This should usually be set to a variable (eg global.inventory = inventory_initialize();
function inventory_initialize()
{
	return ds_list_create();
}

/// @function inventory_find(_inventory, _Item)
/// @description returns the first index of the given item in the given inventory. If none is found, returns -1.
/// @param _inventory inventory list data structure.
/// @param _Item Item struct to search for.
function inventory_find(_inventory, _Item)
{
	//Tries to find an item with the same id in the inventory.
	for (var _i = 0; _i < ds_list_size(_inventory); _i++)
	{
		var _ItemB = ds_list_find_value(_inventory, _i)
		
		if ( _Item.GetId() == _ItemB.GetId())
		{
			return _i;
		}
	}

	return -1;
}

///@function inventory_add(_inventory, _Item)
///@description Adds an item to the inventory. Returns index 
///@param _inventory inventory list to add to.
///@param _Item Item struct to add.
function inventory_add(_inventory, _Item)
{
	//Tries to check if the player already has a copy of the item in their inventory.
	var _index = inventory_find(_inventory, _Item);
	
	//If an item with the same name was not found, just updates inventory and adds it to the list.
	if (_index == -1)
	{
		with (_Item)
		{
			inventory = _inventory;
		}
		
		ds_list_add(_inventory, _Item);	
	}
	//Otherwise, gets the found Item and adds 1 to amount.
	else
	{
		var _foundItem = ds_list_find_value(_inventory, _index);
		
		with (_foundItem)
		{
			amount = amount + _Item.GetAmount();
		}
	}
}

///@function inventory_remove(_inventory, _Item)
///@description Removes a stack of an item from the inventory. If amount is 0 from this deletes it from the inventory. 
///@param _inventory inventory list to remove from.
///@param _Item Item struct to remove from.
///@param _user (optional) The instance id of the instance the inventory is associated with. Used to alter inventoryIndex if applicable.
function inventory_remove(_inventory, _Item, _user = noone)
{
	_Item.SetAmount(_Item.GetAmount() - 1);
	
	show_debug_message("New amount: " + string(_Item.GetAmount()));
	
	if (_Item.GetAmount() <= 0)
	{
			var _index = ds_list_find_index(_inventory, _Item);
			ds_list_delete(_inventory, _index);
			show_debug_message("item removed");
	}
	
	//If a reference to a user instance was passed, attempts to set the inventoryIndex for them.
	//Maybe make inventories a struct??
	if (instance_exists(_user))
	{
		with (_user)
		{
			//Makes sure it has an inventoryIndex variable and if so caps it at ds_list_size - 1, but not below 0.
			if (variable_instance_exists(_user, "inventoryIndex"))
			{
				show_debug_message("index resiezed" + string(ds_list_size(_inventory) ));
				inventoryIndex = min(ds_list_size(_inventory) - 1, inventoryIndex);
				inventoryIndex = max(inventoryIndex, 0);
			}
			
		}
	}
}



