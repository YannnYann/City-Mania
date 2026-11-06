package vm2;

import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
public class LuaThread extends LuaValue {
    public static final int MAX_CALLSTACK = 256;
    public static final int STATUS_DEAD = 4;
    public static final int STATUS_INITIAL = 0;
    public static final String[] STATUS_NAMES = {"suspended", "suspended", "running", "normal", "dead"};
    public static final int STATUS_NORMAL = 3;
    public static final int STATUS_RUNNING = 2;
    public static final int STATUS_SUSPENDED = 1;
    public static int coroutine_count = 0;
    public static LuaValue s_metatable = null;
    public static long thread_orphan_check_interval = 5000;
    public Object callstack;
    public LuaValue errorfunc;
    public final Globals globals;
    public final State state;

    @Override // vm2.LuaValue
    public LuaThread checkthread() {
        return this;
    }

    @Override // vm2.LuaValue
    public boolean isthread() {
        return true;
    }

    @Override // vm2.LuaValue
    public LuaThread optthread(LuaThread luaThread) {
        return this;
    }

    @Override // vm2.LuaValue
    public int type() {
        return 9;
    }

    public LuaThread(Globals globals) {
        State state = new State(globals, this, null);
        this.state = state;
        state.status = 2;
        this.globals = globals;
    }

    public LuaThread(Globals globals, LuaValue luaValue) {
        LuaValue.assert_(luaValue != null, "function cannot be null");
        this.state = new State(globals, this, luaValue);
        this.globals = globals;
    }

    @Override // vm2.LuaValue
    public String typename() {
        return "thread";
    }

    @Override // vm2.LuaValue
    public LuaValue getmetatable() {
        return s_metatable;
    }

    public String getStatus() {
        return STATUS_NAMES[this.state.status];
    }

    public boolean isMainThread() {
        return this.state.function == null;
    }

    public Varargs resume(Varargs varargs) {
        State state = this.state;
        if (state.status > 1) {
            LuaBoolean luaBoolean = LuaValue.FALSE;
            StringBuilder sb = new StringBuilder();
            sb.append("cannot resume ");
            sb.append(state.status == 4 ? "dead" : "non-suspended");
            sb.append(" coroutine");
            return LuaValue.varargsOf(luaBoolean, LuaValue.valueOf(sb.toString()));
        }
        return state.lua_resume(this, varargs);
    }

    public static class StateThread extends Thread {
        public final Thread owner;
        public final State state;

        public StateThread(State state, String str) {
            super(state, str);
            this.state = state;
            this.owner = Thread.currentThread();
        }
    }

    public static class State implements Runnable {
        Varargs args;
        public int bytecodes;
        String error;
        public final LuaValue function;
        private final Globals globals;
        public boolean hookcall;
        public int hookcount;
        public LuaValue hookfunc;
        public boolean hookline;
        public boolean hookrtrn;
        public boolean inhook;
        public int lastline;
        final WeakReference lua_thread;
        Varargs result;
        public int status;

        public State(Globals globals, LuaThread luaThread, LuaValue luaValue) {
            LuaValue luaValue2 = LuaValue.NONE;
            this.args = luaValue2;
            this.result = luaValue2;
            this.error = null;
            this.status = 0;
            this.globals = globals;
            this.lua_thread = new WeakReference(luaThread);
            this.function = luaValue;
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            try {
                Varargs varargs = this.args;
                this.args = LuaValue.NONE;
                this.result = this.function.invoke(varargs);
                this.status = 4;
            } catch (Throwable th) {
                try {
                    this.error = th.getMessage();
                    this.status = 4;
                } catch (Throwable th2) {
                    this.status = 4;
                    notify();
                    throw th2;
                }
            }
            notify();
        }

        public synchronized Varargs lua_resume(LuaThread luaThread, Varargs varargs) {
            Varargs varargsVarargsOf;
            Globals globals = this.globals;
            LuaThread luaThread2 = globals.running;
            try {
                try {
                    globals.running = luaThread;
                    this.args = varargs;
                    if (this.status == 0) {
                        this.status = 2;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Coroutine-");
                        int i = LuaThread.coroutine_count + 1;
                        LuaThread.coroutine_count = i;
                        sb.append(i);
                        new StateThread(this, sb.toString()).start();
                    } else {
                        notify();
                    }
                    if (luaThread2 != null) {
                        luaThread2.state.status = 3;
                    }
                    this.status = 2;
                    wait();
                    String str = this.error;
                    if (str != null) {
                        varargsVarargsOf = LuaValue.varargsOf(LuaValue.FALSE, LuaValue.valueOf(str));
                    } else {
                        varargsVarargsOf = LuaValue.varargsOf(LuaValue.TRUE, this.result);
                    }
                    LuaValue luaValue = LuaValue.NONE;
                    this.args = luaValue;
                    this.result = luaValue;
                    this.error = null;
                    this.globals.running = luaThread2;
                    if (luaThread2 != null) {
                        luaThread2.state.status = 2;
                    }
                } catch (InterruptedException unused) {
                    throw new OrphanedThread();
                }
            } catch (Throwable th) {
                LuaValue luaValue2 = LuaValue.NONE;
                this.args = luaValue2;
                this.result = luaValue2;
                this.error = null;
                this.globals.running = luaThread2;
                if (luaThread2 != null) {
                    luaThread2.state.status = 2;
                }
                throw th;
            }
            return varargsVarargsOf;
        }

        public synchronized Varargs lua_yield(Varargs varargs) {
            try {
                try {
                    this.result = varargs;
                    this.status = 1;
                    notify();
                    do {
                        wait(LuaThread.thread_orphan_check_interval);
                        if (this.lua_thread.get() == null) {
                            this.status = 4;
                            throw new OrphanedThread();
                        }
                    } while (this.status == 1);
                } catch (InterruptedException unused) {
                    this.status = 4;
                    throw new OrphanedThread();
                }
            } finally {
                LuaValue luaValue = LuaValue.NONE;
                this.args = luaValue;
                this.result = luaValue;
            }
            return this.args;
        }
    }
}
