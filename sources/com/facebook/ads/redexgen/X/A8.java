package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import kotlin.Metadata;

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
public final class A8 extends AbstractC2030Xg {
    public static byte[] A00;
    public static final XK A01;
    public static final A8 A02;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 95);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{49, 61, 54, 55, 49, 28, 51, 63, 55, 12, 29, 10, 14, 27, 6, 1, 8, 42, 25, 10, 1, 27, 25, 5, 31, 24, 9, 15};
    }

    static {
        A01();
        A01 = new XK(null);
        A02 = new A8();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2030Xg
    public final void A06(C2032Xi c2032Xi, int i) {
        C1h.A09(c2032Xi, A00(9, 13, 48));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2030Xg
    public final void A07(EnumC2031Xh enumC2031Xh, int i) {
        C1h.A09(enumC2031Xh, A00(22, 6, 53));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2030Xg
    public final void A08(EnumC2031Xh enumC2031Xh, int i) {
        C1h.A09(enumC2031Xh, A00(22, 6, 53));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2030Xg
    public final void A09(EnumC2031Xh enumC2031Xh, int i) {
        C1h.A09(enumC2031Xh, A00(22, 6, 53));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2030Xg
    public final void A0A(boolean z, String str, EnumC2031Xh enumC2031Xh, int i) {
        C1h.A09(str, A00(0, 9, 13));
        C1h.A09(enumC2031Xh, A00(22, 6, 53));
    }
}
