package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.initialization.AdapterStatus;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class le {
    public static ke a(AdapterStatus.InitializationState initializationState, String description, int i) {
        Intrinsics.checkNotNullParameter(initializationState, "initializationState");
        Intrinsics.checkNotNullParameter(description, "description");
        return new ke(initializationState, description, i);
    }

    public static /* synthetic */ ke b(AdapterStatus.InitializationState initializationState, String str, int i) {
        if ((i & 1) != 0) {
            initializationState = AdapterStatus.InitializationState.NOT_STARTED;
        }
        if ((i & 2) != 0) {
            str = "";
        }
        return a(initializationState, str, 0);
    }
}
