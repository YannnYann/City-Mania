package vm2.lib;

import vm2.LuaValue;
import vm2.Varargs;

/* JADX INFO: loaded from: classes6.dex */
public abstract class VarArgFunction extends LibFunction {
    @Override // vm2.lib.LibFunction, vm2.LuaValue
    public LuaValue call() {
        return invoke(LuaValue.NONE).arg1();
    }

    @Override // vm2.lib.LibFunction, vm2.LuaValue
    public LuaValue call(LuaValue luaValue) {
        return invoke(luaValue).arg1();
    }

    @Override // vm2.lib.LibFunction, vm2.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        return invoke(LuaValue.varargsOf(luaValue, luaValue2)).arg1();
    }

    @Override // vm2.lib.LibFunction, vm2.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        return invoke(LuaValue.varargsOf(luaValue, luaValue2, luaValue3)).arg1();
    }

    @Override // vm2.lib.LibFunction, vm2.LuaValue
    public Varargs invoke(Varargs varargs) {
        return onInvoke(varargs).eval();
    }

    @Override // vm2.LuaValue
    public Varargs onInvoke(Varargs varargs) {
        return invoke(varargs);
    }
}
