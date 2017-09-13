dynamic class caurina.transitions.PropertyInfoObj
{
    var arrayIndex;
    var extra;
    var hasModifier;
    var isSpecialProperty;
    var modifierFunction;
    var modifierParameters;
    var originalValueComplete;
    var valueComplete;
    var valueStart;

    function PropertyInfoObj(p_valueStart, p_valueComplete, p_originalValueComplete, p_arrayIndex, p_extra, p_isSpecialProperty, p_modifierFunction, p_modifierParameters)
    {
        this.valueStart = p_valueStart;
        this.valueComplete = p_valueComplete;
        this.originalValueComplete = p_originalValueComplete;
        this.arrayIndex = p_arrayIndex;
        this.extra = p_extra;
        this.isSpecialProperty = p_isSpecialProperty;
        this.hasModifier = p_modifierFunction != undefined;
        this.modifierFunction = p_modifierFunction;
        this.modifierParameters = p_modifierParameters;
    }

    function clone()
    {
        var __reg2 = new caurina.transitions.PropertyInfoObj(this.valueStart, this.valueComplete, this.originalValueComplete, this.arrayIndex, this.extra, this.isSpecialProperty, this.modifierFunction, this.modifierParameters);
        return __reg2;
    }

    function toString()
    {
        var __reg2 = "\n[PropertyInfoObj ";
        __reg2 = __reg2 + ("valueStart:" + String(this.valueStart));
        __reg2 = __reg2 + ", ";
        __reg2 = __reg2 + ("valueComplete:" + String(this.valueComplete));
        __reg2 = __reg2 + ", ";
        __reg2 = __reg2 + ("originalValueComplete:" + String(this.originalValueComplete));
        __reg2 = __reg2 + ", ";
        __reg2 = __reg2 + ("arrayIndex:" + String(this.arrayIndex));
        __reg2 = __reg2 + ", ";
        __reg2 = __reg2 + ("extra:" + String(this.extra));
        __reg2 = __reg2 + ", ";
        __reg2 = __reg2 + ("isSpecialProperty:" + String(this.isSpecialProperty));
        __reg2 = __reg2 + ", ";
        __reg2 = __reg2 + ("hasModifier:" + String(this.hasModifier));
        __reg2 = __reg2 + ", ";
        __reg2 = __reg2 + ("modifierFunction:" + String(this.modifierFunction));
        __reg2 = __reg2 + ", ";
        __reg2 = __reg2 + ("modifierParameters:" + String(this.modifierParameters));
        __reg2 = __reg2 + "]\n";
        return __reg2;
    }

}
