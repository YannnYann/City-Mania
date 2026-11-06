package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.nio.charset.Charset;
import java.util.Arrays;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.І, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0215 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static final Charset f1448 = Charset.forName(StringFog.decrypt("os/iVtk=\n", "95uke+ErdVw=\n"));

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static byte[] m1188(byte[] bArr, C0240 c0240, C0948 c0948) {
        if (bArr.length < 29) {
            StringBuilder sb = new StringBuilder();
            sb.append(StringFog.decrypt("ZapsgcKZnicXu3CejYSFLUW7JdE=\n", "N88f8a337UI=\n"));
            sb.append(bArr.length);
            throw new IllegalArgumentException(AbstractC0829.m1456("noyQhSVN\n", "vu7p8UA+8C0=\n", sb));
        }
        int i = (bArr[0] & 255) + 1;
        if (i > bArr.length) {
            throw new IllegalArgumentException(StringFog.decrypt("/2J4STAEu8qNc3lMMQmp28hjK1grSqbAw2Ru\n", "rQcLOV9qyK8=\n"));
        }
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 1, i);
        byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr, i, bArr.length);
        if (bArrCopyOfRange2.length < 16) {
            throw new IllegalArgumentException(StringFog.decrypt("zLYj8kc9L6O+pyL3RjA9svu3cONccz+v7rs18Fw2JLI=\n", "ntNQgihTXMY=\n"));
        }
        c0948.getClass();
        byte[] bArr2 = C0948.f3587;
        byte[] bArr3 = new byte[bArr2.length + 3];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        bArr3[bArr2.length] = (byte) 0;
        bArr3[bArr2.length + 1] = (byte) 1;
        bArr3[bArr2.length + 2] = (byte) 2;
        return c0948.m1565(c0948.m1564(c0240.f1548, bArrCopyOfRange, bArr3), bArrCopyOfRange, bArrCopyOfRange2, c0240.f1549.getBytes(f1448));
    }
}
