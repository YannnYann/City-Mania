package vm2;

/* JADX INFO: loaded from: classes6.dex */
public class TailcallVarargs extends Varargs {
    private Varargs args;
    private LuaValue func;
    private Varargs result;

    @Override // vm2.Varargs
    public boolean isTailcall() {
        return true;
    }

    public TailcallVarargs(LuaValue luaValue, Varargs varargs) {
        this.func = luaValue;
        this.args = varargs;
    }

    public TailcallVarargs(LuaValue luaValue, LuaValue luaValue2, Varargs varargs) {
        this.func = luaValue.get(luaValue2);
        this.args = LuaValue.varargsOf(luaValue, varargs);
    }

    @Override // vm2.Varargs
    public Varargs eval() {
        while (true) {
            Varargs varargs = this.result;
            if (varargs != null) {
                return varargs;
            }
            Varargs varargsOnInvoke = this.func.onInvoke(this.args);
            if (varargsOnInvoke.isTailcall()) {
                TailcallVarargs tailcallVarargs = (TailcallVarargs) varargsOnInvoke;
                this.func = tailcallVarargs.func;
                this.args = tailcallVarargs.args;
            } else {
                this.result = varargsOnInvoke;
                this.func = null;
                this.args = null;
            }
        }
    }

    @Override // vm2.Varargs
    public LuaValue arg(int i) {
        if (this.result == null) {
            eval();
        }
        return this.result.arg(i);
    }

    @Override // vm2.Varargs
    public LuaValue arg1() {
        if (this.result == null) {
            eval();
        }
        return this.result.arg1();
    }

    @Override // vm2.Varargs
    public int narg() {
        if (this.result == null) {
            eval();
        }
        return this.result.narg();
    }

    @Override // vm2.Varargs
    public Varargs subargs(int i) {
        if (this.result == null) {
            eval();
        }
        return this.result.subargs(i);
    }
}
