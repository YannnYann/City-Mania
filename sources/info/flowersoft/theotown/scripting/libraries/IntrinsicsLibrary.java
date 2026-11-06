package info.flowersoft.theotown.scripting.libraries;

import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.scripting.ManagedLibrary;
import info.flowersoft.theotown.scripting.SimpleLuaLibrary;
import kotlin.jvm.internal.Intrinsics;
import vm2.Globals;
import vm2.LuaValue;

/* JADX INFO: compiled from: IntrinsicsLibrary.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class IntrinsicsLibrary extends ManagedLibrary implements SimpleLuaLibrary.LibraryInjector {
    public IntrinsicsLibrary() {
        super("libs/Intrinsics.lua");
    }

    @Override // info.flowersoft.theotown.scripting.SimpleLuaLibrary.LibraryInjector
    public void inject(LuaValue lib, LuaValue privateLib, Globals globals) {
        Intrinsics.checkNotNullParameter(lib, "lib");
        Intrinsics.checkNotNullParameter(privateLib, "privateLib");
        Intrinsics.checkNotNullParameter(globals, "globals");
        Resources.INTRINSICS = lib.method("init");
    }
}
