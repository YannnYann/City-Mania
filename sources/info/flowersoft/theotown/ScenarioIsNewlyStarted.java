package info.flowersoft.theotown;

import info.flowersoft.theotown.resources.GlobalTransitionVariables;
import kotlin.jvm.internal.Intrinsics;
import vm2.LuaTable;
import vm2.LuaValue;

/* JADX INFO: compiled from: ScenarioIsNewlyStarted.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ScenarioIsNewlyStarted {
    public static final ScenarioIsNewlyStarted INSTANCE = new ScenarioIsNewlyStarted();

    public final LuaTable getStorage() {
        LuaTable luaStorage = GlobalTransitionVariables.getInstance().getLuaStorage();
        LuaValue luaValueTableOf = luaStorage.get("7051adc1-2471-4828-a0ca-be335a510978");
        if (luaValueTableOf == null || !luaValueTableOf.istable()) {
            luaValueTableOf = LuaValue.tableOf();
            luaStorage.set("7051adc1-2471-4828-a0ca-be335a510978", luaValueTableOf);
        }
        LuaTable luaTableChecktable = luaValueTableOf.checktable();
        Intrinsics.checkNotNullExpressionValue(luaTableChecktable, "checktable(...)");
        return luaTableChecktable;
    }

    public final boolean isNewlyStarted(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return Intrinsics.areEqual(getStorage().get(id), LuaValue.NIL);
    }

    public final void setNewlyStarted(String id, boolean z) {
        Intrinsics.checkNotNullParameter(id, "id");
        if (z) {
            getStorage().set(id, LuaValue.NIL);
        } else {
            getStorage().set(id, LuaValue.TRUE);
        }
    }
}
