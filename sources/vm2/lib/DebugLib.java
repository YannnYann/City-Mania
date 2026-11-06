package vm2.lib;

import com.ironsource.C3522b4;
import com.ironsource.G5;
import com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource;
import com.vungle.ads.internal.protos.Sdk;
import vm2.Globals;
import vm2.Lua;
import vm2.LuaBoolean;
import vm2.LuaClosure;
import vm2.LuaError;
import vm2.LuaFunction;
import vm2.LuaNil;
import vm2.LuaNumber;
import vm2.LuaString;
import vm2.LuaTable;
import vm2.LuaThread;
import vm2.LuaUserdata;
import vm2.LuaValue;
import vm2.Print;
import vm2.Prototype;
import vm2.UpValue;
import vm2.Upvaldesc;
import vm2.Varargs;

/* JADX INFO: loaded from: classes6.dex */
public class DebugLib extends TwoArgFunction {
    static final LuaString ACTIVELINES;
    private static final LuaString CALL;
    public static boolean CALLS;
    private static final LuaString COUNT;
    static final LuaString CURRENTLINE;
    static final LuaString FUNC;
    static final LuaString ISTAILCALL;
    static final LuaString ISVARARG;
    static final LuaString LASTLINEDEFINED;
    private static final LuaString LINE;
    static final LuaString LINEDEFINED;
    static final LuaString LUA;
    static final LuaString NAME;
    static final LuaString NAMEWHAT;
    static final LuaString NPARAMS;
    static final LuaString NUPS;
    private static final LuaString QMARK;
    private static final LuaString RETURN;
    static final LuaString SHORT_SRC;
    static final LuaString SOURCE;
    public static boolean TRACE;
    static final LuaString WHAT;
    Globals globals;

    static {
        try {
            CALLS = System.getProperty("CALLS") != null;
        } catch (Exception unused) {
        }
        try {
            TRACE = System.getProperty("TRACE") != null;
        } catch (Exception unused2) {
        }
        LUA = LuaValue.valueOf("Lua");
        QMARK = LuaValue.valueOf("?");
        CALL = LuaValue.valueOf("call");
        LINE = LuaValue.valueOf("line");
        COUNT = LuaValue.valueOf("count");
        RETURN = LuaValue.valueOf("return");
        FUNC = LuaValue.valueOf("func");
        ISTAILCALL = LuaValue.valueOf("istailcall");
        ISVARARG = LuaValue.valueOf("isvararg");
        NUPS = LuaValue.valueOf("nups");
        NPARAMS = LuaValue.valueOf("nparams");
        NAME = LuaValue.valueOf("name");
        NAMEWHAT = LuaValue.valueOf("namewhat");
        WHAT = LuaValue.valueOf("what");
        SOURCE = LuaValue.valueOf("source");
        SHORT_SRC = LuaValue.valueOf("short_src");
        LINEDEFINED = LuaValue.valueOf("linedefined");
        LASTLINEDEFINED = LuaValue.valueOf("lastlinedefined");
        CURRENTLINE = LuaValue.valueOf("currentline");
        ACTIVELINES = LuaValue.valueOf("activelines");
    }

    @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        Globals globalsCheckglobals = luaValue2.checkglobals();
        this.globals = globalsCheckglobals;
        globalsCheckglobals.debuglib = this;
        LuaTable luaTable = new LuaTable();
        luaTable.set("debug", new debug());
        luaTable.set("gethook", new gethook());
        luaTable.set("getinfo", new getinfo());
        luaTable.set("getlocal", new getlocal());
        luaTable.set("getmetatable", new getmetatable());
        luaTable.set("getregistry", new getregistry());
        luaTable.set("getupvalue", new getupvalue());
        luaTable.set("getuservalue", new getuservalue());
        luaTable.set("sethook", new sethook());
        luaTable.set("setlocal", new setlocal());
        luaTable.set("setmetatable", new setmetatable());
        luaTable.set("setupvalue", new setupvalue());
        luaTable.set("setuservalue", new setuservalue());
        luaTable.set("traceback", new traceback());
        luaTable.set("upvalueid", new upvalueid());
        luaTable.set("upvaluejoin", new upvaluejoin());
        luaValue2.set("debug", luaTable);
        if (!luaValue2.get("package").isnil()) {
            luaValue2.get("package").get(C3522b4.i.r).set("debug", luaTable);
        }
        return luaTable;
    }

    public static final class debug extends ZeroArgFunction {
        @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call() {
            return LuaValue.NONE;
        }
    }

    public final class gethook extends VarArgFunction {
        public gethook() {
        }

        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaThread.State state = (varargs.narg() > 0 ? varargs.checkthread(1) : DebugLib.this.globals.running).state;
            LuaValue luaValue = state.hookfunc;
            if (luaValue == null) {
                luaValue = LuaValue.NIL;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(state.hookcall ? "c" : "");
            sb.append(state.hookline ? "l" : "");
            sb.append(state.hookrtrn ? AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ : "");
            return LuaValue.varargsOf(luaValue, LuaValue.valueOf(sb.toString()), LuaValue.valueOf(state.hookcount));
        }
    }

    public final class getinfo extends VarArgFunction {
        public getinfo() {
        }

        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaThread luaThreadCheckthread;
            int i;
            CallFrame callFrameFindCallFrame;
            int i2 = 1;
            if (varargs.isthread(1)) {
                luaThreadCheckthread = varargs.checkthread(1);
                i = 2;
            } else {
                luaThreadCheckthread = DebugLib.this.globals.running;
                i = 1;
            }
            LuaValue luaValueArg = varargs.arg(i);
            String strOptjstring = varargs.optjstring(i + 1, "flnStu");
            CallStack callstack = DebugLib.this.callstack(luaThreadCheckthread);
            if (luaValueArg.isnumber()) {
                callFrameFindCallFrame = callstack.getCallFrame(luaValueArg.toint());
                if (callFrameFindCallFrame == null) {
                    return LuaValue.NONE;
                }
                luaValueArg = callFrameFindCallFrame.f;
            } else if (luaValueArg.isfunction()) {
                callFrameFindCallFrame = callstack.findCallFrame(luaValueArg);
            } else {
                return LuaValue.argerror(i, "function or level");
            }
            DebugInfo debugInfoAuxgetinfo = callstack.auxgetinfo(strOptjstring, (LuaFunction) luaValueArg, callFrameFindCallFrame);
            LuaTable luaTable = new LuaTable();
            if (strOptjstring.indexOf(83) >= 0) {
                luaTable.set(DebugLib.WHAT, DebugLib.LUA);
                luaTable.set(DebugLib.SOURCE, LuaValue.valueOf(debugInfoAuxgetinfo.source));
                luaTable.set(DebugLib.SHORT_SRC, LuaValue.valueOf(debugInfoAuxgetinfo.short_src));
                luaTable.set(DebugLib.LINEDEFINED, LuaValue.valueOf(debugInfoAuxgetinfo.linedefined));
                luaTable.set(DebugLib.LASTLINEDEFINED, LuaValue.valueOf(debugInfoAuxgetinfo.lastlinedefined));
            }
            if (strOptjstring.indexOf(108) >= 0) {
                luaTable.set(DebugLib.CURRENTLINE, LuaValue.valueOf(debugInfoAuxgetinfo.currentline));
            }
            if (strOptjstring.indexOf(Sdk.SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE) >= 0) {
                luaTable.set(DebugLib.NUPS, LuaValue.valueOf((int) debugInfoAuxgetinfo.nups));
                luaTable.set(DebugLib.NPARAMS, LuaValue.valueOf((int) debugInfoAuxgetinfo.nparams));
                luaTable.set(DebugLib.ISVARARG, debugInfoAuxgetinfo.isvararg ? LuaValue.ONE : LuaValue.ZERO);
            }
            if (strOptjstring.indexOf(110) >= 0) {
                LuaString luaString = DebugLib.NAME;
                String str = debugInfoAuxgetinfo.name;
                if (str == null) {
                    str = "?";
                }
                luaTable.set(luaString, LuaValue.valueOf(str));
                luaTable.set(DebugLib.NAMEWHAT, LuaValue.valueOf(debugInfoAuxgetinfo.namewhat));
            }
            if (strOptjstring.indexOf(Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE) >= 0) {
                luaTable.set(DebugLib.ISTAILCALL, LuaValue.ZERO);
            }
            if (strOptjstring.indexOf(76) >= 0) {
                LuaTable luaTable2 = new LuaTable();
                luaTable.set(DebugLib.ACTIVELINES, luaTable2);
                while (true) {
                    CallFrame callFrame = callstack.getCallFrame(i2);
                    if (callFrame == null) {
                        break;
                    }
                    if (callFrame.f == luaValueArg) {
                        luaTable2.insert(-1, LuaValue.valueOf(callFrame.currentline()));
                    }
                    i2++;
                }
            }
            if (strOptjstring.indexOf(102) >= 0 && luaValueArg != null) {
                luaTable.set(DebugLib.FUNC, luaValueArg);
            }
            return luaTable;
        }
    }

    public final class getlocal extends VarArgFunction {
        public getlocal() {
        }

        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            int i;
            LuaThread luaThreadCheckthread;
            if (varargs.isthread(1)) {
                luaThreadCheckthread = varargs.checkthread(1);
                i = 2;
            } else {
                i = 1;
                luaThreadCheckthread = DebugLib.this.globals.running;
            }
            int i2 = i + 1;
            int iCheckint = varargs.checkint(i);
            int iCheckint2 = varargs.checkint(i2);
            CallFrame callFrame = DebugLib.this.callstack(luaThreadCheckthread).getCallFrame(iCheckint);
            return callFrame != null ? callFrame.getLocal(iCheckint2) : LuaValue.NONE;
        }
    }

    public static final class getmetatable extends LibFunction {
        @Override // vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue) {
            LuaValue luaValue2 = luaValue.getmetatable();
            return luaValue2 != null ? luaValue2 : LuaValue.NIL;
        }
    }

    public final class getregistry extends ZeroArgFunction {
        public getregistry() {
        }

        @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call() {
            return DebugLib.this.globals;
        }
    }

    public static final class getupvalue extends VarArgFunction {
        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaClosure luaClosure;
            LuaString luaStringFindupvalue;
            LuaFunction luaFunctionCheckfunction = varargs.checkfunction(1);
            int iCheckint = varargs.checkint(2);
            if ((luaFunctionCheckfunction instanceof LuaClosure) && (luaStringFindupvalue = DebugLib.findupvalue((luaClosure = (LuaClosure) luaFunctionCheckfunction), iCheckint)) != null) {
                return LuaValue.varargsOf(luaStringFindupvalue, luaClosure.upValues[iCheckint - 1].getValue());
            }
            return LuaValue.NIL;
        }
    }

    public static final class getuservalue extends LibFunction {
        @Override // vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return luaValue.isuserdata() ? luaValue : LuaValue.NIL;
        }
    }

    public final class sethook extends VarArgFunction {
        public sethook() {
        }

        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaThread luaThreadCheckthread;
            int i;
            if (varargs.isthread(1)) {
                luaThreadCheckthread = varargs.checkthread(1);
                i = 2;
            } else {
                luaThreadCheckthread = DebugLib.this.globals.running;
                i = 1;
            }
            LuaFunction luaFunctionOptfunction = varargs.optfunction(i, null);
            String strOptjstring = varargs.optjstring(i + 1, "");
            int iOptint = varargs.optint(i + 2, 0);
            boolean z = false;
            boolean z2 = false;
            boolean z3 = false;
            for (int i2 = 0; i2 < strOptjstring.length(); i2++) {
                char cCharAt = strOptjstring.charAt(i2);
                if (cCharAt == 'c') {
                    z = true;
                } else if (cCharAt == 'l') {
                    z2 = true;
                } else if (cCharAt == 'r') {
                    z3 = true;
                }
            }
            LuaThread.State state = luaThreadCheckthread.state;
            state.hookfunc = luaFunctionOptfunction;
            state.hookcall = z;
            state.hookline = z2;
            state.hookcount = iOptint;
            state.hookrtrn = z3;
            return LuaValue.NONE;
        }
    }

    public final class setlocal extends VarArgFunction {
        public setlocal() {
        }

        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            int i;
            LuaThread luaThreadCheckthread;
            if (varargs.isthread(1)) {
                luaThreadCheckthread = varargs.checkthread(1);
                i = 2;
            } else {
                i = 1;
                luaThreadCheckthread = DebugLib.this.globals.running;
            }
            int iCheckint = varargs.checkint(i);
            int iCheckint2 = varargs.checkint(i + 1);
            LuaValue luaValueArg = varargs.arg(i + 2);
            CallFrame callFrame = DebugLib.this.callstack(luaThreadCheckthread).getCallFrame(iCheckint);
            return callFrame != null ? callFrame.setLocal(iCheckint2, luaValueArg) : LuaValue.NONE;
        }
    }

    public static final class setmetatable extends TwoArgFunction {
        @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            LuaTable luaTableOpttable = luaValue2.opttable(null);
            int iType = luaValue.type();
            if (iType == 1) {
                LuaNil.s_metatable = luaTableOpttable;
                return luaValue;
            }
            if (iType == 2) {
                LuaBoolean.s_metatable = luaTableOpttable;
                return luaValue;
            }
            if (iType == 4) {
                LuaNumber.s_metatable = luaTableOpttable;
                return luaValue;
            }
            if (iType == 5) {
                LuaString.s_metatable = luaTableOpttable;
                return luaValue;
            }
            if (iType == 7) {
                LuaFunction.s_metatable = luaTableOpttable;
                return luaValue;
            }
            if (iType == 9) {
                LuaThread.s_metatable = luaTableOpttable;
                return luaValue;
            }
            luaValue.setmetatable(luaTableOpttable);
            return luaValue;
        }
    }

    public static final class setupvalue extends VarArgFunction {
        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaClosure luaClosure;
            LuaString luaStringFindupvalue;
            LuaFunction luaFunctionCheckfunction = varargs.checkfunction(1);
            int iCheckint = varargs.checkint(2);
            LuaValue luaValueArg = varargs.arg(3);
            if ((luaFunctionCheckfunction instanceof LuaClosure) && (luaStringFindupvalue = DebugLib.findupvalue((luaClosure = (LuaClosure) luaFunctionCheckfunction), iCheckint)) != null) {
                luaClosure.upValues[iCheckint - 1].setValue(luaValueArg);
                return luaStringFindupvalue;
            }
            return LuaValue.NIL;
        }
    }

    public static final class setuservalue extends VarArgFunction {
        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            varargs.checkuserdata(1);
            LuaValue luaValueCheckvalue = varargs.checkvalue(2);
            LuaUserdata luaUserdata = (LuaUserdata) varargs.arg1();
            luaUserdata.m_instance = luaValueCheckvalue.checkuserdata();
            luaUserdata.m_metatable = luaValueCheckvalue.getmetatable();
            return LuaValue.NONE;
        }
    }

    public final class traceback extends VarArgFunction {
        public traceback() {
        }

        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaThread luaThreadCheckthread;
            int i;
            if (varargs.isthread(1)) {
                luaThreadCheckthread = varargs.checkthread(1);
                i = 2;
            } else {
                luaThreadCheckthread = DebugLib.this.globals.running;
                i = 1;
            }
            int i2 = i + 1;
            String strOptjstring = varargs.optjstring(i, null);
            String strTraceback = DebugLib.this.callstack(luaThreadCheckthread).traceback(varargs.optint(i2, 1));
            if (strOptjstring != null) {
                strTraceback = strOptjstring + "\n" + strTraceback;
            }
            return LuaValue.valueOf(strTraceback);
        }
    }

    public static final class upvalueid extends VarArgFunction {
        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            UpValue[] upValueArr;
            LuaFunction luaFunctionCheckfunction = varargs.checkfunction(1);
            int iCheckint = varargs.checkint(2);
            if ((luaFunctionCheckfunction instanceof LuaClosure) && (upValueArr = ((LuaClosure) luaFunctionCheckfunction).upValues) != null && iCheckint > 0 && iCheckint <= upValueArr.length) {
                return LuaValue.valueOf(upValueArr[iCheckint - 1].hashCode());
            }
            return LuaValue.NIL;
        }
    }

    public static final class upvaluejoin extends VarArgFunction {
        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaClosure luaClosureCheckclosure = varargs.checkclosure(1);
            int iCheckint = varargs.checkint(2);
            LuaClosure luaClosureCheckclosure2 = varargs.checkclosure(3);
            int iCheckint2 = varargs.checkint(4);
            if (iCheckint < 1 || iCheckint > luaClosureCheckclosure.upValues.length) {
                argerror("index out of range");
            }
            if (iCheckint2 < 1 || iCheckint2 > luaClosureCheckclosure2.upValues.length) {
                argerror("index out of range");
            }
            luaClosureCheckclosure.upValues[iCheckint - 1] = luaClosureCheckclosure2.upValues[iCheckint2 - 1];
            return LuaValue.NONE;
        }
    }

    public void onCall(LuaFunction luaFunction) {
        LuaThread.State state = this.globals.running.state;
        if (state.inhook) {
            return;
        }
        callstack().onCall(luaFunction);
        if (state.hookcall) {
            callHook(state, CALL, LuaValue.NIL);
        }
    }

    public void onCall(LuaClosure luaClosure, Varargs varargs, LuaValue[] luaValueArr) {
        LuaThread.State state = this.globals.running.state;
        if (state.inhook) {
            return;
        }
        callstack().onCall(luaClosure, varargs, luaValueArr);
        if (state.hookcall) {
            callHook(state, CALL, LuaValue.NIL);
        }
    }

    public void onInstruction(int i, Varargs varargs, int i2) {
        int iCurrentline;
        LuaThread.State state = this.globals.running.state;
        if (state.inhook) {
            return;
        }
        callstack().onInstruction(i, varargs, i2);
        if (state.hookfunc == null) {
            return;
        }
        int i3 = state.hookcount;
        if (i3 > 0) {
            int i4 = state.bytecodes + 1;
            state.bytecodes = i4;
            if (i4 % i3 == 0) {
                callHook(state, COUNT, LuaValue.NIL);
            }
        }
        if (!state.hookline || (iCurrentline = callstack().currentline()) == state.lastline) {
            return;
        }
        state.lastline = iCurrentline;
        callHook(state, LINE, LuaValue.valueOf(iCurrentline));
    }

    public void onReturn() {
        LuaThread.State state = this.globals.running.state;
        if (state.inhook) {
            return;
        }
        callstack().onReturn();
        if (state.hookrtrn) {
            callHook(state, RETURN, LuaValue.NIL);
        }
    }

    public String traceback(int i) {
        return callstack().traceback(i);
    }

    public CallFrame getCallFrame(int i) {
        return callstack().getCallFrame(i);
    }

    public void callHook(LuaThread.State state, LuaValue luaValue, LuaValue luaValue2) {
        LuaValue luaValue3;
        if (state.inhook || (luaValue3 = state.hookfunc) == null) {
            return;
        }
        state.inhook = true;
        try {
            try {
                luaValue3.call(luaValue, luaValue2);
            } catch (LuaError e) {
                throw e;
            } catch (RuntimeException e2) {
                throw new LuaError(e2);
            }
        } finally {
            state.inhook = false;
        }
    }

    public CallStack callstack() {
        return callstack(this.globals.running);
    }

    public CallStack callstack(LuaThread luaThread) {
        if (luaThread.callstack == null) {
            luaThread.callstack = new CallStack();
        }
        return (CallStack) luaThread.callstack;
    }

    public static class DebugInfo {
        CallFrame cf;
        int currentline;
        boolean istailcall;
        boolean isvararg;
        int lastlinedefined;
        int linedefined;
        String name;
        String namewhat;
        short nparams;
        short nups;
        String short_src;
        String source;
        String what;

        public void funcinfo(LuaFunction luaFunction) {
            if (luaFunction.isclosure()) {
                Prototype prototype = luaFunction.checkclosure().p;
                LuaString luaString = prototype.source;
                this.source = luaString != null ? luaString.tojstring() : "=?";
                int i = prototype.linedefined;
                this.linedefined = i;
                this.lastlinedefined = prototype.lastlinedefined;
                this.what = i == 0 ? C3522b4.i.Z : "Lua";
                this.short_src = prototype.shortsource();
                return;
            }
            this.source = "=[Java]";
            this.linedefined = -1;
            this.lastlinedefined = -1;
            this.what = "Java";
            this.short_src = luaFunction.name();
        }
    }

    public static class CallStack {
        static final CallFrame[] EMPTY = new CallFrame[0];
        CallFrame[] frame = EMPTY;
        int calls = 0;

        public synchronized int currentline() {
            int i;
            i = this.calls;
            return i > 0 ? this.frame[i - 1].currentline() : -1;
        }

        private synchronized CallFrame pushcall() {
            CallFrame[] callFrameArr;
            int i;
            try {
                int i2 = this.calls;
                CallFrame[] callFrameArr2 = this.frame;
                if (i2 >= callFrameArr2.length) {
                    int iMax = Math.max(4, (callFrameArr2.length * 3) / 2);
                    CallFrame[] callFrameArr3 = new CallFrame[iMax];
                    CallFrame[] callFrameArr4 = this.frame;
                    System.arraycopy(callFrameArr4, 0, callFrameArr3, 0, callFrameArr4.length);
                    for (int length = this.frame.length; length < iMax; length++) {
                        callFrameArr3[length] = new CallFrame();
                    }
                    this.frame = callFrameArr3;
                    for (int i3 = 1; i3 < iMax; i3++) {
                        callFrameArr3[i3].previous = callFrameArr3[i3 - 1];
                    }
                }
                callFrameArr = this.frame;
                i = this.calls;
                this.calls = i + 1;
            } catch (Throwable th) {
                throw th;
            }
            return callFrameArr[i];
        }

        public final synchronized void onCall(LuaFunction luaFunction) {
            pushcall().set(luaFunction);
        }

        public final synchronized void onCall(LuaClosure luaClosure, Varargs varargs, LuaValue[] luaValueArr) {
            pushcall().set(luaClosure, varargs, luaValueArr);
        }

        public final synchronized void onReturn() {
            int i = this.calls;
            if (i > 0) {
                CallFrame[] callFrameArr = this.frame;
                int i2 = i - 1;
                this.calls = i2;
                callFrameArr[i2].reset();
            }
        }

        public final synchronized void onInstruction(int i, Varargs varargs, int i2) {
            int i3 = this.calls;
            if (i3 > 0) {
                this.frame[i3 - 1].instr(i, varargs, i2);
            }
        }

        public synchronized String traceback(int i) {
            StringBuffer stringBuffer;
            try {
                stringBuffer = new StringBuffer();
                stringBuffer.append("stack traceback:");
                while (true) {
                    int i2 = i + 1;
                    CallFrame callFrame = getCallFrame(i);
                    if (callFrame != null) {
                        stringBuffer.append("\n\t");
                        stringBuffer.append(callFrame.shortsource());
                        stringBuffer.append(':');
                        if (callFrame.currentline() > 0) {
                            stringBuffer.append(callFrame.currentline() + ":");
                        }
                        stringBuffer.append(" in ");
                        DebugInfo debugInfoAuxgetinfo = auxgetinfo(G5.q, callFrame.f, callFrame);
                        if (callFrame.linedefined() == 0) {
                            stringBuffer.append("main chunk");
                        } else if (debugInfoAuxgetinfo.name != null) {
                            stringBuffer.append("function '");
                            stringBuffer.append(debugInfoAuxgetinfo.name);
                            stringBuffer.append('\'');
                        } else {
                            stringBuffer.append("function <");
                            stringBuffer.append(callFrame.shortsource());
                            stringBuffer.append(':');
                            stringBuffer.append(callFrame.linedefined());
                            stringBuffer.append('>');
                        }
                        i = i2;
                    } else {
                        stringBuffer.append("\n\t[Java]: in ?");
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
            return stringBuffer.toString();
        }

        public synchronized CallFrame getCallFrame(int i) {
            if (i >= 1) {
                int i2 = this.calls;
                if (i <= i2) {
                    return this.frame[i2 - i];
                }
            }
            return null;
        }

        public synchronized CallFrame findCallFrame(LuaValue luaValue) {
            int i = 1;
            while (true) {
                int i2 = this.calls;
                if (i > i2) {
                    return null;
                }
                CallFrame[] callFrameArr = this.frame;
                if (callFrameArr[i2 - i].f == luaValue) {
                    return callFrameArr[i];
                }
                i++;
            }
        }

        public synchronized DebugInfo auxgetinfo(String str, LuaFunction luaFunction, CallFrame callFrame) {
            DebugInfo debugInfo;
            CallFrame callFrame2;
            NameWhat nameWhat;
            try {
                debugInfo = new DebugInfo();
                int length = str.length();
                for (int i = 0; i < length; i++) {
                    char cCharAt = str.charAt(i);
                    if (cCharAt == 'S') {
                        debugInfo.funcinfo(luaFunction);
                    } else if (cCharAt == 'l') {
                        debugInfo.currentline = (callFrame == null || !callFrame.f.isclosure()) ? -1 : callFrame.currentline();
                    } else if (cCharAt == 'n') {
                        if (callFrame != null && (callFrame2 = callFrame.previous) != null && callFrame2.f.isclosure() && (nameWhat = DebugLib.getfuncname(callFrame.previous)) != null) {
                            debugInfo.name = nameWhat.name;
                            debugInfo.namewhat = nameWhat.namewhat;
                        }
                        if (debugInfo.namewhat == null) {
                            debugInfo.namewhat = "";
                            debugInfo.name = null;
                        }
                    } else if (cCharAt == 't') {
                        debugInfo.istailcall = false;
                    } else if (cCharAt == 'u') {
                        boolean z = true;
                        if (luaFunction != null && luaFunction.isclosure()) {
                            Prototype prototype = luaFunction.checkclosure().p;
                            debugInfo.nups = (short) prototype.upvalues.length;
                            debugInfo.nparams = (short) prototype.numparams;
                            if (prototype.is_vararg == 0) {
                                z = false;
                            }
                            debugInfo.isvararg = z;
                        } else {
                            debugInfo.nups = (short) 0;
                            debugInfo.isvararg = true;
                            debugInfo.nparams = (short) 0;
                        }
                    }
                }
            } finally {
            }
            return debugInfo;
        }
    }

    public static class CallFrame {
        LuaFunction f;
        int pc;
        CallFrame previous;
        LuaValue[] stack;
        int top;
        Varargs v;

        public void set(LuaClosure luaClosure, Varargs varargs, LuaValue[] luaValueArr) {
            this.f = luaClosure;
            this.v = varargs;
            this.stack = luaValueArr;
        }

        public String shortsource() {
            return this.f.isclosure() ? this.f.checkclosure().p.shortsource() : "[Java]";
        }

        public void set(LuaFunction luaFunction) {
            this.f = luaFunction;
        }

        public void reset() {
            this.f = null;
            this.v = null;
            this.stack = null;
        }

        public void instr(int i, Varargs varargs, int i2) {
            this.pc = i;
            this.v = varargs;
            this.top = i2;
            if (DebugLib.TRACE) {
                Print.printState(this.f.checkclosure(), i, this.stack, i2, varargs);
            }
        }

        public Varargs getLocal(int i) {
            LuaValue luaValue;
            LuaValue luaValue2 = getlocalname(i);
            if (i >= 1) {
                LuaValue[] luaValueArr = this.stack;
                if (i <= luaValueArr.length && (luaValue = luaValueArr[i - 1]) != null) {
                    if (luaValue2 == null) {
                        luaValue2 = LuaValue.NIL;
                    }
                    return LuaValue.varargsOf(luaValue2, luaValue);
                }
            }
            return LuaValue.NIL;
        }

        public Varargs setLocal(int i, LuaValue luaValue) {
            LuaString luaString = getlocalname(i);
            if (i >= 1) {
                LuaValue[] luaValueArr = this.stack;
                if (i <= luaValueArr.length) {
                    int i2 = i - 1;
                    if (luaValueArr[i2] != null) {
                        luaValueArr[i2] = luaValue;
                        return luaString == null ? LuaValue.NIL : luaString;
                    }
                }
            }
            return LuaValue.NIL;
        }

        public int currentline() {
            int[] iArr;
            int i;
            if (this.f.isclosure() && (iArr = this.f.checkclosure().p.lineinfo) != null && (i = this.pc) >= 0 && i < iArr.length) {
                return iArr[i];
            }
            return -1;
        }

        public String sourceline() {
            if (!this.f.isclosure()) {
                return this.f.tojstring();
            }
            return this.f.checkclosure().p.shortsource() + ":" + currentline();
        }

        public int linedefined() {
            if (this.f.isclosure()) {
                return this.f.checkclosure().p.linedefined;
            }
            return -1;
        }

        public LuaString getlocalname(int i) {
            if (this.f.isclosure()) {
                return this.f.checkclosure().p.getlocalname(i, this.pc);
            }
            return null;
        }
    }

    public static LuaString findupvalue(LuaClosure luaClosure, int i) {
        UpValue[] upValueArr = luaClosure.upValues;
        if (upValueArr == null || i <= 0 || i > upValueArr.length) {
            return null;
        }
        Upvaldesc[] upvaldescArr = luaClosure.p.upvalues;
        if (upvaldescArr != null && i <= upvaldescArr.length) {
            return upvaldescArr[i - 1].name;
        }
        return LuaString.valueOf("." + i);
    }

    public static void lua_assert(boolean z) {
        if (!z) {
            throw new RuntimeException("lua_assert failed");
        }
    }

    public static class NameWhat {
        final String name;
        final String namewhat;

        public NameWhat(String str, String str2) {
            this.name = str;
            this.namewhat = str2;
        }
    }

    public static NameWhat getfuncname(CallFrame callFrame) {
        LuaString luaString;
        if (!callFrame.f.isclosure()) {
            return new NameWhat(callFrame.f.classnamestub(), "Java");
        }
        Prototype prototype = callFrame.f.checkclosure().p;
        int i = callFrame.pc;
        int i2 = prototype.code[i];
        switch (Lua.GET_OPCODE(i2)) {
            case 6:
            case 7:
            case 12:
                luaString = LuaValue.INDEX;
                break;
            case 8:
            case 10:
                luaString = LuaValue.NEWINDEX;
                break;
            case 9:
            case 11:
            case 21:
            case 24:
            case 27:
            case 28:
            case 31:
            case 32:
            case 33:
            default:
                return null;
            case 13:
                luaString = LuaValue.LEN;
                break;
            case 14:
                luaString = LuaValue.ADD;
                break;
            case 15:
                luaString = LuaValue.SUB;
                break;
            case 16:
                luaString = LuaValue.MUL;
                break;
            case 17:
                luaString = LuaValue.DIV;
                break;
            case 18:
                luaString = LuaValue.MOD;
                break;
            case 19:
                luaString = LuaValue.POW;
                break;
            case 20:
                luaString = LuaValue.UNM;
                break;
            case 22:
                luaString = LuaValue.CONCAT;
                break;
            case 23:
                luaString = LuaValue.LE;
                break;
            case 25:
                luaString = LuaValue.EQ;
                break;
            case 26:
                luaString = LuaValue.LT;
                break;
            case 29:
            case 30:
                return getobjname(prototype, i, Lua.GETARG_A(i2));
            case 34:
                return new NameWhat("(for iterator)", "(for iterator");
        }
        return new NameWhat(luaString.tojstring(), "metamethod");
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static vm2.lib.DebugLib.NameWhat getobjname(vm2.Prototype r5, int r6, int r7) {
        /*
            Method dump skipped, instruction units count: 229
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: vm2.lib.DebugLib.getobjname(vm2.Prototype, int, int):vm2.lib.DebugLib$NameWhat");
    }

    public static String kname(Prototype prototype, int i, int i2) {
        if (Lua.ISK(i2)) {
            LuaValue luaValue = prototype.k[Lua.INDEXK(i2)];
            if (luaValue.isstring()) {
                return luaValue.tojstring();
            }
            return "?";
        }
        NameWhat nameWhat = getobjname(prototype, i, i2);
        if (nameWhat != null && "constant".equals(nameWhat.namewhat)) {
            return nameWhat.name;
        }
        return "?";
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x005e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int findsetreg(vm2.Prototype r6, int r7, int r8) {
        /*
            r0 = -1
            r1 = 0
        L2:
            if (r1 >= r7) goto L62
            int[] r2 = r6.code
            r2 = r2[r1]
            int r3 = vm2.Lua.GET_OPCODE(r2)
            int r4 = vm2.Lua.GETARG_A(r2)
            r5 = 4
            if (r3 == r5) goto L55
            r5 = 24
            if (r3 == r5) goto L48
            r5 = 27
            if (r3 == r5) goto L45
            r5 = 34
            if (r3 == r5) goto L40
            r5 = 36
            if (r3 == r5) goto L37
            r2 = 29
            if (r3 == r2) goto L34
            r2 = 30
            if (r3 == r2) goto L34
            boolean r2 = vm2.Lua.testAMode(r3)
            if (r2 == 0) goto L5f
            if (r8 != r4) goto L5f
            goto L5e
        L34:
            if (r8 < r4) goto L5f
            goto L5e
        L37:
            int r2 = r2 >> 14
            r2 = r2 & 511(0x1ff, float:7.16E-43)
            if (r2 != 0) goto L5f
            int r1 = r1 + 1
            goto L5f
        L40:
            int r4 = r4 + 2
            if (r8 < r4) goto L5f
            goto L5e
        L45:
            if (r8 != r4) goto L5f
            goto L5e
        L48:
            int r2 = vm2.Lua.GETARG_sBx(r2)
            int r3 = r1 + 1
            int r3 = r3 + r2
            if (r1 >= r3) goto L5f
            if (r3 > r7) goto L5f
            int r1 = r1 + r2
            goto L5f
        L55:
            int r2 = vm2.Lua.GETARG_B(r2)
            if (r4 > r8) goto L5f
            int r4 = r4 + r2
            if (r8 > r4) goto L5f
        L5e:
            r0 = r1
        L5f:
            int r1 = r1 + 1
            goto L2
        L62:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: vm2.lib.DebugLib.findsetreg(vm2.Prototype, int, int):int");
    }
}
