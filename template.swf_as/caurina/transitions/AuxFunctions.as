dynamic class caurina.transitions.AuxFunctions
{

    function AuxFunctions()
    {
    }

    static function numberToR(p_num)
    {
        return (p_num & 16711680) >> 16;
    }

    static function numberToG(p_num)
    {
        return (p_num & 65280) >> 8;
    }

    static function numberToB(p_num)
    {
        return p_num & 255;
    }

    static function isInArray(p_string, p_array)
    {
        var __reg2 = p_array.length;
        var __reg1 = 0;
        while (__reg1 < __reg2) 
        {
            if (p_array[__reg1] == p_string) 
            {
                return true;
            }
            ++__reg1;
        }
        return false;
    }

    static function getObjectLength(p_object)
    {
        var __reg1 = 0;
        for (var __reg2 in p_object) 
        {
            ++__reg1;
        }
        return __reg1;
    }

    static function concatObjects()
    {
        var __reg4 = {};
        var __reg2 = undefined;
        var __reg3 = 0;
        while (__reg3 < arguments.length) 
        {
            __reg2 = arguments[__reg3];
            for (var __reg5 in __reg2) 
            {
                if (__reg2[__reg5] == null) 
                {
                    delete __reg4[__reg5];
                }
                else 
                {
                    __reg4[__reg5] = __reg2[__reg5];
                }
            }
            ++__reg3;
        }
        return __reg4;
    }

}
