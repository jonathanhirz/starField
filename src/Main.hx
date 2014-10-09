import luxe.Input;
import luxe.AppConfig;
import luxe.Sprite;
import luxe.Vector;
import luxe.Color;

class Main extends luxe.Game {

    var starSprite : Sprite;
    var numberOfStars : Int = 300;

    override function config( config:AppConfig ) {

        config.window.title = config.runtime.window.title;

        if(config.runtime.window != null) {
            if(config.runtime.window.width != null) {
                config.window.width = Std.int(config.runtime.window.width);
            }
            if(config.runtime.window.height != null) {
                config.window.height = Std.int(config.runtime.window.height);
            }
        }
        return config;

    } //config

    override function ready() {

        for(i in 0...numberOfStars) {
            starSprite = new Sprite({
                name : 'star'+i,
                size : new Vector(16, 16),
                rotation_z : 45.0,
                color : new Color().rgb(0xffffff),
                pos : new Vector(Std.random(Std.int(Luxe.screen.w)), Std.random(Std.int(Luxe.screen.h)))
            }); //starSprite

            starSprite.add(new StarComponent());
        }

    } //ready

    override function onkeyup( e:KeyEvent ) {

        if(e.keycode == Key.escape) {
            Luxe.shutdown();
        }

    } //onkeyup

    override function update( dt:Float ) {

    } //update


} //Main
