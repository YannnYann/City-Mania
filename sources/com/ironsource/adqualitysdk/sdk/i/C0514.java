package com.ironsource.adqualitysdk.sdk.i;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒹ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0514 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final InterfaceC0449 f2345;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public boolean f2346 = false;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final Handler f2344 = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public C0570 f2343 = new C0570(this);

    public C0514(InterfaceC0449 interfaceC0449) {
        this.f2345 = interfaceC0449;
        AbstractC1013 abstractC1013M1594 = AbstractC1013.m1594();
        C0570 c0570 = this.f2343;
        synchronized (abstractC1013M1594) {
            abstractC1013M1594.f3815.add(c0570);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1295() {
        this.f2344.removeCallbacksAndMessages(null);
        if (this.f2343 != null) {
            AbstractC1013 abstractC1013M1594 = AbstractC1013.m1594();
            C0570 c0570 = this.f2343;
            synchronized (abstractC1013M1594) {
                abstractC1013M1594.f3815.remove(c0570);
            }
            this.f2343 = null;
        }
    }
}
