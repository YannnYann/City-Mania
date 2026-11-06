package io.bidmachine.util.viewabilitytracker.checker;

import android.view.View;

/* JADX INFO: compiled from: ViewabilityChecker.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface ViewabilityChecker {
    void destroy();

    void start(View view, long j);

    void stop();
}
