###### Class io.bidmachine.media3.exoplayer.mediacodec.MediaCodecAdapter (io.bidmachine.media3.exoplayer.mediacodec.MediaCodecAdapter)
.class public interface abstract Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;
.super Ljava/lang/Object;
.source "MediaCodecAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnBufferAvailableListener;,
        Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;,
        Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;,
        Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;
    }
.end annotation


# virtual methods
.method public abstract dequeueInputBufferIndex()I
.end method

.method public abstract dequeueOutputBufferIndex(Landroid/media/MediaCodec$BufferInfo;)I
.end method

.method public abstract detachOutputSurface()V
.end method

.method public abstract flush()V
.end method

.method public abstract getInputBuffer(I)Ljava/nio/ByteBuffer;
.end method

.method public abstract getOutputBuffer(I)Ljava/nio/ByteBuffer;
.end method

.method public abstract getOutputFormat()Landroid/media/MediaFormat;
.end method

.method public abstract needsReconfiguration()Z
.end method

.method public abstract queueInputBuffer(IIIJI)V
.end method

.method public abstract queueSecureInputBuffer(IILio/bidmachine/media3/decoder/CryptoInfo;JI)V
.end method

.method public registerOnBufferAvailableListener(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnBufferAvailableListener;)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract release()V
.end method

.method public abstract releaseOutputBuffer(IJ)V
.end method

.method public abstract releaseOutputBuffer(IZ)V
.end method

.method public abstract setOnFrameRenderedListener(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;Landroid/os/Handler;)V
.end method

.method public abstract setOutputSurface(Landroid/view/Surface;)V
.end method

.method public abstract setParameters(Landroid/os/Bundle;)V
.end method

.method public abstract setVideoScalingMode(I)V
.end method

###### Class io.bidmachine.media3.exoplayer.mediacodec.MediaCodecAdapter.Configuration (io.bidmachine.media3.exoplayer.mediacodec.MediaCodecAdapter$Configuration)
.class public final Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;
.super Ljava/lang/Object;
.source "MediaCodecAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation


# instance fields
.field public final codecInfo:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

.field public final crypto:Landroid/media/MediaCrypto;

.field public final format:Lio/bidmachine/media3/common/Format;

.field public final loudnessCodecController:Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;

.field public final mediaFormat:Landroid/media/MediaFormat;

.field public final surface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/media/MediaFormat;Lio/bidmachine/media3/common/Format;Landroid/view/Surface;Landroid/media/MediaCrypto;Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;)V
    .registers 7

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->codecInfo:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 116
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->mediaFormat:Landroid/media/MediaFormat;

    .line 117
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->format:Lio/bidmachine/media3/common/Format;

    .line 118
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->surface:Landroid/view/Surface;

    .line 119
    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->crypto:Landroid/media/MediaCrypto;

    .line 120
    iput-object p6, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->loudnessCodecController:Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;

    return-void
.end method

.method public static createForAudioDecoding(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/media/MediaFormat;Lio/bidmachine/media3/common/Format;Landroid/media/MediaCrypto;Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;
    .registers 12

    .line 62
    new-instance v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;-><init>(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/media/MediaFormat;Lio/bidmachine/media3/common/Format;Landroid/view/Surface;Landroid/media/MediaCrypto;Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;)V

    return-object v0
.end method

.method public static createForVideoDecoding(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/media/MediaFormat;Lio/bidmachine/media3/common/Format;Landroid/view/Surface;Landroid/media/MediaCrypto;)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;
    .registers 12

    .line 82
    new-instance v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;-><init>(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/media/MediaFormat;Lio/bidmachine/media3/common/Format;Landroid/view/Surface;Landroid/media/MediaCrypto;Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;)V

    return-object v0
.end method

###### Class io.bidmachine.media3.exoplayer.mediacodec.MediaCodecAdapter.Factory (io.bidmachine.media3.exoplayer.mediacodec.MediaCodecAdapter$Factory)
.class public interface abstract Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;
.super Ljava/lang/Object;
.source "MediaCodecAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# static fields
.field public static final DEFAULT:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 132
    new-instance v0, Lio/bidmachine/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;-><init>()V

    sput-object v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;->DEFAULT:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;
    .registers 2

    .line 141
    new-instance v0, Lio/bidmachine/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;

    invoke-direct {v0, p0}, Lio/bidmachine/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public abstract createAdapter(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class io.bidmachine.media3.exoplayer.mediacodec.MediaCodecAdapter.OnBufferAvailableListener (io.bidmachine.media3.exoplayer.mediacodec.MediaCodecAdapter$OnBufferAvailableListener)
.class public interface abstract Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnBufferAvailableListener;
.super Ljava/lang/Object;
.source "MediaCodecAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnBufferAvailableListener"
.end annotation


# virtual methods
.method public onInputBufferAvailable()V
    .registers 1

    .line 0
    return-void
.end method

.method public onOutputBufferAvailable()V
    .registers 1

    .line 0
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.mediacodec.MediaCodecAdapter.OnFrameRenderedListener (io.bidmachine.media3.exoplayer.mediacodec.MediaCodecAdapter$OnFrameRenderedListener)
.class public interface abstract Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;
.super Ljava/lang/Object;
.source "MediaCodecAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnFrameRenderedListener"
.end annotation


# virtual methods
.method public abstract onFrameRendered(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;JJ)V
.end method
