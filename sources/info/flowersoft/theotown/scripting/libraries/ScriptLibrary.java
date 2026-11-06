package info.flowersoft.theotown.scripting.libraries;

import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.scripting.ManagedLibrary;
import info.flowersoft.theotown.scripting.Script;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import info.flowersoft.theotown.scripting.SimpleLuaLibrary;
import info.flowersoft.theotown.util.vfs.VirtualFile;
import vm2.Globals;
import vm2.LuaFunction;
import vm2.LuaValue;
import vm2.Varargs;
import vm2.lib.OneArgFunction;
import vm2.lib.TwoArgFunction;
import vm2.lib.VarArgFunction;
import vm2.lib.ZeroArgFunction;
import vm2.lib.jse.CoerceLuaToJava;

/* JADX INFO: loaded from: classes4.dex */
public class ScriptLibrary extends ManagedLibrary implements SimpleLuaLibrary.LibraryInjector {
    public ScriptLibrary() {
        super("libs/Script.lua");
    }

    @Override // info.flowersoft.theotown.scripting.SimpleLuaLibrary.LibraryInjector
    public void inject(LuaValue luaValue, LuaValue luaValue2, Globals globals) {
        luaValue.set("getScript", new ZeroArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScriptLibrary.1
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                Script currentScript = ScriptingEnvironment.getInstance().getCurrentScript();
                if (currentScript != null) {
                    return currentScript.getScript();
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("addScript", new VarArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScriptLibrary.2
            @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public Varargs invoke(Varargs varargs) {
                Script scriptResolveScript = ScriptLibrary.this.resolveScript(varargs.arg(1));
                String strCheckjstring = varargs.arg(2).checkjstring();
                Draft draftResolveDraft = DraftLibrary.resolveDraft(varargs.arg(3), Draft.class);
                LuaFunction luaFunctionOptfunction = varargs.arg(4).optfunction(null);
                Draft currentSourceDraft = ScriptingEnvironment.getInstance().getCurrentSourceDraft();
                if (currentSourceDraft == null) {
                    throw new IllegalStateException("");
                }
                if (luaFunctionOptfunction == null) {
                    luaFunctionOptfunction = scriptResolveScript.getInitializer();
                }
                LuaFunction luaFunction = luaFunctionOptfunction;
                return ScriptingEnvironment.getInstance().appendScript(draftResolveDraft, currentSourceDraft, luaFunction, strCheckjstring, VirtualFile.createDirectory(scriptResolveScript.getPath().getName() + ":" + strCheckjstring, scriptResolveScript.getPath().getParent()), scriptResolveScript).getScript();
            }
        });
        luaValue.set("setName", new TwoArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScriptLibrary.3
            @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4) {
                Script scriptResolveScript = ScriptLibrary.this.resolveScript(luaValue3);
                if (scriptResolveScript != null) {
                    scriptResolveScript.setName(luaValue4.optjstring(""));
                }
                return LuaValue.NIL;
            }
        });
        luaValue.set("getOrig", new OneArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.ScriptLibrary.4
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3) {
                ScriptLibrary.this.assertPrivileged("orig");
                if (ScriptLibrary.this.resolveScript(luaValue3) != null) {
                    return luaValue3.rawget(SimpleLuaLibrary.origKey);
                }
                return LuaValue.NIL;
            }
        });
    }

    public final Script resolveScript(LuaValue luaValue) {
        return (Script) CoerceLuaToJava.coerce(luaValue.rawget(SimpleLuaLibrary.origKey), Script.class);
    }
}
