package vm2;

/* JADX INFO: loaded from: classes6.dex */
public class LocVars {
    public int endpc;
    public int startpc;
    public LuaString varname;

    public LocVars(LuaString luaString, int i, int i2) {
        this.varname = luaString;
        this.startpc = i;
        this.endpc = i2;
    }

    public String tojstring() {
        return this.varname + " " + this.startpc + "-" + this.endpc;
    }
}
