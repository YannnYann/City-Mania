package com.facebook.ads.redexgen.X;

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
public final class CC extends AbstractC2650j1 {
    public static byte[] A01;
    public final /* synthetic */ C2826lu A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 98);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{82, 69, 67, 89, 67, 76, 69, 82, 54, 73, 69, 87};
    }

    public CC(C2826lu c2826lu) {
        this.A00 = c2826lu;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2650j1
    public final void A0Q(C7O c7o, int i, int i2) {
        AbstractC2633ik adapter;
        int iA0B;
        C1h.A09(c7o, A00(0, 12, Sdk.SDKError.Reason.ASSET_FAILED_INSUFFICIENT_SPACE_VALUE));
        if (i == 0 || (adapter = c7o.getAdapter()) == null || (iA0B = adapter.A0B()) <= 1) {
            return;
        }
        int iComputeHorizontalScrollRange = c7o.computeHorizontalScrollRange();
        int itemCount = c7o.computeHorizontalScrollExtent();
        int currentScroll = iComputeHorizontalScrollRange - itemCount;
        if (currentScroll <= 0) {
            return;
        }
        int itemCount2 = c7o.computeHorizontalScrollOffset();
        float f = itemCount2 / currentScroll;
        int itemCount3 = iA0B - 1;
        int maxScroll = AbstractC12430j.A00(f * itemCount3);
        C3333uC c3333uC = this.A00.A0B;
        if (c3333uC != null) {
            c3333uC.setCurrentPosition(maxScroll);
        }
    }
}
