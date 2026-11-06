package com.vungle.ads.internal.load;

import android.content.Context;
import com.vungle.ads.AdMarkupInvalidError;
import com.vungle.ads.InvalidBidPayloadError;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.j2;
import com.vungle.ads.internal.model.i0;
import com.vungle.ads.internal.model.q0;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.network.r;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.PathProvider;
import com.vungle.ads.internal.util.u;
import com.vungle.ads.internal.util.v;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class p extends i {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(Context context, VungleApiClient vungleApiClient, com.vungle.ads.internal.executor.d sdkExecutors, com.vungle.ads.internal.omsdk.c omInjector, com.vungle.ads.internal.downloader.n downloader, PathProvider pathProvider, b adRequest) {
        super(context, vungleApiClient, sdkExecutors, omInjector, downloader, pathProvider, adRequest);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(vungleApiClient, "vungleApiClient");
        Intrinsics.checkNotNullParameter(sdkExecutors, "sdkExecutors");
        Intrinsics.checkNotNullParameter(omInjector, "omInjector");
        Intrinsics.checkNotNullParameter(downloader, "downloader");
        Intrinsics.checkNotNullParameter(pathProvider, "pathProvider");
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
    }

    @Override // com.vungle.ads.internal.load.i
    public final void i() {
        com.vungle.ads.internal.model.i iVarK;
        i0 i0Var = this.p;
        List list = (i0Var == null || (iVarK = i0Var.k()) == null) ? null : iVarK.q;
        if (list == null || !list.isEmpty()) {
            Lazy lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new o(d()));
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((r) lazy.getValue()).a(new com.vungle.ads.internal.network.p((String) it.next()).b("win-notification").a(e()).a(), false);
                }
            }
        }
    }

    @Override // com.vungle.ads.internal.load.i
    public final void k() throws Throwable {
        q0 q0VarA = b().a();
        if (q0VarA == null) {
            a(new InvalidBidPayloadError().setLogEntry$vungle_ads_release(e()).logError$vungle_ads_release());
            return;
        }
        ConfigManager.INSTANCE.getClass();
        if (ConfigManager.s()) {
            try {
                String strB = q0VarA.b();
                boolean z = v.a;
                u.a("RTA_DEBUGGER", String.valueOf(strB));
                Lazy lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new n(d()));
                if (strB != null) {
                    new m((VungleApiClient) lazy.getValue()).a(strB);
                }
            } catch (Throwable unused) {
            }
        }
        i0 i0VarA = q0VarA.a();
        Integer numC = q0VarA.c();
        if (numC == null || numC.intValue() != 2 || i0VarA == null) {
            a(new AdMarkupInvalidError("The ad response did not contain valid ad markup").setLogEntry$vungle_ads_release(e()).logError$vungle_ads_release());
        } else {
            a(i0VarA, new j2(Sdk.SDKMetric.SDKMetricType.CONFIG_LOADED_FROM_ADM_LOAD));
        }
    }
}
