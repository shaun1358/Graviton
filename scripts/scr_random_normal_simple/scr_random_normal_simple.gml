/// scr_random_normal_simple(mean, std_dev)
/// Approximate normal distribution using the sum of multiple uniform values.

function scr_random_normal_simple(mean, std_dev) {
    var sum = 0;
    var n = 6; // Higher n = closer to normal distribution

    for (var i = 0; i < n; i++) {
        sum += random(1);
    }

    sum -= n / 2; // Center around 0
    return mean + (sum * std_dev);
}

