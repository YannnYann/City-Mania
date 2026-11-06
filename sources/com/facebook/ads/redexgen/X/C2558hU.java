package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.webkit.MimeTypeMap;
import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.hU, reason: case insensitive filesystem */
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
public final class C2558hU {
    public static byte[] A00;
    public static String[] A01 = {"rf6ngwKh6Z65cM5w2LO1dP8kbWabbmbt", "RCOuNPLdAU1uOvUxfzb8m1arC1B3VaYg", "uVAJujTPk18dS2MgWbbVFWsUDBivspM4", "3J9h1AP2mvxiikBnEMk", "UvtzSP75LkkhxyMrdmibMHe3gBAsOLna", "lWVDlLnUv1rJvKVC2cP3cEG3QwZFPzgL", "0YH65Zd4wQwql9vApJjESbBhLQ1uzNM9", "pxMoskK4qOXBm8RsX3"};

    public /* synthetic */ C2558hU(AbstractC12661i abstractC12661i) {
        this();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = (byte) ((bArrCopyOfRange[i4] - i3) - 56);
            String[] strArr = A01;
            if (strArr[2].charAt(26) == strArr[1].charAt(26)) {
                throw new RuntimeException();
            }
            A01[4] = "FdbAaPLsWVXYjO1j90H3A2WaCQ7WrIen";
            bArrCopyOfRange[i4] = b;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A00 = new byte[]{-55, -43, -44, -38, -53, -44, -38, -59, -53, -44, -55, -43, -54, -49, -44, -51};
    }

    static {
        A05();
    }

    public C2558hU() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String A01(Uri uri) {
        return uri.getQueryParameter(A00(0, 16, 46));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String A02(Uri uri) {
        return MimeTypeMap.getFileExtensionFromUrl(uri.toString());
    }
}
