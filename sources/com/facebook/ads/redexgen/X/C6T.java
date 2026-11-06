package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.facebook.ads.internal.util.activity.AdActivityIntent;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.6T, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C6T extends FrameLayout implements InterfaceC1554Dw {
    public static byte[] A0A;
    public static String[] A0B = {"gR8VXB3ia", "OJTiurBFiCqcREvzh7o4PkhSqDGudpIq", "iaBHwIBC1utH6CwOSIC2yyAu4ZYXfJ61", "YdU4", "YcTfP9iPeB3iMp", "vsmHP1kkKyGC9kag", "2EZKw0n31g6TC4", "KAWIkc2sX"};
    public C2224c2 A00;
    public final int A01;
    public final LA A02;
    public final C1643Hi A03;
    public final InterfaceC2909nG A04;
    public final C3102qT A05;
    public final InterfaceC3446w1 A06;
    public final C1930Tb A07;
    public final String A08;
    public final boolean A09;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 113);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A0A = new byte[]{118, 84, 91, 18, 65, 21, 70, 65, 84, 71, 65, 21, 116, 64, 81, 92, 80, 91, 86, 80, 123, 80, 65, 66, 90, 71, 94, 116, 86, 65, 92, 67, 92, 65, 76, 27, 21, 120, 84, 94, 80, 21, 70, 64, 71, 80, 21, 65, 93, 84, 65, 21, 92, 65, 18, 70, 21, 92, 91, 21, 76, 90, 64, 71, 21, 116, 91, 81, 71, 90, 92, 81, 120, 84, 91, 92, 83, 80, 70, 65, 27, 77, 88, 89, 21, 83, 92, 89, 80, 27, 30, 26, 25, 45, 60, 49, 61, 54, 59, 61, 22, 61, 44, 47, 55, 42, 51, 54, 57, 8, 54, 52, 35, 62, 33, 62, 35, 46, 77, 66, 71, 77, 69, 113, 93, 65, 91, 92, 77, 75, 55, 56, 45, 48, 47, 60, 24, 61, 29, 56, 45, 56, 27, 44, 55, 61, 53, 60, 33, 39, 49, 38, 55, 56, 61, 55, 63, 22, 9, 5, 23, 52, 25, 16, 5};
    }

    static {
        A02();
    }

    public C6T(C1643Hi c1643Hi, InterfaceC2909nG interfaceC2909nG, InterfaceC3446w1 interfaceC3446w1, LA la, String str, int i, C3102qT c3102qT) {
        super(c1643Hi);
        this.A03 = c1643Hi;
        this.A04 = interfaceC2909nG;
        this.A02 = la;
        this.A08 = str;
        this.A06 = interfaceC3446w1;
        this.A01 = i;
        C1930Tb preloadedDynamicWebViewController = M1.A02(la.A1r());
        if (preloadedDynamicWebViewController != null) {
            this.A07 = preloadedDynamicWebViewController;
            this.A09 = true;
        } else {
            this.A07 = new C1930Tb(this.A03, la, interfaceC2909nG, i);
            M1.A03(la, this.A07);
            this.A09 = false;
        }
        if (c3102qT != null) {
            this.A05 = c3102qT;
            this.A07.A0f(c3102qT);
        } else {
            this.A05 = this.A07.A0N();
        }
        this.A07.A0i(new E4(this));
        this.A07.A0g(interfaceC3446w1);
        EnumC3076q3.A04(this, EnumC3076q3.A0A);
        if (C2888mv.A1z(c1643Hi)) {
            c1643Hi.A0B().AM9(this.A07.A0Q(), la.A37(), false, false, true);
        }
        A04();
    }

    private final void A03() {
        this.A07.A0j(this);
        if (!this.A09) {
            this.A03.A0F().A6f();
            this.A07.A0a();
        } else {
            this.A03.A0F().A6g();
            String[] strArr = A0B;
            if (strArr[6].length() != strArr[4].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0B;
            strArr2[6] = "EW3rEVX7vA8fzU";
            strArr2[4] = "ztAtYR2DvpL08d";
            if (this.A07.A0u()) {
                if (this.A01 == 4) {
                    if (this.A06 != null) {
                        this.A06.AEo(this);
                    }
                    if (C2888mv.A1z(this.A03)) {
                        this.A03.A0B().AEc();
                    }
                } else {
                    ALW();
                }
            }
        }
        A08();
    }

    private final void A04() {
        C1930Tb.A0C().incrementAndGet();
        A03();
        this.A07.A0d();
    }

    private void A05(Intent intent, LA la) {
        intent.putExtra(A01(157, 8, 17), EnumC2980oR.A08);
        intent.putExtra(A01(Sdk.SDKError.Reason.MRAID_DOWNLOAD_JS_ERROR_VALUE, 18, 40), la);
        intent.addFlags(268435456);
    }

    private final void A06(LA la) {
        AdActivityIntent adActivityIntentA06 = C3022p8.A06(this.A03);
        A05(adActivityIntentA06, la);
        try {
            C3022p8.A0D(this.A03, adActivityIntentA06);
        } catch (Exception e) {
            this.A03.A08().ABz(A01(107, 11, 38), AbstractC2811lf.A0D, new C2812lg(e));
            Log.e(A01(90, 17, 41), A01(0, 90, 68), e);
        }
    }

    private void A07(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        C3329u8 c3329u8 = new C3329u8(this.A03, this.A08, this.A00, this.A05, this.A04, this.A02.A33());
        c3329u8.A0A(this.A02);
        HashMap map = new HashMap();
        if (TextUtils.isEmpty(str2)) {
            str2 = A01(148, 9, 37);
        }
        map.put(A01(Sdk.SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE, 12, 95), str2);
        c3329u8.A06(this.A02.A37(), str, map);
    }

    public final void A08() {
        AbstractC3111qc.A0K(this.A07.A0Q());
        addView(this.A07.A0Q(), new FrameLayout.LayoutParams(-1, -1));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1554Dw
    public final void AAJ(String str) {
        A07(this.A02.A32().A0K().A06(), str);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1554Dw
    public final void AAK(String str, String str2) {
        A07(str, str2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1554Dw
    public final void AAO() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1554Dw
    public final void ABU() {
        new Handler(Looper.getMainLooper()).post(new E3(this));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1554Dw
    public final void AF3() {
        A06(this.A02);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1554Dw
    public final void AF7() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1554Dw
    public final void AFy(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1554Dw
    public final void AH6() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1554Dw
    public final void AHh(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1554Dw
    public final void AHj(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1554Dw
    public final void AI1(String str) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1554Dw
    public final void ALW() {
        if (this.A06 != null) {
            this.A06.AEo(this);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1554Dw
    public final void close() {
    }

    public InterfaceC2909nG getAdEventManager() {
        return this.A04;
    }

    public C1930Tb getDynamicWebViewController() {
        return this.A07;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        requestDisallowInterceptTouchEvent(true);
        return super.onTouchEvent(motionEvent);
    }

    public void setAdViewabilityChecker(C2224c2 c2224c2) {
        this.A00 = c2224c2;
        this.A07.A0l(c2224c2);
    }
}
