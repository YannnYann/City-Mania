###### Class io.bidmachine.media3.exoplayer.audio.DefaultAudioTrackBufferSizeProvider (io.bidmachine.media3.exoplayer.audio.DefaultAudioTrackBufferSizeProvider)
.class public Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;
.super Ljava/lang/Object;
.source "DefaultAudioTrackBufferSizeProvider.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;
    }
.end annotation


# instance fields
.field public final ac3BufferMultiplicationFactor:I

.field public final dtshdBufferMultiplicationFactor:I

.field public final maxPcmBufferDurationUs:I

.field public final minPcmBufferDurationUs:I

.field public final offloadBufferDurationUs:I

.field public final passthroughBufferDurationUs:I

.field public final pcmBufferMultiplicationFactor:I


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;)V
    .registers 3

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->access$000(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;->minPcmBufferDurationUs:I

    .line 198
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->access$100(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;->maxPcmBufferDurationUs:I

    .line 199
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->access$200(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;->pcmBufferMultiplicationFactor:I

    .line 200
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->access$300(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;->passthroughBufferDurationUs:I

    .line 201
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->access$400(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;->offloadBufferDurationUs:I

    .line 202
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->access$500(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;->ac3BufferMultiplicationFactor:I

    .line 203
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->access$600(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;->dtshdBufferMultiplicationFactor:I

    return-void
.end method

.method public static durationUsToBytes(III)I
    .registers 5

    int-to-long v0, p0

    int-to-long p0, p1

    mul-long/2addr v0, p0

    int-to-long p0, p2

    mul-long/2addr v0, p0

    const-wide/32 p0, 0xf4240

    .line 280
    div-long/2addr v0, p0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result p0

    return p0
.end method

.method public static getMaximumEncodedRateBytesPerSecond(I)I
    .registers 2

    const/16 v0, 0x14

    if-eq p0, v0, :cond_41

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_3d

    packed-switch p0, :pswitch_data_46

    packed-switch p0, :pswitch_data_5a

    .line 325
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_14
    const p0, 0x52080

    return p0

    :pswitch_18
    const p0, 0x3e800

    return p0

    :pswitch_1c
    const/16 p0, 0x1f40

    return p0

    :pswitch_1f
    const p0, 0x2ebae4

    return p0

    :pswitch_23
    const/16 p0, 0x1b58

    return p0

    :pswitch_26
    const/16 p0, 0x3e80

    return p0

    :pswitch_29
    const p0, 0x186a0

    return p0

    :pswitch_2d
    const p0, 0x9c40

    return p0

    :pswitch_31
    const p0, 0x2ee00

    return p0

    :pswitch_35
    const p0, 0xbb800

    return p0

    :pswitch_39
    const p0, 0x13880

    return p0

    :cond_3d
    :pswitch_3d
    const p0, 0x225510

    return p0

    :cond_41
    const p0, 0xf906

    return p0

    nop

    :pswitch_data_46
    .packed-switch 0x5
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_3d
        :pswitch_2d
        :pswitch_29
        :pswitch_26
        :pswitch_23
    .end packed-switch

    :pswitch_data_5a
    .packed-switch 0xe
        :pswitch_1f
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_35
    .end packed-switch
.end method


# virtual methods
.method public get1xBufferSizeInBytes(IIIIII)I
    .registers 7

    if-eqz p3, :cond_18

    const/4 p1, 0x1

    if-eq p3, p1, :cond_13

    const/4 p1, 0x2

    if-ne p3, p1, :cond_d

    .line 238
    invoke-virtual {p0, p2, p6}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;->getPassthroughBufferSizeInBytes(II)I

    move-result p1

    return p1

    .line 242
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 240
    :cond_13
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;->getOffloadBufferSizeInBytes(I)I

    move-result p1

    return p1

    .line 236
    :cond_18
    invoke-virtual {p0, p1, p5, p4}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;->getPcmBufferSizeInBytes(III)I

    move-result p1

    return p1
.end method

.method public getBufferSizeInBytes(IIIIIID)I
    .registers 9

    .line 216
    invoke-virtual/range {p0 .. p6}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;->get1xBufferSizeInBytes(IIIIII)I

    move-result p2

    int-to-double p2, p2

    mul-double/2addr p2, p7

    double-to-int p2, p2

    .line 221
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, p4

    add-int/lit8 p1, p1, -0x1

    .line 223
    div-int/2addr p1, p4

    mul-int/2addr p1, p4

    return p1
.end method

.method public getOffloadBufferSizeInBytes(I)I
    .registers 6

    .line 275
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;->getMaximumEncodedRateBytesPerSecond(I)I

    move-result p1

    .line 276
    iget v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;->offloadBufferDurationUs:I

    int-to-long v0, v0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result p1

    return p1
.end method

.method public getPassthroughBufferSizeInBytes(II)I
    .registers 6

    .line 256
    iget v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;->passthroughBufferDurationUs:I

    const/4 v1, 0x5

    const/16 v2, 0x8

    if-ne p1, v1, :cond_b

    .line 258
    iget v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;->ac3BufferMultiplicationFactor:I

    :goto_9
    mul-int/2addr v0, v1

    goto :goto_10

    :cond_b
    if-ne p1, v2, :cond_10

    .line 263
    iget v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;->dtshdBufferMultiplicationFactor:I

    goto :goto_9

    :cond_10
    :goto_10
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1a

    .line 268
    sget-object p1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p2, v2, p1}, Lcom/google/common/math/IntMath;->divide(IILjava/math/RoundingMode;)I

    move-result p1

    goto :goto_1e

    .line 269
    :cond_1a
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;->getMaximumEncodedRateBytesPerSecond(I)I

    move-result p1

    :goto_1e
    int-to-long v0, v0

    int-to-long p1, p1

    mul-long/2addr v0, p1

    const-wide/32 p1, 0xf4240

    .line 270
    div-long/2addr v0, p1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result p1

    return p1
.end method

.method public getPcmBufferSizeInBytes(III)I
    .registers 6

    .line 248
    iget v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;->pcmBufferMultiplicationFactor:I

    mul-int/2addr p1, v0

    .line 249
    iget v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;->minPcmBufferDurationUs:I

    invoke-static {v0, p2, p3}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;->durationUsToBytes(III)I

    move-result v0

    .line 250
    iget v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;->maxPcmBufferDurationUs:I

    invoke-static {v1, p2, p3}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;->durationUsToBytes(III)I

    move-result p2

    .line 251
    invoke-static {p1, v0, p2}, Lio/bidmachine/media3/common/util/Util;->constrainValue(III)I

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.exoplayer.audio.DefaultAudioTrackBufferSizeProvider.Builder (io.bidmachine.media3.exoplayer.audio.DefaultAudioTrackBufferSizeProvider$Builder)
.class public Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;
.super Ljava/lang/Object;
.source "DefaultAudioTrackBufferSizeProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public ac3BufferMultiplicationFactor:I

.field public dtshdBufferMultiplicationFactor:I

.field public maxPcmBufferDurationUs:I

.field public minPcmBufferDurationUs:I

.field public offloadBufferDurationUs:I

.field public passthroughBufferDurationUs:I

.field public pcmBufferMultiplicationFactor:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3d090

    .line 84
    iput v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->minPcmBufferDurationUs:I

    const v1, 0xb71b0

    .line 85
    iput v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->maxPcmBufferDurationUs:I

    const/4 v1, 0x4

    .line 86
    iput v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->pcmBufferMultiplicationFactor:I

    .line 87
    iput v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->passthroughBufferDurationUs:I

    const v0, 0x2faf080

    .line 88
    iput v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->offloadBufferDurationUs:I

    const/4 v0, 0x2

    .line 89
    iput v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->ac3BufferMultiplicationFactor:I

    .line 90
    iput v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->dtshdBufferMultiplicationFactor:I

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I
    .registers 1

    .line 72
    iget p0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->minPcmBufferDurationUs:I

    return p0
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I
    .registers 1

    .line 72
    iget p0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->maxPcmBufferDurationUs:I

    return p0
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I
    .registers 1

    .line 72
    iget p0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->pcmBufferMultiplicationFactor:I

    return p0
.end method

.method public static synthetic access$300(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I
    .registers 1

    .line 72
    iget p0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->passthroughBufferDurationUs:I

    return p0
.end method

.method public static synthetic access$400(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I
    .registers 1

    .line 72
    iget p0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->offloadBufferDurationUs:I

    return p0
.end method

.method public static synthetic access$500(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I
    .registers 1

    .line 72
    iget p0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->ac3BufferMultiplicationFactor:I

    return p0
.end method

.method public static synthetic access$600(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I
    .registers 1

    .line 72
    iget p0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->dtshdBufferMultiplicationFactor:I

    return p0
.end method


# virtual methods
.method public build()Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;
    .registers 2

    .line 165
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;

    invoke-direct {v0, p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;-><init>(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;)V

    return-object v0
.end method
