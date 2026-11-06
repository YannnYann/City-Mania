package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import com.ironsource.adqualitysdk.sdk.IronSourceAdQuality;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᵞ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0697 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final Object f2828 = new Object();

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public volatile C0159 f2829;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f2827 = StringFog.decrypt("x3UzSgYdFhnEcmFNA0AXTcYgNR1TTkYZx3AzQVdIQUnBIzUdAU4XTsRyYU9TG0QVlHQzSQBJS07C\nIzUaAkAWTcElMxoGTkUUwSM5G1NARE7DJzgZU0FDTcd5NRkKSxEVxidkGgROFhnCIGZMBhsXSMFy\nZR1QQRFIkXI1GQAZSx/Odw==\n", "90EAeDJ4cyw=\n");

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static final C0697 f2826 = new C0697();

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1423(Context context, String str) {
        synchronized (this.f2828) {
            try {
                if (this.f2829 != null) {
                    return;
                }
                C0159 c0159 = new C0159(new C0706(IronSourceAdQuality.getSDKVersion(), AbstractC0611.m1371(str)));
                c0159.f1154.f3325.put(1, C0884.m1489(f2827));
                c0159.m1134(context);
                this.f2829 = c0159;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1422() {
        synchronized (this.f2828) {
            this.f2829 = null;
            C0617.f2607.m1379();
        }
    }
}
