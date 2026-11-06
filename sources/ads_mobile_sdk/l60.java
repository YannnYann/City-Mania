package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class l60 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        s24 webviewFirebaseAnalyticsEventsHandler = (s24) this.a.get();
        Intrinsics.checkNotNullParameter(webviewFirebaseAnalyticsEventsHandler, "webviewFirebaseAnalyticsEventsHandler");
        return new f50(webviewFirebaseAnalyticsEventsHandler);
    }

    public l60(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
