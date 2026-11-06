package com.ironsource.adqualitysdk.sdk.i;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᐹ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0475 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ AbstractRunnableC0689 f2253;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ AtomicBoolean f2254;

    public C0475(AtomicBoolean atomicBoolean, AbstractRunnableC0689 abstractRunnableC0689) {
        this.f2254 = atomicBoolean;
        this.f2253 = abstractRunnableC0689;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        if (this.f2254.compareAndSet(false, true)) {
            this.f2253.run();
        }
    }
}
