###### Class io.bidmachine.media3.extractor.flac.FlacBinarySearchSeeker (io.bidmachine.media3.extractor.flac.FlacBinarySearchSeeker)
.class public final Lio/bidmachine/media3/extractor/flac/FlacBinarySearchSeeker;
.super Lio/bidmachine/media3/extractor/BinarySearchSeeker;
.source "FlacBinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/FlacStreamMetadata;IJJ)V
    .registers 23

    move-object/from16 v0, p1

    .line 51
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lio/bidmachine/media3/extractor/flac/FlacBinarySearchSeeker$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lio/bidmachine/media3/extractor/flac/FlacBinarySearchSeeker$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/extractor/FlacStreamMetadata;)V

    new-instance v2, Lio/bidmachine/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;

    const/4 v3, 0x0

    move/from16 v4, p2

    invoke-direct {v2, v0, v4, v3}, Lio/bidmachine/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;-><init>(Lio/bidmachine/media3/extractor/FlacStreamMetadata;ILio/bidmachine/media3/extractor/flac/FlacBinarySearchSeeker$1;)V

    .line 53
    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/FlacStreamMetadata;->getDurationUs()J

    move-result-wide v3

    iget-wide v7, v0, Lio/bidmachine/media3/extractor/FlacStreamMetadata;->totalSamples:J

    .line 58
    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/FlacStreamMetadata;->getApproxBytesPerFrame()J

    move-result-wide v13

    const/4 v5, 0x6

    iget v0, v0, Lio/bidmachine/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    .line 59
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    .line 50
    invoke-direct/range {v0 .. v15}, Lio/bidmachine/media3/extractor/BinarySearchSeeker;-><init>(Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJJI)V

    return-void
.end method

###### Class io.bidmachine.media3.extractor.flac.FlacBinarySearchSeeker.AnonymousClass1 (io.bidmachine.media3.extractor.flac.FlacBinarySearchSeeker$1)
.class public synthetic Lio/bidmachine/media3/extractor/flac/FlacBinarySearchSeeker$1;
.super Ljava/lang/Object;
.source "FlacBinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/flac/FlacBinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.extractor.flac.FlacBinarySearchSeeker.FlacTimestampSeeker (io.bidmachine.media3.extractor.flac.FlacBinarySearchSeeker$FlacTimestampSeeker)
.class public final Lio/bidmachine/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;
.super Ljava/lang/Object;
.source "FlacBinarySearchSeeker.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSeeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/flac/FlacBinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlacTimestampSeeker"
.end annotation


# instance fields
.field public final flacStreamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;

.field public final frameStartMarker:I

.field public final sampleNumberHolder:Lio/bidmachine/media3/extractor/FlacFrameReader$SampleNumberHolder;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/FlacStreamMetadata;I)V
    .registers 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lio/bidmachine/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->flacStreamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    .line 71
    iput p2, p0, Lio/bidmachine/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->frameStartMarker:I

    .line 72
    new-instance p1, Lio/bidmachine/media3/extractor/FlacFrameReader$SampleNumberHolder;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/FlacFrameReader$SampleNumberHolder;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->sampleNumberHolder:Lio/bidmachine/media3/extractor/FlacFrameReader$SampleNumberHolder;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/extractor/FlacStreamMetadata;ILio/bidmachine/media3/extractor/flac/FlacBinarySearchSeeker$1;)V
    .registers 4

    .line 63
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;-><init>(Lio/bidmachine/media3/extractor/FlacStreamMetadata;I)V

    return-void
.end method


# virtual methods
.method public final findNextFrame(Lio/bidmachine/media3/extractor/ExtractorInput;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    :goto_0
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v0

    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    const-wide/16 v4, 0x6

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_20

    iget-object v0, p0, Lio/bidmachine/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->flacStreamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    iget v1, p0, Lio/bidmachine/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->frameStartMarker:I

    iget-object v2, p0, Lio/bidmachine/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->sampleNumberHolder:Lio/bidmachine/media3/extractor/FlacFrameReader$SampleNumberHolder;

    .line 117
    invoke-static {p1, v0, v1, v2}, Lio/bidmachine/media3/extractor/FlacFrameReader;->checkFrameHeaderFromPeek(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/FlacStreamMetadata;ILio/bidmachine/media3/extractor/FlacFrameReader$SampleNumberHolder;)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    .line 119
    invoke-interface {p1, v0}, Lio/bidmachine/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_0

    .line 122
    :cond_20
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v0

    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3f

    .line 123
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-interface {p1, v0}, Lio/bidmachine/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 124
    iget-object p1, p0, Lio/bidmachine/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->flacStreamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    iget-wide v0, p1, Lio/bidmachine/media3/extractor/FlacStreamMetadata;->totalSamples:J

    return-wide v0

    .line 127
    :cond_3f
    iget-object p1, p0, Lio/bidmachine/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->sampleNumberHolder:Lio/bidmachine/media3/extractor/FlacFrameReader$SampleNumberHolder;

    iget-wide v0, p1, Lio/bidmachine/media3/extractor/FlacFrameReader$SampleNumberHolder;->sampleNumber:J

    return-wide v0
.end method

.method public searchForTimestamp(Lio/bidmachine/media3/extractor/ExtractorInput;J)Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    .line 81
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->findNextFrame(Lio/bidmachine/media3/extractor/ExtractorInput;)J

    move-result-wide v2

    .line 82
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v4

    .line 84
    iget-object v6, p0, Lio/bidmachine/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->flacStreamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    iget v6, v6, Lio/bidmachine/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    const/4 v7, 0x6

    .line 85
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 84
    invoke-interface {p1, v6}, Lio/bidmachine/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 88
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->findNextFrame(Lio/bidmachine/media3/extractor/ExtractorInput;)J

    move-result-wide v6

    .line 89
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v8

    cmp-long p1, v2, p2

    if-gtz p1, :cond_2d

    cmp-long p1, v6, p2

    if-lez p1, :cond_2d

    .line 93
    invoke-static {v4, v5}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->targetFoundResult(J)Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object p1

    return-object p1

    :cond_2d
    cmp-long p1, v6, p2

    if-gtz p1, :cond_36

    .line 95
    invoke-static {v6, v7, v8, v9}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->underestimatedResult(JJ)Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object p1

    return-object p1

    .line 98
    :cond_36
    invoke-static {v2, v3, v0, v1}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->overestimatedResult(JJ)Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.media3.extractor.flac.FlacBinarySearchSeeker$$ExternalSyntheticLambda0 (io.bidmachine.media3.extractor.flac.FlacBinarySearchSeeker$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/extractor/flac/FlacBinarySearchSeeker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/extractor/FlacStreamMetadata;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/extractor/FlacStreamMetadata;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/flac/FlacBinarySearchSeeker$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    return-void
.end method


# virtual methods
.method public final timeUsToTargetTime(J)J
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/extractor/flac/FlacBinarySearchSeeker$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/extractor/FlacStreamMetadata;->getSampleNumber(J)J

    move-result-wide p1

    return-wide p1
.end method
