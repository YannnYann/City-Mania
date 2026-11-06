package io.bidmachine.media3.exoplayer.hls;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final class SampleQueueMappingException extends IOException {
    public SampleQueueMappingException(String str) {
        super("Unable to bind a sample queue to TrackGroup with MIME type " + str + ".");
    }
}
