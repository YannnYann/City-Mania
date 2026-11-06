###### Class io.bidmachine.media3.exoplayer.drm.DrmSession (io.bidmachine.media3.exoplayer.drm.DrmSession)
.class public interface abstract Lio/bidmachine/media3/exoplayer/drm/DrmSession;
.super Ljava/lang/Object;
.source "DrmSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;
    }
.end annotation


# direct methods
.method public static replaceSession(Lio/bidmachine/media3/exoplayer/drm/DrmSession;Lio/bidmachine/media3/exoplayer/drm/DrmSession;)V
    .registers 3

    if-ne p0, p1, :cond_3

    goto :goto_e

    :cond_3
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 57
    invoke-interface {p1, v0}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->acquire(Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    :cond_9
    if-eqz p0, :cond_e

    .line 60
    invoke-interface {p0, v0}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->release(Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    :cond_e
    :goto_e
    return-void
.end method


# virtual methods
.method public abstract acquire(Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
.end method

.method public abstract getCryptoConfig()Lio/bidmachine/media3/decoder/CryptoConfig;
.end method

.method public abstract getError()Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;
.end method

.method public abstract getSchemeUuid()Ljava/util/UUID;
.end method

.method public abstract getState()I
.end method

.method public playClearSamplesWithoutKeys()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract queryKeyStatus()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract release(Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
.end method

.method public abstract requiresSecureDecoder(Ljava/lang/String;)Z
.end method

###### Class io.bidmachine.media3.exoplayer.drm.DrmSession.DrmSessionException (io.bidmachine.media3.exoplayer.drm.DrmSession$DrmSessionException)
.class public Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;
.super Ljava/io/IOException;
.source "DrmSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/drm/DrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrmSessionException"
.end annotation


# instance fields
.field public final errorCode:I


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;I)V
    .registers 3

    .line 71
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 72
    iput p2, p0, Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;->errorCode:I

    return-void
.end method
