###### Class io.bidmachine.media3.exoplayer.mediacodec.MediaCodecDecoderException (io.bidmachine.media3.exoplayer.mediacodec.MediaCodecDecoderException)
.class public Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecDecoderException;
.super Lio/bidmachine/media3/decoder/DecoderException;
.source "MediaCodecDecoderException.java"


# instance fields
.field public final codecInfo:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

.field public final diagnosticInfo:Ljava/lang/String;

.field public final errorCode:I


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;)V
    .registers 6

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Decoder failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-nez p2, :cond_f

    move-object v2, v1

    goto :goto_11

    :cond_f
    iget-object v2, p2, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    :goto_11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/bidmachine/media3/decoder/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecDecoderException;->codecInfo:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 42
    instance-of p2, p1, Landroid/media/MediaCodec$CodecException;

    if-eqz p2, :cond_28

    .line 43
    move-object p2, p1

    check-cast p2, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v1

    .line 44
    :cond_28
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecDecoderException;->diagnosticInfo:Ljava/lang/String;

    .line 46
    sget p2, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_35

    .line 47
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecDecoderException;->getErrorCodeV23(Ljava/lang/Throwable;)I

    move-result p1

    goto :goto_39

    .line 48
    :cond_35
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Util;->getErrorCodeFromPlatformDiagnosticsInfo(Ljava/lang/String;)I

    move-result p1

    :goto_39
    iput p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecDecoderException;->errorCode:I

    return-void
.end method

.method public static getErrorCodeV23(Ljava/lang/Throwable;)I
    .registers 2

    .line 53
    instance-of v0, p0, Landroid/media/MediaCodec$CodecException;

    if-eqz v0, :cond_b

    .line 54
    check-cast p0, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p0}, Landroid/media/MediaCodec$CodecException;->getErrorCode()I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method
