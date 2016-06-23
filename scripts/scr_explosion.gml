//code script

var teaks = argument[0];
var direct = argument[1];
var lenght = argument[2];
var xx = argument[3];
var yy = argument[4];
var distance = argument[5];
var time = argument[6];
var start = argument[7];
var e = global.explosions;

for (var i = 0; i < teaks; i += 1) {
    var rand = 10
    var idir = random_range(direct - 45, direct + 45);
    global.exploding[i + e,0] = xx + rand * cos(idir * pi / 180);
    global.exploding[i + e,1] = yy - rand * sin(idir * pi / 180);
    global.exploding[i + e,2] = random_range(time / 2,time * 2);
    global.exploding[i + e,3] = -1;
    global.exploding[i + e,4] = random(360);
    global.exploding[i + e,5] = 0; //subimage
    for (var d = 0; d < lenght; d += 1) {
        var s = d + teaks + (lenght * i);
        var rand = random(distance);
        if d == 0
            var dir = random_range(idir - 10, idir + 10);
            else
            var dir = random_range(dir - 10, dir + 10);
        global.exploding[s + e,0] = xx + rand * cos(dir * pi / 180);
        global.exploding[s + e,1] = yy - rand * sin(dir * pi / 180);
        global.exploding[s + e,2] = random_range(time / 2,time * 2);
        global.exploding[s + e,3] = (start + d * 3);
        global.exploding[s + e,4] = random(360); //rotation
        global.exploding[s + e,5] = 0; //subimage
    }
}
global.explosions += lenght * teaks + teaks - 1;
