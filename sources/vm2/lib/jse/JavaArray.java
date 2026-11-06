package vm2.lib.jse;

import java.lang.reflect.Array;
import vm2.LuaTable;
import vm2.LuaUserdata;
import vm2.LuaValue;
import vm2.lib.OneArgFunction;

/* JADX INFO: loaded from: classes6.dex */
class JavaArray extends LuaUserdata {
    static final LuaValue LENGTH = LuaValue.valueOf("length");
    static final LuaTable array_metatable;

    public static final class LenFunction extends OneArgFunction {
        private LenFunction() {
        }

        @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return LuaValue.valueOf(Array.getLength(((LuaUserdata) luaValue).m_instance));
        }
    }

    static {
        LuaTable luaTable = new LuaTable();
        array_metatable = luaTable;
        luaTable.rawset(LuaValue.LEN, new LenFunction());
    }

    public JavaArray(Object obj) {
        super(obj);
        setmetatable(array_metatable);
    }

    @Override // vm2.LuaUserdata, vm2.LuaValue
    public LuaValue get(LuaValue luaValue) {
        if (luaValue.equals(LENGTH)) {
            return LuaValue.valueOf(Array.getLength(this.m_instance));
        }
        if (luaValue.isint()) {
            int i = luaValue.toint() - 1;
            if (i >= 0 && i < Array.getLength(this.m_instance)) {
                return CoerceJavaToLua.coerce(Array.get(this.m_instance, luaValue.toint() - 1));
            }
            return LuaValue.NIL;
        }
        return super.get(luaValue);
    }

    @Override // vm2.LuaUserdata, vm2.LuaValue
    public void set(LuaValue luaValue, LuaValue luaValue2) {
        if (luaValue.isint()) {
            int i = luaValue.toint() - 1;
            if (i >= 0 && i < Array.getLength(this.m_instance)) {
                Object obj = this.m_instance;
                Array.set(obj, i, CoerceLuaToJava.coerce(luaValue2, obj.getClass().getComponentType()));
                return;
            } else {
                if (this.m_metatable == null || !LuaValue.settable(this, luaValue, luaValue2)) {
                    LuaValue.error("array index out of bounds");
                    return;
                }
                return;
            }
        }
        super.set(luaValue, luaValue2);
    }
}
