package vm2;

/* JADX INFO: loaded from: classes6.dex */
public final class LuaBoolean extends LuaValue {
    public static LuaValue s_metatable;
    public final boolean v;
    static final LuaBoolean _TRUE = new LuaBoolean(true);
    static final LuaBoolean _FALSE = new LuaBoolean(false);

    @Override // vm2.LuaValue
    public boolean isboolean() {
        return true;
    }

    @Override // vm2.LuaValue
    public int type() {
        return 2;
    }

    public LuaBoolean(boolean z) {
        this.v = z;
    }

    @Override // vm2.LuaValue
    public String typename() {
        return "boolean";
    }

    @Override // vm2.LuaValue
    public LuaValue not() {
        return this.v ? LuaValue.FALSE : LuaValue.TRUE;
    }

    public boolean booleanValue() {
        return this.v;
    }

    @Override // vm2.LuaValue
    public boolean toboolean() {
        return this.v;
    }

    @Override // vm2.LuaValue, vm2.Varargs
    public String tojstring() {
        return this.v ? "true" : "false";
    }

    @Override // vm2.LuaValue
    public boolean optboolean(boolean z) {
        return this.v;
    }

    @Override // vm2.LuaValue
    public boolean checkboolean() {
        return this.v;
    }

    @Override // vm2.LuaValue
    public LuaValue getmetatable() {
        return s_metatable;
    }
}
