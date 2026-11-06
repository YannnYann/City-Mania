###### Class io.bidmachine.media3.exoplayer.mediacodec.SynchronousMediaCodecAdapter (io.bidmachine.media3.exoplayer.mediacodec.SynchronousMediaCodecAdapter)
.class public final Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;
.super Ljava/lang/Object;
.source "SynchronousMediaCodecAdapter.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$Factory;
    }
.end annotation


# instance fields
.field public final codec:Landroid/media/MediaCodec;

.field public final loudnessCodecController:Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;


# direct methods
.method public static synthetic $r8$lambda$CvS9mjIL3XDq4a2XcsrF0pEIFAE(Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;Landroid/media/MediaCodec;JJ)V
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p2, p1

    move-object p1, p0

    move-object p0, p2

    move-wide p2, p3

    move-wide p4, p5

    .line 186
    invoke-interface/range {p0 .. p5}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;->onFrameRendered(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaCodec;Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;)V
    .registers 5

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 92
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;->loudnessCodecController:Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;

    .line 93
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_12

    if-eqz p2, :cond_12

    .line 94
    invoke-virtual {p2, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;->addMediaCodec(Landroid/media/MediaCodec;)V

    :cond_12
    return-void
.end method

.method public synthetic constructor <init>(Landroid/media/MediaCodec;Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$1;)V
    .registers 4

    .line 42
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;-><init>(Landroid/media/MediaCodec;Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;)V

    return-void
.end method


# virtual methods
.method public dequeueInputBufferIndex()I
    .registers 4

    .line 105
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    return v0
.end method

.method public dequeueOutputBufferIndex(Landroid/media/MediaCodec$BufferInfo;)I
    .registers 5

    .line 112
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    return v0
.end method

.method public detachOutputSurface()V
    .registers 2

    .line 200
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;)V

    return-void
.end method

.method public flush()V
    .registers 2

    .line 160
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    return-void
.end method

.method public getInputBuffer(I)Ljava/nio/ByteBuffer;
    .registers 3

    .line 126
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .registers 3

    .line 132
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public getOutputFormat()Landroid/media/MediaFormat;
    .registers 2

    .line 120
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public needsReconfiguration()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public queueInputBuffer(IIIJI)V
    .registers 14

    .line 138
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void
.end method

.method public queueSecureInputBuffer(IILio/bidmachine/media3/decoder/CryptoInfo;JI)V
    .registers 14

    .line 144
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 145
    invoke-virtual {p3}, Lio/bidmachine/media3/decoder/CryptoInfo;->getFrameworkCryptoInfo()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v3

    move v1, p1

    move v2, p2

    move-wide v4, p4

    move v6, p6

    .line 144
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    return-void
.end method

.method public release()V
    .registers 4

    const/16 v0, 0x23

    .line 166
    :try_start_2
    sget v1, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_14

    const/16 v2, 0x21

    if-ge v1, v2, :cond_14

    .line 171
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_12

    goto :goto_14

    :catchall_12
    move-exception v1

    goto :goto_25

    :cond_14
    :goto_14
    if-lt v1, v0, :cond_1f

    .line 174
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;->loudnessCodecController:Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;

    if-eqz v0, :cond_1f

    .line 175
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;->removeMediaCodec(Landroid/media/MediaCodec;)V

    .line 177
    :cond_1f
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    return-void

    .line 174
    :goto_25
    sget v2, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    if-lt v2, v0, :cond_32

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;->loudnessCodecController:Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;

    if-eqz v0, :cond_32

    .line 175
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;->removeMediaCodec(Landroid/media/MediaCodec;)V

    .line 177
    :cond_32
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 178
    throw v1
.end method

.method public releaseOutputBuffer(IJ)V
    .registers 5

    .line 155
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    return-void
.end method

.method public releaseOutputBuffer(IZ)V
    .registers 4

    .line 150
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public setOnFrameRenderedListener(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;Landroid/os/Handler;)V
    .registers 5

    .line 184
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    new-instance v1, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;)V

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public setOutputSurface(Landroid/view/Surface;)V
    .registers 3

    .line 194
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setParameters(Landroid/os/Bundle;)V
    .registers 3

    .line 205
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method public setVideoScalingMode(I)V
    .registers 3

    .line 210
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.mediacodec.SynchronousMediaCodecAdapter.AnonymousClass1 (io.bidmachine.media3.exoplayer.mediacodec.SynchronousMediaCodecAdapter$1)
.class public synthetic Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$1;
.super Ljava/lang/Object;
.source "SynchronousMediaCodecAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.exoplayer.mediacodec.SynchronousMediaCodecAdapter.Factory (io.bidmachine.media3.exoplayer.mediacodec.SynchronousMediaCodecAdapter$Factory)
.class public Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$Factory;
.super Ljava/lang/Object;
.source "SynchronousMediaCodecAdapter.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAdapter(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 52
    :try_start_1
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$Factory;->createCodec(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;)Landroid/media/MediaCodec;

    move-result-object v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_42
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_5} :catch_40

    .line 53
    :try_start_5
    const-string v2, "configureCodec"

    invoke-static {v2}, Lio/bidmachine/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 55
    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->surface:Landroid/view/Surface;

    if-nez v2, :cond_22

    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->codecInfo:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-boolean v3, v3, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->detachedSurfaceSupported:Z

    if-eqz v3, :cond_22

    sget v3, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v4, 0x23

    if-lt v3, v4, :cond_22

    const/16 v3, 0x8

    goto :goto_23

    :catch_1d
    move-exception p1

    :goto_1e
    move-object v0, v1

    goto :goto_43

    :catch_20
    move-exception p1

    goto :goto_1e

    :cond_22
    const/4 v3, 0x0

    .line 60
    :goto_23
    iget-object v4, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->mediaFormat:Landroid/media/MediaFormat;

    iget-object v5, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->crypto:Landroid/media/MediaCrypto;

    invoke-virtual {v1, v4, v2, v5, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 62
    invoke-static {}, Lio/bidmachine/media3/common/util/TraceUtil;->endSection()V

    .line 63
    const-string v2, "startCodec"

    invoke-static {v2}, Lio/bidmachine/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 65
    invoke-static {}, Lio/bidmachine/media3/common/util/TraceUtil;->endSection()V

    .line 66
    new-instance v2, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->loudnessCodecController:Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;

    invoke-direct {v2, v1, p1, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;-><init>(Landroid/media/MediaCodec;Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$1;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_3f} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_3f} :catch_1d

    return-object v2

    :catch_40
    move-exception p1

    goto :goto_43

    :catch_42
    move-exception p1

    :goto_43
    if-eqz v0, :cond_48

    .line 69
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 71
    :cond_48
    throw p1
.end method

.method public createCodec(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;)Landroid/media/MediaCodec;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->codecInfo:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->codecInfo:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCodec:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 80
    invoke-static {p1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    .line 81
    invoke-static {}, Lio/bidmachine/media3/common/util/TraceUtil;->endSection()V

    return-object p1
.end method

###### Class io.bidmachine.media3.exoplayer.mediacodec.SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.mediacodec.SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;

.field public final synthetic f$1:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;

    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .registers 13

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;->$r8$lambda$CvS9mjIL3XDq4a2XcsrF0pEIFAE(Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;Landroid/media/MediaCodec;JJ)V

    return-void
.end method
