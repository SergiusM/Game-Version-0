extends Area2D

var hit =false;
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if hit==false:
		$AnimatedSprite2D.play("idle");
	else :
		$AnimatedSprite2D.play("hit");

func _on_area_entered(area):
	hit=true;


func _on_animated_sprite_2d_animation_finished():
	if $AnimatedSprite2D.animation=="hit":
		hit = false;
