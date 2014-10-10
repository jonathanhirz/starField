import luxe.Component;
import luxe.Sprite;
import luxe.Color;
import luxe.Vector;
import luxe.tween.Actuate;

class ColorRollComponent extends Component {

    var sprite : Sprite;
    var rad : Float = 0;

    override function init() {
        // called when initializing a component

        sprite = cast entity;

        // start tween for 'rad' variable
        Actuate.tween(this, 1, { rad: 2 * Math.PI } )
            .repeat()
            .reflect();

    } //init

    override function update(dt:Float) {
        // called every frame for you

        var r = 0.5 + Math.sin(rad) * 0.5;
        var g = 0.5 + Math.sin(((1/3) * 2 * Math.PI) + rad) * 0.5;
        var b = 0.5 + Math.sin(((2/3) * 2 * Math.PI) + rad) * 0.5;
        sprite.color = new Color(r, g, b);

        // trace(rad);
        // trace(r);

    } //update

    override function onreset() {
        // called when the scene starts or restarts

    } //onreset

} //ColorRollComponent