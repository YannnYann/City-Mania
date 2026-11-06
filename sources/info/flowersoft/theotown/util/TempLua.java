package info.flowersoft.theotown.util;

import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.reflect.KProperty;
import vm2.Globals;
import vm2.LoadState;
import vm2.compiler.LuaC;
import vm2.lib.Bit32Lib;
import vm2.lib.TableLib;
import vm2.lib.jse.JseBaseLib;
import vm2.lib.jse.JseMathLib;
import vm2.lib.jse.JseStringLib;

/* JADX INFO: compiled from: TempLua.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class TempLua {
    public static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {new PropertyReference1Impl(TempLua.class, "globals", "getGlobals()Lvm2/Globals;", 0)};
    public static final TempLua INSTANCE = new TempLua();
    public static final TempLua$globals$2 globals$delegate = new ThreadLocal<Globals>() { // from class: info.flowersoft.theotown.util.TempLua$globals$2
        @Override // java.lang.ThreadLocal
        public Globals initialValue() {
            Globals globals = new Globals();
            globals.load(new JseBaseLib());
            globals.load(new Bit32Lib());
            globals.load(new JseStringLib());
            globals.load(new JseMathLib());
            globals.load(new TableLib());
            LoadState.install(globals);
            LuaC.install(globals);
            return globals;
        }
    };

    public final <T> T getValue(ThreadLocal<T> threadLocal, TempLua tempLua, KProperty<?> kProperty) {
        Intrinsics.checkNotNullParameter(threadLocal, "<this>");
        return threadLocal.get();
    }

    public final Globals getGlobals() {
        return (Globals) getValue(globals$delegate, this, $$delegatedProperties[0]);
    }
}
