package io.bidmachine.media3.exoplayer.trackselection;

import io.bidmachine.media3.common.Tracks;
import io.bidmachine.media3.common.util.Assertions;
import io.bidmachine.media3.exoplayer.RendererConfiguration;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class TrackSelectorResult {

    /* JADX INFO: renamed from: info, reason: collision with root package name */
    public final Object f3933info;
    public final int length;
    public final RendererConfiguration[] rendererConfigurations;
    public final ExoTrackSelection[] selections;
    public final Tracks tracks;

    public TrackSelectorResult(RendererConfiguration[] rendererConfigurationArr, ExoTrackSelection[] exoTrackSelectionArr, Tracks tracks, Object obj) {
        Assertions.checkArgument(rendererConfigurationArr.length == exoTrackSelectionArr.length);
        this.rendererConfigurations = rendererConfigurationArr;
        this.selections = (ExoTrackSelection[]) exoTrackSelectionArr.clone();
        this.tracks = tracks;
        this.f3933info = obj;
        this.length = rendererConfigurationArr.length;
    }

    public boolean isRendererEnabled(int i) {
        return this.rendererConfigurations[i] != null;
    }

    public boolean isEquivalent(TrackSelectorResult trackSelectorResult) {
        if (trackSelectorResult == null || trackSelectorResult.selections.length != this.selections.length) {
            return false;
        }
        for (int i = 0; i < this.selections.length; i++) {
            if (!isEquivalent(trackSelectorResult, i)) {
                return false;
            }
        }
        return true;
    }

    public boolean isEquivalent(TrackSelectorResult trackSelectorResult, int i) {
        return trackSelectorResult != null && Objects.equals(this.rendererConfigurations[i], trackSelectorResult.rendererConfigurations[i]) && Objects.equals(this.selections[i], trackSelectorResult.selections[i]);
    }
}
