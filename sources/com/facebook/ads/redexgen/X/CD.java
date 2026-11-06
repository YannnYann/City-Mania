package com.facebook.ads.redexgen.X;

import android.graphics.Rect;
import android.view.View;
import com.vungle.ads.internal.protos.Sdk;
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
public final class CD extends AbstractC2642it {
    public static byte[] A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ Sdk.SDKError.Reason.ASSET_FAILED_MAX_SPACE_EXCEEDED_VALUE);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{33, 59, 58, 28, 43, 45, 58, 74, 91, 72, 95, 84, 78, 56, 63, 42, 63, 46, 58, 37, 41, 59};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2642it
    public final void A02(Rect rect, View view, C7O c7o, C2660jB c2660jB) {
        C1h.A09(rect, A00(0, 7, 49));
        C1h.A09(view, A00(18, 4, 51));
        C1h.A09(c7o, A00(7, 6, 69));
        C1h.A09(c2660jB, A00(13, 5, 52));
        int iA1C = c7o.A1C(view);
        AbstractC2633ik adapter = c7o.getAdapter();
        int itemCount = adapter != null ? adapter.A0B() : 0;
        int position = AbstractC3068pv.A0K;
        if (iA1C != 0) {
            position /= 2;
        }
        rect.left = position;
        rect.right = iA1C == itemCount + (-1) ? AbstractC3068pv.A0K : AbstractC3068pv.A0K / 2;
    }
}
