package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ｃ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class RunnableC0976 implements Runnable {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C0967 f3685;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ int f3686;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ long f3687;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ boolean f3688;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f3689;

    public RunnableC0976(C0967 c0967, JSONObject jSONObject, boolean z, long j, int i) {
        this.f3685 = c0967;
        this.f3689 = jSONObject;
        this.f3688 = z;
        this.f3687 = j;
        this.f3686 = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        C0967 c0967 = this.f3685;
        JSONObject jSONObject = this.f3689;
        boolean z2 = this.f3688;
        long j = this.f3687;
        int i = this.f3686;
        c0967.getClass();
        C0204 c0204M1165 = C0204.m1165();
        synchronized (c0204M1165) {
            z = c0204M1165.f1362;
        }
        if (z) {
            return;
        }
        try {
            if (c0967.f3658 > 0 && j > 0) {
                jSONObject.put(StringFog.decrypt("cA4A\n", "GWp0apF4qng=\n"), j - c0967.f3658);
            }
            if (c0967.f3657 > 0 && i > 0) {
                jSONObject.put(StringFog.decrypt("EJg6Zg==\n", "efVXAmImMxc=\n"), i - c0967.f3657);
            }
            jSONObject.put(StringFog.decrypt("UCR1VbU=\n", "NksHNtDdS/Q=\n"), z2);
        } catch (Exception e) {
            String str = C0967.f3651;
            AbstractC0182.m1156(str, str, StringFog.decrypt("KQ/IA4CE5H8FEd4FnMOmfhwi0wKb0NlpAxDKAJfQ4yocHMMAncXi\n", "bH26bPKkhgo=\n"), e, null, false);
        }
        c0967.f3664.f1571.f1538.f2176.f1971.f1353.m1403(StringFog.decrypt("c4Ho6BXptvBkntrxF+W2yg==\n", "B/G3gXuAwq8=\n"), jSONObject);
    }
}
