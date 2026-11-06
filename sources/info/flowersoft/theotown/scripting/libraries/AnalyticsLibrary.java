package info.flowersoft.theotown.scripting.libraries;

import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.scripting.ManagedLibrary;
import info.flowersoft.theotown.scripting.SimpleLuaLibrary;
import vm2.Globals;
import vm2.LuaValue;
import vm2.lib.ThreeArgFunction;

/* JADX INFO: loaded from: classes4.dex */
public class AnalyticsLibrary extends ManagedLibrary implements SimpleLuaLibrary.LibraryInjector {
    public AnalyticsLibrary() {
        super("libs/Analytics.lua");
    }

    @Override // info.flowersoft.theotown.scripting.SimpleLuaLibrary.LibraryInjector
    public void inject(LuaValue luaValue, LuaValue luaValue2, Globals globals) {
        luaValue.set("log", new ThreeArgFunction() { // from class: info.flowersoft.theotown.scripting.libraries.AnalyticsLibrary.1
            @Override // vm2.lib.ThreeArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call(LuaValue luaValue3, LuaValue luaValue4, LuaValue luaValue5) {
                TheoTown.analytics.logEvent(luaValue3.checkjstring(), luaValue4.checkjstring(), luaValue5.optjstring(""));
                return LuaValue.NIL;
            }
        });
    }
}
