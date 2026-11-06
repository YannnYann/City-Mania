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
public final class D7 implements InterfaceC3196rz {
    public static byte[] A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 6);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{94, 73, 73, 84, 73, 118, 94, 72, 72, 90, 92, 94};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3196rz
    public final void ADH() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3196rz
    public final void AE6() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3196rz
    public final void AEd(int i) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3196rz
    public final void AEz(float f) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3196rz
    public final void AH3(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3196rz
    public final void AHT() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3196rz
    public final void AHa(String str) {
        C1h.A09(str, A00(0, 12, 61));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3196rz
    public final void ALw() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3196rz
    public final void ALx(float f) {
    }
}
