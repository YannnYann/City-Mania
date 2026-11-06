package io.bidmachine.util.viewabilitytracker;

import android.view.View;

/* JADX INFO: compiled from: ViewabilityTracker.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface ViewabilityTracker {
    void destroy();

    void start(View view);

    void stop();
}
