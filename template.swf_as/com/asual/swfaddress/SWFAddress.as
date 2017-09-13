dynamic class com.asual.swfaddress.SWFAddress
{
    static var _init: Boolean = false;
    static var _initChange: Boolean = false;
    static var _initChanged: Boolean = false;
    static var _strict: Boolean = true;
    static var _value: String = "";
    static var _queue = new Array();
    static var _availability = flash.external.ExternalInterface.available;
    static var _dispatcher = new mx.events.EventDispatcher();
    static var _initializer = com.asual.swfaddress.SWFAddress._initialize();

    function SWFAddress()
    {
    }

    static function _initialize()
    {
        if (com.asual.swfaddress.SWFAddress._availability) 
        {
            com.asual.swfaddress.SWFAddress._availability = Boolean(flash.external.ExternalInterface.call("function() { return (typeof SWFAddress != \"undefined\"); }"));
            flash.external.ExternalInterface.addCallback("getSWFAddressValue", com.asual.swfaddress.SWFAddress, function ()
            {
                return this._value;
            }
            );
            flash.external.ExternalInterface.addCallback("setSWFAddressValue", com.asual.swfaddress.SWFAddress, com.asual.swfaddress.SWFAddress._setValue);
        }
        if (typeof _level0.$swfaddress != "undefined") 
        {
            com.asual.swfaddress.SWFAddress._value = _level0.$swfaddress;
            com.asual.swfaddress.SWFAddress._availability = true;
        }
        com.asual.swfaddress.SWFAddress._initInterval = setInterval(com.asual.swfaddress.SWFAddress._check, 10);
        return true;
    }

    static function _check()
    {
        if ((typeof com.asual.swfaddress.SWFAddress.onInit == "function" || typeof com.asual.swfaddress.SWFAddress._dispatcher.__q_init != "undefined") && !com.asual.swfaddress.SWFAddress._init) 
        {
            com.asual.swfaddress.SWFAddress._setValueInit(com.asual.swfaddress.SWFAddress._getValue());
            com.asual.swfaddress.SWFAddress._init = true;
        }
        if (typeof com.asual.swfaddress.SWFAddress.onChange == "function" || typeof com.asual.swfaddress.SWFAddress._dispatcher.__q_change != "undefined" || typeof com.asual.swfaddress.SWFAddress.onExternalChange == "function" || typeof com.asual.swfaddress.SWFAddress._dispatcher.__q_externalChange != "undefined") 
        {
            clearInterval(com.asual.swfaddress.SWFAddress._initInterval);
            com.asual.swfaddress.SWFAddress._init = true;
            com.asual.swfaddress.SWFAddress._setValueInit(com.asual.swfaddress.SWFAddress._getValue());
        }
    }

    static function _strictCheck(value, force)
    {
        if (com.asual.swfaddress.SWFAddress.getStrict()) 
        {
            if (force) 
            {
                if (value.substr(0, 1) != "/") 
                {
                    value = "/" + value;
                }
            }
            else if (value == "") 
            {
                value = "/";
            }
        }
        return value;
    }

    static function _getValue()
    {
        var __reg1 = undefined;
        var __reg2 = "null";
        if (com.asual.swfaddress.SWFAddress._availability) 
        {
            __reg1 = String(flash.external.ExternalInterface.call("SWFAddress.getValue"));
            __reg2 = String(flash.external.ExternalInterface.call("SWFAddress.getIds"));
        }
        if (__reg2 == "undefined" || __reg2 == "null" || !com.asual.swfaddress.SWFAddress._availability || com.asual.swfaddress.SWFAddress._initChanged) 
        {
            __reg1 = com.asual.swfaddress.SWFAddress._value;
        }
        else if (__reg1 == "undefined" || __reg1 == "null") 
        {
            __reg1 = "";
        }
        return com.asual.swfaddress.SWFAddress._strictCheck(__reg1 || "", false);
    }

    static function _setValueInit(value)
    {
        com.asual.swfaddress.SWFAddress._value = value;
        if (com.asual.swfaddress.SWFAddress._init) 
        {
            com.asual.swfaddress.SWFAddress._dispatchEvent(com.asual.swfaddress.SWFAddressEvent.CHANGE);
            com.asual.swfaddress.SWFAddress._dispatchEvent(com.asual.swfaddress.SWFAddressEvent.EXTERNAL_CHANGE);
        }
        else 
        {
            com.asual.swfaddress.SWFAddress._dispatchEvent(com.asual.swfaddress.SWFAddressEvent.INIT);
        }
        com.asual.swfaddress.SWFAddress._initChange = true;
    }

    static function _setValue(value)
    {
        if (value == "undefined" || value == "null") 
        {
            value = "";
        }
        if (com.asual.swfaddress.SWFAddress._value == value && com.asual.swfaddress.SWFAddress._init) 
        {
            return undefined;
        }
        if (com.asual.swfaddress.SWFAddress._initChange) 
        {
            com.asual.swfaddress.SWFAddress._value = value;
            if (!com.asual.swfaddress.SWFAddress._init) 
            {
                com.asual.swfaddress.SWFAddress._init = true;
                if (typeof com.asual.swfaddress.SWFAddress.onInit == "function" || typeof com.asual.swfaddress.SWFAddress._dispatcher.__q_init != "undefined") 
                {
                    com.asual.swfaddress.SWFAddress._dispatchEvent(com.asual.swfaddress.SWFAddressEvent.INIT);
                }
            }
            com.asual.swfaddress.SWFAddress._dispatchEvent(com.asual.swfaddress.SWFAddressEvent.CHANGE);
            com.asual.swfaddress.SWFAddress._dispatchEvent(com.asual.swfaddress.SWFAddressEvent.EXTERNAL_CHANGE);
        }
    }

    static function _dispatchEvent(type)
    {
        if (typeof com.asual.swfaddress.SWFAddress._dispatcher["__q_" + type] != "undefined") 
        {
            com.asual.swfaddress.SWFAddress._dispatcher.dispatchEvent(new com.asual.swfaddress.SWFAddressEvent(type));
        }
        type = type.substr(0, 1).toUpperCase() + type.substring(1);
        if (typeof com.asual.swfaddress.SWFAddress["on" + type] == "function") 
        {
            com.asual.swfaddress.SWFAddress["on" + type]();
        }
    }

    static function _callQueue()
    {
        if (com.asual.swfaddress.SWFAddress._queue.length != 0) 
        {
            var __reg3 = "";
            var __reg2 = 0;
            var __reg1 = undefined;
            while (__reg1 = com.asual.swfaddress.SWFAddress._queue[__reg2]) 
            {
                if (typeof __reg1.param == "string") 
                {
                    __reg1.param = "\"" + __reg1.param + "\"";
                }
                __reg3 = __reg3 + (__reg1.fn + "(" + __reg1.param + ");");
                ++__reg2;
            }
            com.asual.swfaddress.SWFAddress._queue = new Array();
            getURL("javascript:" + __reg3 + "void(0);", "");
            return;
        }
        clearInterval(com.asual.swfaddress.SWFAddress._queueInterval);
    }

    static function _call(fn, param)
    {
        if (typeof param == "undefined") 
        {
            param = "";
        }
        if (com.asual.swfaddress.SWFAddress._availability) 
        {
            if (System.capabilities.os.indexOf("Mac") != -1) 
            {
                if (com.asual.swfaddress.SWFAddress._queue.length == 0) 
                {
                    com.asual.swfaddress.SWFAddress._queueInterval = setInterval(com.asual.swfaddress.SWFAddress._callQueue, 10);
                }
                com.asual.swfaddress.SWFAddress._queue.push({fn: fn, param: param});
                return;
            }
            flash.external.ExternalInterface.call(fn, param);
        }
    }

    static function toString()
    {
        return "[class SWFAddress]";
    }

    static function encodeURI(str)
    {
        var __reg8 = ["%00", "%01", "%02", "%03", "%04", "%05", "%06", "%07", "%08", "%09", "%0A", "%0B", "%0C", "%0D", "%0E", "%0F", "%10", "%11", "%12", "%13", "%14", "%15", "%16", "%17", "%18", "%19", "%1A", "%1B", "%1C", "%1D", "%1E", "%1F", "%20", "!", "%22", "#", "$", "%25", "&", "\'", "(", ")", "*", "+", ",", "-", ".", "/", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ":", ";", "%3C", "=", "%3E", "?", "@", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "%5B", "%5C", "%5D", "%5E", "_", "%60", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "%7B", "%7C", "%7D", "~", "%7F"];
        var __reg3 = [];
        var __reg4 = undefined;
        var __reg2 = undefined;
        var __reg6 = str.length;
        var __reg1 = undefined;
        var __reg5 = undefined;
        __reg4 = 0;
        __reg2 = 0;
        while (__reg4 < __reg6) 
        {
            __reg1 = str.charCodeAt(__reg4);
            if (__reg1 <= 127) 
            {
                __reg3[__reg2++] = __reg8[__reg1];
            }
            else if (__reg1 <= 2047) 
            {
                __reg3[__reg2++] = "%" + (192 | __reg1 >> 6 & 31).toString(16).toUpperCase();
                __reg3[__reg2++] = "%" + (128 | __reg1 & 63).toString(16).toUpperCase();
            }
            else if (__reg1 < 55296 || __reg1 > 57343) 
            {
                __reg3[__reg2++] = "%" + (224 | __reg1 >> 12 & 15).toString(16).toUpperCase();
                __reg3[__reg2++] = "%" + (128 | __reg1 >> 6 & 63).toString(16).toUpperCase();
                __reg3[__reg2++] = "%" + (128 | __reg1 & 63).toString(16).toUpperCase();
            }
            else if (++__reg4 < __reg6) 
            {
                __reg5 = str.charCodeAt(__reg4);
                if (__reg1 <= 56319 && 56320 <= __reg5 && __reg5 <= 57343) 
                {
                    __reg1 = ((__reg1 & 1023) << 10 | __reg5 & 1023) + 65536;
                    if (65536 <= __reg1 && __reg1 <= 1114111) 
                    {
                        __reg3[__reg2++] = "%" + (240 | __reg1 >>> 18 & 63).toString(16).toUpperCase();
                        __reg3[__reg2++] = "%" + (128 | __reg1 >>> 12 & 63).toString(16).toUpperCase();
                        __reg3[__reg2++] = "%" + (128 | __reg1 >>> 6 & 63).toString(16).toUpperCase();
                        __reg3[__reg2++] = "%" + (128 | __reg1 & 63).toString(16).toUpperCase();
                    }
                    else 
                    {
                        return null;
                    }
                }
                else 
                {
                    return null;
                }
            }
            else 
            {
                return null;
            }
            ++__reg4;
        }
        return __reg3.join("");
    }

    static function decodeURI(str)
    {
        var __reg4 = [];
        var __reg1 = 0;
        var __reg5 = 0;
        var __reg11 = str.length;
        var __reg2 = undefined;
        var __reg7 = undefined;
        var __reg9 = undefined;
        var __reg10 = undefined;
        var __reg8 = undefined;
        var checkcode = function (strcc, i2, i1)
        {
            var __reg2 = strcc.charAt(i1);
            var __reg1 = strcc.charAt(i2);
            if (isNaN(parseInt(__reg2, 16)) || isNaN(parseInt(__reg1, 16))) 
            {
                return null;
            }
            return parseInt(__reg2 + __reg1, 16);
        }
        ;
        var __reg6 = function (strcu, i3, i2, i1)
        {
            var __reg1 = strcu.charCodeAt(i1);
            if (__reg1 == 37) 
            {
                if ((__reg1 = checkcode(strcu, i3, i2)) == null) 
                {
                    return null;
                }
            }
            if (__reg1 >> 6 != 2) 
            {
                return null;
            }
            return __reg1;
        }
        ;
        while (__reg1 < __reg11) 
        {
            __reg2 = str.charCodeAt(__reg1++);
            if (__reg2 == 37) 
            {
                if ((__reg2 = checkcode(str, __reg1++, __reg1++)) == null) 
                {
                    return null;
                }
            }
            else 
            {
                __reg4[__reg5++] = String.fromCharCode(__reg2);
                continue;
            }
            if ((__reg0 = __reg2) === 35) 
            {
                if (str.charCodeAt(__reg1 - 3) == 37) 
                {
                    __reg4[__reg5++] = str.substr(__reg1 - 3, 3);
                }
                else 
                {
                    __reg4[__reg5++] = str.substr(__reg1 - 1, 1);
                }
            }
            else if (__reg0 === 36) 
            {
                if (str.charCodeAt(__reg1 - 3) == 37) 
                {
                    __reg4[__reg5++] = str.substr(__reg1 - 3, 3);
                }
                else 
                {
                    __reg4[__reg5++] = str.substr(__reg1 - 1, 1);
                }
            }
            else if (__reg0 === 38) 
            {
                if (str.charCodeAt(__reg1 - 3) == 37) 
                {
                    __reg4[__reg5++] = str.substr(__reg1 - 3, 3);
                }
                else 
                {
                    __reg4[__reg5++] = str.substr(__reg1 - 1, 1);
                }
            }
            else if (__reg0 === 43) 
            {
                if (str.charCodeAt(__reg1 - 3) == 37) 
                {
                    __reg4[__reg5++] = str.substr(__reg1 - 3, 3);
                }
                else 
                {
                    __reg4[__reg5++] = str.substr(__reg1 - 1, 1);
                }
            }
            else if (__reg0 === 44) 
            {
                if (str.charCodeAt(__reg1 - 3) == 37) 
                {
                    __reg4[__reg5++] = str.substr(__reg1 - 3, 3);
                }
                else 
                {
                    __reg4[__reg5++] = str.substr(__reg1 - 1, 1);
                }
            }
            else if (__reg0 === 47) 
            {
                if (str.charCodeAt(__reg1 - 3) == 37) 
                {
                    __reg4[__reg5++] = str.substr(__reg1 - 3, 3);
                }
                else 
                {
                    __reg4[__reg5++] = str.substr(__reg1 - 1, 1);
                }
            }
            else if (__reg0 === 58) 
            {
                if (str.charCodeAt(__reg1 - 3) == 37) 
                {
                    __reg4[__reg5++] = str.substr(__reg1 - 3, 3);
                }
                else 
                {
                    __reg4[__reg5++] = str.substr(__reg1 - 1, 1);
                }
            }
            else if (__reg0 === 59) 
            {
                if (str.charCodeAt(__reg1 - 3) == 37) 
                {
                    __reg4[__reg5++] = str.substr(__reg1 - 3, 3);
                }
                else 
                {
                    __reg4[__reg5++] = str.substr(__reg1 - 1, 1);
                }
            }
            else if (__reg0 === 61) 
            {
                if (str.charCodeAt(__reg1 - 3) == 37) 
                {
                    __reg4[__reg5++] = str.substr(__reg1 - 3, 3);
                }
                else 
                {
                    __reg4[__reg5++] = str.substr(__reg1 - 1, 1);
                }
            }
            else if (__reg0 === 63) 
            {
                if (str.charCodeAt(__reg1 - 3) == 37) 
                {
                    __reg4[__reg5++] = str.substr(__reg1 - 3, 3);
                }
                else 
                {
                    __reg4[__reg5++] = str.substr(__reg1 - 1, 1);
                }
            }
            else if (__reg0 === 64) 
            {
                if (str.charCodeAt(__reg1 - 3) == 37) 
                {
                    __reg4[__reg5++] = str.substr(__reg1 - 3, 3);
                }
                else 
                {
                    __reg4[__reg5++] = str.substr(__reg1 - 1, 1);
                }
            }
            else if ((__reg0 = __reg2 >> 4) === 0) 
            {
                __reg4[__reg5++] = String.fromCharCode(__reg2);
            }
            else if (__reg0 === 1) 
            {
                __reg4[__reg5++] = String.fromCharCode(__reg2);
            }
            else if (__reg0 === 2) 
            {
                __reg4[__reg5++] = String.fromCharCode(__reg2);
            }
            else if (__reg0 === 3) 
            {
                __reg4[__reg5++] = String.fromCharCode(__reg2);
            }
            else if (__reg0 === 4) 
            {
                __reg4[__reg5++] = String.fromCharCode(__reg2);
            }
            else if (__reg0 === 5) 
            {
                __reg4[__reg5++] = String.fromCharCode(__reg2);
            }
            else if (__reg0 === 6) 
            {
                __reg4[__reg5++] = String.fromCharCode(__reg2);
            }
            else if (__reg0 === 7) 
            {
                __reg4[__reg5++] = String.fromCharCode(__reg2);
            }
            else if (__reg0 === 12) 
            {
                if ((__reg7 = __reg6(str, __reg1++, __reg1++, __reg1++)) == null) 
                {
                    return null;
                }
                __reg4[__reg5++] = String.fromCharCode((__reg2 & 31) << 6 | __reg7 & 63);
            }
            else if (__reg0 === 13) 
            {
                if ((__reg7 = __reg6(str, __reg1++, __reg1++, __reg1++)) == null) 
                {
                    return null;
                }
                __reg4[__reg5++] = String.fromCharCode((__reg2 & 31) << 6 | __reg7 & 63);
            }
            else if (__reg0 === 14) 
            {
                if ((__reg7 = __reg6(str, __reg1++, __reg1++, __reg1++)) == null) 
                {
                    return null;
                }
                if ((__reg9 = __reg6(str, __reg1++, __reg1++, __reg1++)) == null) 
                {
                    return null;
                }
                __reg4[__reg5++] = String.fromCharCode((__reg2 & 15) << 12 | (__reg7 & 63) << 6 | (__reg9 & 63) << 0);
            }
            else if ((__reg0 = __reg2 & 15) === 0) 
            {
                if ((__reg7 = __reg6(str, __reg1++, __reg1++, __reg1++)) == null) 
                {
                    return null;
                }
                if ((__reg9 = __reg6(str, __reg1++, __reg1++, __reg1++)) == null) 
                {
                    return null;
                }
                if ((__reg10 = __reg6(str, __reg1++, __reg1++, __reg1++)) == null) 
                {
                    return null;
                }
                __reg8 = (__reg2 & 7) << 18 | (__reg7 & 63) << 12 | (__reg9 & 63) << 6 | (__reg10 & 63) - 65536;
                if (0 <= __reg8 && __reg8 <= 1048575) 
                {
                    __reg4[__reg5++] = String.fromCharCode(__reg8 >>> 10 & 1023 | 55296, __reg8 & 1023 | 56320);
                }
                else 
                {
                    return null;
                }
            }
            else if (__reg0 === 1) 
            {
                if ((__reg7 = __reg6(str, __reg1++, __reg1++, __reg1++)) == null) 
                {
                    return null;
                }
                if ((__reg9 = __reg6(str, __reg1++, __reg1++, __reg1++)) == null) 
                {
                    return null;
                }
                if ((__reg10 = __reg6(str, __reg1++, __reg1++, __reg1++)) == null) 
                {
                    return null;
                }
                __reg8 = (__reg2 & 7) << 18 | (__reg7 & 63) << 12 | (__reg9 & 63) << 6 | (__reg10 & 63) - 65536;
                if (0 <= __reg8 && __reg8 <= 1048575) 
                {
                    __reg4[__reg5++] = String.fromCharCode(__reg8 >>> 10 & 1023 | 55296, __reg8 & 1023 | 56320);
                }
                else 
                {
                    return null;
                }
            }
            else if (__reg0 === 2) 
            {
                if ((__reg7 = __reg6(str, __reg1++, __reg1++, __reg1++)) == null) 
                {
                    return null;
                }
                if ((__reg9 = __reg6(str, __reg1++, __reg1++, __reg1++)) == null) 
                {
                    return null;
                }
                if ((__reg10 = __reg6(str, __reg1++, __reg1++, __reg1++)) == null) 
                {
                    return null;
                }
                __reg8 = (__reg2 & 7) << 18 | (__reg7 & 63) << 12 | (__reg9 & 63) << 6 | (__reg10 & 63) - 65536;
                if (0 <= __reg8 && __reg8 <= 1048575) 
                {
                    __reg4[__reg5++] = String.fromCharCode(__reg8 >>> 10 & 1023 | 55296, __reg8 & 1023 | 56320);
                }
                else 
                {
                    return null;
                }
            }
            else if (__reg0 === 3) 
            {
                if ((__reg7 = __reg6(str, __reg1++, __reg1++, __reg1++)) == null) 
                {
                    return null;
                }
                if ((__reg9 = __reg6(str, __reg1++, __reg1++, __reg1++)) == null) 
                {
                    return null;
                }
                if ((__reg10 = __reg6(str, __reg1++, __reg1++, __reg1++)) == null) 
                {
                    return null;
                }
                __reg8 = (__reg2 & 7) << 18 | (__reg7 & 63) << 12 | (__reg9 & 63) << 6 | (__reg10 & 63) - 65536;
                if (0 <= __reg8 && __reg8 <= 1048575) 
                {
                    __reg4[__reg5++] = String.fromCharCode(__reg8 >>> 10 & 1023 | 55296, __reg8 & 1023 | 56320);
                }
                else 
                {
                    return null;
                }
            }
            else if (__reg0 === 4) 
            {
                if ((__reg7 = __reg6(str, __reg1++, __reg1++, __reg1++)) == null) 
                {
                    return null;
                }
                if ((__reg9 = __reg6(str, __reg1++, __reg1++, __reg1++)) == null) 
                {
                    return null;
                }
                if ((__reg10 = __reg6(str, __reg1++, __reg1++, __reg1++)) == null) 
                {
                    return null;
                }
                __reg8 = (__reg2 & 7) << 18 | (__reg7 & 63) << 12 | (__reg9 & 63) << 6 | (__reg10 & 63) - 65536;
                if (0 <= __reg8 && __reg8 <= 1048575) 
                {
                    __reg4[__reg5++] = String.fromCharCode(__reg8 >>> 10 & 1023 | 55296, __reg8 & 1023 | 56320);
                }
                else 
                {
                    return null;
                }
            }
            else if (__reg0 === 5) 
            {
                if ((__reg7 = __reg6(str, __reg1++, __reg1++, __reg1++)) == null) 
                {
                    return null;
                }
                if ((__reg9 = __reg6(str, __reg1++, __reg1++, __reg1++)) == null) 
                {
                    return null;
                }
                if ((__reg10 = __reg6(str, __reg1++, __reg1++, __reg1++)) == null) 
                {
                    return null;
                }
                __reg8 = (__reg2 & 7) << 18 | (__reg7 & 63) << 12 | (__reg9 & 63) << 6 | (__reg10 & 63) - 65536;
                if (0 <= __reg8 && __reg8 <= 1048575) 
                {
                    __reg4[__reg5++] = String.fromCharCode(__reg8 >>> 10 & 1023 | 55296, __reg8 & 1023 | 56320);
                }
                else 
                {
                    return null;
                }
            }
            else if (__reg0 === 6) 
            {
                if ((__reg7 = __reg6(str, __reg1++, __reg1++, __reg1++)) == null) 
                {
                    return null;
                }
                if ((__reg9 = __reg6(str, __reg1++, __reg1++, __reg1++)) == null) 
                {
                    return null;
                }
                if ((__reg10 = __reg6(str, __reg1++, __reg1++, __reg1++)) == null) 
                {
                    return null;
                }
                __reg8 = (__reg2 & 7) << 18 | (__reg7 & 63) << 12 | (__reg9 & 63) << 6 | (__reg10 & 63) - 65536;
                if (0 <= __reg8 && __reg8 <= 1048575) 
                {
                    __reg4[__reg5++] = String.fromCharCode(__reg8 >>> 10 & 1023 | 55296, __reg8 & 1023 | 56320);
                }
                else 
                {
                    return null;
                }
            }
            else if (__reg0 === 7) 
            {
                if ((__reg7 = __reg6(str, __reg1++, __reg1++, __reg1++)) == null) 
                {
                    return null;
                }
                if ((__reg9 = __reg6(str, __reg1++, __reg1++, __reg1++)) == null) 
                {
                    return null;
                }
                if ((__reg10 = __reg6(str, __reg1++, __reg1++, __reg1++)) == null) 
                {
                    return null;
                }
                __reg8 = (__reg2 & 7) << 18 | (__reg7 & 63) << 12 | (__reg9 & 63) << 6 | (__reg10 & 63) - 65536;
                if (0 <= __reg8 && __reg8 <= 1048575) 
                {
                    __reg4[__reg5++] = String.fromCharCode(__reg8 >>> 10 & 1023 | 55296, __reg8 & 1023 | 56320);
                }
                else 
                {
                    return null;
                }
            }
            else 
            {
                return null;
            }
        }
        return __reg4.join("");
    }

    static function back()
    {
        com.asual.swfaddress.SWFAddress._call("SWFAddress.back");
    }

    static function forward()
    {
        com.asual.swfaddress.SWFAddress._call("SWFAddress.forward");
    }

    static function up()
    {
        var __reg1 = com.asual.swfaddress.SWFAddress.getPath();
        com.asual.swfaddress.SWFAddress.setValue(__reg1.substr(0, __reg1.lastIndexOf("/", __reg1.length - 2) + (__reg1.substr(__reg1.length - 1) == "/" ? 1 : 0)));
    }

    static function go(delta)
    {
        com.asual.swfaddress.SWFAddress._call("SWFAddress.go", delta);
    }

    static function href(url, target)
    {
        target = typeof target == "undefined" ? "_self" : target;
        if (com.asual.swfaddress.SWFAddress._availability && System.capabilities.playerType == "ActiveX") 
        {
            flash.external.ExternalInterface.call("SWFAddress.href", url, target);
            return undefined;
        }
        getURL(url, target);
    }

    static function popup(url, name, options, handler)
    {
        name = typeof name == "undefined" ? "popup" : name;
        options = typeof options == "undefined" ? "\"\"" : options;
        handler = typeof handler == "undefined" ? "" : handler;
        if (com.asual.swfaddress.SWFAddress._availability && System.capabilities.playerType == "ActiveX") 
        {
            flash.external.ExternalInterface.call("SWFAddress.popup", url, name, options, handler);
            return undefined;
        }
        getURL("javascript:popup=window.open(\"" + url + "\",\"" + name + "\"," + options + ");" + handler + ";void(0);", "");
    }

    static function addEventListener(type, listener)
    {
        com.asual.swfaddress.SWFAddress._dispatcher.addEventListener(type, listener);
    }

    static function removeEventListener(type, listener)
    {
        com.asual.swfaddress.SWFAddress._dispatcher.removeEventListener(type, listener);
    }

    static function dispatchEvent(event)
    {
        com.asual.swfaddress.SWFAddress._dispatcher.dispatchEvent(event);
    }

    static function hasEventListener(type)
    {
        return typeof com.asual.swfaddress.SWFAddress._dispatcher["__q_" + type] != "undefined";
    }

    static function getBaseURL()
    {
        var __reg1 = "null";
        if (com.asual.swfaddress.SWFAddress._availability) 
        {
            __reg1 = String(flash.external.ExternalInterface.call("SWFAddress.getBaseURL"));
        }
        return __reg1 == "undefined" || __reg1 == "null" || !com.asual.swfaddress.SWFAddress._availability ? "" : __reg1;
    }

    static function getStrict()
    {
        var __reg1 = "null";
        if (com.asual.swfaddress.SWFAddress._availability) 
        {
            __reg1 = String(flash.external.ExternalInterface.call("SWFAddress.getStrict"));
        }
        return __reg1 == "null" || __reg1 == "undefined" ? com.asual.swfaddress.SWFAddress._strict : __reg1 == "true";
    }

    static function setStrict(strict)
    {
        com.asual.swfaddress.SWFAddress._call("SWFAddress.setStrict", strict);
        com.asual.swfaddress.SWFAddress._strict = strict;
    }

    static function getHistory()
    {
        return Boolean(com.asual.swfaddress.SWFAddress._availability ? flash.external.ExternalInterface.call("SWFAddress.getHistory") : false);
    }

    static function setHistory(history)
    {
        com.asual.swfaddress.SWFAddress._call("SWFAddress.setHistory", history);
    }

    static function getTracker()
    {
        return com.asual.swfaddress.SWFAddress._availability ? String(flash.external.ExternalInterface.call("SWFAddress.getTracker")) : "";
    }

    static function setTracker(tracker)
    {
        com.asual.swfaddress.SWFAddress._call("SWFAddress.setTracker", tracker);
    }

    static function getTitle()
    {
        var __reg1 = com.asual.swfaddress.SWFAddress._availability ? String(flash.external.ExternalInterface.call("SWFAddress.getTitle")) : "";
        if (__reg1 == "undefined" || __reg1 == "null") 
        {
            __reg1 = "";
        }
        return com.asual.swfaddress.SWFAddress.decodeURI(__reg1);
    }

    static function setTitle(title)
    {
        com.asual.swfaddress.SWFAddress._call("SWFAddress.setTitle", com.asual.swfaddress.SWFAddress.encodeURI(com.asual.swfaddress.SWFAddress.decodeURI(title)));
    }

    static function getStatus()
    {
        var __reg1 = com.asual.swfaddress.SWFAddress._availability ? String(flash.external.ExternalInterface.call("SWFAddress.getStatus")) : "";
        if (__reg1 == "undefined" || __reg1 == "null") 
        {
            __reg1 = "";
        }
        return com.asual.swfaddress.SWFAddress.decodeURI(__reg1);
    }

    static function setStatus(status)
    {
        com.asual.swfaddress.SWFAddress._call("SWFAddress.setStatus", com.asual.swfaddress.SWFAddress.encodeURI(com.asual.swfaddress.SWFAddress.decodeURI(status)));
    }

    static function resetStatus()
    {
        com.asual.swfaddress.SWFAddress._call("SWFAddress.resetStatus");
    }

    static function getValue()
    {
        return com.asual.swfaddress.SWFAddress.decodeURI(com.asual.swfaddress.SWFAddress._strictCheck(com.asual.swfaddress.SWFAddress._value || "", false));
    }

    static function setValue(value)
    {
        if (value == "undefined" || value == "null") 
        {
            value = "";
        }
        value = com.asual.swfaddress.SWFAddress.encodeURI(com.asual.swfaddress.SWFAddress.decodeURI(com.asual.swfaddress.SWFAddress._strictCheck(value, true)));
        if (com.asual.swfaddress.SWFAddress._value != value) 
        {
            com.asual.swfaddress.SWFAddress._value = value;
            com.asual.swfaddress.SWFAddress._call("SWFAddress.setValue", value);
            if (com.asual.swfaddress.SWFAddress._init) 
            {
                com.asual.swfaddress.SWFAddress._dispatchEvent(com.asual.swfaddress.SWFAddressEvent.CHANGE);
                com.asual.swfaddress.SWFAddress._dispatchEvent(com.asual.swfaddress.SWFAddressEvent.INTERNAL_CHANGE);
                return;
            }
            com.asual.swfaddress.SWFAddress._initChanged = true;
        }
    }

    static function getPath()
    {
        var __reg1 = com.asual.swfaddress.SWFAddress.getValue();
        if (__reg1.indexOf("?") != -1) 
        {
            return __reg1.split("?")[0];
        }
        if (__reg1.indexOf("#") != -1) 
        {
            return __reg1.split("#")[0];
        }
        return __reg1;
    }

    static function getPathNames()
    {
        var __reg1 = com.asual.swfaddress.SWFAddress.getPath();
        var __reg2 = __reg1.split("/");
        if (__reg1.substr(0, 1) == "/" || __reg1.length == 0) 
        {
            __reg2.splice(0, 1);
        }
        if (__reg1.substr(__reg1.length - 1, 1) == "/") 
        {
            __reg2.splice(__reg2.length - 1, 1);
        }
        return __reg2;
    }

    static function getQueryString()
    {
        var __reg1 = com.asual.swfaddress.SWFAddress.getValue();
        var __reg2 = __reg1.indexOf("?");
        if (__reg2 != -1 && __reg2 < __reg1.length) 
        {
            return __reg1.substr(__reg2 + 1);
        }
    }

    static function getParameter(param)
    {
        var __reg5 = com.asual.swfaddress.SWFAddress.getValue();
        var __reg7 = __reg5.indexOf("?");
        if (__reg7 != -1) 
        {
            __reg5 = __reg5.substr(__reg7 + 1);
            var __reg4 = __reg5.split("&");
            var __reg1 = undefined;
            var __reg2 = __reg4.length;
            var __reg3 = new Array();
            while (__reg2--) 
            {
                __reg1 = __reg4[__reg2].split("=");
                if (__reg1[0] == param) 
                {
                    __reg3.push(__reg1[1]);
                }
            }
            if (__reg3.length != 0) 
            {
                return __reg3.length == 1 ? __reg3[0] : __reg3;
            }
        }
    }

    static function getParameterNames()
    {
        var __reg4 = com.asual.swfaddress.SWFAddress.getValue();
        var __reg5 = __reg4.indexOf("?");
        var __reg3 = new Array();
        if (__reg5 != -1) 
        {
            __reg4 = __reg4.substr(__reg5 + 1);
            if (__reg4 != "" && __reg4.indexOf("=") != -1) 
            {
                var __reg2 = __reg4.split("&");
                var __reg1 = 0;
                while (__reg1 < __reg2.length) 
                {
                    __reg3.push(__reg2[__reg1].split("=")[0]);
                    ++__reg1;
                }
            }
        }
        return __reg3;
    }

}
