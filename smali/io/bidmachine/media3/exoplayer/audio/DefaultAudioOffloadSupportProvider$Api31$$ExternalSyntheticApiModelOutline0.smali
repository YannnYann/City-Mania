###### Class io.bidmachine.media3.exoplayer.audio.DefaultAudioOffloadSupportProvider$Api31$$ExternalSyntheticApiModelOutline0 (io.bidmachine.media3.exoplayer.audio.DefaultAudioOffloadSupportProvider$Api31$$ExternalSyntheticApiModelOutline0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider$Api31$$ExternalSyntheticApiModelOutline0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I
    .registers 2

    .line 0
    invoke-static {p0, p1}, Landroid/media/AudioManager;->getPlaybackOffloadSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result p0

    return p0
.end method
