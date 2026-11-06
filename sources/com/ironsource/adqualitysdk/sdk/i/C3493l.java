package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import com.unity3d.ads.UnityAds;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3493l extends AbstractC0208 {

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static final String f290 = StringFog.decrypt("BCaQy/BPNOkxK7PM7UI=\n", "RULFpZk7dYo=\n");

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f289 = StringFog.decrypt("QOqYDem8eSBatpEN77diIkrmkFCys3QnDeSRVvK7ZHpi4aBN9aZRN1fsg0roqw==\n", "I4X1I5zSEFQ=\n");

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f288 = StringFog.decrypt("PB4/kNwU78sbCA==\n", "fn9R/rlmuaI=\n");

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f287 = StringFog.decrypt("DHrqtbttSVoWJuO1vWZSWAZ24ujgYUFAAXD16OBBQUABcPXNp2ZX\n", "bxWHm84DIC4=\n");

    public C3493l(String str) {
        super(str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0208
    /* JADX INFO: renamed from: ﻛ */
    public final String mo1004() {
        String version = UnityAds.getVersion();
        if (version != null) {
            return version.split(StringFog.decrypt("Vg==\n", "e2zSKQe7FjE=\n"))[0];
        }
        return null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0208
    /* JADX INFO: renamed from: ﾇ */
    public final HashMap mo1005() {
        return new HashMap();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0044  */
    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0208
    /* JADX INFO: renamed from: ﾒ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Class mo1006(java.lang.String r6) {
        /*
            r5 = this;
            int r0 = r6.hashCode()
            r1 = 252148886(0xf077c96, float:6.680008E-30)
            r2 = 2
            r3 = 3
            r4 = 1
            if (r0 == r1) goto L3a
            r1 = 961844241(0x39549411, float:2.0273055E-4)
            if (r0 == r1) goto L30
            r1 = 1067215379(0x3f9c6a13, float:1.2219871)
            if (r0 == r1) goto L26
            r1 = 1531208100(0x5b4461a4, float:5.5276452E16)
            if (r0 == r1) goto L1c
            goto L44
        L1c:
            java.lang.String r0 = com.ironsource.adqualitysdk.sdk.i.C3493l.f289
            boolean r6 = r6.equals(r0)
            if (r6 == 0) goto L44
            r6 = r4
            goto L45
        L26:
            java.lang.String r0 = com.ironsource.adqualitysdk.sdk.i.C3493l.f287
            boolean r6 = r6.equals(r0)
            if (r6 == 0) goto L44
            r6 = r3
            goto L45
        L30:
            java.lang.String r0 = com.ironsource.adqualitysdk.sdk.i.C3493l.f288
            boolean r6 = r6.equals(r0)
            if (r6 == 0) goto L44
            r6 = r2
            goto L45
        L3a:
            java.lang.String r0 = com.ironsource.adqualitysdk.sdk.i.C3493l.f290
            boolean r6 = r6.equals(r0)
            if (r6 == 0) goto L44
            r6 = 0
            goto L45
        L44:
            r6 = -1
        L45:
            if (r6 == 0) goto L52
            if (r6 == r4) goto L52
            if (r6 == r2) goto L4f
            if (r6 == r3) goto L4f
            r6 = 0
            return r6
        L4f:
            java.lang.Class<com.unity3d.services.banners.BannerView> r6 = com.unity3d.services.banners.BannerView.class
            return r6
        L52:
            java.lang.Class<com.unity3d.services.ads.adunit.AdUnitActivity> r6 = com.unity3d.services.ads.adunit.AdUnitActivity.class
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.C3493l.mo1006(java.lang.String):java.lang.Class");
    }
}
