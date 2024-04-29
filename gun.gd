extends Area2D

func _physics_process(delta):
	var enimies_in_range = get_overlapping_bodies()
	if enimies_in_range.size() > 0:
		var target_enemy = enimies_in_range[0]
		look_at(target_enemy.global_position)

func shoot():
	const BULLET = preload("res://bullet.tscn")
	var new_bullet = BULLET.instantiate()ww
	new_bullet.global_position = %ShootingPoint.global_position
	new_bullet.global_rotation = %ShootingPoint.global_rotation
	%ShootingPoint.add_child(new_bullet)

func _on_timer_timeout():
	shoot() # Replace with function body.
