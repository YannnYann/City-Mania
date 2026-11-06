package io.bidmachine;

import android.content.Context;
import com.explorestack.protobuf.adcom.Context;
import io.bidmachine.core.Utils;
import io.bidmachine.protobuf.sdk.App;
import io.bidmachine.utils.ProtoUtils;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class AppParams {
    private final f appReleaseParams;

    public AppParams(f appReleaseParams) {
        Intrinsics.checkNotNullParameter(appReleaseParams, "appReleaseParams");
        this.appReleaseParams = appReleaseParams;
    }

    public final void build(Context context, Context.App.Builder contextAppBuilder) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(contextAppBuilder, "contextAppBuilder");
        String packageName = context.getPackageName();
        if (packageName != null && packageName.length() != 0) {
            contextAppBuilder.setBundle(packageName);
        }
        String appVersion = Utils.getAppVersion(context);
        if (appVersion != null && appVersion.length() != 0) {
            contextAppBuilder.setVer(appVersion);
        }
        String appName = Utils.getAppName(context);
        if (appName != null && appName.length() != 0) {
            contextAppBuilder.setName(appName);
        }
        this.appReleaseParams.a(context, contextAppBuilder);
    }

    public final void build(android.content.Context context, App.Builder appBuilder) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(appBuilder, "appBuilder");
        k kVarB = k.b();
        Intrinsics.checkNotNullExpressionValue(kVarB, "get()");
        String appVersion = Utils.getAppVersion(context);
        if (appVersion != null && appVersion.length() != 0) {
            appBuilder.setAppVer(appVersion);
        }
        String appName = Utils.getAppName(context);
        if (appName != null && appName.length() != 0) {
            appBuilder.setAppName(appName);
        }
        kVarB.h().fill(appBuilder);
        long jH = kVarB.h(context);
        if (jH > 0) {
            appBuilder.setFirstLaunchTime(ProtoUtils.msToTimestamp(jH));
        }
        long jC = kVarB.c(context);
        if (jC > 0) {
            appBuilder.setSdkInstallTime(ProtoUtils.msToTimestamp(jC));
        }
        this.appReleaseParams.a(context, appBuilder);
    }
}
