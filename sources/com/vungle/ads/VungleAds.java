package com.vungle.ads;

import android.app.Application;
import android.content.Context;
import com.vungle.ads.fpd.FirstPartyData;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.model.j3;
import com.vungle.ads.internal.u2;
import com.vungle.ads.internal.x2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class VungleAds {
    public static final String TAG = "VungleAds";
    public static final Companion Companion = new Companion(null);
    public static x2 a = new x2();
    public static u2 b = new u2();
    public static final FirstPartyData firstPartyData = new FirstPartyData();

    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void deInit(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            VungleAds.b.a();
        }

        public final void getBiddingToken(Context context, BidTokenCallback callback) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(callback, "callback");
            VungleAds.a.getClass();
            x2.a(context, callback);
        }

        public final String getSdkVersion() {
            VungleAds.a.getClass();
            return BuildConfig.VERSION_NAME;
        }

        public final void init(Context appContext, String appId, InitializationListener callback) {
            Intrinsics.checkNotNullParameter(appContext, "context");
            Intrinsics.checkNotNullParameter(appId, "appId");
            Intrinsics.checkNotNullParameter(callback, "callback");
            if (!(appContext instanceof Application)) {
                appContext = appContext.getApplicationContext();
            }
            u2 u2Var = VungleAds.b;
            Intrinsics.checkNotNullExpressionValue(appContext, "appContext");
            u2Var.a(appContext, appId, callback);
        }

        public final boolean isInitialized() {
            return VungleAds.b.a.get();
        }

        public final boolean isInline(String placementId) {
            Intrinsics.checkNotNullParameter(placementId, "placementId");
            ConfigManager.INSTANCE.getClass();
            j3 j3VarA = ConfigManager.a(placementId);
            if (j3VarA != null) {
                return j3VarA.f();
            }
            return true;
        }

        public final void setIntegrationName(String integrationName, String version) {
            Intrinsics.checkNotNullParameter(integrationName, "integrationName");
            Intrinsics.checkNotNullParameter(version, "version");
            VungleAds.b.a(integrationName, version);
        }
    }

    public static final void deInit(Context context) {
        Companion.deInit(context);
    }

    public static final void getBiddingToken(Context context, BidTokenCallback bidTokenCallback) {
        Companion.getBiddingToken(context, bidTokenCallback);
    }

    public static final String getSdkVersion() {
        return Companion.getSdkVersion();
    }

    public static final void init(Context context, String str, InitializationListener initializationListener) {
        Companion.init(context, str, initializationListener);
    }

    public static final boolean isInitialized() {
        return Companion.isInitialized();
    }

    public static final boolean isInline(String str) {
        return Companion.isInline(str);
    }

    public static final void setIntegrationName(String str, String str2) {
        Companion.setIntegrationName(str, str2);
    }
}
