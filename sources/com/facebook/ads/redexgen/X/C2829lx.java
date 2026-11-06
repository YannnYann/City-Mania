package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.lx, reason: case insensitive filesystem */
/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    java.lang.IllegalArgumentException: Provided Metadata instance does not have metadataVersion in it and therefore is malformed and cannot be read.
    	at kotlin.metadata.jvm.internal.JvmReadUtils.checkMetadataVersionForRead(JvmReadUtils.kt:79)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:46)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@Metadata
public final class C2829lx {
    public static byte[] A00;
    public static String[] A01 = {"SWOQ8EmAtKHlzZcnhV3YPL4K", "M3DVw", "YVE29eGnYTMF7iZct0Cj857VOjyovHsA", "GsTrOHOfJOMPEz3TtMJGwYId3HC2p3bG", "s7QUE4krJA5TTfkvFa", "pn7zI1zHrzc9", "8NXaUMRA8hrChxJo41VImiAbHhwwLtwc", "TY6eOsWpSXfO6Gf7dJ7d"};

    public /* synthetic */ C2829lx(AbstractC12661i abstractC12661i) {
        this();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 116);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{27, 95, 96, 91, 94, 81, 66, 78, 78, 74, 86, 98, 98, 94, 97, 1, -11, 6, -1, -7, 8, 21, 17, 6, 30, -45, 12, 20, 20, 12, 17, 10, -45, 8, 20, 18, 39, 40, 35, 38, 25, -4, -3, -8, -5, -18, -24, -2, -5, -11, -18, -23, -58, -23, -15, -33, -20, -67, -37, -19, -33, -94, -88, -88, -88, -93};
    }

    static {
        A01();
    }

    public C2829lx() {
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final boolean A02(android.net.Uri r9) {
        /*
            r8 = this;
            r2 = 36
            r1 = 5
            r0 = 64
            java.lang.String r1 = A00(r2, r1, r0)
            java.lang.String r0 = r9.getAuthority()
            boolean r0 = com.facebook.ads.redexgen.X.C1h.A0C(r1, r0)
            r4 = 0
            if (r0 != 0) goto L15
            return r4
        L15:
            r6 = 41
            r5 = 9
            r3 = 21
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C2829lx.A01
            r0 = 0
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 16
            if (r1 == r0) goto Lba
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C2829lx.A01
            java.lang.String r1 = "uY"
            r0 = 0
            r2[r0] = r1
            java.lang.String r0 = A00(r6, r5, r3)
            java.lang.String r0 = r9.getQueryParameter(r0)
            r3 = 1
            if (r0 != 0) goto L3b
            return r3
        L3b:
            android.net.Uri r6 = com.facebook.ads.redexgen.X.AbstractC3036pP.A00(r0)     // Catch: java.lang.SecurityException -> Lb9
            com.facebook.ads.redexgen.X.C1h.A06(r6)
            java.lang.String r5 = r6.getScheme()
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C2829lx.A01
            r0 = 6
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 32
            if (r1 == r0) goto L6a
            if (r5 == 0) goto L69
        L55:
            java.util.Locale r0 = java.util.Locale.ROOT
            java.lang.String r5 = r5.toLowerCase(r0)
            r2 = 50
            r1 = 16
            r0 = 6
            java.lang.String r0 = A00(r2, r1, r0)
            com.facebook.ads.redexgen.X.C1h.A08(r5, r0)
            if (r5 != 0) goto L79
        L69:
            return r4
        L6a:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C2829lx.A01
            java.lang.String r1 = "hxXjqnt3J8MipBVWaydfLCeyVdA2hnI4"
            r0 = 3
            r2[r0] = r1
            java.lang.String r1 = "mNw3nO79D4MJpcDCPUDZwSR6RaPlXjNk"
            r0 = 2
            r2[r0] = r1
            if (r5 == 0) goto L69
            goto L55
        L79:
            r2 = 15
            r1 = 6
            r0 = 32
            java.lang.String r0 = A00(r2, r1, r0)
            boolean r0 = com.facebook.ads.redexgen.X.C1h.A0C(r5, r0)
            if (r0 != 0) goto Lb5
            java.lang.String r5 = r6.getHost()
            r2 = 21
            r1 = 15
            r0 = 49
            java.lang.String r0 = A00(r2, r1, r0)
            boolean r0 = com.facebook.ads.redexgen.X.C1h.A0C(r5, r0)
            if (r0 == 0) goto Lb6
            java.lang.String r7 = r6.getPath()
            if (r7 == 0) goto Lb7
            r6 = 2
            r5 = 0
            r2 = 0
            r1 = 6
            r0 = 120(0x78, float:1.68E-43)
            java.lang.String r0 = A00(r2, r1, r0)
            boolean r0 = com.facebook.ads.redexgen.X.AnonymousClass06.A07(r7, r0, r4, r6, r5)
            if (r0 != r3) goto Lb7
            r0 = 1
        Lb3:
            if (r0 == 0) goto Lb6
        Lb5:
            r4 = 1
        Lb6:
            return r4
        Lb7:
            r0 = 0
            goto Lb3
        Lb9:
            return r3
        Lba:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2829lx.A02(android.net.Uri):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00df, code lost:
    
        if (r3 != false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00f2, code lost:
    
        if (r3 != false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00f7, code lost:
    
        return null;
     */
    @kotlin.jvm.JvmStatic
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String A03(android.net.Uri r9) {
        /*
            Method dump skipped, instruction units count: 254
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2829lx.A03(android.net.Uri):java.lang.String");
    }
}
