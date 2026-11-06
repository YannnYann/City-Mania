package com.vungle.ads.internal.ui.view;

import android.app.Activity;
import com.vungle.ads.internal.util.u;
import com.vungle.ads.internal.util.v;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class l extends com.vungle.ads.internal.util.b {
    public final /* synthetic */ m a;

    public l(m mVar) {
        this.a = mVar;
    }

    @Override // com.vungle.ads.internal.util.b
    public final void a(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        WeakReference weakReference = this.a.f;
        if (Intrinsics.areEqual(weakReference != null ? (Activity) weakReference.get() : null, activity)) {
            boolean z = v.a;
            u.a("NativeAd-VideoContentView", "onActivityPaused and pause video");
            d videoView = this.a.getVideoView();
            if (videoView != null) {
                videoView.h();
            }
        }
    }

    @Override // com.vungle.ads.internal.util.b
    public final void b(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        WeakReference weakReference = this.a.f;
        if (Intrinsics.areEqual(weakReference != null ? (Activity) weakReference.get() : null, activity)) {
            boolean z = v.a;
            u.a("NativeAd-VideoContentView", "onActivityResumed and try to play video");
            d videoView = this.a.getVideoView();
            if (videoView != null) {
                videoView.j();
            }
        }
    }
}
