package info.flowersoft.theotown.scripting;

import vm2.Globals;
import vm2.LuaTable;
import vm2.LuaValue;
import vm2.Varargs;

/* JADX INFO: loaded from: classes4.dex */
public final class LuaUtil {
    public static String toString(Globals globals, Varargs varargs, String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 1; i <= varargs.narg(); i++) {
            LuaValue luaValueArg = varargs.arg(i);
            if (i > 1) {
                sb.append(str);
            }
            if (luaValueArg.isstring()) {
                sb.append(luaValueArg);
            } else {
                sb.append(globals.get("tostring").call(luaValueArg));
            }
        }
        return sb.toString();
    }

    public static LuaTable getProxy(LuaTable luaTable) {
        LuaTable luaTableTableOf = LuaValue.tableOf();
        LuaTable luaTableTableOf2 = LuaValue.tableOf();
        luaTableTableOf2.set("__index", luaTable);
        luaTableTableOf2.set("__newindex", luaTable);
        luaTableTableOf2.set("__metatable", LuaValue.tableOf());
        luaTableTableOf.setmetatable(luaTableTableOf2);
        return luaTableTableOf;
    }
}
