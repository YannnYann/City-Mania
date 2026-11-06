package com.vungle.ads.internal.load;

import com.vungle.ads.internal.network.VungleApiClient;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class m {
    public final VungleApiClient a;

    public m(VungleApiClient apiClient) {
        Intrinsics.checkNotNullParameter(apiClient, "apiClient");
        this.a = apiClient;
    }

    public final void a(String adm) {
        Intrinsics.checkNotNullParameter(adm, "adm");
        this.a.d(adm);
    }
}
