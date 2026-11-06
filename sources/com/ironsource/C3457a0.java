package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.a0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3457a0 implements Z {
    private final Ac a;

    /* JADX INFO: renamed from: com.ironsource.a0$a */
    public static final class a {
        public static final a a = new a();
        public static final int b = 1000;

        private a() {
        }
    }

    public C3457a0(Ac networkLoadApi) {
        Intrinsics.checkNotNullParameter(networkLoadApi, "networkLoadApi");
        this.a = networkLoadApi;
    }

    @Override // com.ironsource.Z
    public String a() {
        return this.a.a();
    }

    @Override // com.ironsource.Z
    public void a(R9 adInstance, Map<String, String> loadParams) {
        Intrinsics.checkNotNullParameter(adInstance, "adInstance");
        Intrinsics.checkNotNullParameter(loadParams, "loadParams");
        try {
            this.a.a(adInstance, new Cc(null, false, 3, null));
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.ADAPTER_API.verbose("load ad with identifier: " + adInstance.e() + " failed. error: " + e.getMessage());
            String message = e.getMessage();
            StringBuilder sb = new StringBuilder();
            sb.append("1000: loadAd failed: ");
            sb.append(message);
            String string = sb.toString();
            Oc ocB = adInstance.b();
            if (ocB instanceof C3597f6) {
                Oc ocB2 = adInstance.b();
                Intrinsics.checkNotNull(ocB2, "null cannot be cast to non-null type com.unity3d.ironsourceads.internal.FullScreenAdInstanceListenerWrapper");
                ((C3597f6) ocB2).onInterstitialLoadFailed(string);
            } else if (ocB instanceof Qc) {
                Oc ocB3 = adInstance.b();
                Intrinsics.checkNotNull(ocB3, "null cannot be cast to non-null type com.unity3d.ironsourceads.internal.OnBannerListenerWrapper");
                ((Qc) ocB3).onBannerLoadFail(string);
            }
        }
    }
}
