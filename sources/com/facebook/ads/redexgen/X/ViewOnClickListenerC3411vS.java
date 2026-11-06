package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.vS, reason: case insensitive filesystem */
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
public final class ViewOnClickListenerC3411vS implements View.OnClickListener {
    public static byte[] A01;
    public static String[] A02 = {"zuBXHW69HMsgqPkvw822efdqIzipI38Z", "nYdvLYfpD29HQYL7zEpWwXf8IT7vu0fJ", "kbAJV2oEH8wTAGmdzesmligVJmWrG6rY", "", "Lz0WQdNHmEkGKqDRaWMt4EzB5Z5VAIm7", "XnAXt8", "Cdgs2qwyfuiL45Fb99MleVqfyozS1BQu", "31C1ogJFA1t40Kq3YH41fL7WYJx5kQRd"};
    public final /* synthetic */ ViewOnClickListenerC1569El A00;

    public ViewOnClickListenerC3411vS(ViewOnClickListenerC1569El viewOnClickListenerC1569El) {
        this.A00 = viewOnClickListenerC1569El;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 8);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        String[] strArr = A02;
        if (strArr[6].charAt(31) == strArr[4].charAt(31)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A02;
        strArr2[0] = "aEQGJDm1Hrq1SSVJKIONBLtECkP34d8K";
        strArr2[2] = "jeRBFdLPHjNhicccNA79bad4rW6OoDm2";
        A01 = new byte[]{14, 5, 15, 8, 10, 25, 15, 24};
    }

    static {
        A01();
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            ViewOnClickListenerC1569El viewOnClickListenerC1569El = this.A00;
            if (viewOnClickListenerC1569El != null) {
                viewOnClickListenerC1569El.A0E(A00(0, 8, 99));
            }
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
