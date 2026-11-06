package vm2;

import com.ironsource.C3522b4;

/* JADX INFO: loaded from: classes6.dex */
public class LuaNil extends LuaValue {
    static final LuaNil _NIL = new LuaNil();
    public static LuaValue s_metatable;

    @Override // vm2.LuaValue
    public boolean isnil() {
        return true;
    }

    @Override // vm2.LuaValue
    public boolean isvalidkey() {
        return false;
    }

    @Override // vm2.LuaValue
    public boolean optboolean(boolean z) {
        return z;
    }

    @Override // vm2.LuaValue
    public LuaClosure optclosure(LuaClosure luaClosure) {
        return luaClosure;
    }

    @Override // vm2.LuaValue
    public double optdouble(double d) {
        return d;
    }

    @Override // vm2.LuaValue
    public LuaFunction optfunction(LuaFunction luaFunction) {
        return luaFunction;
    }

    @Override // vm2.LuaValue
    public int optint(int i) {
        return i;
    }

    @Override // vm2.LuaValue
    public LuaInteger optinteger(LuaInteger luaInteger) {
        return luaInteger;
    }

    @Override // vm2.LuaValue
    public String optjstring(String str) {
        return str;
    }

    @Override // vm2.LuaValue
    public long optlong(long j) {
        return j;
    }

    @Override // vm2.LuaValue
    public LuaNumber optnumber(LuaNumber luaNumber) {
        return luaNumber;
    }

    @Override // vm2.LuaValue
    public LuaString optstring(LuaString luaString) {
        return luaString;
    }

    @Override // vm2.LuaValue
    public LuaTable opttable(LuaTable luaTable) {
        return luaTable;
    }

    @Override // vm2.LuaValue
    public LuaThread optthread(LuaThread luaThread) {
        return luaThread;
    }

    @Override // vm2.LuaValue
    public Object optuserdata(Class cls, Object obj) {
        return obj;
    }

    @Override // vm2.LuaValue
    public Object optuserdata(Object obj) {
        return obj;
    }

    @Override // vm2.LuaValue
    public LuaValue optvalue(LuaValue luaValue) {
        return luaValue;
    }

    @Override // vm2.LuaValue
    public boolean toboolean() {
        return false;
    }

    @Override // vm2.LuaValue
    public int type() {
        return 1;
    }

    @Override // vm2.LuaValue, vm2.Varargs
    public String toString() {
        return "nil";
    }

    @Override // vm2.LuaValue
    public String typename() {
        return "nil";
    }

    @Override // vm2.LuaValue, vm2.Varargs
    public String tojstring() {
        return "nil";
    }

    @Override // vm2.LuaValue
    public LuaValue not() {
        return LuaValue.TRUE;
    }

    @Override // vm2.LuaValue
    public LuaValue getmetatable() {
        return s_metatable;
    }

    @Override // vm2.LuaValue
    public boolean equals(Object obj) {
        return obj instanceof LuaNil;
    }

    @Override // vm2.LuaValue
    public LuaValue checknotnil() {
        return argerror(C3522b4.i.X);
    }
}
