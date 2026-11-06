package vm2.lib;

import vm2.LuaValue;
import vm2.Varargs;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ThreeArgFunction extends LibFunction {
    @Override // vm2.lib.LibFunction, vm2.LuaValue
    public abstract LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3);

    @Override // vm2.lib.LibFunction, vm2.LuaValue
    public final LuaValue call() {
        LuaValue luaValue = LuaValue.NIL;
        return call(luaValue, luaValue, luaValue);
    }

    @Override // vm2.lib.LibFunction, vm2.LuaValue
    public final LuaValue call(LuaValue luaValue) {
        LuaValue luaValue2 = LuaValue.NIL;
        return call(luaValue, luaValue2, luaValue2);
    }

    @Override // vm2.lib.LibFunction, vm2.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        return call(luaValue, luaValue2, LuaValue.NIL);
    }

    @Override // vm2.lib.LibFunction, vm2.LuaValue
    public Varargs invoke(Varargs varargs) {
        return call(varargs.arg1(), varargs.arg(2), varargs.arg(3));
    }
}
