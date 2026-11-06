package vm2.lib;

import com.ironsource.C3522b4;
import com.ironsource.G5;
import vm2.LuaTable;
import vm2.LuaValue;
import vm2.Varargs;

/* JADX INFO: loaded from: classes6.dex */
public class TableLib extends TwoArgFunction {
    @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        LuaTable luaTable = new LuaTable();
        luaTable.set("concat", new concat());
        luaTable.set("insert", new insert());
        luaTable.set("pack", new pack());
        luaTable.set("remove", new remove());
        luaTable.set("sort", new sort());
        luaTable.set("unpack", new unpack());
        luaValue2.set(G5.R, luaTable);
        if (!luaValue2.get("package").isnil()) {
            luaValue2.get("package").get(C3522b4.i.r).set(G5.R, luaTable);
        }
        return LuaValue.NIL;
    }

    public static class concat extends TableLibFunction {
        @Override // vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return luaValue.checktable().concat(LuaValue.EMPTYSTRING, 1, luaValue.length());
        }

        @Override // vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            return luaValue.checktable().concat(luaValue2.checkstring(), 1, luaValue.length());
        }

        @Override // vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
            return luaValue.checktable().concat(luaValue2.checkstring(), luaValue3.checkint(), luaValue.length());
        }

        @Override // vm2.lib.LibFunction
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3, LuaValue luaValue4) {
            return luaValue.checktable().concat(luaValue2.checkstring(), luaValue3.checkint(), luaValue4.checkint());
        }
    }

    public static class insert extends VarArgFunction {
        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            int iNarg = varargs.narg();
            if (iNarg == 2) {
                LuaTable luaTableChecktable = varargs.checktable(1);
                luaTableChecktable.insert(luaTableChecktable.length() + 1, varargs.arg(2));
                return LuaValue.NONE;
            }
            if (iNarg == 3) {
                LuaTable luaTableChecktable2 = varargs.checktable(1);
                int iCheckint = varargs.checkint(2);
                int length = luaTableChecktable2.length() + 1;
                if (iCheckint < 1 || iCheckint > length) {
                    LuaValue.argerror(2, "position out of bounds: " + iCheckint + " not between 1 and " + length);
                }
                luaTableChecktable2.insert(iCheckint, varargs.arg(3));
                return LuaValue.NONE;
            }
            return LuaValue.error("wrong number of arguments to 'table.insert': " + varargs.narg() + " (must be 2 or 3)");
        }
    }

    public static class pack extends VarArgFunction {
        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaTable luaTableTableOf = LuaValue.tableOf(varargs, 1);
            luaTableTableOf.set(G5.q, varargs.narg());
            return luaTableTableOf;
        }
    }

    public static class remove extends VarArgFunction {
        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaTable luaTableChecktable = varargs.checktable(1);
            int length = luaTableChecktable.length();
            int iOptint = varargs.optint(2, length);
            if (iOptint != length && (iOptint < 1 || iOptint > length + 1)) {
                LuaValue.argerror(2, "position out of bounds: " + iOptint + " not between 1 and " + (length + 1));
            }
            return luaTableChecktable.remove(iOptint);
        }
    }

    public static class sort extends VarArgFunction {
        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            varargs.checktable(1).sort(varargs.isnil(2) ? LuaValue.NIL : varargs.checkfunction(2));
            return LuaValue.NONE;
        }
    }

    public static class unpack extends VarArgFunction {
        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaTable luaTableChecktable = varargs.checktable(1);
            return luaTableChecktable.unpack(varargs.optint(2, 1), varargs.optint(3, varargs.arg(3).isnil() ? luaTableChecktable.length() : 0));
        }
    }
}
