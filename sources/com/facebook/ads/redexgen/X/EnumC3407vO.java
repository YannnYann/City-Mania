package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.vO, reason: case insensitive filesystem */
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
public enum EnumC3407vO {
    A05,
    A06,
    A04;

    public static byte[] A00;
    public static String[] A01 = {"D152H60LDBo1XA0LKxgrpfLc9gxh7YFB", "3CEc5B3EKtwM", "tf5KmfSOCP3sj5BBxwm9vD", "nyc14MiKihVX8xqCa1O8AYBb4nlYjuB6", "gq9u5hr4it32AU8V3kIUKa5nb4llnE9I", "xnWpFCJLa8g8vIhMmnC4MA1hIPUrJ69y", "WAV5OyrbtNSby8pfG6OlQAS3kavD6ZMz", "Lnm0Af8qlP49mRX6EdU58"};
    public static final /* synthetic */ InterfaceC12490p A02;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A01;
            if (strArr[1].length() == strArr[3].length()) {
                throw new RuntimeException();
            }
            A01[7] = "FADVGLwpg2vwvvsJyvEQ5";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 123);
            i4++;
        }
    }

    public static void A01() {
        byte[] bArr = {-17, -28, -15, -25, -10, -26, -28, -13, -24, 2, -10, -26, -11, -24, -24, -15, -10, -21, -14, -9, -10, -18, -17, -18, -27, 0, -1, 2, 4, 2, -15, -7, 4, 15, 3, -13, 2, -11, -11, -2, 3, -8, -1, 4, 3};
        if (A01[7].length() != 21) {
            throw new RuntimeException();
        }
        A01[7] = "r4MRfu9HCIqutXRInlnyK";
        A00 = bArr;
    }

    static {
        A01();
        A02 = C1q.A01(A03);
    }
}
