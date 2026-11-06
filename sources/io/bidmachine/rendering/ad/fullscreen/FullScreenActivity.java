package io.bidmachine.rendering.ad.fullscreen;

import android.os.Bundle;
import io.bidmachine.rendering.internal.AdActivity;
import io.bidmachine.util.UiUtilsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class FullScreenActivity extends AdActivity {
    public FullScreenAd a;

    private final void c() {
        UiUtilsKt.finishActivityWithoutAnimationSafely(this);
        FullScreenAd fullScreenAd = this.a;
        if (fullScreenAd != null) {
            fullScreenAd.processAdClosed();
        }
        this.a = null;
    }

    @Override // io.bidmachine.rendering.internal.AdActivity
    public void a() {
        FullScreenAd fullScreenAd = this.a;
        if (fullScreenAd == null || fullScreenAd.isDestroyed()) {
            c();
        }
    }

    @Override // io.bidmachine.rendering.internal.AdActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        FullScreenAd fullScreenAd = FullScreenActivityKt.a;
        this.a = fullScreenAd;
        if (fullScreenAd == null || fullScreenAd.isDestroyed()) {
            c();
        } else {
            fullScreenAd.showInActivity(this);
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (isChangingConfigurations()) {
            return;
        }
        if (Intrinsics.areEqual(FullScreenActivityKt.a, this.a)) {
            FullScreenActivityKt.a = null;
        }
        c();
    }
}
