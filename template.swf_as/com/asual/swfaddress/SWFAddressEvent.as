dynamic class com.asual.swfaddress.SWFAddressEvent
{
    static var INIT: String = "init";
    static var CHANGE: String = "change";
    static var INTERNAL_CHANGE: String = "internalChange";
    static var EXTERNAL_CHANGE: String = "externalChange";
    var _parameterNames;
    var _parameters;
    var _path;
    var _pathNames;
    var _type;
    var _value;

    function SWFAddressEvent(type)
    {
        this._type = type;
    }

    function toString()
    {
        return "[class SWFAddressEvent]";
    }

    function get type()
    {
        return this._type;
    }

    function get target()
    {
        return com.asual.swfaddress.SWFAddress;
    }

    function get value()
    {
        if (typeof this._value == "undefined") 
        {
            this._value = com.asual.swfaddress.SWFAddress.getValue();
        }
        return this._value;
    }

    function get path()
    {
        if (typeof this._path == "undefined") 
        {
            this._path = com.asual.swfaddress.SWFAddress.getPath();
        }
        return this._path;
    }

    function get pathNames()
    {
        if (typeof this._pathNames == "undefined") 
        {
            this._pathNames = com.asual.swfaddress.SWFAddress.getPathNames();
        }
        return this._pathNames;
    }

    function get parameters()
    {
        if (typeof this._parameters == "undefined") 
        {
            this._parameters = new Array();
            var __reg2 = 0;
            while (__reg2 < this.__get__parameterNames().length) 
            {
                this._parameters[this.__get__parameterNames()[__reg2]] = com.asual.swfaddress.SWFAddress.getParameter(this.__get__parameterNames()[__reg2]);
                ++__reg2;
            }
        }
        return this._parameters;
    }

    function get parameterNames()
    {
        if (typeof this._parameterNames == "undefined") 
        {
            this._parameterNames = com.asual.swfaddress.SWFAddress.getParameterNames();
        }
        return this._parameterNames;
    }

}
