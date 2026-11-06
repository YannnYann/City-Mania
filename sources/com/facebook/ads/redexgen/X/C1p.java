package com.facebook.ads.redexgen.X;

import java.lang.reflect.Method;
import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.1p, reason: invalid class name */
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
public final class C1p {
    public static byte[] A00;
    public static final Method A01;
    public static final Method A02;
    public static final C1p A03;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 85);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{-26, -23, -23, -40, -6, -11, -11, -9, -22, -8, -8, -22, -23, -10, -12, 3, -33, -16, 1, -16, -4, -12, 3, -12, 1, -29, 8, -1, -12, 2, -73, -67, -67, -67, -72, 37, 35, 50, 17, 51, 46, 46, 48, 35, 49, 49, 35, 34};
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0073  */
    static {
        /*
            A01()
            com.facebook.ads.redexgen.X.1p r0 = new com.facebook.ads.redexgen.X.1p
            r0.<init>()
            com.facebook.ads.redexgen.X.C1p.A03 = r0
            java.lang.Class<java.lang.Throwable> r8 = java.lang.Throwable.class
            java.lang.reflect.Method[] r7 = r8.getMethods()
            com.facebook.ads.redexgen.X.C1h.A06(r7)
            int r5 = r7.length
            r6 = 0
            r4 = 0
        L16:
            r10 = 0
            if (r4 >= r5) goto L75
            r9 = r7[r4]
            java.lang.String r3 = r9.getName()
            r2 = 0
            r1 = 13
            r0 = 48
            java.lang.String r0 = A00(r2, r1, r0)
            boolean r0 = com.facebook.ads.redexgen.X.C1h.A0C(r3, r0)
            if (r0 == 0) goto L73
            java.lang.Class[] r3 = r9.getParameterTypes()
            r2 = 13
            r1 = 22
            r0 = 58
            java.lang.String r0 = A00(r2, r1, r0)
            com.facebook.ads.redexgen.X.C1h.A08(r3, r0)
            java.lang.Object[] r3 = (java.lang.Object[]) r3
            java.lang.Object r0 = com.facebook.ads.redexgen.X.C0N.A00(r3)
            boolean r0 = com.facebook.ads.redexgen.X.C1h.A0C(r0, r8)
            if (r0 == 0) goto L73
            r0 = 1
        L4c:
            if (r0 == 0) goto L70
        L4e:
            com.facebook.ads.redexgen.X.C1p.A01 = r9
            int r5 = r7.length
        L51:
            if (r6 >= r5) goto L6a
            r4 = r7[r6]
            java.lang.String r3 = r4.getName()
            r2 = 35
            r1 = 13
            r0 = 105(0x69, float:1.47E-43)
            java.lang.String r0 = A00(r2, r1, r0)
            boolean r0 = com.facebook.ads.redexgen.X.C1h.A0C(r3, r0)
            if (r0 == 0) goto L6d
            r10 = r4
        L6a:
            com.facebook.ads.redexgen.X.C1p.A02 = r10
            return
        L6d:
            int r6 = r6 + 1
            goto L51
        L70:
            int r4 = r4 + 1
            goto L16
        L73:
            r0 = 0
            goto L4c
        L75:
            r9 = r10
            goto L4e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1p.<clinit>():void");
    }
}
