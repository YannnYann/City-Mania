package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.fd, reason: case insensitive filesystem */
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
public final class C2445fd {
    public static byte[] A05;
    public static String[] A06 = {"WwEcR3foVF3js5OXi966KpoMNMHGvjSS", "ge7oMN1QO2mRMl0JRtTl1XSjQjwoqYKQ", "YIR3bGiCxH5f33jIoUexVYgz4NrVh5Xf", "BCyQzpjG8WPrfI0IHDaxEdL7xHet3Qxf", "PYzT2RZAF6XfBXLCuiPxaN2JPy1l2W3", "CR22Lw3h6LYZLAvi8hVx6jgsxvd765Kh", "y4tdfXpdl7xlTAqkRxRINNgRPv0ZWJJ5", "gSSRcUzOmzaPmPK4y5QvxMUe0Q2"};
    public final String A00;
    public final String A01;
    public final String A02;
    public final String A03;
    public final String A04;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = bArrCopyOfRange[i4] ^ i3;
            String[] strArr = A06;
            if (strArr[0].charAt(12) == strArr[6].charAt(12)) {
                throw new RuntimeException();
            }
            A06[4] = "2BwOjGeAIaA5UB4Iq2CqRfmCfiRplru";
            bArrCopyOfRange[i4] = (byte) (i5 ^ 106);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{9, 5, 14, 15};
    }

    static {
        A01();
    }

    public C2445fd(String str, String str2, String str3, String str4, String str5) {
        C1h.A09(str, A00(0, 4, 0));
        this.A02 = str;
        this.A04 = str2;
        this.A03 = str3;
        this.A01 = str4;
        this.A00 = str5;
    }
}
