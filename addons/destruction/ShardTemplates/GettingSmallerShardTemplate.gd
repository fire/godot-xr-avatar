extends RigidDynamicBody3D

func _ready():
	$Tween.interpolate_property($MeshInstance, "scale", scale, scale * .6, randf() * 4, Tween.TRANS_LINEAR, Tween.EASE_IN, 4)
	$Tween.start()
	await $Tween.finished()
	queue_free()
