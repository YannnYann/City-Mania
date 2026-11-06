package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.צּ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0866 extends ThreadPoolExecutor implements InterfaceC0445 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0841 f3337;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0875 f3338;

    /* JADX WARN: Illegal instructions before constructor call */
    public C0866(C0841 c0841, ThreadPoolExecutor threadPoolExecutor, C0875 c0875) {
        this.f3337 = c0841;
        int corePoolSize = threadPoolExecutor.getCorePoolSize();
        int maximumPoolSize = threadPoolExecutor.getMaximumPoolSize();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        super(corePoolSize, maximumPoolSize, threadPoolExecutor.getKeepAliveTime(timeUnit), timeUnit, threadPoolExecutor.getQueue());
        this.f3338 = c0875;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f3337.m1187(this, this.f3338, StringFog.decrypt("VeyaacEClhhu3Ix01heKD2SAumnBApYYZA==\n", "Aa7fEaRh42w=\n"), runnable);
        super.execute(runnable);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0445
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1025() {
        return this;
    }
}
