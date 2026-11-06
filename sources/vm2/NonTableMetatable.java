package vm2;

import vm2.LuaTable;

/* JADX INFO: loaded from: classes6.dex */
class NonTableMetatable implements Metatable {
    private final LuaValue value;

    @Override // vm2.Metatable
    public boolean useWeakKeys() {
        return false;
    }

    @Override // vm2.Metatable
    public boolean useWeakValues() {
        return false;
    }

    @Override // vm2.Metatable
    public LuaValue wrap(LuaValue luaValue) {
        return luaValue;
    }

    public NonTableMetatable(LuaValue luaValue) {
        this.value = luaValue;
    }

    @Override // vm2.Metatable
    public LuaValue toLuaValue() {
        return this.value;
    }

    @Override // vm2.Metatable
    public LuaTable.Slot entry(LuaValue luaValue, LuaValue luaValue2) {
        return LuaTable.defaultEntry(luaValue, luaValue2);
    }

    @Override // vm2.Metatable
    public LuaValue arrayget(LuaValue[] luaValueArr, int i) {
        return luaValueArr[i];
    }
}
