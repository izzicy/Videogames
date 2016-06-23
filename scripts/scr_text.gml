str = argument[0];
cheats = argument[1];
strCheat = argument[2];
pauseCommand = argument[3];
messages = argument[4];
global.massage[messages] = str;

if string_char_at(str,0) == "/" {
    var numbs = string_digits(str); 
    str = string_letters(str);
    switch (str) {
        case "cheatstrue": case "cheatson": cheats = true str = "/- Cheats activated" break;
        case "cheatsfalse": case "cheatsoff": cheats = false str = "/- Cheats deactivated" break;
        case "speedtrue": case "speedon": str = "/- Superfast shooting is activated" if cheats obj_ship.SuperFast = true else str = strCheat break;
        case "speedfalse": case "speedoff": str = "/- Superfast shooting is deactivated" if cheats obj_ship.SuperFast = false else str = strCheat break;
        case "pausetrue": case "pauseon": str = "/- Pausing while entering command active" if cheats pauseCommand = true else str = strCheat break;
        case "pause false": case "pauseoff": str = "/- Pausing while entering command deactive" if cheats pauseCommand = false else str = strCheat break;
        case "/random true": case "randomon": str = "/- Random angle shooting is activated" if cheats obj_ship.RandAngl = true else str = strCheat break;
        case "randomfalse": case "randomoff": str = "/- Random angle shooting is deactivated" if cheats obj_ship.RandAngl = false else str = strCheat break;
        case "god": case "godmode": str = "God Has Gifted You ¦__ ^o^ __¦ An Immortal Life!" if cheats obj_ship.GodMode = true else str = "/- God needs to give premission in order to achieve the ultimate immortallity" break;
        case "tp": str = "/- Teleported to mouse" if cheats {obj_ship.x = mouse_x obj_ship.y = mouse_y} else str = strCheat  break;
        case "position": case"pos": str = " x axis = " + string(obj_ship.x) + "     y axis = " + string(obj_ship.y) break;
        case "exit": case"s": case "end": case "stop": case "endgame": str = game_end()  break;
        case "kill": str = "/- You have killed yourself" if cheats Insert_thing_here = false else str = strCheat break; case "kill enemy": str = "/- You have killed all enemies" if cheats with obj_enemy_parent instance_destroy() else str = strCheat  break;
        case "cheats": if cheats str = "/- Cheats are Active" else str = "/- Cheats aren't Active" break;
        case "gameid": str = "/- Game ID is equal to: " + string(game_id) break;
        case "random": str = "/- Player shoots in all different random directions. (cheat only)" break;
        case "pause": str = "/- Pauses the game when entering text or a command. (cheat only)" break;
        case "speed": str = "/- Faster shooting. (cheat only)" break; 
        default: if (string_letters(str) = "gamespeed" || string_letters(str) = "gamespeedglitch") {
            if string_digits(str) != "" && cheats {
                if str = "gamespeed" global.gamespeed = real(numbs) / 1000;
                if str = "gamespeedglitch" global.gamespeed = -real(numbs) / 1000;
                str = "/- GameSpeed set to: " + string(global.gamespeed) + " seconds/second.";
            } else if cheats str = "/- You need to fill in a value" else str = strCheat;
        } else str = "/- Invalid Command ERROR()" break;
    }
}

return str;
return cheats;
return pauseCommand;
