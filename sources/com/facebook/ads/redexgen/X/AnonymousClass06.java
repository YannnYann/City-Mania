package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.06, reason: invalid class name */
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
public abstract class AnonymousClass06 extends AnonymousClass08 {
    public static byte[] A00;
    public static String[] A01 = {"Yw1Nq8K0UrbKoLJ9J74LN473TvohxVx2", "EJiOOK72k6DndTP1RC5cyuAHWZhQciAS", "R7SMS6aYTdi6jmFrn", "d2iHTisYFyhKDvNXugePomkoo0yKPI4q", "mjRwUhISjmLTECmFZkqx9Kc9az4qDuWf", "cSWeMH8OSgg2X7i7FplIZ87HhO3QHY3N", "", "oEyGnsin16kOVk0kZ"};

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 48);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A00 = new byte[]{-118, -62, -74, -73, -63, -116, -58, -53, -65, -68, -55, -81, -79, -92, -91, -88, -73};
    }

    static {
        A04();
    }

    public static final boolean A05(String str, int i, String str2, int i2, int i3, boolean z) {
        C1h.A09(str, A03(0, 6, 30));
        C1h.A09(str2, A03(6, 5, 39));
        if (z) {
            return str.regionMatches(z, i, str2, i2, i3);
        }
        return str.regionMatches(i, str2, i2, i3);
    }

    public static final boolean A06(String str, String str2, boolean z) {
        C1h.A09(str, A03(0, 6, 30));
        C1h.A09(str2, A03(11, 6, 15));
        if (!z) {
            return str.startsWith(str2);
        }
        int length = str2.length();
        String[] strArr = A01;
        if (strArr[0].charAt(5) == strArr[5].charAt(5)) {
            throw new RuntimeException();
        }
        A01[3] = "QYZ9aV5zdwfBvmJPTZaYDiVf3VRgHrZj";
        return A05(str, 0, str2, 0, length, z);
    }

    public static /* synthetic */ boolean A07(String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return A06(str, str2, z);
    }
}
