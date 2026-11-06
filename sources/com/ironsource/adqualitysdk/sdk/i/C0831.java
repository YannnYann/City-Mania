package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.concurrent.Executors;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.丨, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0831 implements InterfaceC0418 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0786 f3182;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0876 f3183;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC0387 f3184;

    public C0831(C0786 c0786, InterfaceC0387 interfaceC0387, C0876 c0876) {
        this.f3182 = c0786;
        this.f3184 = interfaceC0387;
        this.f3183 = c0876;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0418
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1268() {
        C0767 c0767 = this.f3182.f3123.f3122;
        synchronized (c0767) {
            c0767.f3096.remove(this);
        }
        C0785 c0785 = this.f3182.f3123;
        InterfaceC0387 interfaceC0387 = this.f3184;
        C0876 c0876 = this.f3183;
        if (c0785.f3121) {
            AbstractC0182.m1147(C0785.f3120, StringFog.decrypt("CKD8/y0ly/svvfj/JmvatHum/+wtIMuJPr7k/zE/jqwzqv+6DC7arDS9+tcjJc+8Pr2x7SM4jqgz\nuuX+LTzA\n", "W8+RmkJLrts=\n"));
            return;
        }
        C0786 c0786 = new C0786(c0785, interfaceC0387, c0876);
        String str = AbstractC0061.f813;
        try {
            Executors.newSingleThreadExecutor().execute(c0786);
        } catch (Throwable th) {
            AbstractC1003.m1592(AbstractC0061.f813, StringFog.decrypt("dXSgyWUV9GhVZafSflv2MFF1q8h0FeVxQ20=\n", "MAbSphc1kRA=\n"), th, false);
        }
    }
}
