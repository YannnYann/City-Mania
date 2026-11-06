package io.bidmachine.rendering.ad.view;

import android.os.Bundle;
import io.bidmachine.rendering.internal.AdActivity;
import io.bidmachine.rendering.model.animation.AnimationParams;
import io.bidmachine.util.UiUtilsKt;
import java.util.Iterator;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class ExpandActivity extends AdActivity {
    public AdView a;

    @Override // io.bidmachine.rendering.internal.AdActivity
    public void a() {
        AdView adView = this.a;
        if (adView == null || adView.isDestroyed()) {
            UiUtilsKt.finishActivityWithoutAnimationSafely(this);
            if (adView != null) {
                AdView.collapse$default(adView, null, null, false, 4, null);
            }
        }
    }

    @Override // io.bidmachine.rendering.internal.AdActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        Object next;
        super.onCreate(bundle);
        String stringExtra = getIntent().getStringExtra("ad_view_tag");
        if (stringExtra == null || stringExtra.length() == 0) {
            UiUtilsKt.finishActivityWithoutAnimationSafely(this);
            return;
        }
        Iterator it = ExpandActivityKt.a.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                if (Intrinsics.areEqual(((a) ((Map.Entry) next).getValue()).c(), stringExtra)) {
                    break;
                }
            }
        }
        Map.Entry entry = (Map.Entry) next;
        if (entry == null) {
            UiUtilsKt.finishActivityWithoutAnimationSafely(this);
            return;
        }
        a aVar = (a) entry.getValue();
        AnimationParams animationParamsA = aVar.a();
        Function0<Unit> function0B = aVar.b();
        AdView adView = (AdView) entry.getKey();
        if (adView.isDestroyed()) {
            UiUtilsKt.finishActivityWithoutAnimationSafely(this);
            adView.collapse(null, function0B, true);
        } else {
            this.a = adView;
            adView.showInActivity(this, animationParamsA, function0B);
            adView.onExpanded();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (isChangingConfigurations()) {
            return;
        }
        AdView adView = this.a;
        if (adView != null) {
            ExpandActivityKt.a(adView);
            AdView.collapse$default(adView, null, null, false, 4, null);
        }
        this.a = null;
    }
}
