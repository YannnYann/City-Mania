package io.bidmachine.media3.common;

/* JADX INFO: loaded from: classes5.dex */
public interface VideoGraph {

    public interface Listener {
    }

    VideoFrameProcessor getProcessor(int i);

    void initialize() throws VideoFrameProcessingException;

    void registerInput(int i) throws VideoFrameProcessingException;

    void release();

    void setOutputSurfaceInfo(SurfaceInfo surfaceInfo);
}
