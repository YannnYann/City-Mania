package io.bidmachine.util;

import android.app.Activity;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TopActivityHolder.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class TopActivityHolder {
    public static final TopActivityHolder INSTANCE = new TopActivityHolder();
    public static WeakReference<Activity> weakTopActivity;

    public final Activity getTopActivity() {
        WeakReference<Activity> weakReference = weakTopActivity;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public final void setTopActivity(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        weakTopActivity = new WeakReference<>(activity);
    }
}
