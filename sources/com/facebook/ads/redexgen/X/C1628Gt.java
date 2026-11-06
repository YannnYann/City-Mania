package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.util.Log;
import java.util.Arrays;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Gt, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1628Gt implements InterfaceC2909nG {
    public static InterfaceC2909nG A03;
    public static byte[] A04;
    public static final String A05;
    public static volatile boolean A06;
    public final C1642Hh A00;
    public final InterfaceC2861mU A01;
    public final InterfaceC2908nF A02;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 79);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A04 = new byte[]{-90, -21, -4, -21, -12, -6, -76, -88, -37, -37, -52, -44, -41, -37, -48, -43, -50, -121, -37, -42, -121, -45, -42, -50, -121, -56, -43, -121, -48, -43, -35, -56, -45, -48, -53, -121, -43, -13, -30, -28, -26, -24, -26, -17, -26, -13, -22, -28, 46, 51, 42, 31};
    }

    static {
        A03();
        A05 = C1628Gt.class.getSimpleName();
        A06 = false;
    }

    public C1628Gt(C1642Hh c1642Hh) {
        InterfaceC2907nE dispatchCallback;
        this.A00 = c1642Hh;
        if (AbstractC2890mx.A0T(c1642Hh)) {
            this.A01 = AbstractC2859mS.A00(c1642Hh);
            dispatchCallback = AbstractC2914nL.A00(c1642Hh, this.A01);
        } else {
            C7A c7aA01 = AbstractC2859mS.A01(c1642Hh);
            dispatchCallback = AbstractC2914nL.A01(c1642Hh, c7aA01);
            this.A01 = c7aA01;
        }
        this.A02 = new C1631Gw(c1642Hh, dispatchCallback);
        ExecutorC3116qh.A08.execute(new C1630Gv(this));
        A04(c1642Hh);
    }

    public static synchronized InterfaceC2909nG A01(C1642Hh c1642Hh) {
        if (A03 == null) {
            A03 = new C1628Gt(c1642Hh);
        }
        return A03;
    }

    public static synchronized void A04(C1642Hh c1642Hh) {
        if (A06) {
            return;
        }
        c1642Hh.A04().ADj();
        A06 = true;
    }

    private void A05(C2906nD c2906nD) {
        if (!c2906nD.A0A()) {
            Log.e(A05, A02(7, 29, 24) + c2906nD.A06() + A02(0, 7, 55));
        } else {
            A06(c2906nD);
            this.A01.AMQ(c2906nD, new C1629Gu(this, c2906nD));
        }
    }

    private void A06(C2906nD c2906nD) {
        switch (C2910nH.A00[c2906nD.A06().ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                C2812lg c2812lg = new C2812lg(new Exception(A02(36, 5, 50)));
                c2812lg.A05(1);
                try {
                    c2812lg.A07(new JSONObject().put(A02(48, 4, 107), c2906nD.A06().toString()));
                    break;
                } catch (JSONException unused) {
                }
                this.A00.A08().AC0(A02(41, 7, 50), AbstractC2811lf.A1H, c2812lg);
                break;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2909nG
    public final void ABo(String str, Map<String, String> data) {
        A05(new C2905nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(EnumC2911nI.A04).A02(EnumC2912nJ.A04).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2909nG
    public final void ABq(String str, Map<String, String> data) {
        A05(new C2905nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(EnumC2911nI.A04).A02(EnumC2912nJ.A06).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2909nG
    public final void ABr(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C2905nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(EnumC2911nI.A04).A02(EnumC2912nJ.A07).A06(AbstractC2919nQ.A0A(str, EnumC2916nN.A0I)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2909nG
    public final void ABt(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C2905nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(EnumC2911nI.A04).A02(EnumC2912nJ.A08).A06(AbstractC2919nQ.A0A(str, EnumC2916nN.A06)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2909nG
    public final void ABy(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C2905nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(EnumC2911nI.A04).A02(EnumC2912nJ.A0B).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2909nG
    public final void AC2(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C2905nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(EnumC2911nI.A04).A02(EnumC2912nJ.A0C).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2909nG
    public final void AC7(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C2905nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(EnumC2911nI.A05).A02(EnumC2912nJ.A0D).A06(AbstractC2919nQ.A0A(str, EnumC2916nN.A0T)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2909nG
    public final void AC8(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C2905nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(EnumC2911nI.A05).A02(EnumC2912nJ.A0E).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2909nG
    public final void AC9(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C2905nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(EnumC2911nI.A05).A02(EnumC2912nJ.A0F).A06(AbstractC2919nQ.A0A(str, EnumC2916nN.A0V)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2909nG
    public final void ACA(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C2905nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(EnumC2911nI.A05).A02(EnumC2912nJ.A0K).A06(AbstractC2919nQ.A0A(str, EnumC2916nN.A0W)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2909nG
    public final void ACb(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C2905nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(EnumC2911nI.A05).A02(EnumC2912nJ.A0H).A06(AbstractC2919nQ.A0A(str, EnumC2916nN.A0X)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2909nG
    public final void ACd(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C2905nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(EnumC2911nI.A04).A02(EnumC2912nJ.A0J).A06(AbstractC2919nQ.A0A(str, EnumC2916nN.A0a)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2909nG
    public final void ACe(String str, Map<String, String> data, String str2, EnumC2911nI enumC2911nI) {
        A05(new C2905nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(enumC2911nI).A02(EnumC2912nJ.A00(str2)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2909nG
    public final void ACf(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        C2906nD adEvent = new C2905nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(EnumC2911nI.A04).A02(EnumC2912nJ.A0L).A07(this.A00);
        A05(adEvent);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2909nG
    public final void ACg(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        C2906nD adEvent = new C2905nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(EnumC2911nI.A04).A02(EnumC2912nJ.A0M).A07(this.A00);
        A05(adEvent);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2909nG
    public final void ACn(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C2905nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(EnumC2911nI.A05).A02(EnumC2912nJ.A0O).A06(AbstractC2919nQ.A0A(str, EnumC2916nN.A0w)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2909nG
    public final void ACo(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C2905nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(EnumC2911nI.A05).A02(EnumC2912nJ.A0P).A06(AbstractC2919nQ.A0A(str, EnumC2916nN.A0x)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2909nG
    public final void ACq(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C2905nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A01(EnumC2911nI.A04).A02(EnumC2912nJ.A0Q).A06(AbstractC2919nQ.A0A(str, EnumC2916nN.A0y)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2909nG
    public final void ACt(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C2905nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(EnumC2911nI.A04).A02(EnumC2912nJ.A0G).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2909nG
    public final void ACy(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C2905nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(EnumC2911nI.A05).A02(EnumC2912nJ.A0R).A06(AbstractC2919nQ.A0A(str, EnumC2916nN.A12)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2909nG
    public final void ACz(String str, Map<String, String> data) {
        A05(new C2905nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(EnumC2911nI.A05).A02(EnumC2912nJ.A0W).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2909nG
    public final void AD1(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C2905nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(EnumC2911nI.A05).A02(EnumC2912nJ.A0X).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2909nG
    public final void AIC(String str) {
        new C2127aT(this.A00).A0C(str);
    }
}
