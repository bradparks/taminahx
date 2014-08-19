package org.tamina.utils;

import js.html.Node;
import js.html.Element;
class HTMLUtils {
    public static function getElementById(parent:Element, id:String):Element {
        var result:Element = null;
        for (i in 0...parent.children.length) {
            var el:Element = cast parent.children.item(i);
            var elId = getAttribute(el,'id');
            trace(elId);
            if(elId == id){
                result = el;
                break;
            } else {
                result = getElementById(el,id);
            }
        }
        return result;
    }

    public static function getAttribute(element:Node,name:String):String{
        var result:String = '';
        for(i in 0...element.attributes.length){
            var att = element.attributes.item(i);
            if(att.nodeName == name){
                result = att.nodeValue;
                break;
            }
        }
        return result;
    }
}