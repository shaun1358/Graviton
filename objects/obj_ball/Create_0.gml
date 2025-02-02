//gravtPower = 중력 강도, gravtApply = 현재 중력 적용 여부
//gravtApply는 brick과 충돌하면 1이 됨
gravtPower = 50;
gravtApply = 0;

//공의 데미지
damage = 1;
damageMult = 1;

scaleTo = 1;
image_xscale = scaleTo;
image_yscale = scaleTo;

//yspdMax = 공의 y속도의 최대최소, linearDamping = 공의 마찰계수
yspdMax = 20;
linearDamping = 0.1
phy_linear_damping = 0;

part_system = part_system_create();
part_emitter = part_emitter_create(part_system);

part_type = part_type_create();

// Set particle properties
part_type_shape(part_type, pt_shape_circle);
part_type_size(part_type, 0.2, 0.6, 0, 0);
part_type_color1(part_type, c_white);
part_type_blend(part_type, true); // Enables additive blending for neon effect
part_type_alpha3(part_type, 1, 0.5, 0); // Fades out
part_type_speed(part_type, 2, 5, 0, 0);
part_type_life(part_type, 30, 60);

yThreshold = 1920;

xspdTemp = 0;
yspdTemp = 0;