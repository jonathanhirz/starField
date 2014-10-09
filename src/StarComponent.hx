import luxe.Component;
import luxe.Sprite;
import luxe.Color;
import luxe.Vector;
import luxe.utils.Maths;

class StarComponent extends Component {

    var sprite : Sprite;

    private var _starVelocity : Float = 100;
    private var _diff : Float;

    override function init() {
        // called when initializing a component

        sprite = cast entity;
        _diff = Math.random() * 0.5;
        trace(_diff);

        sprite.scale = new Vector(_diff, _diff);
        sprite.color = new Color(1, 1, 1, _diff);

    } //init

    override function update(dt:Float) {
        // called every frame for you

        sprite.pos.x -= _starVelocity * dt * _diff;
        if( sprite.pos.x < 0 ) {
            sprite.pos.x = Luxe.screen.w + sprite.size.w;
        }

    } //update

    override function onreset() {
        // called when the scene starts or restarts

    } //onreset

} //StarComponent