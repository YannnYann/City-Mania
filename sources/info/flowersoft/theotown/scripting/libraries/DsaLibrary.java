package info.flowersoft.theotown.scripting.libraries;

import info.flowersoft.theotown.scripting.ManagedLibrary;
import info.flowersoft.theotown.scripting.SimpleLuaLibrary;
import vm2.Globals;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public class DsaLibrary extends ManagedLibrary implements SimpleLuaLibrary.LibraryInjector {
    @Override // info.flowersoft.theotown.scripting.SimpleLuaLibrary.LibraryInjector
    public void inject(LuaValue luaValue, LuaValue luaValue2, Globals globals) {
    }

    public DsaLibrary() {
        super("libs/DSA.lua");
    }
}
