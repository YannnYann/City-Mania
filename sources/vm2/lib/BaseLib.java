package vm2.lib;

import com.ironsource.Cc;
import java.io.IOException;
import java.io.InputStream;
import vm2.Globals;
import vm2.Lua;
import vm2.LuaBoolean;
import vm2.LuaError;
import vm2.LuaString;
import vm2.LuaTable;
import vm2.LuaThread;
import vm2.LuaValue;
import vm2.Varargs;

/* JADX INFO: loaded from: classes6.dex */
public class BaseLib extends TwoArgFunction implements ResourceFinder {
    Globals globals;

    @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        Globals globalsCheckglobals = luaValue2.checkglobals();
        this.globals = globalsCheckglobals;
        globalsCheckglobals.finder = this;
        globalsCheckglobals.baselib = this;
        luaValue2.set("_G", luaValue2);
        luaValue2.set("_VERSION", Lua._VERSION);
        luaValue2.set("assert", new _assert());
        luaValue2.set("collectgarbage", new collectgarbage());
        luaValue2.set("dofile", new dofile());
        luaValue2.set(Cc.a.g, new error());
        luaValue2.set("getmetatable", new getmetatable());
        luaValue2.set("load", new load());
        luaValue2.set("loadfile", new loadfile());
        luaValue2.set("pcall", new pcall());
        luaValue2.set("print", new print(this));
        luaValue2.set("rawequal", new rawequal());
        luaValue2.set("rawget", new rawget());
        luaValue2.set("rawlen", new rawlen());
        luaValue2.set("rawset", new rawset());
        luaValue2.set("select", new select());
        luaValue2.set("setmetatable", new setmetatable());
        luaValue2.set("tonumber", new tonumber());
        luaValue2.set("tostring", new tostring());
        luaValue2.set("type", new type());
        luaValue2.set("xpcall", new xpcall());
        next nextVar = new next();
        luaValue2.set("next", nextVar);
        luaValue2.set("pairs", new pairs(nextVar));
        luaValue2.set("ipairs", new ipairs());
        return luaValue2;
    }

    @Override // vm2.lib.ResourceFinder
    public InputStream findResource(String str) {
        Class<?> cls = getClass();
        if (!str.startsWith("/")) {
            str = "/" + str;
        }
        return cls.getResourceAsStream(str);
    }

    public static final class _assert extends VarArgFunction {
        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            if (!varargs.arg1().toboolean()) {
                LuaValue.error(varargs.narg() > 1 ? varargs.optjstring(2, "assertion failed!") : "assertion failed!");
            }
            return varargs;
        }
    }

    public static final class collectgarbage extends VarArgFunction {
        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            String strOptjstring = varargs.optjstring(1, "collect");
            if ("collect".equals(strOptjstring)) {
                System.gc();
                return LuaValue.ZERO;
            }
            if ("count".equals(strOptjstring)) {
                Runtime runtime = Runtime.getRuntime();
                return LuaValue.varargsOf(LuaValue.valueOf((runtime.totalMemory() - runtime.freeMemory()) / 1024.0d), LuaValue.valueOf(r0 % 1024));
            }
            if ("step".equals(strOptjstring)) {
                System.gc();
                return LuaValue.TRUE;
            }
            LuaValue.argerror(1, "invalid option '" + strOptjstring + "'");
            return LuaValue.NIL;
        }
    }

    public final class dofile extends VarArgFunction {
        public dofile() {
        }

        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            Varargs varargsLoadFile;
            varargs.argcheck(varargs.isstring(1) || varargs.isnil(1), 1, "filename must be string or nil");
            if ((varargs.isstring(1) ? varargs.tojstring(1) : null) != null) {
                varargsLoadFile = BaseLib.this.loadFile(varargs.checkjstring(1), "bt", BaseLib.this.globals);
            } else {
                BaseLib baseLib = BaseLib.this;
                Globals globals = baseLib.globals;
                varargsLoadFile = baseLib.loadStream(globals.STDIN, "=stdin", "bt", globals);
            }
            return varargsLoadFile.isnil(1) ? LuaValue.error(varargsLoadFile.tojstring(2)) : varargsLoadFile.arg1().invoke();
        }
    }

    public static final class error extends TwoArgFunction {
        @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            if (luaValue.isnil()) {
                throw new LuaError(LuaValue.NIL);
            }
            if (!luaValue.isstring() || luaValue2.optint(1) == 0) {
                throw new LuaError(luaValue);
            }
            throw new LuaError(luaValue.tojstring(), luaValue2.optint(1));
        }
    }

    public static final class getmetatable extends LibFunction {
        @Override // vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call() {
            return LuaValue.argerror(1, "value expected");
        }

        @Override // vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue) {
            LuaValue luaValue2 = luaValue.getmetatable();
            return luaValue2 != null ? luaValue2.rawget(LuaValue.METATABLE).optvalue(luaValue2) : LuaValue.NIL;
        }
    }

    public final class load extends VarArgFunction {
        public load() {
        }

        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaValue luaValueArg1 = varargs.arg1();
            if (!luaValueArg1.isstring() && !luaValueArg1.isfunction()) {
                throw new LuaError("bad argument #1 to 'load' (string or function expected, got " + luaValueArg1.typename() + ")");
            }
            return BaseLib.this.loadStream(luaValueArg1.isstring() ? luaValueArg1.strvalue().toInputStream() : new StringInputStream(luaValueArg1.checkfunction()), varargs.optjstring(2, luaValueArg1.isstring() ? luaValueArg1.tojstring() : "=(load)"), varargs.optjstring(3, "bt"), varargs.optvalue(4, BaseLib.this.globals));
        }
    }

    public final class loadfile extends VarArgFunction {
        public loadfile() {
        }

        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            varargs.argcheck(varargs.isstring(1) || varargs.isnil(1), 1, "filename must be string or nil");
            String str = varargs.isstring(1) ? varargs.tojstring(1) : null;
            String strOptjstring = varargs.optjstring(2, "bt");
            LuaValue luaValueOptvalue = varargs.optvalue(3, BaseLib.this.globals);
            if (str == null) {
                BaseLib baseLib = BaseLib.this;
                return baseLib.loadStream(baseLib.globals.STDIN, "=stdin", strOptjstring, luaValueOptvalue);
            }
            return BaseLib.this.loadFile(str, strOptjstring, luaValueOptvalue);
        }
    }

    public final class pcall extends VarArgFunction {
        public pcall() {
        }

        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            DebugLib debugLib;
            DebugLib debugLib2;
            DebugLib debugLib3;
            DebugLib debugLib4;
            DebugLib debugLib5;
            LuaValue luaValueCheckvalue = varargs.checkvalue(1);
            Globals globals = BaseLib.this.globals;
            if (globals != null && (debugLib5 = globals.debuglib) != null) {
                debugLib5.onCall(this);
            }
            try {
                try {
                    Varargs varargsVarargsOf = LuaValue.varargsOf(LuaValue.TRUE, luaValueCheckvalue.invoke(varargs.subargs(2)));
                    Globals globals2 = BaseLib.this.globals;
                    if (globals2 != null && (debugLib4 = globals2.debuglib) != null) {
                        debugLib4.onReturn();
                    }
                    return varargsVarargsOf;
                } catch (LuaError e) {
                    LuaValue messageObject = e.getMessageObject();
                    LuaBoolean luaBoolean = LuaValue.FALSE;
                    if (messageObject == null) {
                        messageObject = LuaValue.NIL;
                    }
                    Varargs varargsVarargsOf2 = LuaValue.varargsOf(luaBoolean, messageObject);
                    Globals globals3 = BaseLib.this.globals;
                    if (globals3 != null && (debugLib2 = globals3.debuglib) != null) {
                        debugLib2.onReturn();
                    }
                    return varargsVarargsOf2;
                } catch (Exception e2) {
                    String message = e2.getMessage();
                    LuaBoolean luaBoolean2 = LuaValue.FALSE;
                    if (message == null) {
                        message = e2.toString();
                    }
                    Varargs varargsVarargsOf3 = LuaValue.varargsOf(luaBoolean2, LuaValue.valueOf(message));
                    Globals globals4 = BaseLib.this.globals;
                    if (globals4 != null && (debugLib = globals4.debuglib) != null) {
                        debugLib.onReturn();
                    }
                    return varargsVarargsOf3;
                }
            } catch (Throwable th) {
                Globals globals5 = BaseLib.this.globals;
                if (globals5 != null && (debugLib3 = globals5.debuglib) != null) {
                    debugLib3.onReturn();
                }
                throw th;
            }
        }
    }

    public final class print extends VarArgFunction {
        final BaseLib baselib;

        public print(BaseLib baseLib) {
            this.baselib = baseLib;
        }

        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaValue luaValue = BaseLib.this.globals.get("tostring");
            int iNarg = varargs.narg();
            for (int i = 1; i <= iNarg; i++) {
                if (i > 1) {
                    BaseLib.this.globals.STDOUT.print('\t');
                }
                BaseLib.this.globals.STDOUT.print(luaValue.call(varargs.arg(i)).strvalue().tojstring());
            }
            BaseLib.this.globals.STDOUT.print('\n');
            return LuaValue.NONE;
        }
    }

    public static final class rawequal extends LibFunction {
        @Override // vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call() {
            return LuaValue.argerror(1, "value expected");
        }

        @Override // vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return LuaValue.argerror(2, "value expected");
        }

        @Override // vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            return LuaValue.valueOf(luaValue.raweq(luaValue2));
        }
    }

    public static final class rawget extends TableLibFunction {
        @Override // vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return LuaValue.argerror(2, "value expected");
        }

        @Override // vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            return luaValue.checktable().rawget(luaValue2);
        }
    }

    public static final class rawlen extends LibFunction {
        @Override // vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return LuaValue.valueOf(luaValue.rawlen());
        }
    }

    public static final class rawset extends TableLibFunction {
        @Override // vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return LuaValue.argerror(2, "value expected");
        }

        @Override // vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            return LuaValue.argerror(3, "value expected");
        }

        @Override // vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
            LuaTable luaTableChecktable = luaValue.checktable();
            if (!luaValue2.isvalidkey()) {
                LuaValue.argerror(2, "table index is nil");
            }
            luaTableChecktable.rawset(luaValue2, luaValue3);
            return luaTableChecktable;
        }
    }

    public static final class select extends VarArgFunction {
        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            int iNarg = varargs.narg() - 1;
            if (varargs.arg1().equals(LuaValue.valueOf("#"))) {
                return LuaValue.valueOf(iNarg);
            }
            int iCheckint = varargs.checkint(1);
            if (iCheckint == 0 || iCheckint < (-iNarg)) {
                LuaValue.argerror(1, "index out of range");
            }
            return varargs.subargs(iCheckint < 0 ? iNarg + iCheckint + 2 : iCheckint + 1);
        }
    }

    public static final class setmetatable extends TableLibFunction {
        @Override // vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return LuaValue.argerror(2, "nil or table expected");
        }

        @Override // vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            LuaValue luaValue3 = luaValue.checktable().getmetatable();
            if (luaValue3 != null && !luaValue3.rawget(LuaValue.METATABLE).isnil()) {
                LuaValue.error("cannot change a protected metatable");
            }
            return luaValue.setmetatable(luaValue2.isnil() ? null : luaValue2.checktable());
        }
    }

    public static final class tonumber extends LibFunction {
        @Override // vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return luaValue.tonumber();
        }

        @Override // vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            if (luaValue2.isnil()) {
                return luaValue.tonumber();
            }
            int iCheckint = luaValue2.checkint();
            if (iCheckint < 2 || iCheckint > 36) {
                LuaValue.argerror(2, "base out of range");
            }
            return luaValue.checkstring().tonumber(iCheckint);
        }
    }

    public static final class tostring extends LibFunction {
        @Override // vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue) {
            LuaValue luaValueMetatag = luaValue.metatag(LuaValue.TOSTRING);
            if (!luaValueMetatag.isnil()) {
                return luaValueMetatag.call(luaValue);
            }
            LuaValue luaValue2 = luaValue.tostring();
            return !luaValue2.isnil() ? luaValue2 : LuaValue.valueOf(luaValue.tojstring());
        }
    }

    public static final class type extends LibFunction {
        @Override // vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return LuaValue.valueOf(luaValue.typename());
        }
    }

    public final class xpcall extends VarArgFunction {
        public xpcall() {
        }

        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            DebugLib debugLib;
            DebugLib debugLib2;
            DebugLib debugLib3;
            DebugLib debugLib4;
            DebugLib debugLib5;
            LuaThread luaThread = BaseLib.this.globals.running;
            LuaValue luaValue = luaThread.errorfunc;
            luaThread.errorfunc = varargs.checkvalue(2);
            try {
                Globals globals = BaseLib.this.globals;
                if (globals != null && (debugLib5 = globals.debuglib) != null) {
                    debugLib5.onCall(this);
                }
                try {
                    try {
                        Varargs varargsVarargsOf = LuaValue.varargsOf(LuaValue.TRUE, varargs.arg1().invoke(varargs.subargs(3)));
                        Globals globals2 = BaseLib.this.globals;
                        if (globals2 != null && (debugLib4 = globals2.debuglib) != null) {
                            debugLib4.onReturn();
                        }
                        return varargsVarargsOf;
                    } catch (Throwable th) {
                        Globals globals3 = BaseLib.this.globals;
                        if (globals3 != null && (debugLib3 = globals3.debuglib) != null) {
                            debugLib3.onReturn();
                        }
                        throw th;
                    }
                } catch (LuaError e) {
                    LuaValue messageObject = e.getMessageObject();
                    LuaBoolean luaBoolean = LuaValue.FALSE;
                    if (messageObject == null) {
                        messageObject = LuaValue.NIL;
                    }
                    Varargs varargsVarargsOf2 = LuaValue.varargsOf(luaBoolean, messageObject);
                    Globals globals4 = BaseLib.this.globals;
                    if (globals4 != null && (debugLib2 = globals4.debuglib) != null) {
                        debugLib2.onReturn();
                    }
                    return varargsVarargsOf2;
                } catch (Exception e2) {
                    String message = e2.getMessage();
                    LuaBoolean luaBoolean2 = LuaValue.FALSE;
                    if (message == null) {
                        message = e2.toString();
                    }
                    Varargs varargsVarargsOf3 = LuaValue.varargsOf(luaBoolean2, LuaValue.valueOf(message));
                    Globals globals5 = BaseLib.this.globals;
                    if (globals5 != null && (debugLib = globals5.debuglib) != null) {
                        debugLib.onReturn();
                    }
                    return varargsVarargsOf3;
                }
            } finally {
                luaThread.errorfunc = luaValue;
            }
        }
    }

    public static final class pairs extends VarArgFunction {
        final next next;

        public pairs(next nextVar) {
            this.next = nextVar;
        }

        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            return LuaValue.varargsOf(this.next, varargs.checktable(1), LuaValue.NIL);
        }
    }

    public static final class ipairs extends VarArgFunction {
        inext inext = new inext();

        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            return LuaValue.varargsOf(this.inext, varargs.checktable(1), LuaValue.ZERO);
        }
    }

    public static final class next extends VarArgFunction {
        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            return varargs.checktable(1).next(varargs.arg(2));
        }
    }

    public static final class inext extends VarArgFunction {
        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            return varargs.checktable(1).inext(varargs.arg(2));
        }
    }

    public Varargs loadFile(String str, String str2, LuaValue luaValue) {
        InputStream inputStreamFindResource = this.globals.finder.findResource(str);
        if (inputStreamFindResource == null) {
            return LuaValue.varargsOf(LuaValue.NIL, LuaValue.valueOf("cannot open " + str + ": No such file or directory"));
        }
        try {
            Varargs varargsLoadStream = loadStream(inputStreamFindResource, "@" + str, str2, luaValue);
            try {
                return varargsLoadStream;
            } catch (Exception e) {
                return varargsLoadStream;
            }
        } finally {
            try {
                inputStreamFindResource.close();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public Varargs loadStream(InputStream inputStream, String str, String str2, LuaValue luaValue) {
        try {
            if (inputStream == null) {
                return LuaValue.varargsOf(LuaValue.NIL, LuaValue.valueOf("not found: " + str));
            }
            return this.globals.load(inputStream, str, str2, luaValue);
        } catch (Exception e) {
            return LuaValue.varargsOf(LuaValue.NIL, LuaValue.valueOf(e.getMessage()));
        }
    }

    public static class StringInputStream extends InputStream {
        byte[] bytes;
        final LuaValue func;
        int offset;
        int remaining = 0;

        public StringInputStream(LuaValue luaValue) {
            this.func = luaValue;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            int i = this.remaining;
            if (i < 0) {
                return -1;
            }
            if (i == 0) {
                LuaValue luaValueCall = this.func.call();
                if (luaValueCall.isnil()) {
                    this.remaining = -1;
                    return -1;
                }
                LuaString luaStringStrvalue = luaValueCall.strvalue();
                this.bytes = luaStringStrvalue.m_bytes;
                this.offset = luaStringStrvalue.m_offset;
                int i2 = luaStringStrvalue.m_length;
                this.remaining = i2;
                if (i2 <= 0) {
                    return -1;
                }
            }
            this.remaining--;
            byte[] bArr = this.bytes;
            int i3 = this.offset;
            this.offset = i3 + 1;
            return bArr[i3] & 255;
        }
    }
}
