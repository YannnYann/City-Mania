package io.bidmachine.rendering.utils;

import android.app.Activity;
import android.graphics.Point;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import io.bidmachine.rendering.ad.view.AdView;
import io.bidmachine.rendering.model.ClickData;
import io.bidmachine.rendering.model.Orientation;
import io.bidmachine.util.ViewUtils;
import io.bidmachine.util.ViewUtilsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes5.dex */
public final class UiUtilsKt {

    public static final class a extends Lambda implements Function1 {
        public static final a a = new a();

        public a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(View it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return Boolean.valueOf(it instanceof AdView);
        }
    }

    public static final void applyInsets(Activity activity, View contentView, boolean z) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Intrinsics.checkNotNullParameter(contentView, "contentView");
        if (Build.VERSION.SDK_INT >= 35) {
            Window window = activity.getWindow();
            View decorView = window != null ? window.getDecorView() : null;
            if (decorView == null) {
                decorView = contentView;
            }
            contentView.setPadding(0, 0, 0, 0);
            ViewUtils.setInsetsChanger(decorView);
            if (z) {
                decorView.requestApplyInsets();
            }
        }
    }

    public static final View findAdView(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        return ViewUtilsKt.findParentView(view, a.a);
    }

    public static final void setupActivityOrientation(Activity activity, Orientation orientation) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        activity.setRequestedOrientation(orientation != null ? orientation.getActivityOrientation() : 4);
    }

    public static final ClickData toClickData(MotionEvent motionEvent, View view) {
        Intrinsics.checkNotNullParameter(motionEvent, "<this>");
        Intrinsics.checkNotNullParameter(view, "view");
        return toClickData(new Point((int) motionEvent.getRawX(), (int) motionEvent.getRawY()), view);
    }

    public static final ClickData toClickData(Point point, View view) {
        Intrinsics.checkNotNullParameter(point, "<this>");
        Intrinsics.checkNotNullParameter(view, "view");
        View viewFindAdView = findAdView(view);
        if (viewFindAdView == null || viewFindAdView.getWidth() <= 0 || viewFindAdView.getHeight() <= 0) {
            return null;
        }
        int[] iArr = new int[2];
        viewFindAdView.getLocationOnScreen(iArr);
        return new ClickData(point.x - iArr[0], point.y - iArr[1], viewFindAdView.getWidth(), viewFindAdView.getHeight());
    }
}
