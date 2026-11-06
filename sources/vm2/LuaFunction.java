package vm2;

/* JADX INFO: loaded from: classes6.dex */
public abstract class LuaFunction extends LuaValue {
    public static LuaValue s_metatable;

    @Override // vm2.LuaValue
    public LuaFunction checkfunction() {
        return this;
    }

    @Override // vm2.LuaValue
    public boolean isfunction() {
        return true;
    }

    @Override // vm2.LuaValue
    public LuaFunction optfunction(LuaFunction luaFunction) {
        return this;
    }

    @Override // vm2.LuaValue
    public int type() {
        return 7;
    }

    @Override // vm2.LuaValue
    public String typename() {
        return "function";
    }

    @Override // vm2.LuaValue
    public LuaValue getmetatable() {
        return s_metatable;
    }

    @Override // vm2.LuaValue, vm2.Varargs
    public String tojstring() {
        return "function: " + classnamestub();
    }

    @Override // vm2.LuaValue
    public LuaString strvalue() {
        return LuaValue.valueOf(tojstring());
    }

    public String classnamestub() {
        String name = getClass().getName();
        int iMax = Math.max(name.lastIndexOf(46), name.lastIndexOf(36));
        int i = iMax + 1;
        if (name.charAt(i) == '_') {
            i = iMax + 2;
        }
        return name.substring(i);
    }

    public String name() {
        return classnamestub();
    }
}
