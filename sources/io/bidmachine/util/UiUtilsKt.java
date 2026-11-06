package io.bidmachine.util;

import android.app.Activity;
import android.graphics.Point;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.inputmethod.InputMethodManager;
import com.vungle.ads.internal.protos.Sdk;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UiUtils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class UiUtilsKt {
    public static final MotionEvent obtainSyntheticMotionEvent(int i, Point point) {
        Intrinsics.checkNotNullParameter(point, "point");
        return obtainSyntheticMotionEvent(i, point.x, point.y);
    }

    public static final MotionEvent obtainSyntheticMotionEvent(int i, int i2, int i3) {
        MotionEvent motionEventObtain = MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), i, i2, i3, 0);
        motionEventObtain.setSource(2);
        Intrinsics.checkNotNullExpressionValue(motionEventObtain, "obtain(\n        SystemCl…MOTION_EVENT_SOURCE\n    }");
        return motionEventObtain;
    }

    public static final boolean isSyntheticMotionEvent(MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "<this>");
        return motionEvent.getSource() == 2;
    }

    public static final boolean isRealMotionEvent(MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "<this>");
        return !isSyntheticMotionEvent(motionEvent);
    }

    public static final Unit setWindowBackgroundColor(Window window, int i) {
        if (window == null) {
            return null;
        }
        window.setBackgroundDrawable(new ColorDrawable(i));
        return Unit.INSTANCE;
    }

    public static final Unit setActivityBackgroundColor(Activity activity, int i) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        return UiUtils.setWindowBackgroundColor(activity.getWindow(), i);
    }

    public static final void setNoActivityTransition(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        if (Build.VERSION.SDK_INT >= 34) {
            try {
                activity.overrideActivityTransition(0, 0, 0, 0);
                activity.overrideActivityTransition(1, 0, 0, 0);
                return;
            } catch (Throwable unused) {
            }
        }
        try {
            activity.overridePendingTransition(0, 0);
            Unit unit = Unit.INSTANCE;
        } catch (Throwable unused2) {
        }
    }

    public static final void finishActivityWithoutAnimation(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        activity.finish();
        setNoActivityTransition(activity);
    }

    public static final void finishActivityWithoutAnimationSafely(Activity activity) {
        if (activity == null) {
            return;
        }
        try {
            finishActivityWithoutAnimation(activity);
            Unit unit = Unit.INSTANCE;
        } catch (Throwable unused) {
        }
    }

    public static final void prepareFullscreen(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        activity.requestWindowFeature(1);
        Window window = activity.getWindow();
        if (window != null) {
            window.addFlags(Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
        }
    }

    public static final void applyFullscreen(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        applySystemUiVisibility$default(activity, false, 1, null);
        hideKeyboard(activity);
    }

    public static /* synthetic */ void applySystemUiVisibility$default(Activity activity, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        applySystemUiVisibility(activity, z);
    }

    public static final void applySystemUiVisibility(Activity activity, boolean z) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Window window = activity.getWindow();
        if (window != null) {
            applySystemUiVisibility(window, z);
        }
    }

    public static final void applySystemUiVisibility(Window window, boolean z) {
        int i;
        Intrinsics.checkNotNullParameter(window, "<this>");
        if (Build.VERSION.SDK_INT >= 30) {
            WindowInsetsController windowInsetsController = window.getDecorView().getWindowInsetsController();
            if (windowInsetsController != null) {
                windowInsetsController.setSystemBarsBehavior(2);
                if (z) {
                    windowInsetsController.hide(WindowInsets.Type.statusBars());
                    return;
                }
                return;
            }
            return;
        }
        if (z) {
            window.setFlags(1024, 1024);
            i = 4;
        } else {
            i = 0;
        }
        if (i > 0) {
            window.getDecorView().setSystemUiVisibility(i);
        }
    }

    public static final Boolean hideKeyboard(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        InputMethodManager inputMethodManager = UtilsKt.getInputMethodManager(activity);
        if (inputMethodManager == null) {
            return null;
        }
        View currentFocus = activity.getCurrentFocus();
        if (currentFocus == null) {
            currentFocus = new View(activity);
        }
        return Boolean.valueOf(inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0));
    }
}
