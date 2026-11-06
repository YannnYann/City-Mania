package com.facebook.ads.redexgen.X;

import android.content.Intent;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.jk, reason: case insensitive filesystem */
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
public final class C2695jk {
    public static byte[] A04;
    public final Intent A00;
    public final C2683jY A01;
    public final C1643Hi A02;
    public final InterfaceC2909nG A03;

    static {
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 44);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A04 = new byte[]{127, 99, 46, 44, 59, 38, 57, 38, 59, 54, 6, 34, 63, 35, 122, 127, 88, 116, 117, 111, 126, 99, 111, 76, 105, 122, 107, 107, 126, 105, 126, 123, 90, 105, 122, 113, 107, 82, 126, 113, 126, 120, 122, 109, 82, 66, 95, 71, 67, 85, 66, 111, 68, 73, 64, 85, 106, 104, 101, 101, 108, 123, 93, 112, 121, 108, 41, 38, 35, 59, 42, 61, 42, 43, 16, 44, 35, 38, 44, 36, 16, 43, 42, 35, 46, 54, 16, 34, 60, 91, 92, 70, 87, 92, 70, 97, 123, 87, 126, 58, 87, 108, 109, 123, 97, 111, 102};
    }

    public C2695jk(C2683jY c2683jY, Intent intent, InterfaceC2909nG interfaceC2909nG, C1643Hi c1643Hi) {
        C1h.A09(c2683jY, A01(2, 12, 99));
        C1h.A09(intent, A01(89, 6, 30));
        C1h.A09(interfaceC2909nG, A01(30, 14, 51));
        C1h.A09(c1643Hi, A01(14, 16, 55));
        this.A01 = c2683jY;
        this.A00 = intent;
        this.A03 = interfaceC2909nG;
        this.A02 = c1643Hi;
    }

    private final InterfaceC3145rA A00() {
        boolean booleanExtra = this.A00.getBooleanExtra(A01(95, 12, 36), false);
        boolean isV2Design = C2888mv.A2z(this.A02);
        if (isV2Design) {
            String stringExtra = this.A00.getStringExtra(A01(66, 23, 99));
            C2683jY c2683jY = this.A01;
            C1643Hi c1643Hi = this.A02;
            InterfaceC2909nG interfaceC2909nG = this.A03;
            IV iv = new IV(this.A01);
            String stringExtra2 = this.A00.getStringExtra(A01(56, 10, 37));
            if (stringExtra == null) {
                stringExtra = A01(0, 2, Sdk.SDKError.Reason.ASSET_FAILED_INSUFFICIENT_SPACE_VALUE);
            }
            return new AnonymousClass78(c2683jY, c1643Hi, interfaceC2909nG, iv, stringExtra2, Integer.parseInt(stringExtra));
        }
        return new C1602Ft(this.A01, this.A02, this.A03, new IV(this.A01), booleanExtra);
    }

    public final InterfaceC3145rA A03() {
        EnumC2988oa enumC2988oaA00 = EnumC2988oa.A01.A00(this.A00.getStringExtra(A01(44, 12, 28)));
        EnumC2984oW enumC2984oWA00 = C2986oY.A00(enumC2988oaA00, this.A02);
        this.A02.A0F().A5G(enumC2988oaA00.name(), enumC2984oWA00.name());
        switch (C2694jj.A00[enumC2984oWA00.ordinal()]) {
            case 1:
                return new FJ(this.A01, this.A02);
            case 2:
                return new C1597Fo(this.A01, this.A02, this.A03);
            case 3:
                return A00();
            default:
                throw new AnonymousClass28();
        }
    }
}
