package com.ironsource.adqualitysdk.sdk.i;

import android.os.Handler;
import android.os.Looper;
import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﻩ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0967 {

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    public static final String f3651 = StringFog.decrypt("+iGpg+fNhXrfKrSS8NCJadgqsg==\n", "s0/A96Si6Ao=\n");

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public boolean f3652;

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public int f3653;

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public boolean f3654;

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public int f3655;

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public long f3656;

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public volatile int f3657;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public volatile long f3658;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public boolean f3659;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public boolean f3660;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public boolean f3661;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public Handler f3662 = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final C0249 f3663;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0254 f3664;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0255 f3665;

    public C0967(C0255 c0255, C0254 c0254, C0249 c0249) {
        this.f3665 = c0255;
        this.f3664 = c0254;
        this.f3663 = c0249;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1580(boolean z) {
        boolean z2;
        if (this.f3660 || this.f3662 == null) {
            return;
        }
        C0204 c0204M1165 = C0204.m1165();
        synchronized (c0204M1165) {
            z2 = c0204M1165.f1362;
        }
        if (z2) {
            return;
        }
        this.f3660 = true;
        Handler handler = this.f3662;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        C0235 c0235 = this.f3665.f1572;
        c0235.getClass();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(StringFog.decrypt("H3Q5Ew==\n", "aQdXYEEig7E=\n"), c0235.m1196());
        } catch (Exception unused) {
        }
        AbstractC0272.m1214(new C0253(new RunnableC0976(this, jSONObject, z, this.f3656, this.f3655)));
    }
}
