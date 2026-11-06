package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.ISAdQualityInitError;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ｼ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C1008 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0893 f3809;

    public C1008(C0893 c0893) {
        this.f3809 = c0893;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        C0785 c0785;
        C0893 c0893 = this.f3809;
        synchronized (c0893) {
            c0785 = c0893.f3422;
        }
        if (!c0785.f3122.m1445()) {
            C0204 c0204 = this.f3809.f3413.f2318.f1971;
            C0204.m1171(c0204.f1350, ISAdQualityInitError.NO_NETWORK_CONNECTION, StringFog.decrypt("qDwYTazbazaUOBhApsFyPIUnUUyn\n", "5lM4I8mvHFk=\n"));
            return;
        }
        if (this.f3809.mo1503()) {
            return;
        }
        C0204 c02042 = this.f3809.f3413.f2318.f1971;
        C0204.m1171(c02042.f1350, ISAdQualityInitError.CONFIG_LOAD_TIMEOUT, StringFog.decrypt("Iii2YThMyWkCD44lOn3jJQgUmWMAXohpBBqTJR1QxWAEDoM=\n", "a3v3BWk5qAU=\n"));
    }
}
