package io.bidmachine.rendering.measurer;

import android.view.View;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class CompositeVideoMeasurer extends BaseCompositeMeasurer<VideoMeasurer, View> implements VideoMeasurer {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CompositeVideoMeasurer(List<? extends VideoMeasurer> measurerList) {
        super(measurerList);
        Intrinsics.checkNotNullParameter(measurerList, "measurerList");
    }

    @Override // io.bidmachine.rendering.measurer.VideoMeasurer
    public void onMediaCompleted() {
        Iterator<T> it = getMeasurerList().iterator();
        while (it.hasNext()) {
            ((VideoMeasurer) it.next()).onMediaCompleted();
        }
    }

    @Override // io.bidmachine.rendering.measurer.VideoMeasurer
    public void onMediaFirstQuartile() {
        Iterator<T> it = getMeasurerList().iterator();
        while (it.hasNext()) {
            ((VideoMeasurer) it.next()).onMediaFirstQuartile();
        }
    }

    @Override // io.bidmachine.rendering.measurer.VideoMeasurer
    public void onMediaMidpoint() {
        Iterator<T> it = getMeasurerList().iterator();
        while (it.hasNext()) {
            ((VideoMeasurer) it.next()).onMediaMidpoint();
        }
    }

    @Override // io.bidmachine.rendering.measurer.VideoMeasurer
    public void onMediaPaused() {
        Iterator<T> it = getMeasurerList().iterator();
        while (it.hasNext()) {
            ((VideoMeasurer) it.next()).onMediaPaused();
        }
    }

    @Override // io.bidmachine.rendering.measurer.VideoMeasurer
    public void onMediaResumed() {
        Iterator<T> it = getMeasurerList().iterator();
        while (it.hasNext()) {
            ((VideoMeasurer) it.next()).onMediaResumed();
        }
    }

    @Override // io.bidmachine.rendering.measurer.VideoMeasurer
    public void onMediaSkipped() {
        Iterator<T> it = getMeasurerList().iterator();
        while (it.hasNext()) {
            ((VideoMeasurer) it.next()).onMediaSkipped();
        }
    }

    @Override // io.bidmachine.rendering.measurer.VideoMeasurer
    public void onMediaStarted(float f, float f2) {
        Iterator<T> it = getMeasurerList().iterator();
        while (it.hasNext()) {
            ((VideoMeasurer) it.next()).onMediaStarted(f, f2);
        }
    }

    @Override // io.bidmachine.rendering.measurer.VideoMeasurer
    public void onMediaThirdQuartile() {
        Iterator<T> it = getMeasurerList().iterator();
        while (it.hasNext()) {
            ((VideoMeasurer) it.next()).onMediaThirdQuartile();
        }
    }

    @Override // io.bidmachine.rendering.measurer.VideoMeasurer
    public void onMediaVolumeChanged(float f) {
        Iterator<T> it = getMeasurerList().iterator();
        while (it.hasNext()) {
            ((VideoMeasurer) it.next()).onMediaVolumeChanged(f);
        }
    }
}
