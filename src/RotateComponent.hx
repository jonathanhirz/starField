import luxe.Component;
import luxe.Sprite;

class RotateComponent extends Component {

    var sprite : Sprite;
    private var _rotateSpeed : Float = 0;

    override function init() {
        // called when initializing a component

        sprite = cast entity;

        _rotateSpeed = Math.random() * 100;

    } //init

    override function update(dt:Float) {
        // called every frame for you

        sprite.rotation_z += _rotateSpeed * dt;
        // trace(sprite.rotation_z);

    } //update

    override function onreset() {
        // called when the scene starts or restarts

    } //onreset

} //RotateComponent