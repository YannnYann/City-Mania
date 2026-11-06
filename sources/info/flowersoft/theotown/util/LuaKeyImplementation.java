package info.flowersoft.theotown.util;

import info.flowersoft.theotown.util.PluginFileDecoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import vm2.LuaFunction;
import vm2.LuaString;
import vm2.LuaValue;
import vm2.lib.OneArgFunction;

/* JADX INFO: compiled from: PluginFileDecoder.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class LuaKeyImplementation implements PluginFileDecoder.KeyImplementation {
    public static final Companion Companion = new Companion(null);
    public final LuaFunction func;

    public LuaKeyImplementation(LuaFunction func) {
        Intrinsics.checkNotNullParameter(func, "func");
        this.func = func;
    }

    public final LuaFunction getFunc() {
        return this.func;
    }

    /* JADX INFO: compiled from: PluginFileDecoder.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public final byte[] toByteArray(LuaString luaString) {
        byte[] m_bytes = luaString.m_bytes;
        Intrinsics.checkNotNullExpressionValue(m_bytes, "m_bytes");
        return ArraysKt___ArraysJvmKt.copyOfRange(m_bytes, luaString.m_offset, luaString.m_length);
    }

    @Override // info.flowersoft.theotown.util.PluginFileDecoder.KeyImplementation
    public byte[] getKey(byte[] seed) {
        Intrinsics.checkNotNullParameter(seed, "seed");
        LuaString luaStringStrvalue = this.func.call(LuaString.valueOf(seed), new OneArgFunction() { // from class: info.flowersoft.theotown.util.LuaKeyImplementation.getKey.1
            @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaString call(LuaValue luaValue) {
                byte[] bArrDigest;
                LuaKeyImplementation luaKeyImplementation = LuaKeyImplementation.this;
                Intrinsics.checkNotNull(luaValue);
                LuaString luaStringStrvalue2 = luaValue.strvalue();
                Intrinsics.checkNotNullExpressionValue(luaStringStrvalue2, "strvalue(...)");
                byte[] byteArray = luaKeyImplementation.toByteArray(luaStringStrvalue2);
                int length = byteArray.length;
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                    messageDigest.update(byteArray, 0, length);
                    bArrDigest = messageDigest.digest();
                    Intrinsics.checkNotNullExpressionValue(bArrDigest, "digest(...)");
                } catch (NoSuchAlgorithmException e) {
                    e.printStackTrace();
                    bArrDigest = new byte[0];
                }
                return LuaString.valueOf(bArrDigest);
            }
        }).strvalue();
        Intrinsics.checkNotNullExpressionValue(luaStringStrvalue, "strvalue(...)");
        return toByteArray(luaStringStrvalue);
    }
}
