package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import java.util.Optional;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class vy {
    public static final bn1 a(bn1 bn1Var, AdRequest adRequest, j53 requestType, String requestId, nd1 inspectorAdLifecycleMonitorFactory, ex0 flags) {
        Intrinsics.checkNotNullParameter(bn1Var, "<this>");
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(inspectorAdLifecycleMonitorFactory, "inspectorAdLifecycleMonitorFactory");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Optional baseRequest = Optional.of(adRequest);
        Intrinsics.checkNotNullExpressionValue(baseRequest, "of(...)");
        Optional signalRequest = Optional.empty();
        Intrinsics.checkNotNullExpressionValue(signalRequest, "empty(...)");
        inspectorAdLifecycleMonitorFactory.getClass();
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(signalRequest, "signalRequest");
        return (bn1) ((bn1) ((bn1) ((bn1) ((bn1) ((bn1) ((bn1) ((bn1) ((bn1) ((bn1) bn1Var.a(adRequest)).a(requestType)).a(new n03())).a(new tn1())).a(new md1(inspectorAdLifecycleMonitorFactory.a, requestType, baseRequest, requestId, false, inspectorAdLifecycleMonitorFactory.b, inspectorAdLifecycleMonitorFactory.c, inspectorAdLifecycleMonitorFactory.d, signalRequest))).a(false)).a(new m13())).b(false)).c(true)).a(new pb(flags));
    }
}
