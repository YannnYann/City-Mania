package vm2;

import vm2.LuaTable;

/* JADX INFO: loaded from: classes6.dex */
interface Metatable {
    LuaValue arrayget(LuaValue[] luaValueArr, int i);

    LuaTable.Slot entry(LuaValue luaValue, LuaValue luaValue2);

    LuaValue toLuaValue();

    boolean useWeakKeys();

    boolean useWeakValues();

    LuaValue wrap(LuaValue luaValue);
}
