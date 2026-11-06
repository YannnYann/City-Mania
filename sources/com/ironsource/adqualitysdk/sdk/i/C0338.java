package com.ironsource.adqualitysdk.sdk.i;

import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.VersionInfo;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ڑ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0338 extends C0302 {

    /* JADX INFO: renamed from: ﺟ, reason: contains not printable characters */
    public static final String f1930 = StringFog.decrypt("OCTd7CRJ3CYAJ8A=\n", "bkGvn00msm8=\n");

    public C0338(String str) {
        super(str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.C0302, com.ironsource.adqualitysdk.sdk.i.AbstractC0208
    /* JADX INFO: renamed from: ﻛ */
    public final String mo1004() {
        return MobileAds.getVersion().toString();
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.C0302, com.ironsource.adqualitysdk.sdk.i.AbstractC0208
    /* JADX INFO: renamed from: ﾒ */
    public final Class mo1006(String str) {
        return (str.hashCode() == -1938329210 && str.equals(f1930)) ? VersionInfo.class : super.mo1006(str);
    }
}
