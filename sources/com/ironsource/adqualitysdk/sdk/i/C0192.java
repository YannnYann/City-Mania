package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.Arrays;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.κ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0192 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final byte[] f1208;

    public C0192(byte[] bArr) {
        this.f1208 = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0192) {
            return Arrays.equals(this.f1208, ((C0192) obj).f1208);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f1208);
    }

    public final String toString() {
        return StringFog.decrypt("Nx9A7j1DrFoaDlrpBla3SgQORPIbcbZbHi5A7VI=\n", "dnohim8m3y8=\n") + Arrays.toString(this.f1208) + '}';
    }
}
