package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.1n, reason: invalid class name */
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
public abstract class C1n {
    public static byte[] A00;
    public static String[] A01 = {"2qZ2Uhl4Duex3OXSWOgWar3D39uFLHwz", "RSJb8TPdXS7CuPp4aEw2Cy927dbPE88o", "TKdDnRXfYNgDuKcrB0YYH0zJOev120", "acgw9mlAl1NAKeUnpOYCda2xWE5GN9", "22S7TO6w4Mh7NFYBixJec6TPED3PNrH6", "a7QfqQHQQaI5zWlXrOyTOp0EtNyThqSI", "ozoBwIBELwWrctslmOXn4gjwUsH4fTnQ", "h8UdMTTftvA"};
    public static final C1o A02;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A01[4].charAt(30) != 'H') {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[2] = "YTmcdunxXTwT2iEPkehpV1XLNN7SmG";
            strArr[3] = "eAcqfnEjzd6ePOxNPsxZ0F6DBgHob8";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 43);
            i4++;
        }
    }

    public static void A01() {
        A00 = new byte[]{-87, -99, -33, -34, -16, -30, -99, -15, -10, -19, -30, -99, -32, -23, -34, -16, -16, -23, -20, -34, -31, -30, -17, -73, -99, -106, -69, -64, -63, -82, -69, -80, -78, 109, -80, -71, -82, -64, -64, 109, -60, -82, -64, 109, -71, -68, -82, -79, -78, -79, 109, -77, -65, -68, -70, 109, -82, 109, -79, -74, -77, -77, -78, -65, -78, -69, -63, 109, -80, -71, -82, -64, -64, -71, -68, -82, -79, -78, -65, -121, 109};
    }

    static {
        A01();
        AbstractC12480o abstractC12480o = new AbstractC12480o() { // from class: com.facebook.ads.redexgen.X.0W
        };
        try {
            A02 = abstractC12480o;
        } catch (ClassCastException e) {
            ClassLoader classLoader = abstractC12480o.getClass().getClassLoader();
            ClassLoader classLoader2 = C1o.class.getClassLoader();
            if (!C1h.A0C(classLoader, classLoader2)) {
                throw new ClassNotFoundException(A00(25, 56, 34) + classLoader + A00(0, 25, 82) + classLoader2, e);
            }
            throw e;
        }
    }
}
