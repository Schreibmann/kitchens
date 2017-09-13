dynamic class com.robertpenner.easing.Sine
{

    function Sine()
    {
    }

    static function easeIn(t, b, c, d)
    {
        return (0 - c) * Math.cos(t / d * 1.57079632679) + c + b;
    }

    static function easeOut(t, b, c, d)
    {
        return c * Math.sin(t / d * 1.57079632679) + b;
    }

    static function easeInOut(t, b, c, d)
    {
        return (0 - c) / 2 * (Math.cos(3.14159265359 * t / d) - 1) + b;
    }

    static function easeOutIn(t, b, c, d)
    {
        if ((t = t / (d / 2)) < 1) 
        {
            return c / 2 * Math.sin(3.14159265359 * t / 2) + b;
        }
        return (0 - c) / 2 * (Math.cos(3.14159265359 * --t / 2) - 2) + b;
    }

}
