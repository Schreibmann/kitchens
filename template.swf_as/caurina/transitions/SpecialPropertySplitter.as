dynamic class caurina.transitions.SpecialPropertySplitter
{
    var parameters;

    function SpecialPropertySplitter(p_splitFunction, p_parameters)
    {
        this.splitValues = p_splitFunction;
        this.parameters = p_parameters;
    }

    function splitValues(p_value, p_parameters)
    {
        return [];
    }

    function toString()
    {
        var __reg2 = "";
        __reg2 = __reg2 + "[SpecialPropertySplitter ";
        __reg2 = __reg2 + ("splitValues:" + this.splitValues.toString());
        __reg2 = __reg2 + ", ";
        __reg2 = __reg2 + ("parameters:" + this.parameters.toString());
        __reg2 = __reg2 + "]";
        return __reg2;
    }

}
