package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class a03 {
    public final qn2 a;
    public final cw2 b;

    public a03(qn2 pipAdConfig, dw2 requestComponentBuilderProvider) {
        Intrinsics.checkNotNullParameter(pipAdConfig, "pipAdConfig");
        Intrinsics.checkNotNullParameter(requestComponentBuilderProvider, "requestComponentBuilderProvider");
        this.a = pipAdConfig;
        this.b = requestComponentBuilderProvider;
    }
}
