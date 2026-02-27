// IDEA: The rifle bullets penetrate enemies to compensate for a slower firing speed.
// Only damage if this enemy was NOT already hit
if (ds_list_find_index(hit_list, other) == -1)
{
    other.hp -= bulletDamage;

    if (other.hp <= 0)
    {
        instance_destroy(other);
    }

    // Remember that we hit this enemy
    ds_list_add(hit_list, other);
}