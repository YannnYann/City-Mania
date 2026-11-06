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
public final class CE implements InterfaceC3284tP {
    public static byte[] A01;
    public final /* synthetic */ C2826lu A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 79);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-46, -57, -46, -54, -61, -1, -4, -10};
    }

    public CE(C2826lu c2826lu) {
        this.A00 = c2826lu;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3284tP
    public final void AGC(String str) {
        C1h.A09(str, A00(5, 3, 59));
        this.A00.A0F = false;
        C3275tG c3275tG = this.A00.A08;
        if (c3275tG != null) {
            c3275tG.setProgress(100);
            AbstractC3111qc.A0P(c3275tG, 8);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3284tP
    public final void AGE(String str) {
        C1h.A09(str, A00(5, 3, 59));
        this.A00.A0F = true;
        C3275tG c3275tG = this.A00.A08;
        if (c3275tG != null) {
            AbstractC3111qc.A0P(c3275tG, 0);
        }
        F8 f8 = this.A00.A07;
        if (f8 != null) {
            f8.setUrl(str);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3284tP
    public final void AGf(int i) {
        C3275tG c3275tG;
        if (!this.A00.A0F || (c3275tG = this.A00.A08) == null) {
            return;
        }
        c3275tG.setProgress(i);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3284tP
    public final void AGi(String str) {
        C1h.A09(str, A00(0, 5, 15));
        F8 f8 = this.A00.A07;
        if (f8 != null) {
            f8.setTitle(str);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3284tP
    public final void AGl() {
    }
}
