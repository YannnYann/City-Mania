package vm2.lib;

import vm2.LuaValue;
import vm2.Varargs;

/* JADX INFO: loaded from: classes6.dex */
public abstract class OneArgFunction extends LibFunction {
    @Override // vm2.lib.LibFunction, vm2.LuaValue
    public abstract LuaValue call(LuaValue luaValue);

    @Override // vm2.lib.LibFunction, vm2.LuaValue
    public final LuaValue call() {
        return call(LuaValue.NIL);
    }

    @Override // vm2.lib.LibFunction, vm2.LuaValue
    public final LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        return call(luaValue);
    }

    @Override // vm2.lib.LibFunction, vm2.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        return call(luaValue);
    }

    @Override // vm2.lib.LibFunction, vm2.LuaValue
    public Varargs invoke(Varargs varargs) {
        return call(varargs.arg1());
    }
}
