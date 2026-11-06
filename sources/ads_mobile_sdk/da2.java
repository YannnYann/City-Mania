package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class da2 extends nc1 {
    public final ca2 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public da2(ca2 networkConnectivityManager) {
        super(s11.CUI_NAME_NETWORK_CONNECTIVITY_MANAGER_STATE, 2);
        Intrinsics.checkNotNullParameter(networkConnectivityManager, "networkConnectivityManager");
        this.c = networkConnectivityManager;
    }

    @Override // ads_mobile_sdk.nc1
    public final Object u(Continuation continuation) {
        return this.c.b(continuation);
    }
}
