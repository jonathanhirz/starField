import luxe.Component;
import luxe.Vector;
import luxe.Sprite;

class BounceComponent extends Component {

    public var travel_speed_x : Float = 150;
    public var travel_speed_y : Float = 50;
    var sprite : Sprite;

    override function init() {
        // called when initializing a component

        sprite = cast entity;

    } //init

    override function update(dt:Float) {
        // called every frame for you

        sprite.pos.x += travel_speed_x * dt;
        if(sprite.pos.x > Luxe.screen.w - sprite.size.x/2 || sprite.pos.x < 0 + sprite.size.x/2) {
            travel_speed_x = -travel_speed_x;
        }
        sprite.pos.y += travel_speed_y * 2 * dt;
        if(sprite.pos.y > Luxe.screen.h - sprite.size.y/2 || sprite.pos.y < 0 + sprite.size.y/2) {
            travel_speed_y = -travel_speed_y;
        }

    } //update

    override function onreset() {
        // called when the scene starts or restarts

    } //onreset

} //BounceComponent