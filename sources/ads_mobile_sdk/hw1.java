package ads_mobile_sdk;

import android.os.Bundle;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration;
import com.google.android.libraries.ads.mobile.sdk.common.VideoOptions;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import com.google.gson.JsonObject;
import com.ironsource.C3522b4;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class hw1 {
    public static String a(JsonObject serverParameterData, RequestConfiguration requestConfiguration) {
        Intrinsics.checkNotNullParameter(serverParameterData, "serverParameterData");
        Intrinsics.checkNotNullParameter(requestConfiguration, "requestConfiguration");
        if (!serverParameterData.has("max_ad_content_rating")) {
            return requestConfiguration.getMaxAdContentRating().getValue();
        }
        ds1 ds1Var = ds1.a;
        Intrinsics.checkNotNullParameter(serverParameterData, "<this>");
        Intrinsics.checkNotNullParameter("max_ad_content_rating", C3522b4.i.W);
        String asString = serverParameterData.get("max_ad_content_rating").getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "getAsString(...)");
        return asString;
    }

    public static NativeAdOptions a(NativeRequest nativeRequest) {
        int i;
        int i2;
        Intrinsics.checkNotNullParameter(nativeRequest, "nativeRequest");
        NativeAdOptions.Builder builder = new NativeAdOptions.Builder();
        int i3 = uv1.c[nativeRequest.getMediaAspectRatio().ordinal()];
        int i4 = 0;
        if (i3 == 1) {
            i = 0;
        } else if (i3 == 2) {
            i = 1;
        } else if (i3 == 3) {
            i = 2;
        } else if (i3 == 4) {
            i = 3;
        } else {
            if (i3 != 5) {
                throw new NoWhenBranchMatchedException();
            }
            i = 4;
        }
        builder.setMediaAspectRatio(i);
        int i5 = uv1.b[nativeRequest.getAdChoicesPlacement().ordinal()];
        if (i5 == 1) {
            i2 = 0;
        } else if (i5 == 2) {
            i2 = 1;
        } else if (i5 == 3) {
            i2 = 2;
        } else {
            if (i5 != 4) {
                throw new NoWhenBranchMatchedException();
            }
            i2 = 3;
        }
        builder.setAdChoicesPlacement(i2);
        NativeAd.SwipeGestureDirection customClickGestureDirection = nativeRequest.getCustomClickGestureDirection();
        int i6 = customClickGestureDirection == null ? -1 : uv1.a[customClickGestureDirection.ordinal()];
        if (i6 == 1) {
            i4 = 1;
        } else if (i6 == 2) {
            i4 = 2;
        } else if (i6 == 3) {
            i4 = 4;
        } else if (i6 == 4) {
            i4 = 8;
        }
        builder.enableCustomClickGestureDirection(i4, nativeRequest.getCustomClickGestureAllowTaps());
        builder.setRequestCustomMuteThisAd(nativeRequest.getCustomMuteThisAdRequested());
        VideoOptions videoOptions = nativeRequest.getVideoOptions();
        com.google.android.gms.ads.VideoOptions videoOptionsBuild = videoOptions != null ? new VideoOptions.Builder().setStartMuted(videoOptions.getStartMuted()).setClickToExpandRequested(videoOptions.getClickToExpandRequested()).setCustomControlsRequested(videoOptions.getCustomControlsRequested()).build() : null;
        if (videoOptionsBuild != null) {
            builder.setVideoOptions(videoOptionsBuild);
        }
        return builder.build();
    }

    public static Bundle a(BaseRequest baseRequest, MediationExtrasReceiver adapter) {
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Bundle bundle = baseRequest.getAdSourceExtrasBundles().get(adapter.getClass().getName());
        return bundle == null ? new Bundle() : bundle;
    }

    public static Bundle a(JsonObject serverParameterData) {
        Intrinsics.checkNotNullParameter(serverParameterData, "serverParameterData");
        Bundle bundle = new Bundle();
        for (String key : serverParameterData.keySet()) {
            try {
                ds1 ds1Var = ds1.a;
                Intrinsics.checkNotNull(key);
                Intrinsics.checkNotNullParameter(serverParameterData, "<this>");
                Intrinsics.checkNotNullParameter(key, "key");
                String asString = serverParameterData.get(key).getAsString();
                Intrinsics.checkNotNullExpressionValue(asString, "getAsString(...)");
                bundle.putString(key, asString);
            } catch (IllegalStateException unused) {
            }
        }
        bundle.remove("max_ad_content_rating");
        return bundle;
    }
}
