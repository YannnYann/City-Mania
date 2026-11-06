package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Xl, reason: case insensitive filesystem */
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
public final class C2035Xl {
    public static byte[] A05;
    public final long A00;
    public final long A01;
    public final C2037Xn A02;
    public final C2036Xm A03;
    public final String A04;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 45);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{-26, -52, -34, -32, -26, -34, -25, -19, -58, -34, -19, -38, -35, -38, -19, -38, -99, -125, -92, -103, -109, -101, -107, -94, -124, -94, -111, -109, -101, -124, -87, -96, -107, -23, -48, -18, -35, -33, -25, -54, -35, -23, -31};
    }

    public C2035Xl(String str, long j, long j2, C2036Xm c2036Xm, C2037Xn c2037Xn) {
        C1h.A09(str, A00(33, 10, 79));
        C1h.A09(c2036Xm, A00(16, 17, 3));
        C1h.A09(c2037Xn, A00(0, 16, 76));
        this.A04 = str;
        this.A01 = j;
        this.A00 = j2;
        this.A03 = c2036Xm;
        this.A02 = c2037Xn;
    }
}
