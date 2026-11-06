package vm2.lib;

import com.ironsource.C3522b4;
import vm2.Globals;
import vm2.LuaTable;
import vm2.LuaThread;
import vm2.LuaValue;
import vm2.Varargs;

/* JADX INFO: loaded from: classes6.dex */
public class CoroutineLib extends TwoArgFunction {
    static int coroutine_count;
    Globals globals;

    @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        this.globals = luaValue2.checkglobals();
        LuaTable luaTable = new LuaTable();
        luaTable.set("create", new create());
        luaTable.set("resume", new resume());
        luaTable.set("running", new running());
        luaTable.set("status", new status());
        luaTable.set("yield", new yieldCls());
        luaTable.set("wrap", new wrap());
        luaValue2.set("coroutine", luaTable);
        if (!luaValue2.get("package").isnil()) {
            luaValue2.get("package").get(C3522b4.i.r).set("coroutine", luaTable);
        }
        return luaTable;
    }

    public final class create extends LibFunction {
        public create() {
        }

        @Override // vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return new LuaThread(CoroutineLib.this.globals, luaValue.checkfunction());
        }
    }

    public static final class resume extends VarArgFunction {
        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            return varargs.checkthread(1).resume(varargs.subargs(2));
        }
    }

    public final class running extends VarArgFunction {
        public running() {
        }

        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaThread luaThread = CoroutineLib.this.globals.running;
            return LuaValue.varargsOf(luaThread, LuaValue.valueOf(luaThread.isMainThread()));
        }
    }

    public static final class status extends LibFunction {
        @Override // vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return LuaValue.valueOf(luaValue.checkthread().getStatus());
        }
    }

    public final class yieldCls extends VarArgFunction {
        public yieldCls() {
        }

        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            return CoroutineLib.this.globals.yield(varargs);
        }
    }

    public final class wrap extends LibFunction {
        public wrap() {
        }

        @Override // vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return new wrapper(new LuaThread(CoroutineLib.this.globals, luaValue.checkfunction()));
        }
    }

    public static final class wrapper extends VarArgFunction {
        final LuaThread luathread;

        public wrapper(LuaThread luaThread) {
            this.luathread = luaThread;
        }

        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            Varargs varargsResume = this.luathread.resume(varargs);
            if (varargsResume.arg1().toboolean()) {
                return varargsResume.subargs(2);
            }
            return LuaValue.error(varargsResume.arg(2).tojstring());
        }
    }
}
