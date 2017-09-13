dynamic class caurina.transitions.SpecialProperty
{
    var getValue;
    var parameters;
    var preProcess;
    var setValue;

    function SpecialProperty(p_getFunction, p_setFunction, p_parameters, p_preProcessFunction)
    {
        this.getValue = p_getFunction;
        this.setValue = p_setFunction;
        this.parameters = p_parameters;
        this.preProcess = p_preProcessFunction;
    }

    function toString()
    {
        var __reg2 = "";
        __reg2 = __reg2 + "[SpecialProperty ";
        __reg2 = __reg2 + ("getValue:" + this.getValue.toString());
        __reg2 = __reg2 + ", ";
        __reg2 = __reg2 + ("setValue:" + this.setValue.toString());
        __reg2 = __reg2 + ", ";
        __reg2 = __reg2 + ("parameters:" + this.parameters.toString());
        __reg2 = __reg2 + ", ";
        __reg2 = __reg2 + ("preProcess:" + this.preProcess.toString());
        __reg2 = __reg2 + "]";
        return __reg2;
    }

}
