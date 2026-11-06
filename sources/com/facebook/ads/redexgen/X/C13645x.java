package com.facebook.ads.redexgen.X;

import android.content.res.Configuration;
import android.widget.FrameLayout;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.5x, reason: invalid class name and case insensitive filesystem */
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
public final class C13645x extends D8 {
    public static byte[] A03;
    public static final C3202s5 A04;
    public static final D7 A05;
    public C6M A00;
    public final int A01;
    public final D6 A02;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 23);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{80, 82, 69, 88, 71, 88, 69, 72, 112, 65, 88, 37, 32, 6, 33, 44, 37, 50, 45, 43, 54, 95, 90, 125, 95, 93, 86, 91, 115, 95, 80, 95, 89, 91, 76, 47, 42, 13, 33, 32, 58, 43, 54, 58, 25, 60, 47, 62, 62, 43, 60, 59, 62, 30, 59, 46, 59, 24, 47, 52, 62, 54, 63, 82, 87, 118, 69, 86, 93, 71, 126, 82, 93, 82, 84, 86, 65, 78, 66, 67, 75, 68, 74, 16, 18, 3, 39, 24, 5, 3, 5, 22, 30, 3, 52, 24, 27, 24, 5, 62, 25, 17, 24, 95, 89, 89, 89, 94, 101, 96, 122, 125, 108, 103, 108, 123, 57, 21, 48, 22, 49, 60, 53, 34, 61, 59, 38, 118, 90, 127, 88, 122, 120, 115, 126, 86, 122, 117, 122, 124, 126, 105, 74, 102, 67, 100, 72, 73, 83, 66, 95, 83, 112, 85, 70, 87, 87, 66, 85, 83, 127, 90, 122, 95, 74, 95, 124, 75, 80, 90, 82, 91, 21, 57, 28, 61, 14, 29, 22, 12, 53, 25, 22, 25, 31, 29, 10, 6, 45, 30, 5, 5, 14, 7, 39, 4, 12, 12, 2, 5, 12, 35, 10, 5, 15, 7, 14, 25, 77, 108, 73, 83, 84, 69, 78, 69, 82, 104, 81, 106, 106, 105, 103, 100, 119};
    }

    static {
        A01();
        A04 = new C3202s5(null);
        A05 = new D7();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13645x(C1643Hi c1643Hi, InterfaceC3200s3 interfaceC3200s3, InterfaceC2909nG interfaceC2909nG, LA la, C2771kz c2771kz, InterfaceC3144r9 interfaceC3144r9) {
        super(c1643Hi, interfaceC3200s3, interfaceC2909nG, la, c2771kz, interfaceC3144r9);
        C1h.A09(c1643Hi, A00(35, 16, 89));
        C1h.A09(interfaceC3200s3, A00(11, 10, 83));
        C1h.A09(interfaceC2909nG, A00(63, 14, 36));
        C1h.A09(la, A00(51, 12, 77));
        C1h.A09(c2771kz, A00(21, 14, 41));
        C1h.A09(interfaceC3144r9, A00(108, 8, 30));
        this.A01 = la.A32().A0T() ? la.A32().A0I().A03() : la.A32().A0I().A04();
        this.A02 = new D6(this);
    }

    @Override // com.facebook.ads.redexgen.X.D8
    public final void A0p() {
        C6M c6m = this.A00;
        if (c6m != null) {
            c6m.A1s();
        }
    }

    @Override // com.facebook.ads.redexgen.X.D8
    public final void A0q() {
        C6M c6m = this.A00;
        if (c6m != null) {
            c6m.A1h();
        }
        if (this.A01 <= 0) {
            this.A09.setToolbarActionMode(0);
        }
    }

    @Override // com.facebook.ads.redexgen.X.D8
    public final void A0s(C2683jY c2683jY) {
        C1h.A09(c2683jY, A00(0, 11, 38));
        c2683jY.A0A(this.A02);
        C1643Hi c1643Hi = this.A05;
        C1h.A08(c1643Hi, A00(142, 17, 48));
        InterfaceC3200s3 interfaceC3200s3 = this.A0B;
        C1h.A08(interfaceC3200s3, A00(Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE, 11, 67));
        InterfaceC2909nG interfaceC2909nG = this.A06;
        C1h.A08(interfaceC2909nG, A00(172, 15, 111));
        LA la = this.A03;
        C1h.A08(la, A00(159, 13, 41));
        InterfaceC3144r9 interfaceC3144r9 = this.A0A;
        C1h.A08(interfaceC3144r9, A00(208, 9, 55));
        AbstractC3137r2 abstractC3137r2 = this.A09;
        C1h.A08(abstractC3137r2, A00(Sdk.SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE, 8, 18));
        C2917nO c2917nO = this.A07;
        C1h.A08(c2917nO, A00(187, 21, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE));
        C2771kz c2771kz = this.A04;
        C1h.A08(c2771kz, A00(Sdk.SDKError.Reason.ASSET_FAILED_MAX_SPACE_EXCEEDED_VALUE, 15, 12));
        this.A00 = new C6M(c1643Hi, interfaceC3200s3, 0, interfaceC2909nG, la, interfaceC3144r9, abstractC3137r2, c2917nO, c2771kz, false, false, A05, this.A01, 1, false);
        C2429fN c2429fNA01 = this.A03.A31().A01();
        C1h.A08(c2429fNA01, A00(83, 25, 96));
        AbstractC3111qc.A0O(this, c2429fNA01.A08(false));
        addView(this.A00, D8.A0H);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(0, AbstractC3068pv.A0u, 0, 0);
        addView(this.A09, layoutParams);
        setUpFullscreenMode(true);
    }

    @Override // com.facebook.ads.redexgen.X.D8
    public final boolean A0t() {
        C6M c6m = this.A00;
        if (!((c6m == null || c6m.A1t()) ? false : true)) {
            return true;
        }
        this.A05.A0F().ABl();
        this.A0A.A5C(this.A0B.A7L());
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.D8
    public final boolean A0u() {
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void AGF(boolean z) {
        C6M c6m = this.A00;
        if (c6m != null) {
            c6m.A1j(z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void AGp(boolean z) {
        C6M c6m = this.A00;
        if (c6m != null) {
            c6m.A1k(z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.D8, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        C1h.A09(configuration, A00(77, 6, 58));
        super.onConfigurationChanged(configuration);
        C6M c6m = this.A00;
        if (c6m != null) {
            c6m.onConfigurationChanged(configuration);
        }
    }

    @Override // com.facebook.ads.redexgen.X.D8, com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void onDestroy() {
        C6M c6m = this.A00;
        if (c6m != null) {
            c6m.A1b();
        }
        super.onDestroy();
    }
}
