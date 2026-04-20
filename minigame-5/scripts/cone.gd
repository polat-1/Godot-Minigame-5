extends RigidBody3D

func _ready() -> void:
	max_contacts_reported = 3
	contact_monitor = true

func _on_body_shape_entered(body_rid: RID, body: Node, body_shape_index: int, local_shape_index: int) -> void:
	if body is Vehicle:
		print("player hit cone")
		%TimeUI._increaseConeHitCount()
