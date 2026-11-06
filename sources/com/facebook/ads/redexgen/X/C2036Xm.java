package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Xm, reason: case insensitive filesystem */
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
public final class C2036Xm {
    public static byte[] A02;
    public static String[] A03 = {"YMyukGOZbElzYCjXswiDasEnRUtQuAqy", "JnVs1XQ6w91", "NsTJUgSwloTuhweQ5ivOL2wOLZzbzgff", "VAH1kqIZVJnfwmSiKCDdiZaRqhNQ1XLZ", "NLmrBkjBx0Hyu", "ljpN0VclCovmUpo6ImdBt", "bpuRdzSpwxjKrXfgwcnzsCSb7A4SkKum", "1ExyBUrzeSL54Qw63WkKw8rE2Y6GRgHz"};
    public final String A00;
    public final String A01;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = (bArrCopyOfRange[i4] ^ i3) ^ 67;
            String[] strArr = A03;
            if (strArr[0].charAt(0) == strArr[7].charAt(0)) {
                throw new RuntimeException();
            }
            A03[1] = "5nMJwc7N0f";
            bArrCopyOfRange[i4] = (byte) i5;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{77, 115, 84, 73, 67, 75, 69, 82, 97, 83, 83, 69, 84, 105, 68, 89, 103, 64, 93, 87, 95, 81, 70, 96, 77, 68, 81};
    }

    static {
        A01();
    }

    public C2036Xm(String str, String str2) {
        C1h.A09(str, A00(15, 12, Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE));
        C1h.A09(str2, A00(0, 15, 99));
        this.A01 = str;
        this.A00 = str2;
    }
}
