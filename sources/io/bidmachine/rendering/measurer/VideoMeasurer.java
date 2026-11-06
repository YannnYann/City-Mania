package io.bidmachine.rendering.measurer;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public interface VideoMeasurer extends Measurer<View> {
    void onMediaCompleted();

    void onMediaFirstQuartile();

    void onMediaMidpoint();

    void onMediaPaused();

    void onMediaResumed();

    void onMediaSkipped();

    void onMediaStarted(float f, float f2);

    void onMediaThirdQuartile();

    void onMediaVolumeChanged(float f);
}
