package vm2.lib;

import vm2.LuaValue;

/* JADX INFO: loaded from: classes6.dex */
class TableLibFunction extends LibFunction {
    @Override // vm2.lib.LibFunction, vm2.LuaValue
    public LuaValue call() {
        return LuaValue.argerror(1, "table expected, got no value");
    }
}
