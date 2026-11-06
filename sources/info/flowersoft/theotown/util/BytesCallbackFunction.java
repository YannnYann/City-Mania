package info.flowersoft.theotown.util;

import java.io.ByteArrayOutputStream;
import kotlin.jvm.internal.Intrinsics;
import vm2.LuaValue;
import vm2.lib.OneArgFunction;

/* JADX INFO: compiled from: BytesCallbackFunction.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class BytesCallbackFunction extends OneArgFunction {
    public int len;
    public final ByteArrayOutputStream out = new ByteArrayOutputStream();
    public int paddingPrefix;
    public int paddingSuffix;

    public final int getPaddingPrefix() {
        return this.paddingPrefix;
    }

    public final int getPaddingSuffix() {
        return this.paddingSuffix;
    }

    public final int getLen() {
        return this.len;
    }

    public final byte[] getMaskBytes() {
        byte[] byteArray = this.out.toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
        return byteArray;
    }

    @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
    public LuaValue call(LuaValue luaValue) {
        Intrinsics.checkNotNull(luaValue);
        int iOptint = luaValue.optint(0);
        if (this.paddingPrefix == 0) {
            if (iOptint < 0 || iOptint >= 65026) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            this.paddingPrefix = iOptint;
        } else if (this.paddingSuffix == 0) {
            if (iOptint < 0 || iOptint >= 65026) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            this.paddingSuffix = iOptint;
        } else if (this.len == 0) {
            if (iOptint <= 0) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            this.len = iOptint;
        } else {
            if (iOptint < 0 || iOptint >= 256) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            this.out.write(iOptint);
        }
        LuaValue NIL = LuaValue.NIL;
        Intrinsics.checkNotNullExpressionValue(NIL, "NIL");
        return NIL;
    }
}
