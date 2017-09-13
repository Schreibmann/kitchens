dynamic class com.robertpenner.easing.Elastic
{

    function Elastic()
    {
    }

    static function easeIn(t, b, c, d, a, p)
    {
        if (t == 0) 
        {
            return b;
        }
        if ((t = t / d) == 1) 
        {
            return b + c;
        }
        if (!p) 
        {
            p = d * 0.3;
        }
        if (!a || a < Math.abs(c)) 
        {
            a = c;
            __reg7 = p / 4;
        }
        else 
        {
            var __reg7 = p / 6.28318530718 * Math.asin(c / a);
        }
        return 0 - a * Math.pow(2, 10 * (t = t - 1)) * Math.sin((t * d - __reg7) * 6.28318530718 / p) + b;
    }

    static function easeOut(t, b, c, d, a, p)
    {
        if (t == 0) 
        {
            return b;
        }
        if ((t = t / d) == 1) 
        {
            return b + c;
        }
        if (!p) 
        {
            p = d * 0.3;
        }
        if (!a || a < Math.abs(c)) 
        {
            a = c;
            __reg7 = p / 4;
        }
        else 
        {
            var __reg7 = p / 6.28318530718 * Math.asin(c / a);
        }
        return a * Math.pow(2, -10 * t) * Math.sin((t * d - __reg7) * 6.28318530718 / p) + c + b;
    }

    static function easeInOut(t, b, c, d, a, p)
    {
        if (t == 0) 
        {
            return b;
        }
        if ((t = t / (d / 2)) == 2) 
        {
            return b + c;
        }
        if (!p) 
        {
            p = d * 0.45;
        }
        if (!a || a < Math.abs(c)) 
        {
            a = c;
            __reg7 = p / 4;
        }
        else 
        {
            var __reg7 = p / 6.28318530718 * Math.asin(c / a);
        }
        if (t < 1) 
        {
            return -0.5 * (a * Math.pow(2, 10 * (t = t - 1)) * Math.sin((t * d - __reg7) * 6.28318530718 / p)) + b;
        }
        return a * Math.pow(2, -10 * (t = t - 1)) * Math.sin((t * d - __reg7) * 6.28318530718 / p) * 0.5 + c + b;
    }

    static function easeOutIn(t, b, c, d, a, p)
    {
        if (t == 0) 
        {
            return b;
        }
        if ((t = t / (d / 2)) == 2) 
        {
            return b + c;
        }
        if (!p) 
        {
            p = d * 0.45;
        }
        if (!a || a < Math.abs(c)) 
        {
            a = c;
            __reg7 = p / 4;
        }
        else 
        {
            var __reg7 = p / 6.28318530718 * Math.asin(c / a);
        }
        if (t < 1) 
        {
            return 0.5 * (a * Math.pow(2, -10 * t) * Math.sin((t * d - __reg7) * 6.28318530718 / p)) + c / 2 + b;
        }
        return c / 2 + 0.5 * (a * Math.pow(2, 10 * (t - 2)) * Math.sin((t * d - __reg7) * 6.28318530718 / p)) + b;
    }

}
