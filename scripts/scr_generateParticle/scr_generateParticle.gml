//파티클을 생성해주는 함수
//particle        = 파티클의 종류
//number          = 파티클의 수
//dir             = 파티클의 날아가는 방향
//dir_randomRange = 파티클의 날아가는 방향에 부여할 랜덤범위

function scr_generateParticle(particle, number, dir, dir_randomRange, _x, _y) {

	repeat(number * global.optionParticle) with instance_create_layer(_x, _y, "Effect", particle) {
		direction = dir + random_range(-dir_randomRange, dir_randomRange);	
	}
}