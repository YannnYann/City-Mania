package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.text.TextUtils;
import com.facebook.ads.AdError;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.RewardData;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.fl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2453fl {
    public static byte[] A05;
    public static String[] A06 = {"jJreqFAWfQsm2UlBXjWleQZy51A8w9r3", "B5vxrqY9e1pfFDILbPSJEQZe5Zep9JAF", "7hwRhDIA2xM98ucsNVPICP0872", "8yYdfjKxcW1uK5E8nS4F9bT", "cwoTvwLLOWGZrFwonmn2qn9xu", "wuc4L", "VoE60CbUCih", "1JGxuEjawtyxaKItdz1AQ1lnM"};
    public C2771kz A00;
    public EnumC3307tm A01 = EnumC3307tm.A06;
    public ArrayList<C1930Tb> A02 = new ArrayList<>();
    public final AbstractC2419fD A03;
    public final InterfaceC2452fk A04;

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 96);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A06() {
        A05 = new byte[]{-97, -39, -27, -34, -35, -81, -44, -38, -53, -40, -44, -57, -46, -122, -85, -40, -40, -43, -40, -122, -104, -106, -106, -100, -122, -35, -49, -38, -50, -43, -37, -38, -122, -57, -122, -36, -57, -46, -49, -54, -122, -89, -54, -81, -44, -52, -43, -108, 31, 34, 29, 34, 31, 50, 31, 29, 32, 51, 44, 34, 42, 35, -45, -30, -37, -59, -54, -61, -53, -48, -63, -46, -61, -44, -61, -49, -43, -42, -37, -44, -36, -31, -40, -41, -76, -41, -73, -44, -25, -44, -75, -24, -31, -41, -33, -40, -38, -33, -27, -42, -29, -28, -27, -38, -27, -38, -46, -35, 15, 8, 3, 11, 15, -1, -29, -2};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final void A0J(C1643Hi c1643Hi, EnumSet<CacheFlag> enumSet) {
        if (A0E() == EnumC2980oR.A05) {
            C1733Kz c1733Kz = (C1733Kz) this.A03;
            LA laA2y = c1733Kz.A2y();
            if (A0C(c1643Hi, laA2y) || laA2y == null) {
                return;
            }
            this.A04.AIm();
            A0A(c1643Hi, enumSet, c1733Kz, laA2y, 0, this.A04);
            return;
        }
        if (A0C(c1643Hi, (LA) this.A03)) {
            return;
        }
        this.A04.AIm();
        if (A0E() == EnumC2980oR.A0D) {
            A08(c1643Hi, (C14017i) this.A03);
        } else {
            A09(c1643Hi, enumSet, (C14017i) this.A03, -1, this.A04);
        }
    }

    static {
        A06();
    }

    public C2453fl(C1643Hi c1643Hi, C2467fz c2467fz, InterfaceC2452fk interfaceC2452fk, String str) {
        JSONObject dataObject = c2467fz.A03();
        this.A03 = A01(c1643Hi, c2467fz, str, dataObject);
        this.A04 = interfaceC2452fk;
    }

    private AdError A00(C1643Hi c1643Hi, LA la) {
        if (la == null || la.A39().isEmpty()) {
            c1643Hi.A08().ABz(A04(62, 3, 18), AbstractC2811lf.A0Z, new C2812lg(A04(5, 43, 6)));
            return AdError.internalError(2006);
        }
        return null;
    }

    public static AbstractC2419fD A01(C1643Hi c1643Hi, C2467fz c2467fz, String str, JSONObject jSONObject) {
        AbstractC2419fD abstractC2419fDA00 = null;
        if (jSONObject.has(A04(65, 12, 2))) {
            try {
                abstractC2419fDA00 = C1733Kz.A01(jSONObject, c1643Hi, true);
                abstractC2419fDA00.A27(true);
                abstractC2419fDA00.A23(A04(96, 12, 17));
            } catch (JSONException unused) {
            }
        }
        if (abstractC2419fDA00 == null) {
            abstractC2419fDA00 = C14017i.A00(jSONObject, c1643Hi);
        }
        abstractC2419fDA00.A22(str);
        C2831lz c2831lzA01 = c2467fz.A01();
        if (c2831lzA01 != null) {
            abstractC2419fDA00.A1y(c2831lzA01.A06());
        }
        return abstractC2419fDA00;
    }

    private C2771kz A03(C1643Hi c1643Hi) {
        return this.A00 != null ? this.A00 : new C2771kz(c1643Hi);
    }

    private void A08(C1643Hi c1643Hi, C14017i c14017i) {
        C2443fb playableData = c14017i.A32().A0I().A07();
        A0B(playableData != null ? playableData.A0I() : EnumC3307tm.A06);
        KY ky = new KY(this);
        C2771kz c2771kz = new C2771kz(c1643Hi);
        boolean z = C2888mv.A2H(c1643Hi) && C2736kP.A0A(c14017i.A1x());
        if (z) {
            C2736kP unifiedAssetsLoader = new C2736kP(c2771kz, c14017i.A1x(), c14017i.A1c(), c14017i.A1r(), z, new KX(this));
            c2771kz.A0e(new C2917nO(c14017i.A37(), c1643Hi.A0A()));
            unifiedAssetsLoader.A0B();
            return;
        }
        AbstractC2464fw.A02(c1643Hi, c14017i, true, ky);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0096  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A09(com.facebook.ads.redexgen.X.C1643Hi r27, java.util.EnumSet<com.facebook.ads.CacheFlag> r28, com.facebook.ads.redexgen.X.LA r29, int r30, com.facebook.ads.redexgen.X.InterfaceC2452fk r31) {
        /*
            Method dump skipped, instruction units count: 673
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2453fl.A09(com.facebook.ads.redexgen.X.Hi, java.util.EnumSet, com.facebook.ads.redexgen.X.LA, int, com.facebook.ads.redexgen.X.fk):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0A(C1643Hi c1643Hi, EnumSet<CacheFlag> enumSet, C1733Kz c1733Kz, LA la, int i, InterfaceC2452fk interfaceC2452fk) {
        A09(c1643Hi, enumSet, la, i, new C1728Ks(this, c1643Hi, la, c1733Kz, i, interfaceC2452fk, enumSet));
    }

    private void A0B(EnumC3307tm enumC3307tm) {
        this.A01 = enumC3307tm;
    }

    private boolean A0C(C1643Hi c1643Hi, LA la) {
        AdError adErrorA00 = A00(c1643Hi, la);
        if (adErrorA00 != null) {
            InterfaceC2452fk interfaceC2452fk = this.A04;
            String[] strArr = A06;
            if (strArr[1].charAt(24) != strArr[0].charAt(24)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A06;
            strArr2[1] = "Dm6wm58uJ8qXwjtNx8Vtzbsb5Jkw9mit";
            strArr2[0] = "fLwuuFNg4tiwPdo6hP9t6x3v5l5Hcavg";
            interfaceC2452fk.ADk(adErrorA00);
            return true;
        }
        return false;
    }

    public final AbstractC2419fD A0D() {
        return this.A03;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00a8, code lost:
    
        if (r3 != false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b4, code lost:
    
        if (r3 != false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00b9, code lost:
    
        return com.facebook.ads.redexgen.X.EnumC2980oR.A0D;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.facebook.ads.redexgen.X.EnumC2980oR A0E() {
        /*
            Method dump skipped, instruction units count: 204
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2453fl.A0E():com.facebook.ads.redexgen.X.oR");
    }

    public final EnumC3307tm A0F() {
        return this.A01;
    }

    public final String A0G() {
        if (this.A03.A2L()) {
            return ((C1733Kz) this.A03).A32();
        }
        return ((LA) this.A03).A37();
    }

    public final void A0H() {
        this.A04.ALr();
    }

    public final void A0I(Intent intent, RewardData rewardData, String str) {
        String stringExtra;
        String stringExtra2;
        this.A03.A20(rewardData);
        this.A03.A24(str);
        EnumC2980oR enumC2980oRA0E = A0E();
        EnumC2980oR enumC2980oR = EnumC2980oR.A0B;
        String strA04 = A04(108, 8, 58);
        if (enumC2980oRA0E == enumC2980oR && this.A03.A2k() && (stringExtra2 = intent.getStringExtra(strA04)) != null) {
            AbstractC2696jl.A02(stringExtra2, (LA) this.A03);
            return;
        }
        if (A0D().A2L()) {
            if (this.A03.A2l() && (stringExtra = intent.getStringExtra(strA04)) != null) {
                AbstractC2697jm.A02(stringExtra, (C1733Kz) this.A03);
                return;
            }
            intent.putExtra(A04(77, 19, 19), this.A03);
        }
        intent.putExtra(A04(48, 14, 94), this.A03);
    }

    public final boolean A0K() {
        return this.A03.A2B();
    }

    public final boolean A0L(LA la) {
        return !TextUtils.isEmpty(la.A32().A0I().A09());
    }
}
