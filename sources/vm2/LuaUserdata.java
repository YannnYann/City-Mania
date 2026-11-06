package vm2;

/* JADX INFO: loaded from: classes6.dex */
public class LuaUserdata extends LuaValue {
    public Object m_instance;
    public LuaValue m_metatable;

    @Override // vm2.LuaValue
    public boolean isuserdata() {
        return true;
    }

    @Override // vm2.LuaValue
    public int type() {
        return 6;
    }

    public LuaUserdata(Object obj) {
        this.m_instance = obj;
    }

    public LuaUserdata(Object obj, LuaValue luaValue) {
        this.m_instance = obj;
        this.m_metatable = luaValue;
    }

    @Override // vm2.LuaValue, vm2.Varargs
    public String tojstring() {
        return String.valueOf(this.m_instance);
    }

    @Override // vm2.LuaValue
    public String typename() {
        return "userdata";
    }

    public int hashCode() {
        return this.m_instance.hashCode();
    }

    public Object userdata() {
        return this.m_instance;
    }

    @Override // vm2.LuaValue
    public boolean isuserdata(Class cls) {
        return cls.isAssignableFrom(this.m_instance.getClass());
    }

    @Override // vm2.LuaValue
    public Object touserdata() {
        return this.m_instance;
    }

    @Override // vm2.LuaValue
    public Object touserdata(Class cls) {
        if (cls.isAssignableFrom(this.m_instance.getClass())) {
            return this.m_instance;
        }
        return null;
    }

    @Override // vm2.LuaValue
    public Object optuserdata(Object obj) {
        return this.m_instance;
    }

    @Override // vm2.LuaValue
    public Object optuserdata(Class cls, Object obj) {
        if (!cls.isAssignableFrom(this.m_instance.getClass())) {
            typerror(cls.getName());
        }
        return this.m_instance;
    }

    @Override // vm2.LuaValue
    public LuaValue getmetatable() {
        return this.m_metatable;
    }

    @Override // vm2.LuaValue
    public LuaValue setmetatable(LuaValue luaValue) {
        this.m_metatable = luaValue;
        return this;
    }

    @Override // vm2.LuaValue
    public Object checkuserdata() {
        return this.m_instance;
    }

    @Override // vm2.LuaValue
    public Object checkuserdata(Class cls) {
        if (cls.isAssignableFrom(this.m_instance.getClass())) {
            return this.m_instance;
        }
        return typerror(cls.getName());
    }

    @Override // vm2.LuaValue
    public LuaValue get(LuaValue luaValue) {
        return this.m_metatable != null ? LuaValue.gettable(this, luaValue) : LuaValue.NIL;
    }

    @Override // vm2.LuaValue
    public void set(LuaValue luaValue, LuaValue luaValue2) {
        if (this.m_metatable == null || !LuaValue.settable(this, luaValue, luaValue2)) {
            LuaValue.error("cannot set " + luaValue + " for userdata");
        }
    }

    @Override // vm2.LuaValue
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LuaUserdata) {
            return this.m_instance.equals(((LuaUserdata) obj).m_instance);
        }
        return false;
    }

    @Override // vm2.LuaValue
    public LuaValue eq(LuaValue luaValue) {
        return eq_b(luaValue) ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // vm2.LuaValue
    public boolean eq_b(LuaValue luaValue) {
        LuaValue luaValue2;
        if (luaValue.raweq(this)) {
            return true;
        }
        return this.m_metatable != null && luaValue.isuserdata() && (luaValue2 = luaValue.getmetatable()) != null && LuaValue.eqmtcall(this, this.m_metatable, luaValue, luaValue2);
    }

    @Override // vm2.LuaValue
    public boolean raweq(LuaValue luaValue) {
        return luaValue.raweq(this);
    }

    @Override // vm2.LuaValue
    public boolean raweq(LuaUserdata luaUserdata) {
        if (this != luaUserdata) {
            return this.m_metatable == luaUserdata.m_metatable && this.m_instance.equals(luaUserdata.m_instance);
        }
        return true;
    }

    public boolean eqmt(LuaValue luaValue) {
        if (this.m_metatable == null || !luaValue.isuserdata()) {
            return false;
        }
        return LuaValue.eqmtcall(this, this.m_metatable, luaValue, luaValue.getmetatable());
    }
}
