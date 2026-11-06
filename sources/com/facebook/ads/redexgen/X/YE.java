package com.facebook.ads.redexgen.X;

import java.util.Calendar;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;

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
public final class YE {
    public static final YE A00 = new YE();

    @JvmStatic
    public static final int A00(int i, int i2, int i3) {
        if (A00.A01(i) && !Y9.A01.A00()) {
            return i;
        }
        if (A02(i2, i3)) {
            return 1;
        }
        return 3;
    }

    private final boolean A01(int i) {
        return -1 <= i && i < 7;
    }

    @JvmStatic
    public static final boolean A02(int i, int i2) {
        int i3 = Calendar.getInstance().get(11);
        return i3 >= i || i3 <= i2;
    }
}
