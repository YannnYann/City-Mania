###### Class com.facebook.ads.redexgen.X.S5 (com.facebook.ads.redexgen.X.S5)
.class public final Lcom/facebook/ads/redexgen/X/S5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Sn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$Factory;
    }
.end annotation


# instance fields
.field public A00:[Ljava/nio/ByteBuffer;

.field public A01:[Ljava/nio/ByteBuffer;

.field public final A02:Landroid/media/MediaCodec;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;)V
    .registers 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 68782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68783
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/S5;->A02:Landroid/media/MediaCodec;

    .line 68784
    return-void
.end method


# virtual methods
.method public final synthetic A00(Lcom/facebook/ads/redexgen/X/Sm;Landroid/media/MediaCodec;JJ)V
    .registers 13

    .line 68785
    move-object v1, p0

    move-object v0, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-interface/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Sm;->AF2(Lcom/facebook/ads/redexgen/X/Sn;JJ)V

    return-void
.end method

.method public final A5h(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;ILjava/lang/Object;)V
    .registers 7
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 68786
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A02:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 68787
    return-void
.end method

.method public final A6R()I
    .registers 4

    .line 68788
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/S5;->A02:Landroid/media/MediaCodec;

    const-wide/16 v0, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    return v0
.end method

.method public final A6T(Landroid/media/MediaCodec$BufferInfo;)I
    .registers 6

    .line 68789
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/S5;->A02:Landroid/media/MediaCodec;

    const-wide/16 v0, 0x0

    invoke-virtual {v2, p1, v0, v1}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    .line 68790
    .local v0, "index":I
    const/4 v2, -0x3

    if-ne v3, v2, :cond_19

    sget v1, Lcom/facebook/ads/redexgen/X/N1;->A02:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_19

    .line 68791
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A02:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A01:[Ljava/nio/ByteBuffer;

    .line 68792
    :cond_19
    if-eq v3, v2, :cond_0

    .line 68793
    return v3
.end method

.method public final A8v(I)Ljava/nio/ByteBuffer;
    .registers 4

    .line 68794
    sget v1, Lcom/facebook/ads/redexgen/X/N1;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_d

    .line 68795
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A02:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 68796
    :cond_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A00:[Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final A9H(I)Ljava/nio/ByteBuffer;
    .registers 4

    .line 68797
    sget v1, Lcom/facebook/ads/redexgen/X/N1;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_d

    .line 68798
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A02:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 68799
    :cond_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A01:[Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final A9I()Landroid/media/MediaFormat;
    .registers 2

    .line 68800
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A02:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public final A9M()Landroid/util/Pair;
    .registers 4
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 68801
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final A9x()I
    .registers 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 68802
    const/4 v0, 0x0

    return v0
.end method

.method public final AIV(IIIJI)V
    .registers 14

    .line 68803
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A02:Landroid/media/MediaCodec;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 68804
    return-void
.end method

.method public final AIX(IILcom/facebook/ads/redexgen/X/No;JI)V
    .registers 14

    .line 68805
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A02:Landroid/media/MediaCodec;

    .line 68806
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/No;->A00()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v3

    .line 68807
    move v1, p1

    move v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 68808
    return-void
.end method

.method public final AIp()V
    .registers 2

    .line 68809
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A00:[Ljava/nio/ByteBuffer;

    .line 68810
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A01:[Ljava/nio/ByteBuffer;

    .line 68811
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A02:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 68812
    return-void
.end method

.method public final AIv(IJ)V
    .registers 5

    .line 68813
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A02:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 68814
    return-void
.end method

.method public final AIw(IZ)V
    .registers 4

    .line 68815
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A02:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 68816
    return-void
.end method

.method public final AKs(Lcom/facebook/ads/redexgen/X/Sm;Landroid/os/Handler;)V
    .registers 5

    .line 68817
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/S5;->A02:Landroid/media/MediaCodec;

    new-instance v0, Lcom/facebook/ads/redexgen/X/TO;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/TO;-><init>(Lcom/facebook/ads/redexgen/X/S5;Lcom/facebook/ads/redexgen/X/Sm;)V

    invoke-virtual {v1, v0, p2}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    .line 68818
    return-void
.end method

.method public final AKt(Landroid/view/Surface;)V
    .registers 3

    .line 68819
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A02:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    .line 68820
    return-void
.end method

.method public final ALA(I)V
    .registers 3

    .line 68821
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A02:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    .line 68822
    return-void
.end method

.method public final flush()V
    .registers 2

    .line 68823
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A02:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 68824
    return-void
.end method

.method public final reset()V
    .registers 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 68825
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A02:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->reset()V

    .line 68826
    return-void
.end method

.method public final start()V
    .registers 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 68827
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A02:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 68828
    return-void
.end method

.method public final stop()V
    .registers 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 68829
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A02:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 68830
    return-void
.end method

###### Class com.facebook.ads.redexgen.X.TO (com.facebook.ads.redexgen.X.TO)
.class public final synthetic Lcom/facebook/ads/redexgen/X/TO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Sm;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/S5;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/S5;Lcom/facebook/ads/redexgen/X/Sm;)V
    .registers 3

    .line 71694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TO;->A01:Lcom/facebook/ads/redexgen/X/S5;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/TO;->A00:Lcom/facebook/ads/redexgen/X/Sm;

    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .registers 13

    .line 71695
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TO;->A01:Lcom/facebook/ads/redexgen/X/S5;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TO;->A00:Lcom/facebook/ads/redexgen/X/Sm;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/S5;->A00(Lcom/facebook/ads/redexgen/X/Sm;Landroid/media/MediaCodec;JJ)V

    return-void
.end method
