package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.כּ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0861 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final ConcurrentHashMap f3325 = new ConcurrentHashMap();

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final byte[] m1459() {
        C0884 c0884 = (C0884) this.f3325.get(1);
        if (c0884 != null) {
            byte[] bArrM1490 = c0884.m1490();
            byte[] bArr = new byte[bArrM1490.length];
            System.arraycopy(bArrM1490, 0, bArr, 0, bArrM1490.length);
            return bArr;
        }
        throw new IllegalArgumentException(StringFog.decrypt("ZBS0r4aCqUdYW/+5mtC5TV8V8PyFn60CQR7t/Kq05QI=\n", "KnuU3OPw3yI=\n") + 1);
    }
}
