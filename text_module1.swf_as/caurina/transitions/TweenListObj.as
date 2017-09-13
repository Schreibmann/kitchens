dynamic class caurina.transitions.TweenListObj
{
    var count;
    var hasStarted;
    var isCaller;
    var isPaused;
    var onComplete;
    var onCompleteParams;
    var onCompleteScope;
    var onError;
    var onErrorScope;
    var onOverwrite;
    var onOverwriteParams;
    var onOverwriteScope;
    var onStart;
    var onStartParams;
    var onStartScope;
    var onUpdate;
    var onUpdateParams;
    var onUpdateScope;
    var properties;
    var rounded;
    var scope;
    var skipUpdates;
    var timeComplete;
    var timePaused;
    var timeStart;
    var timesCalled;
    var transition;
    var transitionParams;
    var updatesSkipped;
    var useFrames;
    var waitFrames;

    function TweenListObj(p_scope, p_timeStart, p_timeComplete, p_useFrames, p_transition, p_transitionParams)
    {
        this.scope = p_scope;
        this.timeStart = p_timeStart;
        this.timeComplete = p_timeComplete;
        this.useFrames = p_useFrames;
        this.transition = p_transition;
        this.transitionParams = p_transitionParams;
        this.properties = new Object();
        this.isPaused = false;
        this.timePaused = undefined;
        this.isCaller = false;
        this.updatesSkipped = 0;
        this.timesCalled = 0;
        this.skipUpdates = 0;
        this.hasStarted = false;
    }

    function clone(omitEvents)
    {
        var __reg2 = new caurina.transitions.TweenListObj(this.scope, this.timeStart, this.timeComplete, this.useFrames, this.transition, this.transitionParams);
        __reg2.properties = new Object();
        for (var __reg3 in this.properties) 
        {
            __reg2.properties[__reg3] = this.properties[__reg3].clone();
        }
        __reg2.skipUpdates = this.skipUpdates;
        __reg2.updatesSkipped = this.updatesSkipped;
        if (!omitEvents) 
        {
            __reg2.onStart = this.onStart;
            __reg2.onUpdate = this.onUpdate;
            __reg2.onComplete = this.onComplete;
            __reg2.onOverwrite = this.onOverwrite;
            __reg2.onError = this.onError;
            __reg2.onStartParams = this.onStartParams;
            __reg2.onUpdateParams = this.onUpdateParams;
            __reg2.onCompleteParams = this.onCompleteParams;
            __reg2.onOverwriteParams = this.onOverwriteParams;
            __reg2.onStartScope = this.onStartScope;
            __reg2.onUpdateScope = this.onUpdateScope;
            __reg2.onCompleteScope = this.onCompleteScope;
            __reg2.onOverwriteScope = this.onOverwriteScope;
            __reg2.onErrorScope = this.onErrorScope;
        }
        __reg2.rounded = this.rounded;
        __reg2.isPaused = this.isPaused;
        __reg2.timePaused = this.timePaused;
        __reg2.isCaller = this.isCaller;
        __reg2.count = this.count;
        __reg2.timesCalled = this.timesCalled;
        __reg2.waitFrames = this.waitFrames;
        __reg2.hasStarted = this.hasStarted;
        return __reg2;
    }

    function toString()
    {
        var __reg2 = "\n[TweenListObj ";
        __reg2 = __reg2 + ("scope:" + String(this.scope));
        __reg2 = __reg2 + ", properties:";
        var __reg3 = true;
        for (var __reg4 in this.properties) 
        {
            if (!__reg3) 
            {
                __reg2 = __reg2 + ",";
            }
            __reg2 = __reg2 + ("[name:" + this.properties[__reg4].name);
            __reg2 = __reg2 + (",valueStart:" + this.properties[__reg4].valueStart);
            __reg2 = __reg2 + (",valueComplete:" + this.properties[__reg4].valueComplete);
            __reg2 = __reg2 + "]";
            __reg3 = false;
        }
        __reg2 = __reg2 + (", timeStart:" + String(this.timeStart));
        __reg2 = __reg2 + (", timeComplete:" + String(this.timeComplete));
        __reg2 = __reg2 + (", useFrames:" + String(this.useFrames));
        __reg2 = __reg2 + (", transition:" + String(this.transition));
        __reg2 = __reg2 + (", transitionParams:" + String(this.transitionParams));
        if (this.skipUpdates) 
        {
            __reg2 = __reg2 + (", skipUpdates:" + String(this.skipUpdates));
        }
        if (this.updatesSkipped) 
        {
            __reg2 = __reg2 + (", updatesSkipped:" + String(this.updatesSkipped));
        }
        if (this.onStart) 
        {
            __reg2 = __reg2 + (", onStart:" + String(this.onStart));
        }
        if (this.onUpdate) 
        {
            __reg2 = __reg2 + (", onUpdate:" + String(this.onUpdate));
        }
        if (this.onComplete) 
        {
            __reg2 = __reg2 + (", onComplete:" + String(this.onComplete));
        }
        if (this.onOverwrite) 
        {
            __reg2 = __reg2 + (", onOverwrite:" + String(this.onOverwrite));
        }
        if (this.onError) 
        {
            __reg2 = __reg2 + (", onError:" + String(this.onError));
        }
        if (this.onStartParams) 
        {
            __reg2 = __reg2 + (", onStartParams:" + String(this.onStartParams));
        }
        if (this.onUpdateParams) 
        {
            __reg2 = __reg2 + (", onUpdateParams:" + String(this.onUpdateParams));
        }
        if (this.onCompleteParams) 
        {
            __reg2 = __reg2 + (", onCompleteParams:" + String(this.onCompleteParams));
        }
        if (this.onOverwriteParams) 
        {
            __reg2 = __reg2 + (", onOverwriteParams:" + String(this.onOverwriteParams));
        }
        if (this.onStartScope) 
        {
            __reg2 = __reg2 + (", onStartScope:" + String(this.onStartScope));
        }
        if (this.onUpdateScope) 
        {
            __reg2 = __reg2 + (", onUpdateScope:" + String(this.onUpdateScope));
        }
        if (this.onCompleteScope) 
        {
            __reg2 = __reg2 + (", onCompleteScope:" + String(this.onCompleteScope));
        }
        if (this.onOverwriteScope) 
        {
            __reg2 = __reg2 + (", onOverwriteScope:" + String(this.onOverwriteScope));
        }
        if (this.onErrorScope) 
        {
            __reg2 = __reg2 + (", onErrorScope:" + String(this.onErrorScope));
        }
        if (this.rounded) 
        {
            __reg2 = __reg2 + (", rounded:" + String(this.rounded));
        }
        if (this.isPaused) 
        {
            __reg2 = __reg2 + (", isPaused:" + String(this.isPaused));
        }
        if (this.timePaused) 
        {
            __reg2 = __reg2 + (", timePaused:" + String(this.timePaused));
        }
        if (this.isCaller) 
        {
            __reg2 = __reg2 + (", isCaller:" + String(this.isCaller));
        }
        if (this.count) 
        {
            __reg2 = __reg2 + (", count:" + String(this.count));
        }
        if (this.timesCalled) 
        {
            __reg2 = __reg2 + (", timesCalled:" + String(this.timesCalled));
        }
        if (this.waitFrames) 
        {
            __reg2 = __reg2 + (", waitFrames:" + String(this.waitFrames));
        }
        if (this.hasStarted) 
        {
            __reg2 = __reg2 + (", hasStarted:" + String(this.hasStarted));
        }
        __reg2 = __reg2 + "]\n";
        return __reg2;
    }

    static function makePropertiesChain(p_obj)
    {
        var __reg6 = p_obj.base;
        if (__reg6) 
        {
            var __reg5 = {};
            var __reg2 = undefined;
            if (__reg6 instanceof Array) 
            {
                __reg2 = [];
                var __reg3 = 0;
                while (__reg3 < __reg6.length) 
                {
                    __reg2.push(__reg6[__reg3]);
                    ++__reg3;
                }
            }
            else 
            {
                __reg2 = [__reg6];
            }
            __reg2.push(p_obj);
            var __reg4 = undefined;
            var __reg7 = __reg2.length;
            var __reg1 = 0;
            while (__reg1 < __reg7) 
            {
                if (__reg2[__reg1].base) 
                {
                    __reg4 = caurina.transitions.AuxFunctions.concatObjects(caurina.transitions.TweenListObj.makePropertiesChain(__reg2[__reg1].base), __reg2[__reg1]);
                }
                else 
                {
                    __reg4 = __reg2[__reg1];
                }
                __reg5 = caurina.transitions.AuxFunctions.concatObjects(__reg5, __reg4);
                ++__reg1;
            }
            if (__reg5.base) 
            {
                delete __reg5.base;
            }
            return __reg5;
        }
        return p_obj;
    }

}
