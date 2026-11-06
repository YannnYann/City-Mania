package vm2;

/* JADX INFO: loaded from: classes6.dex */
public abstract class LuaNumber extends LuaValue {
    public static LuaValue s_metatable;

    @Override // vm2.LuaValue
    public LuaNumber checknumber() {
        return this;
    }

    @Override // vm2.LuaValue
    public LuaNumber checknumber(String str) {
        return this;
    }

    @Override // vm2.LuaValue
    public boolean isnumber() {
        return true;
    }

    @Override // vm2.LuaValue
    public boolean isstring() {
        return true;
    }

    @Override // vm2.LuaValue
    public LuaNumber optnumber(LuaNumber luaNumber) {
        return this;
    }

    @Override // vm2.LuaValue
    public LuaValue tonumber() {
        return this;
    }

    @Override // vm2.LuaValue
    public int type() {
        return 4;
    }

    @Override // vm2.LuaValue
    public String typename() {
        return "number";
    }

    @Override // vm2.LuaValue
    public LuaValue getmetatable() {
        return s_metatable;
    }

    @Override // vm2.LuaValue
    public LuaValue concat(LuaValue luaValue) {
        return luaValue.concatTo(this);
    }

    @Override // vm2.LuaValue
    public Buffer concat(Buffer buffer) {
        return buffer.concatTo(this);
    }

    @Override // vm2.LuaValue
    public LuaValue concatTo(LuaNumber luaNumber) {
        return strvalue().concatTo(luaNumber.strvalue());
    }

    @Override // vm2.LuaValue
    public LuaValue concatTo(LuaString luaString) {
        return strvalue().concatTo(luaString);
    }
}
