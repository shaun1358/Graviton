event_inherited();

// yes -> reset save file and restart
if (file_exists(SAVEFILE)) {
    file_delete(SAVEFILE);
}
game_restart();