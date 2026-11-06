package vm2.lib;

import vm2.LuaValue;
import vm2.Varargs;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ZeroArgFunction extends LibFunction {
    @Override // vm2.lib.LibFunction, vm2.LuaValue
    public abstract LuaValue call();

    @Override // vm2.lib.LibFunction, vm2.LuaValue
    public LuaValue call(LuaValue luaValue) {
        return call();
    }

    @Override // vm2.lib.LibFunction, vm2.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        return call();
    }

    @Override // vm2.lib.LibFunction, vm2.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        return call();
    }

    @Override // vm2.lib.LibFunction, vm2.LuaValue
    public Varargs invoke(Varargs varargs) {
        return call();
    }
}
