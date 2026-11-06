###### Class io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$SpatializerWrapperV32$$ExternalSyntheticApiModelOutline1 (io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector$SpatializerWrapperV32$$ExternalSyntheticApiModelOutline1)
.class public final synthetic Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector$SpatializerWrapperV32$$ExternalSyntheticApiModelOutline1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Landroid/media/AudioManager;)Landroid/media/Spatializer;
    .registers 1

    .line 0
    invoke-virtual {p0}, Landroid/media/AudioManager;->getSpatializer()Landroid/media/Spatializer;

    move-result-object p0

    return-object p0
.end method
