dynamic class com.robertpenner.easing.Circ
{

    function Circ()
    {
    }

    static function easeIn(t, b, c, d)
    {
        return (0 - c) * (Math.sqrt(1 - (t = t / d) * t) - 1) + b;
    }

    static function easeOut(t, b, c, d)
    {
        return c * Math.sqrt(1 - (t = t / d - 1) * t) + b;
    }

    static function easeInOut(t, b, c, d)
    {
        if ((t = t / (d / 2)) < 1) 
        {
            return (0 - c) / 2 * (Math.sqrt(1 - t * t) - 1) + b;
        }
        return c / 2 * (Math.sqrt(1 - (t = t - 2) * t) + 1) + b;
    }

    static function easeOutIn(t, b, c, d)
    {
        if ((t = t / (d / 2)) < 1) 
        {
            return c / 2 * Math.sqrt(1 - --t * t) + b;
        }
        return c / 2 * (2 - Math.sqrt(1 - --t * t)) + b;
    }

}
