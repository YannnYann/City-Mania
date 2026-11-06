###### Class io.bidmachine.media3.exoplayer.video.Av1SampleDependencyParser (io.bidmachine.media3.exoplayer.video.Av1SampleDependencyParser)
.class public final Lio/bidmachine/media3/exoplayer/video/Av1SampleDependencyParser;
.super Ljava/lang/Object;
.source "Av1SampleDependencyParser.java"


# instance fields
.field public sequenceHeader:Lio/bidmachine/media3/container/ObuParser$SequenceHeader;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final canSkipObu(Lio/bidmachine/media3/container/ObuParser$Obu;Z)Z
    .registers 7

    .line 95
    iget v0, p1, Lio/bidmachine/media3/container/ObuParser$Obu;->type:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_29

    const/16 v1, 0xf

    if-ne v0, v1, :cond_b

    goto :goto_29

    :cond_b
    const/4 v1, 0x3

    const/4 v3, 0x0

    if-ne v0, v1, :cond_12

    if-nez p2, :cond_12

    return v3

    :cond_12
    const/4 p2, 0x6

    if-eq v0, p2, :cond_17

    if-ne v0, v1, :cond_28

    .line 101
    :cond_17
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/Av1SampleDependencyParser;->sequenceHeader:Lio/bidmachine/media3/container/ObuParser$SequenceHeader;

    if-eqz p2, :cond_28

    .line 102
    invoke-static {p2, p1}, Lio/bidmachine/media3/container/ObuParser$FrameHeader;->parse(Lio/bidmachine/media3/container/ObuParser$SequenceHeader;Lio/bidmachine/media3/container/ObuParser$Obu;)Lio/bidmachine/media3/container/ObuParser$FrameHeader;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 103
    invoke-virtual {p1}, Lio/bidmachine/media3/container/ObuParser$FrameHeader;->isDependedOn()Z

    move-result p1

    if-nez p1, :cond_28

    return v2

    :cond_28
    return v3

    :cond_29
    :goto_29
    return v2
.end method

.method public queueInputBuffer(Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 86
    invoke-static {p1}, Lio/bidmachine/media3/container/ObuParser;->split(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/video/Av1SampleDependencyParser;->updateSequenceHeaders(Ljava/util/List;)V

    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/Av1SampleDependencyParser;->sequenceHeader:Lio/bidmachine/media3/container/ObuParser$SequenceHeader;

    return-void
.end method

.method public sampleLimitAfterSkippingNonReferenceFrame(Ljava/nio/ByteBuffer;Z)I
    .registers 9

    .line 65
    invoke-static {p1}, Lio/bidmachine/media3/container/ObuParser;->split(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v0

    .line 66
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/video/Av1SampleDependencyParser;->updateSequenceHeaders(Ljava/util/List;)V

    .line 68
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_e
    if-ltz v1, :cond_37

    .line 69
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/container/ObuParser$Obu;

    invoke-virtual {p0, v4, p2}, Lio/bidmachine/media3/exoplayer/video/Av1SampleDependencyParser;->canSkipObu(Lio/bidmachine/media3/container/ObuParser$Obu;Z)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 70
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/container/ObuParser$Obu;

    iget v4, v4, Lio/bidmachine/media3/container/ObuParser$Obu;->type:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_32

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/container/ObuParser$Obu;

    iget v4, v4, Lio/bidmachine/media3/container/ObuParser$Obu;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_34

    :cond_32
    add-int/lit8 v3, v3, 0x1

    :cond_34
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    :cond_37
    if-gt v3, v2, :cond_54

    add-int/lit8 p2, v1, 0x1

    const/16 v2, 0x8

    if-lt p2, v2, :cond_40

    goto :goto_54

    :cond_40
    if-ltz v1, :cond_4f

    .line 79
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/container/ObuParser$Obu;

    iget-object p1, p1, Lio/bidmachine/media3/container/ObuParser$Obu;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    return p1

    .line 81
    :cond_4f
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    return p1

    .line 76
    :cond_54
    :goto_54
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    return p1
.end method

.method public final updateSequenceHeaders(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/container/ObuParser$Obu;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 109
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 110
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/container/ObuParser$Obu;

    iget v1, v1, Lio/bidmachine/media3/container/ObuParser$Obu;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    .line 111
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/container/ObuParser$Obu;

    invoke-static {v1}, Lio/bidmachine/media3/container/ObuParser$SequenceHeader;->parse(Lio/bidmachine/media3/container/ObuParser$Obu;)Lio/bidmachine/media3/container/ObuParser$SequenceHeader;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/video/Av1SampleDependencyParser;->sequenceHeader:Lio/bidmachine/media3/container/ObuParser$SequenceHeader;

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    return-void
.end method
