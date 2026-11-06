package ads_mobile_sdk;

import android.content.Context;
import android.view.View;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class od extends ms {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public od(Context context, CoroutineScope uiScope, jd adViewabilityEventEmitter, ao0 displayUtil, View view, tx clock, ex0 flags, j53 requestType, f0 activityTracker, i2 adConfiguration) {
        super(context, uiScope, adViewabilityEventEmitter, displayUtil, clock, flags, requestType, activityTracker, adConfiguration);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(adViewabilityEventEmitter, "adViewabilityEventEmitter");
        Intrinsics.checkNotNullParameter(displayUtil, "displayUtil");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        b(view);
        a(view);
    }
}
