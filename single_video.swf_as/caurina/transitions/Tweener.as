dynamic class caurina.transitions.Tweener
{
    static var _engineExists: Boolean = false;
    static var _inited: Boolean = false;
    static var _timeScale: Number = 1;
    static var autoOverwrite: Boolean = true;

    function Tweener()
    {
        trace("Tweener is an static class and should not be instantiated.");
    }

    static function addTween(p_scopes, p_parameters)
    {
        if (p_scopes == undefined) 
        {
            return false;
        }
        var __reg3 = undefined;
        var __reg7 = undefined;
        var __reg2 = undefined;
        var __reg11 = undefined;
        if (p_scopes instanceof Array) 
        {
            __reg11 = p_scopes.concat();
        }
        else 
        {
            __reg11 = [p_scopes];
        }
        var __reg5 = caurina.transitions.TweenListObj.makePropertiesChain(p_parameters);
        if (!caurina.transitions.Tweener._inited) 
        {
            caurina.transitions.Tweener.init();
        }
        if (!caurina.transitions.Tweener._engineExists || _root[caurina.transitions.Tweener.getControllerName()] == undefined) 
        {
            caurina.transitions.Tweener.startEngine();
        }
        var __reg19 = isNaN(__reg5.time) ? 0 : __reg5.time;
        var __reg12 = isNaN(__reg5.delay) ? 0 : __reg5.delay;
        var __reg4 = new Object();
        var __reg24 = {overwrite: true, time: true, delay: true, useFrames: true, skipUpdates: true, transition: true, transitionParams: true, onStart: true, onUpdate: true, onComplete: true, onOverwrite: true, onError: true, rounded: true, onStartParams: true, onUpdateParams: true, onCompleteParams: true, onOverwriteParams: true, onStartScope: true, onUpdateScope: true, onCompleteScope: true, onOverwriteScope: true, onErrorScope: true};
        var __reg13 = new Object();
        for (__reg2 in __reg5) 
        {
            if (!__reg24[__reg2]) 
            {
                if (caurina.transitions.Tweener._specialPropertySplitterList[__reg2] == undefined) 
                {
                    if (caurina.transitions.Tweener._specialPropertyModifierList[__reg2] == undefined) 
                    {
                        __reg4[__reg2] = {valueStart: undefined, valueComplete: __reg5[__reg2]};
                    }
                    else 
                    {
                        var __reg10 = caurina.transitions.Tweener._specialPropertyModifierList[__reg2].modifyValues(__reg5[__reg2]);
                        __reg3 = 0;
                        while (__reg3 < __reg10.length) 
                        {
                            __reg13[__reg10[__reg3].name] = {modifierParameters: __reg10[__reg3].parameters, modifierFunction: caurina.transitions.Tweener._specialPropertyModifierList[__reg2].getValue};
                            ++__reg3;
                        }
                    }
                }
                else 
                {
                    var __reg8 = caurina.transitions.Tweener._specialPropertySplitterList[__reg2].splitValues(__reg5[__reg2], caurina.transitions.Tweener._specialPropertySplitterList[__reg2].parameters);
                    __reg3 = 0;
                    while (__reg3 < __reg8.length) 
                    {
                        if (caurina.transitions.Tweener._specialPropertySplitterList[__reg8[__reg3].name] == undefined) 
                        {
                            __reg4[__reg8[__reg3].name] = {valueStart: undefined, valueComplete: __reg8[__reg3].value, arrayIndex: __reg8[__reg3].arrayIndex, isSpecialProperty: false};
                        }
                        else 
                        {
                            var __reg9 = caurina.transitions.Tweener._specialPropertySplitterList[__reg8[__reg3].name].splitValues(__reg8[__reg3].value, caurina.transitions.Tweener._specialPropertySplitterList[__reg8[__reg3].name].parameters);
                            __reg7 = 0;
                            while (__reg7 < __reg9.length) 
                            {
                                __reg4[__reg9[__reg7].name] = {valueStart: undefined, valueComplete: __reg9[__reg7].value, arrayIndex: __reg9[__reg7].arrayIndex, isSpecialProperty: false};
                                ++__reg7;
                            }
                        }
                        ++__reg3;
                    }
                }
            }
        }
        for (__reg2 in __reg4) 
        {
            if (caurina.transitions.Tweener._specialPropertyList[__reg2] == undefined) 
            {
                if (__reg11[0][__reg2] == undefined) 
                {
                    caurina.transitions.Tweener.printError("The property \'" + __reg2 + "\' doesn\'t seem to be a normal object property of " + __reg11[0].toString() + " or a registered special property.");
                }
            }
            else 
            {
                __reg4[__reg2].isSpecialProperty = true;
            }
        }
        for (__reg2 in __reg13) 
        {
            if (__reg4[__reg2] != undefined) 
            {
                __reg4[__reg2].modifierParameters = __reg13[__reg2].modifierParameters;
                __reg4[__reg2].modifierFunction = __reg13[__reg2].modifierFunction;
            }
        }
        var __reg21 = undefined;
        if (typeof __reg5.transition == "string") 
        {
            var __reg26 = __reg5.transition.toLowerCase();
            __reg21 = caurina.transitions.Tweener._transitionList[__reg26];
        }
        else 
        {
            __reg21 = __reg5.transition;
        }
        if (__reg21 == undefined) 
        {
            __reg21 = caurina.transitions.Tweener._transitionList.easeoutexpo;
        }
        var __reg14 = undefined;
        var __reg6 = undefined;
        var __reg20 = undefined;
        __reg3 = 0;
        while (__reg3 < __reg11.length) 
        {
            __reg14 = new Object();
            for (__reg2 in __reg4) 
            {
                __reg14[__reg2] = new caurina.transitions.PropertyInfoObj(__reg4[__reg2].valueStart, __reg4[__reg2].valueComplete, __reg4[__reg2].valueComplete, __reg4[__reg2].arrayIndex, {}, __reg4[__reg2].isSpecialProperty, __reg4[__reg2].modifierFunction, __reg4[__reg2].modifierParameters);
            }
            if (__reg5.useFrames == true) 
            {
                __reg6 = new caurina.transitions.TweenListObj(__reg11[__reg3], caurina.transitions.Tweener._currentTimeFrame + __reg12 / caurina.transitions.Tweener._timeScale, caurina.transitions.Tweener._currentTimeFrame + (__reg12 + __reg19) / caurina.transitions.Tweener._timeScale, true, __reg21, __reg5.transitionParams);
            }
            else 
            {
                __reg6 = new caurina.transitions.TweenListObj(__reg11[__reg3], caurina.transitions.Tweener._currentTime + __reg12 * 1000 / caurina.transitions.Tweener._timeScale, caurina.transitions.Tweener._currentTime + (__reg12 * 1000 + __reg19 * 1000) / caurina.transitions.Tweener._timeScale, false, __reg21, __reg5.transitionParams);
            }
            __reg6.properties = __reg14;
            __reg6.onStart = __reg5.onStart;
            __reg6.onUpdate = __reg5.onUpdate;
            __reg6.onComplete = __reg5.onComplete;
            __reg6.onOverwrite = __reg5.onOverwrite;
            __reg6.onError = __reg5.onError;
            __reg6.onStartParams = __reg5.onStartParams;
            __reg6.onUpdateParams = __reg5.onUpdateParams;
            __reg6.onCompleteParams = __reg5.onCompleteParams;
            __reg6.onOverwriteParams = __reg5.onOverwriteParams;
            __reg6.onStartScope = __reg5.onStartScope;
            __reg6.onUpdateScope = __reg5.onUpdateScope;
            __reg6.onCompleteScope = __reg5.onCompleteScope;
            __reg6.onOverwriteScope = __reg5.onOverwriteScope;
            __reg6.onErrorScope = __reg5.onErrorScope;
            __reg6.rounded = __reg5.rounded;
            __reg6.skipUpdates = __reg5.skipUpdates;
            if (__reg5.overwrite == undefined ? caurina.transitions.Tweener.autoOverwrite : __reg5.overwrite) 
            {
                caurina.transitions.Tweener.removeTweensByTime(__reg6.scope, __reg6.properties, __reg6.timeStart, __reg6.timeComplete);
            }
            caurina.transitions.Tweener._tweenList.push(__reg6);
            if (__reg19 == 0 && __reg12 == 0) 
            {
                __reg20 = caurina.transitions.Tweener._tweenList.length - 1;
                caurina.transitions.Tweener.updateTweenByIndex(__reg20);
                caurina.transitions.Tweener.removeTweenByIndex(__reg20);
            }
            ++__reg3;
        }
        return true;
    }

    static function addCaller(p_scopes, p_parameters)
    {
        if (p_scopes == undefined) 
        {
            return false;
        }
        var __reg5 = undefined;
        var __reg6 = undefined;
        if (p_scopes instanceof Array) 
        {
            __reg6 = p_scopes.concat();
        }
        else 
        {
            __reg6 = [p_scopes];
        }
        var __reg3 = p_parameters;
        if (!caurina.transitions.Tweener._inited) 
        {
            caurina.transitions.Tweener.init();
        }
        if (!caurina.transitions.Tweener._engineExists || _root[caurina.transitions.Tweener.getControllerName()] == undefined) 
        {
            caurina.transitions.Tweener.startEngine();
        }
        var __reg7 = isNaN(__reg3.time) ? 0 : __reg3.time;
        var __reg4 = isNaN(__reg3.delay) ? 0 : __reg3.delay;
        var __reg9 = undefined;
        if (typeof __reg3.transition == "string") 
        {
            var __reg11 = __reg3.transition.toLowerCase();
            __reg9 = caurina.transitions.Tweener._transitionList[__reg11];
        }
        else 
        {
            __reg9 = __reg3.transition;
        }
        if (__reg9 == undefined) 
        {
            __reg9 = caurina.transitions.Tweener._transitionList.easeoutexpo;
        }
        var __reg2 = undefined;
        var __reg8 = undefined;
        __reg5 = 0;
        while (__reg5 < __reg6.length) 
        {
            if (__reg3.useFrames == true) 
            {
                __reg2 = new caurina.transitions.TweenListObj(__reg6[__reg5], caurina.transitions.Tweener._currentTimeFrame + __reg4 / caurina.transitions.Tweener._timeScale, caurina.transitions.Tweener._currentTimeFrame + (__reg4 + __reg7) / caurina.transitions.Tweener._timeScale, true, __reg9, __reg3.transitionParams);
            }
            else 
            {
                __reg2 = new caurina.transitions.TweenListObj(__reg6[__reg5], caurina.transitions.Tweener._currentTime + __reg4 * 1000 / caurina.transitions.Tweener._timeScale, caurina.transitions.Tweener._currentTime + (__reg4 * 1000 + __reg7 * 1000) / caurina.transitions.Tweener._timeScale, false, __reg9, __reg3.transitionParams);
            }
            __reg2.properties = undefined;
            __reg2.onStart = __reg3.onStart;
            __reg2.onUpdate = __reg3.onUpdate;
            __reg2.onComplete = __reg3.onComplete;
            __reg2.onOverwrite = __reg3.onOverwrite;
            __reg2.onStartParams = __reg3.onStartParams;
            __reg2.onUpdateParams = __reg3.onUpdateParams;
            __reg2.onCompleteParams = __reg3.onCompleteParams;
            __reg2.onOverwriteParams = __reg3.onOverwriteParams;
            __reg2.onStartScope = __reg3.onStartScope;
            __reg2.onUpdateScope = __reg3.onUpdateScope;
            __reg2.onCompleteScope = __reg3.onCompleteScope;
            __reg2.onOverwriteScope = __reg3.onOverwriteScope;
            __reg2.onErrorScope = __reg3.onErrorScope;
            __reg2.isCaller = true;
            __reg2.count = __reg3.count;
            __reg2.waitFrames = __reg3.waitFrames;
            caurina.transitions.Tweener._tweenList.push(__reg2);
            if (__reg7 == 0 && __reg4 == 0) 
            {
                __reg8 = caurina.transitions.Tweener._tweenList.length - 1;
                caurina.transitions.Tweener.updateTweenByIndex(__reg8);
                caurina.transitions.Tweener.removeTweenByIndex(__reg8);
            }
            ++__reg5;
        }
        return true;
    }

    static function removeTweensByTime(p_scope, p_properties, p_timeStart, p_timeComplete)
    {
        var __reg5 = false;
        var __reg4 = undefined;
        var __reg1 = undefined;
        var __reg7 = caurina.transitions.Tweener._tweenList.length;
        var __reg2 = undefined;
        __reg1 = 0;
        while (__reg1 < __reg7) 
        {
            if (p_scope == caurina.transitions.Tweener._tweenList[__reg1].scope) 
            {
                if (p_timeComplete > caurina.transitions.Tweener._tweenList[__reg1].timeStart && p_timeStart < caurina.transitions.Tweener._tweenList[__reg1].timeComplete) 
                {
                    __reg4 = false;
                    for (__reg2 in caurina.transitions.Tweener._tweenList[__reg1].properties) 
                    {
                        if (p_properties[__reg2] != undefined) 
                        {
                            if (caurina.transitions.Tweener._tweenList[__reg1].onOverwrite != undefined) 
                            {
                                var __reg3 = caurina.transitions.Tweener._tweenList[__reg1].onOverwriteScope == undefined ? caurina.transitions.Tweener._tweenList[__reg1].scope : caurina.transitions.Tweener._tweenList[__reg1].onOverwriteScope;
                                caurina.transitions.Tweener._tweenList[__reg1].onOverwrite.apply(__reg3, caurina.transitions.Tweener._tweenList[__reg1].onOverwriteParams);
                            }
                            caurina.transitions.Tweener._tweenList[__reg1].properties[__reg2] = undefined;
                            delete caurina.transitions.Tweener._tweenList[__reg1].properties[__reg2];
                            __reg4 = true;
                            __reg5 = true;
                        }
                    }
                    if (__reg4) 
                    {
                        if (caurina.transitions.AuxFunctions.getObjectLength(caurina.transitions.Tweener._tweenList[__reg1].properties) == 0) 
                        {
                            caurina.transitions.Tweener.removeTweenByIndex(__reg1);
                        }
                    }
                }
            }
            ++__reg1;
        }
        return __reg5;
    }

    static function removeTweens(p_scope)
    {
        var __reg5 = new Array();
        var __reg3 = undefined;
        __reg3 = 1;
        while (__reg3 < arguments.length) 
        {
            if (typeof arguments[__reg3] == "string" && !caurina.transitions.AuxFunctions.isInArray(arguments[__reg3], __reg5)) 
            {
                if (caurina.transitions.Tweener._specialPropertySplitterList[arguments[__reg3]]) 
                {
                    var __reg6 = caurina.transitions.Tweener._specialPropertySplitterList[arguments[__reg3]];
                    var __reg4 = __reg6.splitValues(p_scope, null);
                    var __reg2 = 0;
                    while (__reg2 < __reg4.length) 
                    {
                        __reg5.push(__reg4[__reg2].name);
                        ++__reg2;
                    }
                }
                else 
                {
                    __reg5.push(arguments[__reg3]);
                }
            }
            ++__reg3;
        }
        return caurina.transitions.Tweener.affectTweens(caurina.transitions.Tweener.removeTweenByIndex, p_scope, __reg5);
    }

    static function removeAllTweens()
    {
        var __reg2 = false;
        var __reg1 = undefined;
        __reg1 = 0;
        while (__reg1 < caurina.transitions.Tweener._tweenList.length) 
        {
            caurina.transitions.Tweener.removeTweenByIndex(__reg1);
            __reg2 = true;
            ++__reg1;
        }
        return __reg2;
    }

    static function pauseTweens(p_scope)
    {
        var __reg3 = new Array();
        var __reg2 = undefined;
        __reg2 = 1;
        while (__reg2 < arguments.length) 
        {
            if (typeof arguments[__reg2] == "string" && !caurina.transitions.AuxFunctions.isInArray(arguments[__reg2], __reg3)) 
            {
                __reg3.push(arguments[__reg2]);
            }
            ++__reg2;
        }
        return caurina.transitions.Tweener.affectTweens(caurina.transitions.Tweener.pauseTweenByIndex, p_scope, __reg3);
    }

    static function pauseAllTweens()
    {
        var __reg2 = false;
        var __reg1 = undefined;
        __reg1 = 0;
        while (__reg1 < caurina.transitions.Tweener._tweenList.length) 
        {
            caurina.transitions.Tweener.pauseTweenByIndex(__reg1);
            __reg2 = true;
            ++__reg1;
        }
        return __reg2;
    }

    static function resumeTweens(p_scope)
    {
        var __reg3 = new Array();
        var __reg2 = undefined;
        __reg2 = 1;
        while (__reg2 < arguments.length) 
        {
            if (typeof arguments[__reg2] == "string" && !caurina.transitions.AuxFunctions.isInArray(arguments[__reg2], __reg3)) 
            {
                __reg3.push(arguments[__reg2]);
            }
            ++__reg2;
        }
        return caurina.transitions.Tweener.affectTweens(caurina.transitions.Tweener.resumeTweenByIndex, p_scope, __reg3);
    }

    static function resumeAllTweens()
    {
        var __reg2 = false;
        var __reg1 = undefined;
        __reg1 = 0;
        while (__reg1 < caurina.transitions.Tweener._tweenList.length) 
        {
            caurina.transitions.Tweener.resumeTweenByIndex(__reg1);
            __reg2 = true;
            ++__reg1;
        }
        return __reg2;
    }

    static function affectTweens(p_affectFunction, p_scope, p_properties)
    {
        var __reg5 = false;
        var __reg2 = undefined;
        if (!caurina.transitions.Tweener._tweenList) 
        {
            return false;
        }
        __reg2 = 0;
        while (__reg2 < caurina.transitions.Tweener._tweenList.length) 
        {
            if (caurina.transitions.Tweener._tweenList[__reg2].scope == p_scope) 
            {
                if (p_properties.length == 0) 
                {
                    p_affectFunction(__reg2);
                    __reg5 = true;
                }
                else 
                {
                    var __reg4 = new Array();
                    var __reg1 = undefined;
                    __reg1 = 0;
                    while (__reg1 < p_properties.length) 
                    {
                        if (caurina.transitions.Tweener._tweenList[__reg2].properties[p_properties[__reg1]] != undefined) 
                        {
                            __reg4.push(p_properties[__reg1]);
                        }
                        ++__reg1;
                    }
                    if (__reg4.length > 0) 
                    {
                        var __reg7 = caurina.transitions.AuxFunctions.getObjectLength(caurina.transitions.Tweener._tweenList[__reg2].properties);
                        if (__reg7 == __reg4.length) 
                        {
                            p_affectFunction(__reg2);
                            __reg5 = true;
                        }
                        else 
                        {
                            var __reg8 = caurina.transitions.Tweener.splitTweens(__reg2, __reg4);
                            p_affectFunction(__reg8);
                            __reg5 = true;
                        }
                    }
                }
            }
            ++__reg2;
        }
        return __reg5;
    }

    static function splitTweens(p_tween, p_properties)
    {
        var __reg6 = caurina.transitions.Tweener._tweenList[p_tween];
        var __reg5 = __reg6.clone(false);
        var __reg1 = undefined;
        var __reg2 = undefined;
        __reg1 = 0;
        while (__reg1 < p_properties.length) 
        {
            __reg2 = p_properties[__reg1];
            if (__reg6.properties[__reg2] != undefined) 
            {
                __reg6.properties[__reg2] = undefined;
                delete __reg6.properties[__reg2];
            }
            ++__reg1;
        }
        var __reg4 = undefined;
        for (__reg2 in __reg5.properties) 
        {
            __reg4 = false;
            __reg1 = 0;
            while (__reg1 < p_properties.length) 
            {
                if (p_properties[__reg1] == __reg2) 
                {
                    __reg4 = true;
                    break;
                }
                ++__reg1;
            }
            if (!__reg4) 
            {
                __reg5.properties[__reg2] = undefined;
                delete (__reg5.properties[__reg2]);
            }
        }
        caurina.transitions.Tweener._tweenList.push(__reg5);
        return caurina.transitions.Tweener._tweenList.length - 1;
    }

    static function updateTweens()
    {
        if (caurina.transitions.Tweener._tweenList.length == 0) 
        {
            return false;
        }
        var __reg1 = undefined;
        __reg1 = 0;
        while (__reg1 < caurina.transitions.Tweener._tweenList.length) 
        {
            if (!caurina.transitions.Tweener._tweenList[__reg1].isPaused) 
            {
                if (!caurina.transitions.Tweener.updateTweenByIndex(__reg1)) 
                {
                    caurina.transitions.Tweener.removeTweenByIndex(__reg1);
                }
                if (caurina.transitions.Tweener._tweenList[__reg1] == null) 
                {
                    caurina.transitions.Tweener.removeTweenByIndex(__reg1, true);
                    --__reg1;
                }
            }
            ++__reg1;
        }
        return true;
    }

    static function removeTweenByIndex(p_tween, p_finalRemoval)
    {
        caurina.transitions.Tweener._tweenList[p_tween] = null;
        if (p_finalRemoval) 
        {
            caurina.transitions.Tweener._tweenList.splice(p_tween, 1);
        }
        return true;
    }

    static function pauseTweenByIndex(p_tween)
    {
        var __reg1 = caurina.transitions.Tweener._tweenList[p_tween];
        if (__reg1 == null || __reg1.isPaused) 
        {
            return false;
        }
        __reg1.timePaused = caurina.transitions.Tweener.getCurrentTweeningTime(__reg1);
        __reg1.isPaused = true;
        return true;
    }

    static function resumeTweenByIndex(p_tween)
    {
        var __reg1 = caurina.transitions.Tweener._tweenList[p_tween];
        if (__reg1 == null || !__reg1.isPaused) 
        {
            return false;
        }
        var __reg2 = caurina.transitions.Tweener.getCurrentTweeningTime(__reg1);
        __reg1.timeStart = __reg1.timeStart + (__reg2 - __reg1.timePaused);
        __reg1.timeComplete = __reg1.timeComplete + (__reg2 - __reg1.timePaused);
        __reg1.timePaused = undefined;
        __reg1.isPaused = false;
        return true;
    }

    static function updateTweenByIndex(i)
    {
        var __reg1 = caurina.transitions.Tweener._tweenList[i];
        if (__reg1 == null || !__reg1.scope) 
        {
            return false;
        }
        var __reg13 = false;
        var __reg14 = undefined;
        var __reg3 = undefined;
        var __reg7 = undefined;
        var __reg10 = undefined;
        var __reg9 = undefined;
        var __reg6 = undefined;
        var __reg2 = undefined;
        var __reg12 = undefined;
        var __reg5 = undefined;
        var __reg8 = caurina.transitions.Tweener.getCurrentTweeningTime(__reg1);
        var __reg4 = undefined;
        if (__reg8 >= __reg1.timeStart) 
        {
            __reg5 = __reg1.scope;
            if (__reg1.isCaller) 
            {
                do 
                {
                    __reg7 = (__reg1.timeComplete - __reg1.timeStart) / __reg1.count * (__reg1.timesCalled + 1);
                    __reg10 = __reg1.timeStart;
                    __reg9 = __reg1.timeComplete - __reg1.timeStart;
                    __reg6 = __reg1.timeComplete - __reg1.timeStart;
                    __reg3 = __reg1.transition(__reg7, __reg10, __reg9, __reg6, __reg1.transitionParams);
                    if (__reg8 >= __reg3) 
                    {
                        if (__reg1.onUpdate != undefined) 
                        {
                            __reg12 = __reg1.onUpdateScope == undefined ? __reg5 : __reg1.onUpdateScope;
                            __reg1.onUpdate.apply(__reg12, __reg1.onUpdateParams);
                        }
                        ++__reg1.timesCalled;
                        if (__reg1.timesCalled >= __reg1.count) 
                        {
                            __reg13 = true;
                            break;
                        }
                        if (__reg1.waitFrames) 
                        {
                            break;
                        }
                    }
                }
                while (__reg8 >= __reg3);
            }
            else 
            {
                __reg14 = __reg1.skipUpdates < 1 || __reg1.skipUpdates == undefined || __reg1.updatesSkipped >= __reg1.skipUpdates;
                if (__reg8 >= __reg1.timeComplete) 
                {
                    __reg13 = true;
                    __reg14 = true;
                }
                if (!__reg1.hasStarted) 
                {
                    if (__reg1.onStart != undefined) 
                    {
                        __reg12 = __reg1.onStartScope == undefined ? __reg5 : __reg1.onStartScope;
                        __reg1.onStart.apply(__reg12, __reg1.onStartParams);
                    }
                    var __reg11 = undefined;
                    for (__reg2 in __reg1.properties) 
                    {
                        if (__reg1.properties[__reg2].isSpecialProperty) 
                        {
                            if (caurina.transitions.Tweener._specialPropertyList[__reg2].preProcess != undefined) 
                            {
                                __reg1.properties[__reg2].valueComplete = caurina.transitions.Tweener._specialPropertyList[__reg2].preProcess(__reg5, caurina.transitions.Tweener._specialPropertyList[__reg2].parameters, __reg1.properties[__reg2].originalValueComplete, __reg1.properties[__reg2].extra);
                            }
                            __reg11 = caurina.transitions.Tweener._specialPropertyList[__reg2].getValue(__reg5, caurina.transitions.Tweener._specialPropertyList[__reg2].parameters, __reg1.properties[__reg2].extra);
                        }
                        else 
                        {
                            __reg11 = __reg5[__reg2];
                        }
                        __reg1.properties[__reg2].valueStart = isNaN(__reg11) ? __reg1.properties[__reg2].valueComplete : __reg11;
                    }
                    __reg14 = true;
                    __reg1.hasStarted = true;
                }
                if (__reg14) 
                {
                    for (__reg2 in __reg1.properties) 
                    {
                        __reg4 = __reg1.properties[__reg2];
                        if (__reg13) 
                        {
                            __reg3 = __reg4.valueComplete;
                        }
                        else if (__reg4.hasModifier) 
                        {
                            __reg7 = __reg8 - __reg1.timeStart;
                            __reg6 = __reg1.timeComplete - __reg1.timeStart;
                            __reg3 = __reg1.transition(__reg7, 0, 1, __reg6, __reg1.transitionParams);
                            __reg3 = __reg4.modifierFunction(__reg4.valueStart, __reg4.valueComplete, __reg3, __reg4.modifierParameters);
                        }
                        else 
                        {
                            __reg7 = __reg8 - __reg1.timeStart;
                            __reg10 = __reg4.valueStart;
                            __reg9 = __reg4.valueComplete - __reg4.valueStart;
                            __reg6 = __reg1.timeComplete - __reg1.timeStart;
                            __reg3 = __reg1.transition(__reg7, __reg10, __reg9, __reg6, __reg1.transitionParams);
                        }
                        if (__reg1.rounded) 
                        {
                            __reg3 = Math.round(__reg3);
                        }
                        if (__reg4.isSpecialProperty) 
                        {
                            caurina.transitions.Tweener._specialPropertyList[__reg2].setValue(__reg5, __reg3, caurina.transitions.Tweener._specialPropertyList[__reg2].parameters, __reg1.properties[__reg2].extra);
                        }
                        else 
                        {
                            __reg5[__reg2] = __reg3;
                        }
                    }
                    __reg1.updatesSkipped = 0;
                    if (__reg1.onUpdate != undefined) 
                    {
                        __reg12 = __reg1.onUpdateScope == undefined ? __reg5 : __reg1.onUpdateScope;
                        __reg1.onUpdate.apply(__reg12, __reg1.onUpdateParams);
                    }
                }
                else 
                {
                    ++__reg1.updatesSkipped;
                }
            }
            if (__reg13 && __reg1.onComplete != undefined) 
            {
                __reg12 = __reg1.onCompleteScope == undefined ? __reg5 : __reg1.onCompleteScope;
                __reg1.onComplete.apply(__reg12, __reg1.onCompleteParams);
            }
            return !__reg13;
        }
        return true;
    }

    static function init()
    {
        caurina.transitions.Tweener._inited = true;
        caurina.transitions.Tweener._transitionList = new Object();
        caurina.transitions.Equations.init();
        caurina.transitions.Tweener._specialPropertyList = new Object();
        caurina.transitions.Tweener._specialPropertyModifierList = new Object();
        caurina.transitions.Tweener._specialPropertySplitterList = new Object();
    }

    static function registerTransition(p_name, p_function)
    {
        if (!caurina.transitions.Tweener._inited) 
        {
            caurina.transitions.Tweener.init();
        }
        caurina.transitions.Tweener._transitionList[p_name] = p_function;
    }

    static function registerSpecialProperty(p_name, p_getFunction, p_setFunction, p_parameters, p_preProcessFunction)
    {
        if (!caurina.transitions.Tweener._inited) 
        {
            caurina.transitions.Tweener.init();
        }
        var __reg1 = new caurina.transitions.SpecialProperty(p_getFunction, p_setFunction, p_parameters, p_preProcessFunction);
        caurina.transitions.Tweener._specialPropertyList[p_name] = __reg1;
    }

    static function registerSpecialPropertyModifier(p_name, p_modifyFunction, p_getFunction)
    {
        if (!caurina.transitions.Tweener._inited) 
        {
            caurina.transitions.Tweener.init();
        }
        var __reg1 = new caurina.transitions.SpecialPropertyModifier(p_modifyFunction, p_getFunction);
        caurina.transitions.Tweener._specialPropertyModifierList[p_name] = __reg1;
    }

    static function registerSpecialPropertySplitter(p_name, p_splitFunction, p_parameters)
    {
        if (!caurina.transitions.Tweener._inited) 
        {
            caurina.transitions.Tweener.init();
        }
        var __reg1 = new caurina.transitions.SpecialPropertySplitter(p_splitFunction, p_parameters);
        caurina.transitions.Tweener._specialPropertySplitterList[p_name] = __reg1;
    }

    static function startEngine()
    {
        caurina.transitions.Tweener._engineExists = true;
        caurina.transitions.Tweener._tweenList = new Array();
        var __reg2 = Math.floor(Math.random() * 999999);
        var __reg3 = _root.createEmptyMovieClip(caurina.transitions.Tweener.getControllerName(), 31338 + __reg2);
        __reg3.onEnterFrame = function ()
        {
            caurina.transitions.Tweener.onEnterFrame();
        }
        ;
        caurina.transitions.Tweener._currentTimeFrame = 0;
        caurina.transitions.Tweener.updateTime();
    }

    static function stopEngine()
    {
        caurina.transitions.Tweener._engineExists = false;
        caurina.transitions.Tweener._tweenList = null;
        caurina.transitions.Tweener._currentTime = 0;
        caurina.transitions.Tweener._currentTimeFrame = 0;
        delete _root[caurina.transitions.Tweener.getControllerName()].onEnterFrame;
        _root[caurina.transitions.Tweener.getControllerName()].removeMovieClip();
    }

    static function updateTime()
    {
        caurina.transitions.Tweener._currentTime = getTimer();
    }

    static function updateFrame()
    {
        ++caurina.transitions.Tweener._currentTimeFrame;
    }

    static function onEnterFrame()
    {
        caurina.transitions.Tweener.updateTime();
        caurina.transitions.Tweener.updateFrame();
        var __reg1 = false;
        __reg1 = caurina.transitions.Tweener.updateTweens();
        if (__reg1) 
        {
            return;
        }
        caurina.transitions.Tweener.stopEngine();
    }

    static function setTimeScale(p_time)
    {
        var __reg1 = undefined;
        var __reg2 = undefined;
        if (isNaN(p_time)) 
        {
            p_time = 1;
        }
        if (p_time < 1e-005) 
        {
            p_time = 1e-005;
        }
        if (p_time != caurina.transitions.Tweener._timeScale) 
        {
            __reg1 = 0;
            while (__reg1 < caurina.transitions.Tweener._tweenList.length) 
            {
                __reg2 = caurina.transitions.Tweener.getCurrentTweeningTime(caurina.transitions.Tweener._tweenList[__reg1]);
                caurina.transitions.Tweener._tweenList[__reg1].timeStart = __reg2 - (__reg2 - caurina.transitions.Tweener._tweenList[__reg1].timeStart) * caurina.transitions.Tweener._timeScale / p_time;
                caurina.transitions.Tweener._tweenList[__reg1].timeComplete = __reg2 - (__reg2 - caurina.transitions.Tweener._tweenList[__reg1].timeComplete) * caurina.transitions.Tweener._timeScale / p_time;
                if (caurina.transitions.Tweener._tweenList[__reg1].timePaused != undefined) 
                {
                    caurina.transitions.Tweener._tweenList[__reg1].timePaused = __reg2 - (__reg2 - caurina.transitions.Tweener._tweenList[__reg1].timePaused) * caurina.transitions.Tweener._timeScale / p_time;
                }
                ++__reg1;
            }
            caurina.transitions.Tweener._timeScale = p_time;
        }
    }

    static function isTweening(p_scope)
    {
        var __reg1 = undefined;
        __reg1 = 0;
        while (__reg1 < caurina.transitions.Tweener._tweenList.length) 
        {
            if (caurina.transitions.Tweener._tweenList[__reg1].scope == p_scope) 
            {
                return true;
            }
            ++__reg1;
        }
        return false;
    }

    static function getTweens(p_scope)
    {
        var __reg1 = undefined;
        var __reg2 = undefined;
        var __reg3 = new Array();
        __reg1 = 0;
        while (__reg1 < caurina.transitions.Tweener._tweenList.length) 
        {
            if (caurina.transitions.Tweener._tweenList[__reg1].scope == p_scope) 
            {
                for (__reg2 in caurina.transitions.Tweener._tweenList[__reg1].properties) 
                {
                    __reg3.push(__reg2);
                }
            }
            ++__reg1;
        }
        return __reg3;
    }

    static function getTweenCount(p_scope)
    {
        var __reg1 = undefined;
        var __reg2 = 0;
        __reg1 = 0;
        while (__reg1 < caurina.transitions.Tweener._tweenList.length) 
        {
            if (caurina.transitions.Tweener._tweenList[__reg1].scope == p_scope) 
            {
                __reg2 = __reg2 + caurina.transitions.AuxFunctions.getObjectLength(caurina.transitions.Tweener._tweenList[__reg1].properties);
            }
            ++__reg1;
        }
        return __reg2;
    }

    static function handleError(pTweening, pError, pCallBackName)
    {
        if (pTweening.onError != undefined && typeof (pTweening.onError == "function")) 
        {
            var __reg3 = pTweening.onErrorScope == undefined ? pTweening.scope : pTweening.onErrorScope;
            pTweening.onError.apply(__reg3, [pTweening.scope, pError]);
            return;
        }
        if (pTweening.onError == undefined) 
        {
            caurina.transitions.Tweener.printError(pTweening.scope.toString() + " raised an error while executing the \'" + pCallBackName.toString() + "\'handler. \n" + pError);
        }
    }

    static function getCurrentTweeningTime(p_tweening)
    {
        return p_tweening.useFrames ? caurina.transitions.Tweener._currentTimeFrame : caurina.transitions.Tweener._currentTime;
    }

    static function getVersion()
    {
        return "AS2 1.33.74";
    }

    static function getControllerName()
    {
        return "__tweener_controller__" + caurina.transitions.Tweener.getVersion();
    }

    static function printError(p_message)
    {
        trace("## [Tweener] Error: " + p_message);
    }

}
