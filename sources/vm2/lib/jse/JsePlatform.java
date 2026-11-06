package vm2.lib.jse;

import com.ironsource.G5;
import vm2.Globals;
import vm2.LoadState;
import vm2.LuaTable;
import vm2.LuaValue;
import vm2.Varargs;
import vm2.compiler.LuaC;
import vm2.lib.Bit32Lib;
import vm2.lib.CoroutineLib;
import vm2.lib.DebugLib;
import vm2.lib.PackageLib;
import vm2.lib.TableLib;

/* JADX INFO: loaded from: classes6.dex */
public class JsePlatform {
    public static Globals standardGlobals() {
        Globals globals = new Globals();
        globals.load(new JseBaseLib());
        globals.load(new PackageLib());
        globals.load(new Bit32Lib());
        globals.load(new TableLib());
        globals.load(new JseStringLib());
        globals.load(new CoroutineLib());
        globals.load(new JseMathLib());
        globals.load(new JseIoLib());
        globals.load(new JseOsLib());
        globals.load(new LuajavaLib());
        LoadState.install(globals);
        LuaC.install(globals);
        return globals;
    }

    public static Globals debugGlobals() {
        Globals globalsStandardGlobals = standardGlobals();
        globalsStandardGlobals.load(new DebugLib());
        return globalsStandardGlobals;
    }

    public static Varargs luaMain(LuaValue luaValue, String[] strArr) {
        Globals globalsStandardGlobals = standardGlobals();
        int length = strArr.length;
        LuaValue[] luaValueArr = new LuaValue[strArr.length];
        for (int i = 0; i < length; i++) {
            luaValueArr[i] = LuaValue.valueOf(strArr[i]);
        }
        LuaTable luaTableListOf = LuaValue.listOf(luaValueArr);
        luaTableListOf.set(G5.q, length);
        globalsStandardGlobals.set("arg", luaTableListOf);
        luaValue.initupvalue1(globalsStandardGlobals);
        return luaValue.invoke(LuaValue.varargsOf(luaValueArr));
    }
}
