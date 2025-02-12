function scr_shuffleArray(_arr) {
    var _size = array_length(_arr);
    for (var i = _size - 1; i > 0; i--) {
        var _j = irandom(i);
        var _temp = _arr[i];
        _arr[i] = _arr[_j];
        _arr[_j] = _temp;
    }
}