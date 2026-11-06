package io.bidmachine.media3.exoplayer.trackselection;

import io.bidmachine.media3.common.Format;
import io.bidmachine.media3.common.TrackGroup;

/* JADX INFO: loaded from: classes5.dex */
public interface TrackSelection {
    Format getFormat(int i);

    int getIndexInTrackGroup(int i);

    TrackGroup getTrackGroup();

    int indexOf(int i);

    int indexOf(Format format);

    int length();
}
