if (state == mob_states.idle) {
	scr_enemy_idle(id)
} else if (state == mob_states.roam) {
	scr_enemy_roam(id)
} else if (state == mob_states.follow) {
	scr_enemy_follow(id)
} else if (state == mob_states.attack) {
	scr_enemy_attack(id)
}