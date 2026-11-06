package io.bidmachine.util.visibilitytracking;

import android.view.View;

/* JADX INFO: compiled from: VisibilityTracker.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface VisibilityTracker {
    void destroy();

    void start(View view);

    void stop();
}
