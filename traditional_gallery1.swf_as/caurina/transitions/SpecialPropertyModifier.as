dynamic class caurina.transitions.SpecialPropertyModifier
{
    var getValue;
    var modifyValues;

    function SpecialPropertyModifier(p_modifyFunction, p_getFunction)
    {
        this.modifyValues = p_modifyFunction;
        this.getValue = p_getFunction;
    }

    function toString()
    {
        var __reg2 = "";
        __reg2 = __reg2 + "[SpecialPropertyModifier ";
        __reg2 = __reg2 + ("modifyValues:" + this.modifyValues.toString());
        __reg2 = __reg2 + ", ";
        __reg2 = __reg2 + ("getValue:" + this.getValue.toString());
        __reg2 = __reg2 + "]";
        return __reg2;
    }

}
