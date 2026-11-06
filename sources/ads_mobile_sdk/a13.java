package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class a13 {
    public final CoroutineScope a;
    public final qn b;
    public final xe3 c;
    public final pw2 d;

    public a13(CoroutineScope backgroundScope, qn appState, xe3 signalCache, pw2 publicJavascriptBridgeFactory) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(appState, "appState");
        Intrinsics.checkNotNullParameter(signalCache, "signalCache");
        Intrinsics.checkNotNullParameter(publicJavascriptBridgeFactory, "publicJavascriptBridgeFactory");
        this.a = backgroundScope;
        this.b = appState;
        this.c = signalCache;
        this.d = publicJavascriptBridgeFactory;
    }
}
