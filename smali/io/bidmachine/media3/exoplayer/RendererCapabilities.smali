###### Class io.bidmachine.media3.exoplayer.RendererCapabilities (io.bidmachine.media3.exoplayer.RendererCapabilities)
.class public interface abstract Lio/bidmachine/media3/exoplayer/RendererCapabilities;
.super Ljava/lang/Object;
.source "RendererCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/RendererCapabilities$Listener;
    }
.end annotation


# direct methods
.method public static create(I)I
    .registers 2

    const/4 v0, 0x0

    .line 245
    invoke-static {p0, v0, v0, v0}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->create(IIII)I

    move-result p0

    return p0
.end method

.method public static create(IIII)I
    .registers 10

    const/4 v3, 0x0

    const/16 v4, 0x80

    move v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    .line 296
    invoke-static/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->create(IIIIII)I

    move-result p0

    return p0
.end method

.method public static create(IIIII)I
    .registers 11

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 325
    invoke-static/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->create(IIIIII)I

    move-result p0

    return p0
.end method

.method public static create(IIIIII)I
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 0
    or-int/2addr p0, p1

    or-int/2addr p0, p2

    or-int/2addr p0, p3

    or-int/2addr p0, p4

    or-int/2addr p0, p5

    return p0
.end method

.method public static getAdaptiveSupport(I)I
    .registers 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 0
    and-int/lit8 p0, p0, 0x18

    return p0
.end method

.method public static getAudioOffloadSupport(I)I
    .registers 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 0
    and-int/lit16 p0, p0, 0xe00

    return p0
.end method

.method public static getDecoderSupport(I)I
    .registers 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 0
    and-int/lit16 p0, p0, 0x180

    return p0
.end method

.method public static getFormatSupport(I)I
    .registers 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 0
    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method public static getHardwareAccelerationSupport(I)I
    .registers 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 0
    and-int/lit8 p0, p0, 0x40

    return p0
.end method

.method public static getTunnelingSupport(I)I
    .registers 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 0
    and-int/lit8 p0, p0, 0x20

    return p0
.end method

.method public static isFormatSupported(IZ)Z
    .registers 3

    .line 391
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->getFormatSupport(I)I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_f

    if-eqz p1, :cond_d

    const/4 p1, 0x3

    if-ne p0, p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public clearListener()V
    .registers 1

    .line 0
    return-void
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getTrackType()I
.end method

.method public setListener(Lio/bidmachine/media3/exoplayer/RendererCapabilities$Listener;)V
    .registers 2

    .line 0
    return-void
.end method

.method public abstract supportsFormat(Lio/bidmachine/media3/common/Format;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method public abstract supportsMixedMimeTypeAdaptation()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

###### Class io.bidmachine.media3.exoplayer.RendererCapabilities.Listener (io.bidmachine.media3.exoplayer.RendererCapabilities$Listener)
.class public interface abstract Lio/bidmachine/media3/exoplayer/RendererCapabilities$Listener;
.super Ljava/lang/Object;
.source "RendererCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/RendererCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onRendererCapabilitiesChanged(Lio/bidmachine/media3/exoplayer/Renderer;)V
.end method
