###### Class io.bidmachine.media3.exoplayer.audio.DefaultAudioSink$$ExternalSyntheticApiModelOutline0 (io.bidmachine.media3.exoplayer.audio.DefaultAudioSink$$ExternalSyntheticApiModelOutline0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticApiModelOutline0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Landroid/media/AudioTrack;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->isOffloadedPlayback()Z

    move-result p0

    return p0
.end method
