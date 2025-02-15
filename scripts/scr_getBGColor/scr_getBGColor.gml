// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_getBGColor(type) {
	global.colorArray = [
    #E57272, #B75B5B, #894444, #5B2D2D, #5099CD, #407AA4, #305B7B, #203D51,
    #E5CA44, #B7A136, #897828, #5B501B, #8F68B7, #725392, #553E6D, #392948,
    #94E572, #76B75B, #588944, #3A5B2D, #E5E5E5, #B7B7B7, #898989, #000000
	];
	return global.colorArray[type];
}