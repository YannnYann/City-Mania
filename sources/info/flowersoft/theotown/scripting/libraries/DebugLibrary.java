package info.flowersoft.theotown.scripting.libraries;

import com.badlogic.gdx.Gdx;
import com.ironsource.Cc;
import info.flowersoft.theotown.crossplatform.Analytics;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.scripting.LuaUtil;
import info.flowersoft.theotown.scripting.ManagedLibrary;
import info.flowersoft.theotown.scripting.Script;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import info.flowersoft.theotown.scripting.SimpleLuaLibrary;
import java.util.ArrayList;
import java.util.List;
import vm2.Globals;
import vm2.LuaValue;
import vm2.Varargs;
import vm2.lib.VarArgFunction;

/* JADX INFO: loaded from: classes4.dex */
public class DebugLibrary extends ManagedLibrary implements SimpleLuaLibrary.LibraryInjector {
    public final List<String> infos;

    public DebugLibrary() {
        super("libs/Debug.lua");
        this.infos = new ArrayList();
    }

    @Override // info.flowersoft.theotown.scripting.SimpleLuaLibrary.LibraryInjector
    public void inject(LuaValue luaValue, LuaValue luaValue2, final Globals globals) {
        luaValue.set("toast", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DebugLibrary.1
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue invoke(Varargs varargs) {
                String string = LuaUtil.toString(globals, varargs, " ");
                Gdx.app.debug("Debug.toast", string);
                TheoTown.runtimeFeatures.showToast(string);
                return LuaValue.NIL;
            }
        });
        luaValue.set("info", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DebugLibrary.2
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue invoke(Varargs varargs) {
                DebugLibrary.this.infos.add(LuaUtil.toString(globals, varargs, " "));
                return LuaValue.NIL;
            }
        });
        luaValue.set("log", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DebugLibrary.3
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue invoke(Varargs varargs) {
                String string = LuaUtil.toString(globals, varargs, " ");
                Gdx.app.debug("Lua:DebugLibrary", string);
                Script currentScript = ScriptingEnvironment.getInstance().getCurrentScript();
                if (currentScript != null) {
                    currentScript.log(string);
                }
                Analytics analytics = TheoTown.analytics;
                if (analytics != null) {
                    analytics.writeToLog(string);
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("brk", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DebugLibrary.4
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue invoke(Varargs varargs) {
                String currentSource = ScriptingEnvironment.getInstance().getCurrentSource();
                Gdx.app.debug("Lua:DebugLibrary", "Break: " + currentSource);
                return LuaValue.NIL;
            }
        });
        luaValue.set(Cc.a.g, new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.DebugLibrary.5
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue invoke(Varargs varargs) {
                Gdx.app.error(ScriptingEnvironment.getInstance().getCurrentScript().getName(), LuaUtil.toString(globals, varargs, " "));
                return LuaValue.NIL;
            }
        });
    }
}
