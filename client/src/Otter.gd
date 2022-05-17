extends RigidBody2D



func _on_Hand1_area_entered(area):
	print("Otter made friends! (Hand 1)")
	var other_otter = area.get_parent().get_path()
	$Hand1/PinJoint2D.set_node_b(other_otter)

func _on_Hand2_area_entered(area):
	print("Otter made friends! (Hand 2)")
	var other_otter = area.get_parent().get_path()
	$Hand2/PinJoint2D.set_node_b(other_otter)
