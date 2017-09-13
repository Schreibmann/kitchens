dynamic class zigo.tweenManager
{
    var _th_depth: Number = 6789;
    var autoOverwrite;
    var autoStop;
    var broadcastEvents;
    var ints;
    var lockedTweens;
    var now;
    var playing;
    var tweenHolder;
    var tweenList;
    var updateIntId;
    var updateTime;

    function tweenManager()
    {
        this.playing = false;
        this.autoStop = false;
        this.broadcastEvents = false;
        this.autoOverwrite = true;
        this.ints = new Array();
        this.lockedTweens = new Object();
        this.tweenList = new Array();
    }

    function cleanUp()
    {
        if (this.tweenList instanceof Array && this.tweenList.length > 0) 
        {
            for (var __reg2 in this.tweenList) 
            {
                if (this.tweenList[__reg2].mc._x == undefined) 
                {
                    this.tweenList.splice(Number(__reg2), 1);
                }
            }
            if (this.tweenList.length == 0) 
            {
                this.tweenList = [];
                this.deinit();
            }
            for (__reg2 in this.ints) 
            {
                if (this.ints[__reg2] != undefined && this.ints[__reg2].mc._x == undefined) 
                {
                    this.removeDelayedTween(Number(__reg2));
                }
            }
        }
    }

    function set updateInterval(time)
    {
        if (this.playing) 
        {
            this.deinit();
            this.updateTime = time;
            this.init();
        }
        else 
        {
            this.updateTime = time;
        }
    }

    function get updateInterval()
    {
        return this.updateTime;
    }

    function set controllerDepth(v)
    {
        if (_global.isNaN(v) != true) 
        {
            if (this.tweenHolder._name == undefined) 
            {
                this._th_depth = v;
            }
            else 
            {
                this.tweenHolder.swapDepths(v);
            }
            return;
        }
    }

    function get controllerDepth()
    {
        return this._th_depth;
    }

    function init()
    {
        if (this.updateTime > 0) 
        {
            clearInterval(this.updateIntId);
            this.updateIntId = setInterval(this, "update", this.updateTime);
        }
        else 
        {
            if (this.tweenHolder._name == undefined) 
            {
                this.tweenHolder = _root.createEmptyMovieClip("_th_", this._th_depth);
            }
            var tm = this;
            this.tweenHolder.onEnterFrame = function ()
            {
                tm.update.call(tm);
            }
            ;
        }
        this.playing = true;
        this.now = getTimer();
    }

    function deinit()
    {
        this.playing = false;
        clearInterval(this.updateIntId);
        delete this.tweenHolder.onEnterFrame;
    }

    function update()
    {
        var __reg2 = undefined;
        var __reg10 = undefined;
        var __reg3 = undefined;
        var __reg13 = false;
        __reg10 = this.tweenList.length;
        if (this.broadcastEvents) 
        {
            var __reg4 = undefined;
            var __reg7 = undefined;
            var __reg5 = undefined;
            var __reg9 = undefined;
            __reg4 = {};
            __reg7 = {};
            __reg5 = {};
            __reg9 = {};
        }
        while (__reg10--) 
        {
            __reg2 = this.tweenList[__reg10];
            if (__reg2.mc._x == undefined) 
            {
                __reg13 = true;
                continue;
            }
            if (__reg2.pt == -1) 
            {
                if (__reg2.ts + __reg2.d > this.now) 
                {
                    if (__reg2.ctm == undefined) 
                    {
                        __reg2.mc[__reg2.pp] = __reg2.ef(this.now - __reg2.ts, __reg2.ps, __reg2.ch, __reg2.d, __reg2.e1, __reg2.e2);
                    }
                    else 
                    {
                        __reg8 = {};
                        for (__reg3 in __reg2.ctm) 
                        {
                            __reg8[__reg3] = __reg2.ef(this.now - __reg2.ts, __reg2.stm[__reg3], __reg2.ctm[__reg3], __reg2.d, __reg2.e1, __reg2.e2);
                        }
                        __reg2.c.setTransform(__reg8);
                    }
                    if (this.broadcastEvents) 
                    {
                        if (__reg4[targetPath(__reg2.mc)] == undefined) 
                        {
                            __reg4[targetPath(__reg2.mc)] = __reg2.mc;
                        }
                        if (__reg5[targetPath(__reg2.mc)] == undefined) 
                        {
                            __reg5[targetPath(__reg2.mc)] = [];
                        }
                        __reg5[targetPath(__reg2.mc)].push(__reg2.ctm == undefined ? __reg2.pp : "_ct_");
                    }
                    if (__reg2.cb.updfunc != undefined) 
                    {
                        __reg6 = __reg2.cb.updfunc;
                        if (typeof __reg6 == "string" && __reg2.cb.updscope != undefined) 
                        {
                            __reg6 = __reg2.cb.updscope[__reg6];
                        }
                        __reg6.apply(__reg2.cb.updscope, __reg2.cb.updargs);
                    }
                }
                else 
                {
                    if (__reg2.ctm == undefined) 
                    {
                        __reg2.mc[__reg2.pp] = __reg2.ps + __reg2.ch;
                    }
                    else 
                    {
                        var __reg8 = {};
                        for (__reg3 in __reg2.ctm) 
                        {
                            __reg8[__reg3] = __reg2.stm[__reg3] + __reg2.ctm[__reg3];
                        }
                        __reg2.c.setTransform(__reg8);
                    }
                    if (this.broadcastEvents) 
                    {
                        if (__reg4[targetPath(__reg2.mc)] == undefined) 
                        {
                            __reg4[targetPath(__reg2.mc)] = __reg2.mc;
                        }
                        if (__reg7[targetPath(__reg2.mc)] == undefined) 
                        {
                            __reg7[targetPath(__reg2.mc)] = __reg2.mc;
                        }
                        if (__reg5[targetPath(__reg2.mc)] == undefined) 
                        {
                            __reg5[targetPath(__reg2.mc)] = [];
                        }
                        __reg5[targetPath(__reg2.mc)].push(__reg2.ctm == undefined ? __reg2.pp : "_ct_");
                        if (__reg9[targetPath(__reg2.mc)] == undefined) 
                        {
                            __reg9[targetPath(__reg2.mc)] = [];
                        }
                        __reg9[targetPath(__reg2.mc)].push(__reg2.ctm == undefined ? __reg2.pp : "_ct_");
                    }
                    if (__reg2.cb.updfunc != undefined) 
                    {
                        var __reg6 = __reg2.cb.updfunc;
                        if (typeof __reg6 == "string" && __reg2.cb.updscope != undefined) 
                        {
                            __reg6 = __reg2.cb.updscope[__reg6];
                        }
                        __reg6.updfunc.apply(__reg2.cb.updscope, __reg2.cb.updargs);
                    }
                    if (endt == undefined) 
                    {
                        var endt = new Array();
                    }
                    endt.push(__reg10);
                }
            }
        }
        if (__reg13) 
        {
            this.cleanUp();
        }
        for (__reg3 in __reg4) 
        {
            __reg4[__reg3].broadcastMessage("onTweenUpdate", {target: __reg4[__reg3], props: __reg5[__reg3]});
        }
        if (endt != undefined) 
        {
            this.endTweens(endt);
        }
        for (__reg3 in __reg7) 
        {
            __reg7[__reg3].broadcastMessage("onTweenEnd", {target: __reg7[__reg3], props: __reg9[__reg3]});
        }
        this.now = getTimer();
        if (this.updateTime > 0) 
        {
            updateAfterEvent();
        }
    }

    function endTweens(tid_arr)
    {
        var __reg2 = undefined;
        var __reg9 = undefined;
        var __reg3 = undefined;
        var __reg5 = undefined;
        var __reg8 = undefined;
        __reg2 = [];
        __reg9 = tid_arr.length;
        __reg3 = 0;
        while (__reg3 < __reg9) 
        {
            __reg5 = this.tweenList[tid_arr[__reg3]].cb;
            if (__reg5 != undefined) 
            {
                var __reg6 = true;
                for (__reg8 in __reg2) 
                {
                    if (__reg2[__reg8] == __reg5) 
                    {
                        __reg6 = false;
                        break;
                    }
                }
                do 
                {
                }
                while (undefined != null);
                if (__reg6) 
                {
                    __reg2.push(__reg5);
                }
            }
            this.tweenList.splice(tid_arr[__reg3], 1);
            ++__reg3;
        }
        __reg3 = 0;
        while (__reg3 < __reg2.length) 
        {
            var __reg4 = __reg2[__reg3].func;
            if (typeof __reg4 == "string" && __reg2[__reg3].scope != undefined) 
            {
                __reg4 = __reg2[__reg3].scope[__reg4];
            }
            __reg4.apply(__reg2[__reg3].scope, __reg2[__reg3].args);
            ++__reg3;
        }
        if (this.tweenList.length == 0) 
        {
            this.deinit();
        }
    }

    function removeDelayedTween(index)
    {
        clearInterval(this.ints[index].intid);
        this.ints[index] = undefined;
        var __reg2 = true;
        for (var __reg3 in this.ints) 
        {
            if (this.ints[__reg3] != undefined) 
            {
                __reg2 = false;
                break;
            }
        }
        do 
        {
        }
        while (undefined != null);
        if (__reg2) 
        {
            this.ints = [];
        }
    }

    function addTween(mc, props, pEnd, sec, eqFunc, callback, extra1, extra2)
    {
        var __reg4 = undefined;
        var __reg13 = undefined;
        var __reg6 = undefined;
        var __reg3 = undefined;
        var __reg2 = undefined;
        if (!this.playing) 
        {
            this.init();
        }
        var __reg12 = [];
        for (__reg4 in props) 
        {
            __reg13 = props[__reg4];
            __reg6 = true;
            if (__reg13.substr(0, 4) == "_ct_") 
            {
                var __reg16 = new Color(mc);
                var __reg20 = __reg16.getTransform();
                var __reg19 = {};
                for (__reg3 in pEnd[__reg4]) 
                {
                    if (pEnd[__reg4][__reg3] != __reg20[__reg3] && pEnd[__reg4][__reg3] != undefined) 
                    {
                        __reg19[__reg3] = typeof pEnd[__reg4][__reg3] == "string" ? __reg20[__reg3] + Number(pEnd[__reg4][__reg3]) : pEnd[__reg4][__reg3] - __reg20[__reg3];
                    }
                }
                if (this.autoOverwrite) 
                {
                    for (__reg3 in this.tweenList) 
                    {
                        __reg2 = this.tweenList[__reg3];
                        if (__reg2.mc == mc && __reg2.ctm != undefined) 
                        {
                            __reg2.c = __reg16;
                            __reg2.stm = __reg20;
                            __reg2.ctm = __reg19;
                            __reg2.ts = this.now;
                            __reg2.d = sec * 1000;
                            __reg2.ef = eqFunc;
                            __reg2.cb = callback;
                            __reg2.e1 = extra1;
                            __reg2.e2 = extra2;
                            __reg2.pt = -1;
                            __reg6 = false;
                            __reg12.push("_ct_");
                            break;
                        }
                    }
                    do 
                    {
                    }
                    while (undefined != null);
                }
                if (__reg6) 
                {
                    this.tweenList.unshift({mc: mc, c: __reg16, stm: __reg20, ctm: __reg19, ts: this.now, d: sec * 1000, ef: eqFunc, cb: callback, e1: extra1, e2: extra2, pt: -1});
                }
            }
            else 
            {
                var __reg17 = typeof pEnd[__reg4] == "string" ? Number(pEnd[__reg4]) : pEnd[__reg4] - mc[__reg13];
                if (this.autoOverwrite) 
                {
                    for (__reg3 in this.tweenList) 
                    {
                        __reg2 = this.tweenList[__reg3];
                        if (__reg2.mc == mc && __reg2.pp == __reg13) 
                        {
                            __reg2.ps = mc[__reg13];
                            __reg2.ch = __reg17;
                            __reg2.ts = this.now;
                            __reg2.d = sec * 1000;
                            __reg2.ef = eqFunc;
                            __reg2.cb = callback;
                            __reg2.e1 = extra1;
                            __reg2.e2 = extra2;
                            __reg2.pt = -1;
                            __reg6 = false;
                            __reg12.push(__reg2.pp);
                            break;
                        }
                    }
                    do 
                    {
                    }
                    while (undefined != null);
                }
                if (__reg6) 
                {
                    this.tweenList.unshift({mc: mc, pp: __reg13, ps: mc[__reg13], ch: __reg17, ts: this.now, d: sec * 1000, ef: eqFunc, cb: callback, e1: extra1, e2: extra2, pt: -1});
                }
            }
        }
        if (this.broadcastEvents) 
        {
            if (__reg12.length > 0) 
            {
                mc.broadcastMessage("onTweenInterrupt", {target: mc, props: __reg12});
            }
            mc.broadcastMessage("onTweenStart", {target: mc, props: props});
        }
        if (callback.startfunc != undefined) 
        {
            var __reg27 = callback.startfunc;
            if (typeof __reg27 == "string" && callback.startscope != undefined) 
            {
                __reg27 = callback.startscope[__reg27];
            }
            __reg27.apply(callback.startscope, callback.startargs);
        }
        if (sec == 0) 
        {
            this.update();
        }
    }

    function addTweenWithDelay(delay, mc, props, pEnd, sec, eqFunc, callback, extra1, extra2)
    {
        var il;
        var __reg3 = undefined;
        il = this.ints.length;
        __reg3 = setInterval(function (obj)
        {
            obj.removeDelayedTween(il);
            if (mc._x != undefined) 
            {
                obj.addTween(mc, props, pEnd, sec, eqFunc, callback, extra1, extra2);
            }
        }
        , delay * 1000, this);
        this.ints[il] = {mc: mc, props: props, pend: pEnd, intid: __reg3, st: getTimer(), delay: delay * 1000, args: arguments.slice(1), pt: -1};
        if (this.playing) 
        {
            return;
        }
        this.init();
    }

    function removeTween(mc, props)
    {
        var __reg8 = undefined;
        var __reg2 = undefined;
        var __reg5 = undefined;
        __reg8 = false;
        if (props == undefined && this.broadcastEvents != true) 
        {
            __reg8 = true;
        }
        __reg2 = this.tweenList.length;
        var __reg4 = {};
        while (__reg2--) 
        {
            if (this.tweenList[__reg2].mc == mc) 
            {
                if (__reg8) 
                {
                    this.tweenList.splice(__reg2, 1);
                }
                else 
                {
                    for (__reg5 in props) 
                    {
                        if (this.tweenList[__reg2].pp == props[__reg5]) 
                        {
                            this.tweenList.splice(__reg2, 1);
                            if (__reg4[targetPath(mc)] == undefined) 
                            {
                                __reg4[targetPath(mc)] = {t: mc, p: []};
                            }
                            __reg4[targetPath(mc)].p.push(props[__reg5]);
                        }
                        else if (props[__reg5] == "_ct_" && this.tweenList[__reg2].ctm != undefined && this.tweenList[__reg2].mc == mc) 
                        {
                            this.tweenList.splice(__reg2, 1);
                            if (__reg4[targetPath(mc)] == undefined) 
                            {
                                __reg4[targetPath(mc)] = {t: mc, p: []};
                            }
                            __reg4[targetPath(mc)].p.push("_ct_");
                        }
                    }
                }
            }
        }
        __reg2 = this.ints.length;
        while (__reg2--) 
        {
            if (this.ints[__reg2].mc == mc) 
            {
                if (__reg8) 
                {
                    this.removeDelayedTween(Number(__reg2));
                }
                else 
                {
                    for (__reg5 in props) 
                    {
                        for (var __reg11 in this.ints[__reg2].props) 
                        {
                            if (this.ints[__reg2].props[__reg11] == props[__reg5]) 
                            {
                                this.ints[__reg2].props.splice(__reg11, 1);
                                this.ints[__reg2].pend.splice(__reg11, 1);
                                if (__reg4[targetPath(mc)] == undefined) 
                                {
                                    __reg4[targetPath(mc)] = {t: mc, p: []};
                                }
                                __reg4[targetPath(mc)].p.push(props[__reg5]);
                            }
                        }
                        if (this.ints[__reg2].props.length == 0) 
                        {
                            clearInterval(this.ints[__reg2].intid);
                        }
                    }
                }
            }
        }
        if (this.broadcastEvents) 
        {
            for (__reg11 in __reg4) 
            {
                if (__reg4[__reg11].p.length > 0) 
                {
                    __reg4[__reg11].t.broadcastMessage("onTweenInterrupt", {target: __reg4[__reg11].t, props: __reg4[__reg11].p});
                }
            }
        }
        if (this.tweenList.length == 0) 
        {
            this.deinit();
        }
    }

    function isTweening(mc, prop)
    {
        var __reg4 = prop == undefined;
        for (var __reg6 in this.tweenList) 
        {
            var __reg2 = this.tweenList[__reg6];
            if (this.tweenList[__reg6].mc == mc && this.tweenList[__reg6].pt == -1 && __reg4 || prop == __reg2.pp || prop == "_ct_" && __reg2.ctm != undefined) 
            {
                do 
                {
                }
                while (undefined != null);
                return true;
            }
        }
        return false;
    }

    function getTweens(mc)
    {
        var __reg2 = 0;
        for (var __reg4 in this.tweenList) 
        {
            if (this.tweenList[__reg4].mc == mc) 
            {
                ++__reg2;
            }
        }
        return __reg2;
    }

    function lockTween(mc, bool)
    {
        this.lockedTweens[targetPath(mc)] = bool;
    }

    function isTweenLocked(mc)
    {
        if (this.lockedTweens[targetPath(mc)] == undefined) 
        {
            return false;
        }
        return this.lockedTweens[targetPath(mc)];
    }

    function ffTween(mc, propsObj)
    {
        var __reg4 = mc == undefined;
        var __reg6 = propsObj == undefined;
        for (var __reg8 in this.tweenList) 
        {
            var __reg2 = this.tweenList[__reg8];
            if ((__reg2.mc == mc || __reg4) && (__reg6 || propsObj[__reg2.pp] == true)) 
            {
                if (__reg2.pt != -1) 
                {
                    __reg2.pt = -1;
                }
                __reg2.ts = this.now - __reg2.d;
            }
        }
        for (__reg8 in this.ints) 
        {
            if (this.ints[__reg8] != undefined) 
            {
                if (this.ints[__reg8].mc == mc || __reg4) 
                {
                    if (this.ints[__reg8].mc._x != undefined) 
                    {
                        var __reg3 = this.ints[__reg8].args;
                        __reg3[3] = 0;
                        this.addTween.apply(this, __reg3);
                    }
                    this.removeDelayedTween(Number(__reg8));
                }
            }
        }
        this.update();
    }

    function rewTween(mc, propsObj)
    {
        var __reg3 = mc == undefined;
        var __reg5 = propsObj == undefined;
        for (var __reg7 in this.tweenList) 
        {
            var __reg2 = this.tweenList[__reg7];
            if ((__reg2.mc == mc || __reg3) && (__reg5 || propsObj[__reg2.pp] == true)) 
            {
                if (__reg2.pt != -1) 
                {
                    __reg2.pt = -1;
                }
                __reg2.ts = this.now;
            }
        }
        for (__reg7 in this.ints) 
        {
            if (this.ints[__reg7] != undefined) 
            {
                if (this.ints[__reg7].mc == mc || __reg3) 
                {
                    if (this.ints[__reg7].mc._x != undefined) 
                    {
                        this.addTween.apply(this, this.ints[__reg7].args);
                    }
                    this.removeDelayedTween(Number(__reg7));
                }
            }
        }
        this.update();
    }

    function isTweenPaused(mc, prop)
    {
        if (mc == undefined) 
        {
            return null;
        }
        var __reg5 = prop == undefined;
        for (var __reg6 in this.tweenList) 
        {
            var __reg2 = this.tweenList[__reg6];
            if (this.tweenList[__reg6].mc == mc && (__reg5 || prop == __reg2.pp || prop == "_ct_" && __reg2.ctm != undefined)) 
            {
                do 
                {
                }
                while (undefined != null);
                return Boolean(this.tweenList[__reg6].pt != -1);
            }
        }
        for (__reg6 in this.ints) 
        {
            if (this.ints[__reg6] != undefined && this.ints[__reg6].mc == mc) 
            {
                do 
                {
                }
                while (undefined != null);
                return Boolean(this.ints[__reg6].pt != -1);
            }
        }
        return false;
    }

    function pauseTween(mc, propsObj)
    {
        var __reg3 = mc == undefined;
        if (__reg3 == false && this.isTweenPaused(mc) == true) 
        {
            return undefined;
        }
        var __reg6 = propsObj == undefined;
        for (var __reg7 in this.tweenList) 
        {
            var __reg2 = this.tweenList[__reg7];
            if (__reg2.pt == -1 && (__reg2.mc == mc || __reg3) && __reg6 || propsObj[__reg2.pp] == true || propsObj._ct_ != undefined && __reg2.ctm != undefined) 
            {
                __reg2.pt = this.now;
            }
        }
        for (__reg7 in this.ints) 
        {
            if (this.ints[__reg7] != undefined) 
            {
                if (this.ints[__reg7].pt == -1 && (this.ints[__reg7].mc == mc || __reg3)) 
                {
                    this.ints[__reg7].pt = this.now;
                }
            }
        }
    }

    function unpauseTween(mc, propsObj)
    {
        var __reg4 = mc == undefined;
        if (__reg4 == false && this.isTweenPaused(mc) === false) 
        {
            return undefined;
        }
        var __reg7 = propsObj == undefined;
        if (!this.playing) 
        {
            this.init();
        }
        for (var __reg2 in this.tweenList) 
        {
            var __reg3 = this.tweenList[__reg2];
            if ((__reg3.pt != -1 && (__reg3.mc == mc || __reg4) && __reg7 || propsObj[__reg3.pp] == true) || (propsObj._ct_ != undefined && __reg3.ctm != undefined)) 
            {
                __reg3.ts = this.now - (__reg3.pt - __reg3.ts);
                __reg3.pt = -1;
            }
        }
        for (__reg2 in this.ints) 
        {
            if (this.ints[__reg2] != undefined) 
            {
                if (this.ints[__reg2].pt != -1 && (this.ints[__reg2].mc == mc || __reg4)) 
                {
                    this.ints[__reg2].delay = this.ints[__reg2].delay - (this.ints[__reg2].pt - this.ints[__reg2].st);
                    this.ints[__reg2].st = this.now;
                    this.ints[__reg2].intid = setInterval(function (obj, id)
                    {
                        obj.addTween.apply(obj, obj.ints[id].args);
                        clearInterval(obj.ints[id].intid);
                        obj.ints[id] = undefined;
                    }
                    , this.ints[__reg2].delay, this, __reg2);
                }
            }
        }
    }

    function pauseAll()
    {
        this.pauseTween();
    }

    function unpauseAll()
    {
        this.unpauseTween();
    }

    function stopAll()
    {
        for (var __reg2 in this.ints) 
        {
            this.removeDelayedTween(Number(__reg2));
        }
        this.tweenList = new Array();
        this.deinit();
    }

    function toString()
    {
        return "[AS2 tweenManager 1.2.0]";
    }

}
