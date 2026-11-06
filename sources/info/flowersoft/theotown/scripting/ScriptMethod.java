package info.flowersoft.theotown.scripting;

import vm2.LuaFunction;
import vm2.LuaValue;
import vm2.Varargs;

/* JADX INFO: loaded from: classes4.dex */
public class ScriptMethod {
    public LuaValue constant;
    public LuaFunction function;
    public String name;
    public Script script;

    public ScriptMethod(String str, Script script, LuaFunction luaFunction) {
        this.name = str;
        this.script = script;
        this.function = luaFunction;
    }

    public ScriptMethod(String str, LuaValue luaValue) {
        this.name = str;
        this.constant = luaValue;
    }

    public Script getScript() {
        return this.script;
    }

    public LuaValue call() {
        LuaValue luaValue = this.constant;
        if (luaValue != null) {
            return luaValue;
        }
        ScriptingEnvironment scriptingEnvironment = ScriptingEnvironment.getInstance();
        Script currentScript = scriptingEnvironment.getCurrentScript();
        scriptingEnvironment.setCurrentScript(this.script);
        try {
            return this.function.call();
        } catch (Throwable th) {
            try {
                ScriptingEnvironment.getInstance().catchError(this.name + "()", this.script, th);
                scriptingEnvironment.setCurrentScript(currentScript);
                return LuaValue.NIL;
            } finally {
                scriptingEnvironment.setCurrentScript(currentScript);
            }
        }
    }

    public LuaValue call(LuaValue luaValue) {
        LuaValue luaValue2 = this.constant;
        if (luaValue2 != null) {
            return luaValue2;
        }
        ScriptingEnvironment scriptingEnvironment = ScriptingEnvironment.getInstance();
        Script currentScript = scriptingEnvironment.getCurrentScript();
        scriptingEnvironment.setCurrentScript(this.script);
        try {
            return this.function.call(luaValue);
        } catch (Throwable th) {
            try {
                ScriptingEnvironment.getInstance().catchError(this.name + "(.)", this.script, th);
                scriptingEnvironment.setCurrentScript(currentScript);
                return LuaValue.NIL;
            } finally {
                scriptingEnvironment.setCurrentScript(currentScript);
            }
        }
    }

    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        LuaValue luaValue3 = this.constant;
        if (luaValue3 != null) {
            return luaValue3;
        }
        ScriptingEnvironment scriptingEnvironment = ScriptingEnvironment.getInstance();
        Script currentScript = scriptingEnvironment.getCurrentScript();
        scriptingEnvironment.setCurrentScript(this.script);
        try {
            return this.function.call(luaValue, luaValue2);
        } catch (Throwable th) {
            try {
                ScriptingEnvironment.getInstance().catchError(this.name + "(., .)", this.script, th);
                scriptingEnvironment.setCurrentScript(currentScript);
                return LuaValue.NIL;
            } finally {
                scriptingEnvironment.setCurrentScript(currentScript);
            }
        }
    }

    public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        LuaValue luaValue4 = this.constant;
        if (luaValue4 != null) {
            return luaValue4;
        }
        ScriptingEnvironment scriptingEnvironment = ScriptingEnvironment.getInstance();
        Script currentScript = scriptingEnvironment.getCurrentScript();
        scriptingEnvironment.setCurrentScript(this.script);
        try {
            return this.function.call(luaValue, luaValue2, luaValue3);
        } catch (Throwable th) {
            try {
                ScriptingEnvironment.getInstance().catchError(this.name + "(., ., .)", this.script, th);
                scriptingEnvironment.setCurrentScript(currentScript);
                return LuaValue.NIL;
            } finally {
                scriptingEnvironment.setCurrentScript(currentScript);
            }
        }
    }

    public Varargs call(LuaValue[] luaValueArr) {
        LuaValue luaValue = this.constant;
        if (luaValue != null) {
            return luaValue;
        }
        ScriptingEnvironment scriptingEnvironment = ScriptingEnvironment.getInstance();
        Script currentScript = scriptingEnvironment.getCurrentScript();
        scriptingEnvironment.setCurrentScript(this.script);
        try {
            return this.function.invoke(luaValueArr);
        } catch (Throwable th) {
            try {
                ScriptingEnvironment.getInstance().catchError(this.name + "(.[" + luaValueArr.length + "])", this.script, th);
                scriptingEnvironment.setCurrentScript(currentScript);
                return LuaValue.NIL;
            } finally {
                scriptingEnvironment.setCurrentScript(currentScript);
            }
        }
    }

    public boolean equals(Object obj) {
        Object obj2;
        if (!(obj instanceof ScriptMethod)) {
            return false;
        }
        ScriptMethod scriptMethod = (ScriptMethod) obj;
        LuaValue luaValue = this.function;
        if (luaValue != null) {
            obj2 = scriptMethod.function;
        } else {
            luaValue = this.constant;
            obj2 = scriptMethod.constant;
        }
        return luaValue.equals(obj2);
    }

    public int hashCode() {
        LuaFunction luaFunction = this.function;
        return luaFunction != null ? luaFunction.hashCode() : this.constant.hashCode();
    }

    public static ScriptMethod resolve(LuaValue luaValue, String str) {
        return create(str, luaValue.get(str));
    }

    public static ScriptMethod create(String str, LuaValue luaValue) {
        return create(str, ScriptingEnvironment.getInstance().getCurrentScript(), luaValue);
    }

    public static ScriptMethod create(String str, Script script, LuaValue luaValue) {
        if (luaValue != null && luaValue.isfunction()) {
            return new ScriptMethod(str, script, luaValue.checkfunction());
        }
        if (luaValue == null || luaValue == LuaValue.NIL) {
            return null;
        }
        return new ScriptMethod(str, luaValue);
    }
}
