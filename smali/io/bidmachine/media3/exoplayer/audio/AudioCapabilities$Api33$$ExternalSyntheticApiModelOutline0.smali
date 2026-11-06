###### Class io.bidmachine.media3.exoplayer.audio.AudioCapabilities$Api33$$ExternalSyntheticApiModelOutline0 (io.bidmachine.media3.exoplayer.audio.AudioCapabilities$Api33$$ExternalSyntheticApiModelOutline0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities$Api33$$ExternalSyntheticApiModelOutline0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Landroid/media/AudioManager;Landroid/media/AudioAttributes;)Ljava/util/List;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getDirectProfilesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
