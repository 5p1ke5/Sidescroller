/// @description Once popped adds to the star counter and adds to collected list.
global.stars++;

//Adds the id of the collected star to the list.
ds_list_add(global.starsCollected, id);

//Destroys the star.
instance_destroy();