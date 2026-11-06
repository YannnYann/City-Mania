package com.facebook.ads.redexgen.X;

import android.view.View;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.vT, reason: case insensitive filesystem */
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
public final class ViewOnClickListenerC3412vT implements View.OnClickListener {
    public static byte[] A01;
    public static String[] A02 = {"lSBGV0KRRhhAHXO14Oeq", "virn7YiJ4qXUk6h2", "ZOOvTCYye1apYHGJTFPWFikvbRhfJSsY", "6hfctE0Zag31mxK5QRFpKawC3Tekf9Ca", "4tfRzWxWKIoAR6uYoUH9MSnQowcBDMob", "dKeDKE49emqnQ4LZs9melb0IV1QUNAj1", "cgplaZIOQiw4kluWRwCiVfcRbm0R4Od9", "7wipdldvlkBPaBSKhQUCW8O"};
    public final /* synthetic */ ViewOnClickListenerC1569El A00;

    public ViewOnClickListenerC3412vT(ViewOnClickListenerC1569El viewOnClickListenerC1569El) {
        this.A00 = viewOnClickListenerC1569El;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 75);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{46, 55, 45, 44, 42, 59, 45, 60};
        if (A02[0].length() != 20) {
            throw new RuntimeException();
        }
        String[] strArr = A02;
        strArr[2] = "hHwoQQ94wJmAW3wuKGHjx3iA97JNTkpe";
        strArr[6] = "xzfwidmi03lBfkCNziR0tI48XZANGoKS";
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
                viewOnClickListenerC1569El.A0E(A00(0, 8, Sdk.SDKError.Reason.ASSET_FAILED_INSUFFICIENT_SPACE_VALUE));
            }
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
