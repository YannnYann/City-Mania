package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.api.BuildConfigApi;
import com.facebook.ads.internal.bridge.fbsdk.FBLoginASID;
import com.facebook.ads.internal.bridge.gms.AdvertisingId;
import com.facebook.ads.internal.settings.AdInternalSettings;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class HJ implements InterfaceC2785lF {
    public static byte[] A01;
    public static String[] A02 = {"5s7Vvh0NyBhQSPw27iRWGG1DtqQsP1Sv", "FrTyZebbkrmGpsa0d1dFSR1fbKrcWzi5", "vbBgTS8gp4295EX74czAq4g", "ai", "WolquZ0AL0Qdfn", "cakCtq0fnE5al5DYRrCiV1B2lu7xESbR", "HXQXhYUpdji2Kg3a54R03lC9IEJsCvaM", "NPxj8bqKiKcB9Z0ZqCVSMRQGt9eaxHA1"};
    public final C2780lA A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 16);
            String[] strArr = A02;
            if (strArr[2].length() == strArr[4].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[0] = "3cPMFplOUK5Ssg4O5bRCUJRCJG4m75Bq";
            strArr2[6] = "bSCrfJrMY4RCrVdm5HRU5l61ngvuX2qf";
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-81, -36, -46, -32, -35, -41, -46};
    }

    static {
        A01();
    }

    public HJ(C2780lA c2780lA) {
        this.A00 = c2780lA;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2785lF
    public final String A7j() {
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2785lF
    public final String A8h() {
        return AbstractC2978oP.A02(this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2785lF
    public final String A8i() {
        return FBLoginASID.getFBLoginASID();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2785lF
    public final String A98() {
        return AdInternalSettings.getMediationService();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2785lF
    public final String A9F() {
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2785lF
    public final InterfaceC2784lE A9a() {
        AdvertisingId advertisingIdInfoDirectly = AdvertisingId.getAdvertisingIdInfoDirectly(this.A00);
        if (advertisingIdInfoDirectly == null) {
            return null;
        }
        return new HK(this, advertisingIdInfoDirectly);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2785lF
    public final String AA3() {
        return AdInternalSettings.getUrlPrefix();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2785lF
    public final String AA5() {
        return A00(0, 7, 94);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2785lF
    public final String AA6() {
        return BuildConfigApi.getVersionName(this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2785lF
    public final boolean AB6() {
        return BuildConfigApi.isDebug();
    }
}
