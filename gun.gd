extends Area2D

func _physics_process(delta):
	var enimies_in_range = get_overlapping_bodies()
	if enimies_in_range.size() > 0:
		var target_enemy = enimies_in_range[0]
		look_at(target_enemy.global_position)
