package;

import haxe.ui.Toolkit;
import haxe.ui.core.Screen;
import haxe.ui.containers.Box;
import haxe.ui.events.KeyboardEvent;

class Main {
    static var player:Box;

    static function main() {
        Toolkit.init();

        player = new Box();
        player.width = 50;
        player.height = 50;
        player.left = 375;
        player.top = 275;
        player.styleString = "background-color: red;";

        Screen.instance.addComponent(player);

        Screen.instance.registerEvent(KeyboardEvent.KEY_DOWN, onKeyDown);
    }

    static function onKeyDown(e:KeyboardEvent) {
        var speed = 10;

        switch (e.keyCode) {
            case 37: player.left -= speed; // esquerda
            case 38: player.top -= speed;  // cima
            case 39: player.left += speed; // direita
            case 40: player.top += speed;  // baixo
        }
    }
}