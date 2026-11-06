package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import com.ogury.sdk.Ogury;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ױ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0304 extends AbstractC0208 {

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static final String f1819 = StringFog.decrypt("QUJZ2pBzkiNBU0Tnl2abEFZrROCKYpk0QA==\n", "Mictk/4H91E=\n");

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f1818 = StringFog.decrypt("R78pd4DqEqFQvzlkgdEaoEC/M0CX\n", "NNpdJeWdc9M=\n");

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f1817 = StringFog.decrypt("7rmHdx47SI/0+Is9XzVTieikmS0YKFSc4fifMF8VU4nopJktGChUnOGXiS0YKlSJ9A==\n", "jdbqWXFcPf0=\n");

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f1816 = StringFog.decrypt("MGGahNY00eoNZo+N5STR6g9mmpg=\n", "eQ/u4aRHpYM=\n");

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f1815 = StringFog.decrypt("5envWnM=\n", "qo6aKAoebWs=\n");

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static final String f1814 = StringFog.decrypt("JgNQBs+LyOQMFlYA37bP8QUlQQ==\n", "aWQldLbCppA=\n");

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public static final String f1813 = StringFog.decrypt("C+U9G9IgtA8h8Dsdwh2zGijDLCXCGq4eKuc6\n", "RIJIaatp2ns=\n");

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public static final String f1812 = StringFog.decrypt("GPsZyLg+oMs27gjfpS2h\n", "V5xsusFsxbw=\n");

    /* JADX INFO: renamed from: リ, reason: contains not printable characters */
    public static final String f1811 = StringFog.decrypt("KsboMwQjGCQE0/kkGTAZHwzS6SQTFA8=\n", "ZaGdQX1xfVM=\n");

    /* JADX INFO: renamed from: ト, reason: contains not printable characters */
    public static final String f1810 = StringFog.decrypt("gO74RC4BhhGu++k=\n", "z4mNNldT42Y=\n");

    public C0304(String str) {
        super(str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0208
    /* JADX INFO: renamed from: ﻛ */
    public final String mo1004() {
        try {
            return Ogury.getSdkVersion();
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0208
    /* JADX INFO: renamed from: ﾇ */
    public final HashMap mo1005() {
        HashMap map = new HashMap();
        map.put(f1819, new C0334(this));
        map.put(f1818, new C0333(this));
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0058  */
    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0208
    /* JADX INFO: renamed from: ﾒ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Class mo1006(java.lang.String r2) {
        /*
            r1 = this;
            int r0 = r2.hashCode()
            switch(r0) {
                case -1704786309: goto L4e;
                case -734879533: goto L44;
                case 76142724: goto L3a;
                case 82913255: goto L30;
                case 186993737: goto L26;
                case 1169123445: goto L1c;
                case 1789379091: goto L12;
                case 1866202823: goto L8;
                default: goto L7;
            }
        L7:
            goto L58
        L8:
            java.lang.String r0 = com.ironsource.adqualitysdk.sdk.i.C0304.f1817
            boolean r2 = r2.equals(r0)
            if (r2 == 0) goto L58
            r2 = 0
            goto L59
        L12:
            java.lang.String r0 = com.ironsource.adqualitysdk.sdk.i.C0304.f1814
            boolean r2 = r2.equals(r0)
            if (r2 == 0) goto L58
            r2 = 3
            goto L59
        L1c:
            java.lang.String r0 = com.ironsource.adqualitysdk.sdk.i.C0304.f1812
            boolean r2 = r2.equals(r0)
            if (r2 == 0) goto L58
            r2 = 5
            goto L59
        L26:
            java.lang.String r0 = com.ironsource.adqualitysdk.sdk.i.C0304.f1811
            boolean r2 = r2.equals(r0)
            if (r2 == 0) goto L58
            r2 = 6
            goto L59
        L30:
            java.lang.String r0 = com.ironsource.adqualitysdk.sdk.i.C0304.f1813
            boolean r2 = r2.equals(r0)
            if (r2 == 0) goto L58
            r2 = 4
            goto L59
        L3a:
            java.lang.String r0 = com.ironsource.adqualitysdk.sdk.i.C0304.f1815
            boolean r2 = r2.equals(r0)
            if (r2 == 0) goto L58
            r2 = 2
            goto L59
        L44:
            java.lang.String r0 = com.ironsource.adqualitysdk.sdk.i.C0304.f1810
            boolean r2 = r2.equals(r0)
            if (r2 == 0) goto L58
            r2 = 7
            goto L59
        L4e:
            java.lang.String r0 = com.ironsource.adqualitysdk.sdk.i.C0304.f1816
            boolean r2 = r2.equals(r0)
            if (r2 == 0) goto L58
            r2 = 1
            goto L59
        L58:
            r2 = -1
        L59:
            switch(r2) {
                case 0: goto L70;
                case 1: goto L70;
                case 2: goto L6d;
                case 3: goto L6a;
                case 4: goto L67;
                case 5: goto L64;
                case 6: goto L61;
                case 7: goto L5e;
                default: goto L5c;
            }
        L5c:
            r2 = 0
            return r2
        L5e:
            java.lang.Class<com.ogury.ad.OguryReward> r2 = com.ogury.ad.OguryReward.class
            return r2
        L61:
            java.lang.Class<com.ogury.ad.OguryRewardedAdListener> r2 = com.ogury.ad.OguryRewardedAdListener.class
            return r2
        L64:
            java.lang.Class<com.ogury.ad.OguryRewardedAd> r2 = com.ogury.ad.OguryRewardedAd.class
            return r2
        L67:
            java.lang.Class<com.ogury.ad.OguryInterstitialAdListener> r2 = com.ogury.ad.OguryInterstitialAdListener.class
            return r2
        L6a:
            java.lang.Class<com.ogury.ad.OguryInterstitialAd> r2 = com.ogury.ad.OguryInterstitialAd.class
            return r2
        L6d:
            java.lang.Class<com.ogury.sdk.Ogury> r2 = com.ogury.sdk.Ogury.class
            return r2
        L70:
            java.lang.Class<com.ogury.ad.interstitial.ui.InterstitialActivity> r2 = com.ogury.ad.interstitial.ui.InterstitialActivity.class
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.C0304.mo1006(java.lang.String):java.lang.Class");
    }
}
