###### Class io.bidmachine.media3.decoder.Buffer (io.bidmachine.media3.decoder.Buffer)
.class public abstract Lio/bidmachine/media3/decoder/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"


# instance fields
.field public flags:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addFlag(I)V
    .registers 3

    .line 85
    iget v0, p0, Lio/bidmachine/media3/decoder/Buffer;->flags:I

    or-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/media3/decoder/Buffer;->flags:I

    return-void
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lio/bidmachine/media3/decoder/Buffer;->flags:I

    return-void
.end method

.method public final getFlag(I)Z
    .registers 3

    .line 104
    iget v0, p0, Lio/bidmachine/media3/decoder/Buffer;->flags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 p1, 0x1

    return p1

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public final hasSupplementalData()Z
    .registers 2

    const/high16 v0, 0x10000000

    .line 60
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/decoder/Buffer;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public final isEndOfStream()Z
    .registers 2

    const/4 v0, 0x4

    .line 45
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/decoder/Buffer;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public final isFirstSample()Z
    .registers 2

    const/high16 v0, 0x8000000

    .line 36
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/decoder/Buffer;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public final isKeyFrame()Z
    .registers 2

    const/4 v0, 0x1

    .line 50
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/decoder/Buffer;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public final isLastSample()Z
    .registers 2

    const/high16 v0, 0x20000000

    .line 55
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/decoder/Buffer;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public final notDependedOn()Z
    .registers 2

    const/high16 v0, 0x4000000

    .line 65
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/decoder/Buffer;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public final setFlags(I)V
    .registers 2

    .line 75
    iput p1, p0, Lio/bidmachine/media3/decoder/Buffer;->flags:I

    return-void
.end method
