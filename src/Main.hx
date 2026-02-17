package;

import haxe.ui.Toolkit;
import haxe.ui.core.Screen;
import haxe.ui.components.Box;
import haxe.ui.events.KeyboardEvent;

class Main {
    static var player:Box;

    static function main() {
        // Inicializa o HaxeUI
        Toolkit.init();

        // Cria o "personagem" (um quadrado)
        player = new Box();
        player.width = 50;
        player.height = 50;
        player.left = 375;
        player.top = 275;
        player.styleString = "background-color: red;";

        // Adiciona na tela
        Screen.instance.addComponent(player);

        // Escuta teclado
        Screen.instance.registerEvent(KeyboardEvent.KEY_DOWN, onKeyDown);
    }

    static function onKeyDown(e:KeyboardEvent) {
        var speed = 10;

        switch (e.keyCode) {
            case 37: // esquerda
                player.left -= speed;
            case 38: // cima
                player.top -= speed;
            case 39: // direita
                player.left += speed;
            case 40: // baixo
                player.top += speed;
        }
    }
}
