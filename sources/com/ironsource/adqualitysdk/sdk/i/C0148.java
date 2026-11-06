package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ʹ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0148 implements InterfaceC0074 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C1032 f1108;

    public C0148(C1032 c1032) {
        this.f1108 = c1032;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0074
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1077() {
        JSONObject jSONObject;
        C0601 c0601 = ((C0893) AbstractC0885.m1491()).f3419;
        synchronized (c0601) {
            jSONObject = c0601.f2612;
        }
        long jOptLong = jSONObject.optLong(C0601.f2564, 0L);
        if (jOptLong == 0) {
            this.f1108.f3911 = Boolean.FALSE;
            jOptLong = c0601.m1363();
            AbstractC1003.m1592(StringFog.decrypt("PUHP+wVR8/gZe9vwFU3g+gdB2PsE\n", "aSiinnYlkpU=\n"), StringFog.decrypt("wXp+UL1J9oykb2lLuwDxhaR7aU25DO3C8GFhWrwd/o/0\n", "hAgMP89pn+I=\n"), (Throwable) null, false);
        } else {
            this.f1108.f3911 = Boolean.TRUE;
        }
        this.f1108.f3910 = c0601.m1362();
        this.f1108.f3909 = c0601.m1363();
        C1032 c1032 = this.f1108;
        c1032.f3908 = jOptLong - c1032.f3910;
        c1032.f3907 = jOptLong - c1032.f3909;
    }
}
