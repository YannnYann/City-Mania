package io.bidmachine.util;

import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ViewUtils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ViewUtils {
    public static final ViewUtils INSTANCE = new ViewUtils();

    public static final boolean isViewVisible(int i) {
        return i == 0;
    }

    public static final int generateViewId() {
        return View.generateViewId();
    }

    public static final void showViewSafely(View view) {
        ViewUtilsKt.showViewSafely(view);
    }

    public static final void hideViewSafely(View view) {
        ViewUtilsKt.hideViewSafely(view);
    }

    public static final Unit removeFromParent(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        return ViewUtilsKt.removeFromParent(view);
    }

    public static final String visibilityToString(int i) {
        if (i == 0) {
            return "VISIBLE";
        }
        if (i == 4) {
            return "INVISIBLE";
        }
        if (i == 8) {
            return "GONE";
        }
        return "unknown";
    }

    public static final void setInsetsChanger(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        setInsetsChanger(view, WindowInsets.Type.systemBars() | WindowInsets.Type.displayCutout());
    }

    public static final void setInsetsChanger(View view, int i) {
        Intrinsics.checkNotNullParameter(view, "view");
        ViewUtilsKt.setInsetsChanger(view, i);
    }

    public static final View findContentOrRootView(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        return ViewUtilsKt.findContentOrRootView(view);
    }

    public static final ViewGroup.LayoutParams createMatchParentParams() {
        return new ViewGroup.LayoutParams(-1, -1);
    }
}
