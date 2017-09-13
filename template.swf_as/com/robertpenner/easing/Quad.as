dynamic class com.robertpenner.easing.Quad
{

    function Quad()
    {
    }

    static function easeIn(t, b, c, d)
    {
        return c * (t = t / d) * t + b;
    }

    static function easeOut(t, b, c, d)
    {
        return (0 - c) * (t = t / d) * (t - 2) + b;
    }

    static function easeInOut(t, b, c, d)
    {
        if ((t = t / (d / 2)) < 1) 
        {
            return c / 2 * t * t + b;
        }
        return (0 - c) / 2 * (--t * (t - 2) - 1) + b;
    }

    static function easeOutIn(t, b, c, d)
    {
        if ((t = t / (d / 2)) < 1) 
        {
            return (0 - c) / 2 * (--t * t - 1) + b;
        }
        return c / 2 * (--t * t + 1) + b;
    }

}
