package io.bidmachine.rendering.ad.view;

import android.content.Context;
import android.content.Intent;
import io.bidmachine.rendering.internal.AbstractC4238a;
import io.bidmachine.rendering.model.animation.AnimationParams;
import java.util.Map;
import java.util.WeakHashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class ExpandActivityKt {
    public static final Map a = new WeakHashMap();

    public static final void a(AdView adView) {
        a.remove(adView);
    }

    public static final void startExpandActivity(AdView adView, AnimationParams animationParams, Function0<Unit> callback) {
        Intrinsics.checkNotNullParameter(adView, "<this>");
        Intrinsics.checkNotNullParameter(callback, "callback");
        try {
            try {
                String string = adView.toString();
                a.put(adView, new a(string, animationParams, callback));
                Context context = adView.getContext();
                Context context2 = adView.getContext();
                Intrinsics.checkNotNullExpressionValue(context2, "context");
                Intent intentA = AbstractC4238a.a(context2, ExpandActivity.class);
                intentA.putExtra("ad_view_tag", string);
                context.startActivity(intentA);
            } catch (Throwable unused) {
                a(adView);
                adView.collapse(null, callback, true);
                Unit unit = Unit.INSTANCE;
            }
        } catch (Throwable unused2) {
        }
    }
}
