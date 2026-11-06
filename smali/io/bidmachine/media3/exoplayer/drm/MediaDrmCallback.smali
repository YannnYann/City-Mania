###### Class io.bidmachine.media3.exoplayer.drm.MediaDrmCallback (io.bidmachine.media3.exoplayer.drm.MediaDrmCallback)
.class public interface abstract Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallback;
.super Ljava/lang/Object;
.source "MediaDrmCallback.java"


# virtual methods
.method public abstract executeKeyRequest(Ljava/util/UUID;Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallbackException;
        }
    .end annotation
.end method

.method public abstract executeProvisionRequest(Ljava/util/UUID;Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallbackException;
        }
    .end annotation
.end method
