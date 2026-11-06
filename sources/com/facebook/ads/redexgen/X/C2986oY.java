package com.facebook.ads.redexgen.X;

import android.content.Context;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.oY, reason: case insensitive filesystem */
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
public final class C2986oY {
    public static byte[] A00;
    public static final C2986oY A01;

    static {
        A02();
        A01 = new C2986oY();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 36);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{-30, -14, -17, -9, -13, -27, -14, -44, -7, -16, -27, -70, -58, -59, -53, -68, -49, -53};
    }

    @JvmStatic
    public static final EnumC2984oW A00(EnumC2988oa enumC2988oa, Context context) {
        C1h.A09(enumC2988oa, A01(0, 11, 92));
        C1h.A09(context, A01(11, 7, 51));
        switch (C2985oX.A00[enumC2988oa.ordinal()]) {
            case 1:
                return EnumC2984oW.A04;
            case 2:
                return A03(context) ? EnumC2984oW.A03 : EnumC2984oW.A05;
            case 3:
                return A03(context) ? EnumC2984oW.A03 : EnumC2984oW.A04;
            case 4:
                return EnumC2984oW.A05;
            default:
                throw new AnonymousClass28();
        }
    }

    @JvmStatic
    public static final boolean A03(Context context) {
        C1h.A09(context, A01(11, 7, 51));
        return IO.A00(context) == 0;
    }
}
