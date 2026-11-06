package com.ironsource.adqualitysdk.sdk.i;

import java.nio.charset.StandardCharsets;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᴶ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0658 {
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m1412(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int length2 = bArr2.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            if (i2 >= length2) {
                i2 = 0;
            }
            bArr[i] = (byte) (bArr[i] ^ bArr2[i2]);
            i++;
            i2++;
        }
        return new String(bArr, StandardCharsets.UTF_8);
    }
}
