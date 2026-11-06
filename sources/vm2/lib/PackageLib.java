package vm2.lib;

import com.ironsource.C3522b4;
import java.io.IOException;
import java.io.InputStream;
import vm2.Globals;
import vm2.LuaBoolean;
import vm2.LuaFunction;
import vm2.LuaString;
import vm2.LuaTable;
import vm2.LuaValue;
import vm2.Varargs;

/* JADX INFO: loaded from: classes6.dex */
public class PackageLib extends TwoArgFunction {
    public static final String DEFAULT_LUA_PATH;
    private static final String FILE_SEP;
    static final LuaString _LOADED;
    private static final LuaString _LOADLIB;
    static final LuaString _PATH;
    static final LuaString _PRELOAD;
    static final LuaString _SEARCHERS;
    static final LuaString _SEARCHPATH;
    private static final LuaString _SENTINEL;
    Globals globals;
    public java_searcher java_searcher;
    public lua_searcher lua_searcher;
    LuaTable package_;
    public preload_searcher preload_searcher;

    private static final boolean isClassnamePart(char c) {
        return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || ((c >= '0' && c <= '9') || c == '$' || c == '.' || c == '_');
    }

    static {
        String property;
        try {
            property = System.getProperty("luaj.package.path");
        } catch (Exception e) {
            System.out.println(e.toString());
            property = null;
        }
        if (property == null) {
            property = "?.lua";
        }
        DEFAULT_LUA_PATH = property;
        _LOADED = LuaValue.valueOf(C3522b4.i.r);
        _LOADLIB = LuaValue.valueOf("loadlib");
        _PRELOAD = LuaValue.valueOf("preload");
        _PATH = LuaValue.valueOf("path");
        _SEARCHPATH = LuaValue.valueOf("searchpath");
        _SEARCHERS = LuaValue.valueOf("searchers");
        _SENTINEL = LuaValue.valueOf("\u0001");
        FILE_SEP = System.getProperty("file.separator");
    }

    @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        Globals globalsCheckglobals = luaValue2.checkglobals();
        this.globals = globalsCheckglobals;
        globalsCheckglobals.set("require", new require());
        LuaTable luaTable = new LuaTable();
        this.package_ = luaTable;
        LuaString luaString = _LOADED;
        luaTable.set(luaString, new LuaTable());
        this.package_.set(_PRELOAD, new LuaTable());
        this.package_.set(_PATH, LuaValue.valueOf(DEFAULT_LUA_PATH));
        this.package_.set(_LOADLIB, new loadlib());
        this.package_.set(_SEARCHPATH, new searchpath());
        LuaValue luaTable2 = new LuaTable();
        preload_searcher preload_searcherVar = new preload_searcher();
        this.preload_searcher = preload_searcherVar;
        luaTable2.set(1, preload_searcherVar);
        lua_searcher lua_searcherVar = new lua_searcher();
        this.lua_searcher = lua_searcherVar;
        luaTable2.set(2, lua_searcherVar);
        java_searcher java_searcherVar = new java_searcher();
        this.java_searcher = java_searcherVar;
        luaTable2.set(3, java_searcherVar);
        this.package_.set(_SEARCHERS, luaTable2);
        this.package_.set("config", FILE_SEP + "\n;\n?\n!\n-\n");
        this.package_.get(luaString).set("package", this.package_);
        luaValue2.set("package", this.package_);
        this.globals.package_ = this;
        return luaValue2;
    }

    public void setIsLoaded(String str, LuaTable luaTable) {
        this.package_.get(_LOADED).set(str, luaTable);
    }

    public void setLuaPath(String str) {
        this.package_.set(_PATH, LuaValue.valueOf(str));
    }

    @Override // vm2.lib.LibFunction, vm2.LuaFunction, vm2.LuaValue, vm2.Varargs
    public String tojstring() {
        return "package";
    }

    public class require extends OneArgFunction {
        public require() {
        }

        @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue) {
            Varargs varargsInvoke;
            LuaString luaStringCheckstring = luaValue.checkstring();
            LuaValue luaValue2 = PackageLib.this.package_.get(PackageLib._LOADED);
            LuaValue luaValue3 = luaValue2.get(luaStringCheckstring);
            if (luaValue3.toboolean()) {
                if (luaValue3 == PackageLib._SENTINEL) {
                    LuaValue.error("loop or previous error loading module '" + luaStringCheckstring + "'");
                }
                return luaValue3;
            }
            LuaTable luaTableChecktable = PackageLib.this.package_.get(PackageLib._SEARCHERS).checktable();
            StringBuffer stringBuffer = new StringBuffer();
            int i = 1;
            while (true) {
                LuaValue luaValue4 = luaTableChecktable.get(i);
                if (luaValue4.isnil()) {
                    LuaValue.error("module '" + luaStringCheckstring + "' not found: " + luaStringCheckstring + ((Object) stringBuffer));
                }
                varargsInvoke = luaValue4.invoke(luaStringCheckstring);
                if (varargsInvoke.isfunction(1)) {
                    break;
                }
                if (varargsInvoke.isstring(1)) {
                    stringBuffer.append(varargsInvoke.tojstring(1));
                }
                i++;
            }
            luaValue2.set(luaStringCheckstring, PackageLib._SENTINEL);
            LuaValue luaValueCall = varargsInvoke.arg1().call(luaStringCheckstring, varargsInvoke.arg(2));
            if (!luaValueCall.isnil()) {
                luaValue2.set(luaStringCheckstring, luaValueCall);
                return luaValueCall;
            }
            LuaValue luaValue5 = luaValue2.get(luaStringCheckstring);
            if (luaValue5 != PackageLib._SENTINEL) {
                return luaValue5;
            }
            LuaBoolean luaBoolean = LuaValue.TRUE;
            luaValue2.set(luaStringCheckstring, luaBoolean);
            return luaBoolean;
        }
    }

    public static class loadlib extends VarArgFunction {
        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            varargs.checkstring(1);
            return LuaValue.varargsOf(LuaValue.NIL, LuaValue.valueOf("dynamic libraries not enabled"), LuaValue.valueOf("absent"));
        }
    }

    public class preload_searcher extends VarArgFunction {
        public preload_searcher() {
        }

        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaString luaStringCheckstring = varargs.checkstring(1);
            LuaValue luaValue = PackageLib.this.package_.get(PackageLib._PRELOAD).get(luaStringCheckstring);
            if (!luaValue.isnil()) {
                return luaValue;
            }
            return LuaValue.valueOf("\n\tno field package.preload['" + luaStringCheckstring + "']");
        }
    }

    public class lua_searcher extends VarArgFunction {
        public lua_searcher() {
        }

        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaString luaStringCheckstring = varargs.checkstring(1);
            LuaValue luaValue = PackageLib.this.package_.get(PackageLib._PATH);
            if (!luaValue.isstring()) {
                return LuaValue.valueOf("package.path is not a string");
            }
            Varargs varargsInvoke = PackageLib.this.package_.get(PackageLib._SEARCHPATH).invoke(LuaValue.varargsOf(luaStringCheckstring, luaValue));
            if (!varargsInvoke.isstring(1)) {
                return varargsInvoke.arg(2).tostring();
            }
            LuaString luaStringStrvalue = varargsInvoke.arg1().strvalue();
            LuaValue luaValueLoadfile = PackageLib.this.globals.loadfile(luaStringStrvalue.tojstring());
            if (luaValueLoadfile.arg1().isfunction()) {
                return LuaValue.varargsOf(luaValueLoadfile.arg1(), luaStringStrvalue);
            }
            return LuaValue.varargsOf(LuaValue.NIL, LuaValue.valueOf("'" + luaStringStrvalue + "': " + luaValueLoadfile.arg(2).tojstring()));
        }
    }

    public class searchpath extends VarArgFunction {
        public searchpath() {
        }

        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            String strCheckjstring = varargs.checkjstring(1);
            String strCheckjstring2 = varargs.checkjstring(2);
            String strOptjstring = varargs.optjstring(3, ".");
            String strOptjstring2 = varargs.optjstring(4, PackageLib.FILE_SEP);
            int length = strCheckjstring2.length();
            String strReplace = strCheckjstring.replace(strOptjstring.charAt(0), strOptjstring2.charAt(0));
            int i = -1;
            StringBuffer stringBuffer = null;
            while (i < length) {
                int i2 = i + 1;
                int iIndexOf = strCheckjstring2.indexOf(59, i2);
                if (iIndexOf < 0) {
                    iIndexOf = strCheckjstring2.length();
                }
                String strSubstring = strCheckjstring2.substring(i2, iIndexOf);
                int iIndexOf2 = strSubstring.indexOf(63);
                if (iIndexOf2 >= 0) {
                    strSubstring = strSubstring.substring(0, iIndexOf2) + strReplace + strSubstring.substring(iIndexOf2 + 1);
                }
                InputStream inputStreamFindResource = PackageLib.this.globals.finder.findResource(strSubstring);
                if (inputStreamFindResource != null) {
                    try {
                        inputStreamFindResource.close();
                    } catch (IOException unused) {
                    }
                    return LuaValue.valueOf(strSubstring);
                }
                if (stringBuffer == null) {
                    stringBuffer = new StringBuffer();
                }
                stringBuffer.append("\n\t" + strSubstring);
                i = iIndexOf;
            }
            return LuaValue.varargsOf(LuaValue.NIL, LuaValue.valueOf(stringBuffer.toString()));
        }
    }

    public class java_searcher extends VarArgFunction {
        public java_searcher() {
        }

        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            String classname = PackageLib.toClassname(varargs.checkjstring(1));
            try {
                LuaValue luaValue = (LuaValue) Class.forName(classname).newInstance();
                if (luaValue.isfunction()) {
                    ((LuaFunction) luaValue).initupvalue1(PackageLib.this.globals);
                }
                return LuaValue.varargsOf(luaValue, PackageLib.this.globals);
            } catch (ClassNotFoundException unused) {
                return LuaValue.valueOf("\n\tno class '" + classname + "'");
            } catch (Exception e) {
                return LuaValue.valueOf("\n\tjava load failed on '" + classname + "', " + e);
            }
        }
    }

    public static final String toClassname(String str) {
        int length = str.length();
        int i = str.endsWith(".lua") ? length - 4 : length;
        for (int i2 = 0; i2 < i; i2++) {
            char cCharAt = str.charAt(i2);
            if (!isClassnamePart(cCharAt) || cCharAt == '/' || cCharAt == '\\') {
                StringBuffer stringBuffer = new StringBuffer(i);
                for (int i3 = 0; i3 < i; i3++) {
                    char cCharAt2 = str.charAt(i3);
                    if (!isClassnamePart(cCharAt2)) {
                        cCharAt2 = (cCharAt2 == '/' || cCharAt2 == '\\') ? '.' : '_';
                    }
                    stringBuffer.append(cCharAt2);
                }
                return stringBuffer.toString();
            }
        }
        return length == i ? str : str.substring(0, i);
    }
}
