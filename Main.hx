package ;

import org.tamina.net.URL;
import org.tamina.net.ScriptLoadingType;
import org.tamina.net.GroupURL;
import org.tamina.net.ScriptCompositeLoader;
class Main {
    public function new():Void {
    }

    public static function main():Void {

        var paramUrl = new URL("http://www.tamere.com/test.html?var1=aaaaa&var2=bbbbb&var3=ccccc");
        trace(paramUrl.parameters.get('var1'));
        trace(paramUrl.parameters.get('var2'));
        trace(paramUrl.parameters.get('var3'));

        var l = new ScriptCompositeLoader();
        var g1 = new GroupURL();
        g1.add( new URL('http://code.createjs.com/easeljs-0.7.1.min.js'));
        g1.add( new URL('http://code.createjs.com/tweenjs-0.5.1.min.js'));
        g1.add( new URL('http://code.createjs.com/soundjs-0.5.2.min.js'));

        var g2 = new GroupURL(ScriptLoadingType.PARALLEL, Math.random);
        g2.add( new URL('https://code.jquery.com/jquery-2.1.1.js'));
        g2.add( new URL('https://code.jquery.com/ui/1.11.2/jquery-ui.js'));
        g2.add( new URL('https://code.jquery.com/qunit/qunit-1.15.0.js'));

        var g3 = new GroupURL();
        g3.add( new URL('https://code.angularjs.org/1.3.2/angular-animate.js'));
        g3.add( new URL('https://code.angularjs.org/1.3.2/angular-aria.js'));
        g3.add( new URL('https://code.angularjs.org/1.3.2/angular.js'));

        l.add(g1);
        l.add(g2);
        l.add(g3);

        l.start();
    }


}