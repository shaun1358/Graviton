function scr_deleteSaveAndRestart() {
    if (file_exists(SAVEFILE)) {
        file_delete(SAVEFILE); // Delete the save file
    }
    game_restart(); // Restart the game
}