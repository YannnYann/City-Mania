package com.ironsource.adqualitysdk.sdk.i;

import com.google.android.gms.ads.MobileAds;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.У, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0221 extends AbstractC0248 {
    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0248
    /* JADX INFO: renamed from: ﻐ */
    public final String mo1008() {
        if (AbstractC0856.m1458(new C0227())) {
            return null;
        }
        return StringFog.decrypt("PuME4M0bkcYx6UevxBCMzjToR6nHB9DAOf9Hg8UWl804zQ29\n", "XYxpzqp0/qE=\n");
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0248
    /* JADX INFO: renamed from: ﻛ */
    public final Class mo1009() {
        if (AbstractC0856.m1458(new C0227())) {
            return null;
        }
        return MobileAds.class;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0248
    /* JADX INFO: renamed from: ｋ */
    public final String mo1011() {
        return StringFog.decrypt("hmNASMQ=\n", "5wctJ6axB3w=\n");
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0248
    /* JADX INFO: renamed from: ﾒ */
    public final AbstractC0208 mo1010() {
        try {
            if (Prode.class.getName().equals("com.ironsource.adqualitysdk.sdk.i.Prode")) {
                Class.forName(StringFog.decrypt("hwfiNvb4+AiIDaF5//PlAI0MoX/85LkOgBuhTvTl5AaLBsZ29/g=\n", "5GiPGJGXl28=\n"));
            }
            return new C0338(StringFog.decrypt("hmNASMQ=\n", "5wctJ6axB3w=\n"));
        } catch (Throwable unused) {
            return new C0302(StringFog.decrypt("hmNASMQ=\n", "5wctJ6axB3w=\n"));
        }
    }
}
