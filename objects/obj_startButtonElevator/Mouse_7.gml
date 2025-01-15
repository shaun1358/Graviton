/// @description room moving function
// You can write your code in this editor

// Go to the next room when the object is clicked
if (room_exists(room_gameElevator)) { // Check if the room exists
    room_goto(room_gameElevator); // Transition to the specified room
} else {
    show_message("The room does not exist!"); // Debugging message (optional)
}