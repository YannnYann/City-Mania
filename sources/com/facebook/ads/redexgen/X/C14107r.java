package com.facebook.ads.redexgen.X;

import android.content.res.Resources;
import android.net.Uri;
import android.util.Log;
import android.widget.LinearLayout;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.facebook.ads.internal.settings.AdInternalSettings;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Map;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.7r, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C14107r<NativeViewabilityLogger> implements MA {
    public static byte[] A0I;
    public static String[] A0J = {"1VlIdrj3fRAASVh0IRQbA", "AKXoeI10d8PJONEXEmQHjWIEkAB2E", "HfXt1ktTFXNYFvURT1ePpe", "VNbNAjzqH3UXN3t9RrTP5z6I5Qa6gPQJ", "DeawL9PzUIlDumNdtXISYTaSpfy6P3Cj", "KNbO6MhxkLbBAZAqlm1H7U8Ouut8mEhI", "i536pd2CEb7n0lc", "TelURl5RBqiFivFSJRRvco6RCKborqoX"};
    public static final String A0K;
    public InterfaceC2401ev A00;
    public C2402ew A01;
    public LN A02;
    public C14027j A03;
    public C7D A04;
    public InterfaceC2909nG A05;
    public EnumC2949nw A06;
    public InterfaceC3295ta A07;
    public C1579Ev A08;
    public C6T A09;
    public AbstractC2225c3 A0A;
    public C2224c2 A0B;
    public String A0C;
    public final String A0H = UUID.randomUUID().toString();
    public boolean A0D = false;
    public boolean A0E = false;
    public boolean A0F = false;
    public final C3102qT A0G = new C3102qT();

    public static String A08(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0I, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 19);
            if (A0J[2].length() == 29) {
                throw new RuntimeException();
            }
            String[] strArr = A0J;
            strArr[3] = "viF0h1063r6cbXDqGfnWrC6qPBVBGzAv";
            strArr[7] = "3ywSXssJKLxMazlfVUMLvW6ymO505mlb";
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0B() {
        A0I = new byte[]{-28, -16, -18, -81, -25, -30, -28, -26, -29, -16, -16, -20, -81, -30, -27, -12, -81, -29, -30, -17, -17, -26, -13, -81, -28, -19, -22, -28, -20, -26, -27, -24, -39, -20, -24, -93, -36, -24, -31, -32, -68, -69, -83, 116, 127};
    }

    static {
        A0B();
        A0K = C14107r.class.getSimpleName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.7r != com.facebook.ads.internal.adapters.FacebookBannerAdapter<NativeViewabilityLogger> */
    public void A0A() {
        if (this.A00 != null && this.A09 != null && this.A03 != null && this.A03.A2Q()) {
            this.A00.AE9(this, this.A09);
        }
        if (this.A00 != null && this.A0D) {
            boolean z = this.A0E;
            if (A0J[2].length() == 29) {
                throw new RuntimeException();
            }
            A0J[2] = "DQYu3GBVfiN4Ml";
            if (z || !this.A0F) {
                this.A00.AE9(this, this.A08);
            }
        }
        this.A04.A0F().A4p(this.A00 != null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.7r != com.facebook.ads.internal.adapters.FacebookBannerAdapter<NativeViewabilityLogger> */
    public void A0C(int i, C2831lz c2831lz) {
        M0 m0 = new M0(this);
        this.A09 = new C6T(this.A04, this.A05, m0, this.A03, A08(0, 31, 110), 2, this.A0G);
        this.A0A = new C1758Lz(this);
        this.A0B = new C2224c2(this.A09, c2831lz.A04(), c2831lz.A09(), true, new WeakReference(this.A0A), this.A04);
        if (this.A03 != null) {
            this.A0B.A0W(this.A03.A1J());
            this.A0B.A0X(this.A03.A1K());
        }
        this.A09.setVisibility(0);
        this.A04.getResources();
        this.A09.setLayoutParams(new LinearLayout.LayoutParams(-1, i));
        this.A09.ALW();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.7r != com.facebook.ads.internal.adapters.FacebookBannerAdapter<NativeViewabilityLogger> */
    private void A0F(C2831lz c2831lz, JSONObject jSONObject, EnumC2949nw enumC2949nw) {
        this.A0E = false;
        final LP lpA00 = LP.A00(this.A04, jSONObject);
        this.A0C = lpA00.A7z();
        if (AbstractC2390ej.A06(this.A04, lpA00, this.A05)) {
            this.A04.A0F().A5b();
            this.A00.AFQ(this, C2947nt.A00(AdErrorType.NO_FILL));
            return;
        }
        this.A07 = new AbstractC1582Ey() { // from class: com.facebook.ads.redexgen.X.7s
            public static byte[] A02;
            public static String[] A03 = {"RkD1OJxt7Cm", "85G", "rOg3VWXB3SEY3xQpEJ0sm9sa", "k8A4i4hEDbRwTbJ7ZqirbVmRMdyhqYao", "w8o7PtZgo3USKQqv4zP9Jz4sqmraE2my", "KkDuTncCOt8", "W5AvxWS2W", "p0drNpcb1k1QxXuNf36gE6"};

            public static String A00(int i, int i2, int i3) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
                for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 74);
                }
                return new String(bArrCopyOfRange);
            }

            public static void A01() {
                A02 = new byte[]{-113, -68, -68, -71, -68, 106, -81, -62, -81, -83, -65, -66, -77, -72, -79, 106, -85, -83, -66, -77, -71, -72, -2, 14, 11, 19, 15, 1, 14, -5, 16, 21, 12, 1, -28, -30, -19, -19, -26, -13, -43, -6, -15, -26, 14, 14, 31, 10, 31, 36, 27, 16, 12, 8, 7, 10, -60, -67, -72, -64, -60, -76, -104, -77};
            }

            static {
                A01();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC3295ta
            public final void ADv() {
                this.A00.A0E = true;
                if (this.A00.A0F) {
                    this.A00.A0A();
                }
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC1582Ey, com.facebook.ads.redexgen.X.InterfaceC3295ta
            public final void AEN(String str, Map<String, String> map) {
                String strA1V;
                this.A00.A04.A0F().A4q();
                Uri uriA00 = AbstractC3036pP.A00(str);
                map.put(A00(34, 10, 55), AdPlacementType.BANNER.name());
                map.put(A00(56, 8, 5), this.A00.A0H);
                if (this.A00.A03 == null) {
                    strA1V = null;
                } else {
                    C14107r c14107r = this.A00;
                    String[] strArr = A03;
                    if (strArr[0].length() != strArr[5].length()) {
                        throw new RuntimeException();
                    }
                    String[] strArr2 = A03;
                    strArr2[1] = "yKt";
                    strArr2[2] = "O3cmN93hsB9jwoMarcV7SE5e";
                    strA1V = c14107r.A03.A1V();
                }
                if (strA1V != null) {
                    map.put(A00(22, 12, 82), strA1V);
                }
                String strA1W = this.A00.A03 == null ? null : this.A00.A03.A1W();
                if (strA1W != null) {
                    map.put(A00(44, 8, 97), strA1W);
                }
                AbstractC2386ef adAction = C2387eg.A00(this.A00.A04, this.A00.A05, lpA00.A7z(), uriA00, map, this.A00.A03 == null ? null : this.A00.A03.A33());
                EnumC2383ec enumC2383ecA0G = EnumC2383ec.A08;
                if (adAction != null) {
                    try {
                        this.A00.A04.A0F().A4n();
                        enumC2383ecA0G = adAction.A0G(null);
                    } catch (Exception e) {
                        Log.e(C14107r.A0K, A00(0, 22, 0), e);
                    }
                }
                if (A00(52, 4, 92).equals(uriA00.getScheme()) && C2387eg.A04(uriA00.getAuthority()) && this.A00.A00 != null && enumC2383ecA0G != EnumC2383ec.A05) {
                    this.A00.A00.AE8(this.A00);
                }
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC3295ta
            public final void AFD() {
                this.A00.A04.A0F().A4r(this.A00.A02 != null);
                if (this.A00.A02 != null) {
                    this.A00.A02.A09();
                }
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC3295ta
            public final void AGD() {
                this.A00.A04.A0F().A4t();
                this.A00.A02.A0B();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC3295ta
            public final void AHt() {
            }
        };
        this.A08 = new C1579Ev(this.A04, (WeakReference<InterfaceC3295ta>) new WeakReference(this.A07), c2831lz.A04(), A7z());
        this.A08.A0L(c2831lz.A07(), c2831lz.A08());
        AbstractC2396eq impressionHelper = new C1751Lr(this);
        this.A02 = new LN(this.A04, this.A05, this.A08, this.A08.getViewabilityChecker(), impressionHelper, enumC2949nw);
        this.A02.A0C(lpA00);
        this.A08.loadDataWithBaseURL(AbstractC3298td.A01(AdInternalSettings.getUrlPrefix()), lpA00.A04(), A08(31, 9, 97), A08(40, 5, 52), null);
        this.A0D = true;
        A0A();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.7r != com.facebook.ads.internal.adapters.FacebookBannerAdapter<NativeViewabilityLogger> */
    private void A0G(EnumC2949nw enumC2949nw, C2831lz c2831lz) {
        if (this.A03 == null || this.A05 == null) {
            return;
        }
        int iA03 = (int) (enumC2949nw.A03() * Resources.getSystem().getDisplayMetrics().density);
        int bannerHeight = (C2888mv.A2H(this.A04) && C2736kP.A0A(this.A03.A1x())) ? 1 : 0;
        if (bannerHeight == 0) {
            A0C(iA03, c2831lz);
        } else {
            new C2736kP(new C2771kz(this.A04), this.A03.A1x(), this.A03.A1c(), this.A03.A1r(), true, new M9(this, iA03, c2831lz, this)).A0B();
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.7r != com.facebook.ads.internal.adapters.FacebookBannerAdapter<NativeViewabilityLogger> */
    @Override // com.facebook.ads.redexgen.X.InterfaceC2393en
    public final String A7z() {
        return this.A0C;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.7r != com.facebook.ads.internal.adapters.FacebookBannerAdapter<NativeViewabilityLogger> */
    @Override // com.facebook.ads.redexgen.X.InterfaceC2393en
    public final AdPlacementType A9N() {
        if (C2888mv.A19(this.A04) && this.A06 != null && this.A06 == EnumC2949nw.A08) {
            return AdPlacementType.MEDIUM_RECTANGLE;
        }
        return AdPlacementType.BANNER;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.7r != com.facebook.ads.internal.adapters.FacebookBannerAdapter<NativeViewabilityLogger> */
    @Override // com.facebook.ads.redexgen.X.MA
    public final void ABb(C7D c7d, InterfaceC2909nG interfaceC2909nG, EnumC2949nw enumC2949nw, InterfaceC2401ev interfaceC2401ev, JSONObject jSONObject, C2831lz c2831lz) {
        c7d.A0F().A4o();
        this.A04 = c7d;
        this.A05 = interfaceC2909nG;
        this.A00 = interfaceC2401ev;
        this.A06 = enumC2949nw;
        this.A0F = C2888mv.A1o(this.A04.getApplicationContext());
        this.A03 = C14027j.A00(jSONObject, this.A04);
        if (this.A03.A2Q()) {
            A0G(enumC2949nw, c2831lz);
        } else {
            A0F(c2831lz, jSONObject, enumC2949nw);
        }
        this.A01 = new C2402ew(this.A04, this.A0H, this, interfaceC2401ev);
        this.A01.A02();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.7r != com.facebook.ads.internal.adapters.FacebookBannerAdapter<NativeViewabilityLogger> */
    @Override // com.facebook.ads.redexgen.X.InterfaceC2393en
    public final boolean ALe() {
        return true;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.7r != com.facebook.ads.internal.adapters.FacebookBannerAdapter<NativeViewabilityLogger> */
    @Override // com.facebook.ads.redexgen.X.InterfaceC2393en
    public final void onDestroy() {
        this.A04.A0F().A4m(this.A08 != null);
        if (this.A08 != null) {
            this.A08.destroy();
            this.A08 = null;
            this.A07 = null;
        }
        if (this.A01 != null) {
            this.A01.A03();
        }
    }
}
