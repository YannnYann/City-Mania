package info.flowersoft.theotown.scripting;

import kotlin.jvm.internal.Intrinsics;
import vm2.LuaBoolean;
import vm2.LuaInteger;
import vm2.LuaString;
import vm2.LuaValue;

/* JADX INFO: compiled from: luahelpers.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class LuahelpersKt {
    public static final LuaBoolean toLua(boolean z) {
        LuaBoolean luaBooleanValueOf = LuaValue.valueOf(z);
        Intrinsics.checkNotNull(luaBooleanValueOf);
        return luaBooleanValueOf;
    }

    public static final LuaString toLua(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        LuaString luaStringValueOf = LuaValue.valueOf(str);
        Intrinsics.checkNotNull(luaStringValueOf);
        return luaStringValueOf;
    }

    public static final LuaInteger toLua(int i) {
        LuaInteger luaIntegerValueOf = LuaValue.valueOf(i);
        Intrinsics.checkNotNull(luaIntegerValueOf);
        return luaIntegerValueOf;
    }
}
