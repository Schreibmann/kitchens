dynamic class com.robertpenner.easing.Bounce
{

    function Bounce()
    {
    }

    static function easeOut(t, b, c, d)
    {
        if ((t = t / d) < 0.363636363636) 
        {
            return c * (7.5625 * t * t) + b;
        }
        if (t < 0.727272727273) 
        {
            return c * (7.5625 * (t = t - 0.545454545455) * t + 0.75) + b;
        }
        if (t < 0.909090909091) 
        {
            return c * (7.5625 * (t = t - 0.818181818182) * t + 0.9375) + b;
        }
        return c * (7.5625 * (t = t - 0.954545454545) * t + 0.984375) + b;
    }

    static function easeIn(t, b, c, d)
    {
        return c - com.robertpenner.easing.Bounce.easeOut(d - t, 0, c, d) + b;
    }

    static function easeInOut(t, b, c, d)
    {
        if (t < d / 2) 
        {
            return com.robertpenner.easing.Bounce.easeIn(t * 2, 0, c, d) * 0.5 + b;
        }
        return com.robertpenner.easing.Bounce.easeOut(t * 2 - d, 0, c, d) * 0.5 + c * 0.5 + b;
    }

    static function easeOutIn(t, b, c, d)
    {
        if (t < d / 2) 
        {
            return com.robertpenner.easing.Bounce.easeOut(t * 2, 0, c, d) * 0.5 + b;
        }
        return com.robertpenner.easing.Bounce.easeIn(t * 2 - d, 0, c, d) * 0.5 + c * 0.5 + b;
    }

}
