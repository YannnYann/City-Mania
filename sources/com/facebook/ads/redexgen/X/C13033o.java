package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.3o, reason: invalid class name and case insensitive filesystem */
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
public final class C13033o extends C0V implements InterfaceC12450l<String, Integer, Integer, AnonymousClass22> {
    public static byte[] A02;
    public final /* synthetic */ ViewOnClickListenerC1569El A00;
    public final /* synthetic */ C2935ng A01;

    static {
        A01();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13033o(C2935ng c2935ng, ViewOnClickListenerC1569El viewOnClickListenerC1569El) {
        super(3);
        this.A01 = c2935ng;
        this.A00 = viewOnClickListenerC1569El;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 29);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{0, 12, -3, -5, 1, 10, 0, -5, -1, -3, 14, 0, -5, 12, 14, 11, 0, 17, -1, 16};
    }

    private final void A02(String str, int i, int i2) {
        this.A01.A0F(this.A00, str, i, i2);
        ViewOnClickListenerC1569El viewOnClickListenerC1569El = this.A00;
        if (viewOnClickListenerC1569El != null) {
            viewOnClickListenerC1569El.A0E(A00(0, 20, Sdk.SDKError.Reason.ASSET_FAILED_MAX_SPACE_EXCEEDED_VALUE));
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC12450l
    public final /* bridge */ /* synthetic */ AnonymousClass22 AB2(String str, Integer num, Integer num2) {
        A02(str, num.intValue(), num2.intValue());
        return AnonymousClass22.A01;
    }
}
