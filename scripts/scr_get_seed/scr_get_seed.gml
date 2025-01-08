/// @function scr_get_seed(b)
/// @param b: Input value to determine stage weights

function scr_get_seed(b) {
    // Create a weights array for stages
    var weights = [];
    
    // Add weights for each stage index if b meets the stage requirements
    if (b >= 1) {
        var weight1 = max(ceil(100 - 0.5 * b), 30);
        array_push(weights, weight1); // Index 0 for stage 1
    } else {
        array_push(weights, 0);
    }
    if (b >= 10) {
        var weight10 = min(b, 30);
        array_push(weights, weight10); // Index 1 for stage 10
    } else {
        array_push(weights, 0);
    }
    if (b >= 30) {
        var weight30 = min(b - 20, 30);
        array_push(weights, weight30); // Index 2 for stage 30
    } else {
        array_push(weights, 0);
    }
    if (b >= 60) {
        var weight60 = min(b - 45, 30);
        array_push(weights, weight60); // Index 3 for stage 60
    } else {
        array_push(weights, 0);
    }
    if (b >= 100) {
        var weight100 = b - 90;
        array_push(weights, weight100); // Index 4 for stage 100
    } else {
        array_push(weights, 0);
    }
    
    // If all weights are 0, return undefined
    var total_weight = 0;
	for (var i = 0; i < array_length(weights); i++) {
		total_weight += weights[i];
	}
    if (total_weight <= 0) {
        return undefined;
    }
    
    // Weighted random selection
    var rand = random(total_weight);
    var cumulative = 0;
    
	var index = 0;
	
    for (var i = 0; i < array_length(weights); i++) {
        cumulative += weights[i];
        if (rand < cumulative) {
			index = i;
			break;
        }
    }
    
	 // Get the seed range for the given stage index
    var stage = global.const_SEED_STAGE_classic[index];
    if (is_undefined(stage)) {
        return undefined; // Invalid index, return undefined
    }
    
    var seed_start = stage.seed_start;
    var seed_end = stage.seed_end;
    
    // Create a list for weighted selection
    var weighted_list = [];
    
    // Iterate through the seed range and add entries based on weight
    for (var i = seed_start; i <= seed_end; i++) {
        var seed = global.const_SEED_SHAPE_CLASSIC[i];
        var weight = seed.weight;
        // Add the index to the weighted list 'weight' times
        for (var j = 0; j < weight; j++) {
            array_push(weighted_list, i);
        }
    }
    
    // If the weighted list is empty, return undefined
    if (array_length(weighted_list) == 0) {
        return undefined;
    }
    
    // Select a random index from the weighted list
    return weighted_list[irandom(array_length(weighted_list) - 1)];
	
}