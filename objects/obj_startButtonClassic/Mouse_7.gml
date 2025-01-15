// Go to the next room when the object is clicked
if (room_exists(target)) { // Check if the room exists
    room_goto(target); // Transition to the specified room
} else {
    show_message("The room does not exist!"); // Debugging message (optional)
}