instance_create_layer(x, y, "Instances", obj_bullet_particle)
other.hp -= global.bulletStats.bulletDamage
if (other.hp <= 0) instance_destroy(other)
instance_destroy()