package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.VideoController;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class br3 implements VideoController.VideoLifecycleCallbacks {
    public final s02 a;
    public final CoroutineScope b;

    public br3(s02 nativeAdAssets, CoroutineScope uiScope) {
        Intrinsics.checkNotNullParameter(nativeAdAssets, "nativeAdAssets");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        this.a = nativeAdAssets;
        this.b = uiScope;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.VideoController.VideoLifecycleCallbacks
    public final void onVideoStart() {
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.VideoController.VideoLifecycleCallbacks
    public final void onVideoPlay() {
        VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks;
        VideoController videoController = this.a.m;
        if (videoController == null || (videoLifecycleCallbacks = videoController.getVideoLifecycleCallbacks()) == null) {
            return;
        }
        CoroutineScope coroutineScope = this.b;
        ar3 block = new ar3(videoLifecycleCallbacks, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.VideoController.VideoLifecycleCallbacks
    public final void onVideoPause() {
        VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks;
        VideoController videoController = this.a.m;
        if (videoController == null || (videoLifecycleCallbacks = videoController.getVideoLifecycleCallbacks()) == null) {
            return;
        }
        CoroutineScope coroutineScope = this.b;
        yq3 block = new yq3(videoLifecycleCallbacks, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.VideoController.VideoLifecycleCallbacks
    public final void onVideoEnd() {
        VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks;
        VideoController videoController = this.a.m;
        if (videoController == null || (videoLifecycleCallbacks = videoController.getVideoLifecycleCallbacks()) == null) {
            return;
        }
        CoroutineScope coroutineScope = this.b;
        uq3 block = new uq3(videoLifecycleCallbacks, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.VideoController.VideoLifecycleCallbacks
    public final void onVideoMute(boolean z) {
        VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks;
        VideoController videoController = this.a.m;
        if (videoController == null || (videoLifecycleCallbacks = videoController.getVideoLifecycleCallbacks()) == null) {
            return;
        }
        CoroutineScope coroutineScope = this.b;
        wq3 block = new wq3(videoLifecycleCallbacks, null, z);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }
}
