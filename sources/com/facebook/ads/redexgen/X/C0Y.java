package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.Collection;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.0Y, reason: invalid class name */
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
public abstract class C0Y extends AbstractC12550v {
    public static byte[] A00;
    public static String[] A01 = {"p4G6IChFiN1YlRVXcRHvnoDfdcYXdk4m", "qDKLbm18WUnAbHtOnOqFa8EC8wELOwkL", "HbrrZmoqSsWuBeL2DNY6", "t6OCMUcw4Dky2jOH0SrHrslGw3iwCJ7I", "tYR7Cnk37CgkrvB3pV64", "YfKmN3dH3V2P9WZ4G", "stoUQgnFXCo7NoSp5hffM9rf08oYokie", "74r5lOIBShcOIJyc9zEN"};

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 57);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A07() {
        A00 = new byte[]{-63, -7, -19, -18, -8, -61};
    }

    static {
        A07();
    }

    public static final <T> int A05(Iterable<? extends T> iterable, int i) {
        C1h.A09(iterable, A06(0, 6, 76));
        if (!(iterable instanceof Collection)) {
            return i;
        }
        Collection collection = (Collection) iterable;
        if (A01[3].charAt(28) == '6') {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[6] = "bp3Xqw7E010zGfgkdZMEgYifLHH7bWdi";
        strArr[0] = "r5xcnKC361516P8KXhB2q6WfvbJWaIVh";
        return collection.size();
    }
}
