global.bullet[global.bullets,0] = argument[1] * cos(argument[0] * pi / 180); //assings speed to bullet
global.bullet[global.bullets,1] = argument[1] * sin(argument[0] * pi / 180); //assigns a direction to bullet
global.bullet[global.bullets,2] = argument[2];
global.bullet[global.bullets,3] = argument[3];
global.bullet[global.bullets,4] = argument[4];
global.bullet[global.bullets,5] = argument[0];
global.bullets += 1;