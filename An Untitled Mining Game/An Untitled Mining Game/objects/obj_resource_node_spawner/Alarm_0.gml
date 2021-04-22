var is_empty = place_empty(x + 0, y + 0);
if (is_empty)
{
	if((random_number >= 75))
	{
		instance_create_layer(x + 0, y + 0, "Active", obj_node_tree);
	}

	else
	{
		instance_create_layer(x + 0, y + 0, "Active", obj_node_rock);
	}

	random_number = floor(random_range(0, 100 + 1));

	is_alarm_set = false;
}

is_empty = place_empty(x + 0, y + 0);
if (!is_empty)
{
	alarm_set(0, 90);

	is_alarm_set = true;
}