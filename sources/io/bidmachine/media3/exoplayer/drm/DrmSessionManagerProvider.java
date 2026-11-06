package io.bidmachine.media3.exoplayer.drm;

import io.bidmachine.media3.common.MediaItem;

/* JADX INFO: loaded from: classes5.dex */
public interface DrmSessionManagerProvider {
    DrmSessionManager get(MediaItem mediaItem);
}
