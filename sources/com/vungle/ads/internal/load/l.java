package com.vungle.ads.internal.load;

import android.content.Context;
import com.vungle.ads.AdRetryActiveError;
import com.vungle.ads.NetworkTimeoutError;
import com.vungle.ads.NetworkUnreachable;
import com.vungle.ads.VungleAdSize;
import com.vungle.ads.VungleError;
import com.vungle.ads.internal.model.j3;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.util.PathProvider;
import java.net.SocketTimeoutException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public class l extends i {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(Context context, VungleApiClient vungleApiClient, com.vungle.ads.internal.executor.d sdkExecutors, com.vungle.ads.internal.omsdk.c omInjector, com.vungle.ads.internal.downloader.n downloader, PathProvider pathProvider, b adRequest) {
        super(context, vungleApiClient, sdkExecutors, omInjector, downloader, pathProvider, adRequest);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(vungleApiClient, "vungleApiClient");
        Intrinsics.checkNotNullParameter(sdkExecutors, "sdkExecutors");
        Intrinsics.checkNotNullParameter(omInjector, "omInjector");
        Intrinsics.checkNotNullParameter(downloader, "downloader");
        Intrinsics.checkNotNullParameter(pathProvider, "pathProvider");
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
    }

    public static final VungleError a(l lVar, Throwable th) {
        lVar.getClass();
        if (th instanceof SocketTimeoutException) {
            return new NetworkTimeoutError();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(lVar.l());
        sb.append(" request fail: ");
        sb.append(th != null ? th.getMessage() : null);
        return new NetworkUnreachable(sb.toString());
    }

    @Override // com.vungle.ads.internal.load.i
    public final void i() {
    }

    @Override // com.vungle.ads.internal.load.i
    public final void k() {
        b bVar = this.g;
        VungleAdSize vungleAdSize = bVar.c;
        j3 placement = bVar.a;
        Intrinsics.checkNotNullParameter(placement, "placement");
        if (h().a(placement.b())) {
            a(new AdRetryActiveError().setLogEntry$vungle_ads_release(e()).logError$vungle_ads_release());
            return;
        }
        com.vungle.ads.internal.network.m mVarA = a(placement.b(), vungleAdSize);
        if (mVarA != null) {
            mVarA.a(new k(this, placement));
            return;
        }
        a(new NetworkUnreachable(l() + " is null").setLogEntry$vungle_ads_release(e()).logError$vungle_ads_release());
    }

    public String l() {
        return "ads";
    }

    public com.vungle.ads.internal.network.m a(String placement, VungleAdSize vungleAdSize) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        return h().a(placement, vungleAdSize, b().c());
    }
}
