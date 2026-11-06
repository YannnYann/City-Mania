package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONException;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﺣ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0943 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0931 f3573;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0732 f3574;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C1000 f3575;

    public C0943(C0931 c0931, C1000 c1000, C0732 c0732) {
        this.f3573 = c0931;
        this.f3575 = c1000;
        this.f3574 = c0732;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        int iM1206;
        try {
            C0931 c0931 = this.f3573;
            C0773 c0773 = c0931.f3524;
            String str = c0931.f3525 + StringFog.decrypt("aA==\n", "QmgdKOIIkTc=\n");
            C0321 c0321 = c0773.f3106;
            c0321.getClass();
            try {
                iM1206 = c0321.f1886.m1206(str);
            } catch (Throwable unused) {
                iM1206 = 0;
            }
            this.f3573.getClass();
            if (iM1206 <= 10000) {
                C0931 c09312 = this.f3573;
                C1000 c1000 = this.f3575;
                c09312.getClass();
                String str2 = c09312.f3525 + c1000.f3801;
                if (TextUtils.isEmpty(str2)) {
                    AbstractC0182.m1156(C0931.m1547(this.f3573), StringFog.decrypt("QimakMCruzRzKZ6d\n", "AUj5+KX4z1s=\n"), StringFog.decrypt("SfD2dM7srC1/+fsmzsa+Yzrsv2CL8f9+afftZong/2Z44b9hgff/Yn/y+mSa\n", "HZifB+6F3w0=\n"), null, null, true);
                    C0732 c0732 = this.f3574;
                    if (c0732 != null) {
                        AbstractC0272.m1211(c0732);
                        return;
                    }
                    return;
                }
                try {
                    String string = this.f3575.m1589().toString();
                    AbstractC0182.m1155(C0931.m1547(this.f3573), StringFog.decrypt("RZwgQ3lYoo90nCRO\n", "Bv1DKxwL1uA=\n"), StringFog.decrypt("ABHDPRccSz4sEsowHQYW\n", "Q3CgVX5yLB4=\n"), string, true);
                    this.f3573.f3524.m1449(str2, string);
                } catch (JSONException unused2) {
                    C0732 c07322 = this.f3574;
                    if (c07322 != null) {
                        AbstractC0272.m1211(c07322);
                        return;
                    }
                    return;
                }
            }
        } finally {
            C0732 c07323 = this.f3574;
            if (c07323 != null) {
                AbstractC0272.m1211(c07323);
            }
        }
    }
}
