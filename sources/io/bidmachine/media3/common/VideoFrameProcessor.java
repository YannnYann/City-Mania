package io.bidmachine.media3.common;

import android.view.Surface;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface VideoFrameProcessor {

    public interface Factory {
    }

    void flush();

    Surface getInputSurface();

    int getPendingInputFrameCount();

    boolean registerInputFrame();

    void registerInputStream(int i, Format format, List<Object> list, long j);
}
