package vm2;

import com.ironsource.C3522b4;

/* JADX INFO: loaded from: classes6.dex */
public class Prototype {
    public int[] code;
    public int is_vararg;
    public LuaValue[] k;
    public int lastlinedefined;
    public int linedefined;
    public int[] lineinfo;
    public LocVars[] locvars;
    public int maxstacksize;
    public int numparams;
    public Prototype[] p;
    public LuaString source;
    public Upvaldesc[] upvalues;
    private static final Upvaldesc[] NOUPVALUES = new Upvaldesc[0];
    private static final Prototype[] NOSUBPROTOS = new Prototype[0];

    public Prototype() {
        this.p = NOSUBPROTOS;
        this.upvalues = NOUPVALUES;
    }

    public Prototype(int i) {
        this.p = NOSUBPROTOS;
        this.upvalues = new Upvaldesc[i];
    }

    public String toString() {
        return this.source + ":" + this.linedefined + "-" + this.lastlinedefined;
    }

    public LuaString getlocalname(int i, int i2) {
        int i3 = 0;
        while (true) {
            LocVars[] locVarsArr = this.locvars;
            if (i3 >= locVarsArr.length) {
                return null;
            }
            LocVars locVars = locVarsArr[i3];
            if (locVars.startpc > i2) {
                return null;
            }
            if (i2 < locVars.endpc && i - 1 == 0) {
                return locVars.varname;
            }
            i3++;
        }
    }

    public String shortsource() {
        String str = this.source.tojstring();
        if (str.startsWith("@") || str.startsWith(C3522b4.j.b)) {
            return str.substring(1);
        }
        return str.startsWith("\u001b") ? LoadState.SOURCE_BINARY_STRING : str;
    }
}
