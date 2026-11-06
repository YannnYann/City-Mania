package ads_mobile_sdk;

import android.content.Context;
import java.util.Optional;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.optionals.OptionalsKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class c24 extends ms {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c24(Context context, CoroutineScope uiScope, z14 webViewViewabilityEventEmitter, ao0 displayUtil, Optional optionalWebView, tx clock, ex0 flags, j53 requestType, f0 activityTracker, i2 adConfiguration) {
        super(context, uiScope, webViewViewabilityEventEmitter, displayUtil, clock, flags, requestType, activityTracker, adConfiguration);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(webViewViewabilityEventEmitter, "webViewViewabilityEventEmitter");
        Intrinsics.checkNotNullParameter(displayUtil, "displayUtil");
        Intrinsics.checkNotNullParameter(optionalWebView, "optionalWebView");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        r31 r31Var = (r31) OptionalsKt.getOrNull(optionalWebView);
        b(r31Var);
        if (r31Var != null) {
            a(r31Var);
        }
    }
}
