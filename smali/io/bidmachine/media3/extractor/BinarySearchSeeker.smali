###### Class io.bidmachine.media3.extractor.BinarySearchSeeker (io.bidmachine.media3.extractor.BinarySearchSeeker)
.class public abstract Lio/bidmachine/media3/extractor/BinarySearchSeeker;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSeeker;,
        Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;,
        Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;,
        Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;,
        Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;,
        Lio/bidmachine/media3/extractor/BinarySearchSeeker$DefaultSeekTimestampConverter;
    }
.end annotation


# instance fields
.field public final minimumSearchRange:I

.field public final seekMap:Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

.field public seekOperationParams:Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;

.field public final timestampSeeker:Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSeeker;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJJI)V
    .registers 30

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p2

    .line 132
    iput-object v0, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->timestampSeeker:Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSeeker;

    move/from16 v0, p15

    .line 133
    iput v0, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->minimumSearchRange:I

    .line 134
    new-instance v0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    move-object v1, p1

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move-wide/from16 v10, p11

    move-wide/from16 v12, p13

    invoke-direct/range {v0 .. v13}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;-><init>(Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;JJJJJJ)V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->seekMap:Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    return-void
.end method


# virtual methods
.method public createSeekParamsForTargetTimeUs(J)Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;
    .registers 20

    move-object/from16 v0, p0

    .line 226
    new-instance v1, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    iget-object v2, v0, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->seekMap:Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    move-wide/from16 v3, p1

    .line 228
    invoke-virtual {v2, v3, v4}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->timeUsToTargetTime(J)J

    move-result-wide v5

    iget-object v2, v0, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->seekMap:Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 229
    invoke-static {v2}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->access$1000(Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J

    move-result-wide v7

    iget-object v2, v0, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->seekMap:Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 230
    invoke-static {v2}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->access$1100(Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J

    move-result-wide v9

    iget-object v2, v0, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->seekMap:Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 231
    invoke-static {v2}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->access$1200(Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J

    move-result-wide v11

    iget-object v2, v0, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->seekMap:Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 232
    invoke-static {v2}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->access$1300(Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J

    move-result-wide v13

    iget-object v2, v0, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->seekMap:Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 233
    invoke-static {v2}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->access$1400(Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J

    move-result-wide v15

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move-wide v8, v9

    move-wide v10, v11

    move-wide v12, v13

    move-wide v14, v15

    invoke-direct/range {v1 .. v15}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;-><init>(JJJJJJJ)V

    return-object v1
.end method

.method public final getSeekMap()Lio/bidmachine/media3/extractor/SeekMap;
    .registers 2

    .line 147
    iget-object v0, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->seekMap:Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    return-object v0
.end method

.method public handlePendingSeek(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    :goto_0
    iget-object v0, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->seekOperationParams:Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 181
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 182
    invoke-static {v0}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->access$100(Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;)J

    move-result-wide v1

    .line 183
    invoke-static {v0}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->access$200(Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;)J

    move-result-wide v3

    .line 184
    invoke-static {v0}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->access$300(Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;)J

    move-result-wide v5

    sub-long/2addr v3, v1

    .line 186
    iget v7, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->minimumSearchRange:I

    int-to-long v7, v7

    cmp-long v3, v3, v7

    const/4 v4, 0x0

    if-gtz v3, :cond_25

    .line 188
    invoke-virtual {p0, v4, v1, v2}, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->markSeekOperationFinished(ZJ)V

    .line 189
    invoke-virtual {p0, p1, v1, v2, p2}, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->seekToPosition(Lio/bidmachine/media3/extractor/ExtractorInput;JLio/bidmachine/media3/extractor/PositionHolder;)I

    move-result p1

    return p1

    .line 191
    :cond_25
    invoke-virtual {p0, p1, v5, v6}, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->skipInputUntilPosition(Lio/bidmachine/media3/extractor/ExtractorInput;J)Z

    move-result v1

    if-nez v1, :cond_30

    .line 192
    invoke-virtual {p0, p1, v5, v6, p2}, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->seekToPosition(Lio/bidmachine/media3/extractor/ExtractorInput;JLio/bidmachine/media3/extractor/PositionHolder;)I

    move-result p1

    return p1

    .line 195
    :cond_30
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 196
    iget-object v1, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->timestampSeeker:Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSeeker;

    .line 197
    invoke-static {v0}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->access$400(Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;)J

    move-result-wide v2

    invoke-interface {v1, p1, v2, v3}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSeeker;->searchForTimestamp(Lio/bidmachine/media3/extractor/ExtractorInput;J)Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v1

    .line 199
    invoke-static {v1}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->access$500(Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;)I

    move-result v2

    const/4 v3, -0x3

    if-eq v2, v3, :cond_85

    const/4 v3, -0x2

    if-eq v2, v3, :cond_78

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6c

    if-nez v2, :cond_64

    .line 209
    invoke-static {v1}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->access$700(Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->skipInputUntilPosition(Lio/bidmachine/media3/extractor/ExtractorInput;J)Z

    const/4 v0, 0x1

    .line 211
    invoke-static {v1}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->access$700(Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v2

    .line 210
    invoke-virtual {p0, v0, v2, v3}, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->markSeekOperationFinished(ZJ)V

    .line 213
    invoke-static {v1}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->access$700(Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v0

    .line 212
    invoke-virtual {p0, p1, v0, v1, p2}, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->seekToPosition(Lio/bidmachine/media3/extractor/ExtractorInput;JLio/bidmachine/media3/extractor/PositionHolder;)I

    move-result p1

    return p1

    .line 220
    :cond_64
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid case"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 202
    :cond_6c
    invoke-static {v1}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->access$600(Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v2

    invoke-static {v1}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->access$700(Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v4

    .line 201
    invoke-static {v0, v2, v3, v4, v5}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->access$800(Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;JJ)V

    goto :goto_0

    .line 206
    :cond_78
    invoke-static {v1}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->access$600(Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v2

    invoke-static {v1}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->access$700(Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v4

    .line 205
    invoke-static {v0, v2, v3, v4, v5}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->access$900(Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;JJ)V

    goto/16 :goto_0

    .line 217
    :cond_85
    invoke-virtual {p0, v4, v5, v6}, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->markSeekOperationFinished(ZJ)V

    .line 218
    invoke-virtual {p0, p1, v5, v6, p2}, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->seekToPosition(Lio/bidmachine/media3/extractor/ExtractorInput;JLio/bidmachine/media3/extractor/PositionHolder;)I

    move-result p1

    return p1
.end method

.method public final isSeeking()Z
    .registers 2

    .line 164
    iget-object v0, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->seekOperationParams:Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final markSeekOperationFinished(ZJ)V
    .registers 5

    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->seekOperationParams:Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 238
    iget-object v0, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->timestampSeeker:Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSeeker;

    invoke-interface {v0}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSeeker;->onSeekFinished()V

    .line 239
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->onSeekOperationFinished(ZJ)V

    return-void
.end method

.method public onSeekOperationFinished(ZJ)V
    .registers 4

    .line 0
    return-void
.end method

.method public final seekToPosition(Lio/bidmachine/media3/extractor/ExtractorInput;JLio/bidmachine/media3/extractor/PositionHolder;)I
    .registers 7

    .line 258
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    cmp-long p1, p2, v0

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return p1

    .line 261
    :cond_a
    iput-wide p2, p4, Lio/bidmachine/media3/extractor/PositionHolder;->position:J

    const/4 p1, 0x1

    return p1
.end method

.method public final setSeekTargetUs(J)V
    .registers 5

    .line 156
    iget-object v0, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->seekOperationParams:Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    if-eqz v0, :cond_d

    invoke-static {v0}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->access$000(Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_d

    return-void

    .line 159
    :cond_d
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->createSeekParamsForTargetTimeUs(J)Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->seekOperationParams:Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    return-void
.end method

.method public final skipInputUntilPosition(Lio/bidmachine/media3/extractor/ExtractorInput;J)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_18

    const-wide/32 v0, 0x40000

    cmp-long v0, p2, v0

    if-gtz v0, :cond_18

    long-to-int p2, p2

    .line 250
    invoke-interface {p1, p2}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

###### Class io.bidmachine.media3.extractor.BinarySearchSeeker.BinarySearchSeekMap (io.bidmachine.media3.extractor.BinarySearchSeeker$BinarySearchSeekMap)
.class public Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/BinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinarySearchSeekMap"
.end annotation


# instance fields
.field public final approxBytesPerFrame:J

.field public final ceilingBytePosition:J

.field public final ceilingTimePosition:J

.field public final durationUs:J

.field public final floorBytePosition:J

.field public final floorTimePosition:J

.field public final seekTimestampConverter:Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;JJJJJJ)V
    .registers 14

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    iput-object p1, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->seekTimestampConverter:Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;

    .line 510
    iput-wide p2, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->durationUs:J

    .line 511
    iput-wide p4, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->floorTimePosition:J

    .line 512
    iput-wide p6, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->ceilingTimePosition:J

    .line 513
    iput-wide p8, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->floorBytePosition:J

    .line 514
    iput-wide p10, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->ceilingBytePosition:J

    .line 515
    iput-wide p12, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->approxBytesPerFrame:J

    return-void
.end method

.method public static synthetic access$1000(Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J
    .registers 3

    .line 491
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->floorTimePosition:J

    return-wide v0
.end method

.method public static synthetic access$1100(Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J
    .registers 3

    .line 491
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->ceilingTimePosition:J

    return-wide v0
.end method

.method public static synthetic access$1200(Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J
    .registers 3

    .line 491
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->floorBytePosition:J

    return-wide v0
.end method

.method public static synthetic access$1300(Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J
    .registers 3

    .line 491
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->ceilingBytePosition:J

    return-wide v0
.end method

.method public static synthetic access$1400(Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J
    .registers 3

    .line 491
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->approxBytesPerFrame:J

    return-wide v0
.end method


# virtual methods
.method public getDurationUs()J
    .registers 3

    .line 538
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;
    .registers 16

    .line 525
    iget-object v0, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->seekTimestampConverter:Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;

    .line 527
    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;->timeUsToTargetTime(J)J

    move-result-wide v1

    iget-wide v3, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->floorTimePosition:J

    iget-wide v5, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->ceilingTimePosition:J

    iget-wide v7, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->floorBytePosition:J

    iget-wide v9, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->ceilingBytePosition:J

    iget-wide v11, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->approxBytesPerFrame:J

    .line 526
    invoke-static/range {v1 .. v12}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->calculateNextSearchBytePosition(JJJJJJ)J

    move-result-wide v0

    .line 533
    new-instance v2, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;

    new-instance v3, Lio/bidmachine/media3/extractor/SeekPoint;

    invoke-direct {v3, p1, p2, v0, v1}, Lio/bidmachine/media3/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v2, v3}, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;-><init>(Lio/bidmachine/media3/extractor/SeekPoint;)V

    return-object v2
.end method

.method public isSeekable()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public timeUsToTargetTime(J)J
    .registers 4

    .line 545
    iget-object v0, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->seekTimestampConverter:Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;

    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;->timeUsToTargetTime(J)J

    move-result-wide p1

    return-wide p1
.end method

###### Class io.bidmachine.media3.extractor.BinarySearchSeeker.DefaultSeekTimestampConverter (io.bidmachine.media3.extractor.BinarySearchSeeker$DefaultSeekTimestampConverter)
.class public final Lio/bidmachine/media3/extractor/BinarySearchSeeker$DefaultSeekTimestampConverter;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/BinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultSeekTimestampConverter"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public timeUsToTargetTime(J)J
    .registers 3

    .line 0
    return-wide p1
.end method

###### Class io.bidmachine.media3.extractor.BinarySearchSeeker.SeekOperationParams (io.bidmachine.media3.extractor.BinarySearchSeeker$SeekOperationParams)
.class public Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/BinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeekOperationParams"
.end annotation


# instance fields
.field public final approxBytesPerFrame:J

.field public ceilingBytePosition:J

.field public ceilingTimePosition:J

.field public floorBytePosition:J

.field public floorTimePosition:J

.field public nextSearchBytePosition:J

.field public final seekTimeUs:J

.field public final targetTimePosition:J


# direct methods
.method public constructor <init>(JJJJJJJ)V
    .registers 15

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->seekTimeUs:J

    .line 323
    iput-wide p3, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->targetTimePosition:J

    .line 324
    iput-wide p5, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->floorTimePosition:J

    .line 325
    iput-wide p7, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingTimePosition:J

    .line 326
    iput-wide p9, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    .line 327
    iput-wide p11, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    .line 328
    iput-wide p13, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->approxBytesPerFrame:J

    .line 330
    invoke-static/range {p3 .. p14}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->calculateNextSearchBytePosition(JJJJJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->nextSearchBytePosition:J

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .registers 3

    .line 272
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->getSeekTimeUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .registers 3

    .line 272
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->getFloorBytePosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .registers 3

    .line 272
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->getCeilingBytePosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$300(Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .registers 3

    .line 272
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->getNextSearchBytePosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$400(Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .registers 3

    .line 272
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->getTargetTimePosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$800(Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;JJ)V
    .registers 5

    .line 272
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->updateSeekCeiling(JJ)V

    return-void
.end method

.method public static synthetic access$900(Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;JJ)V
    .registers 5

    .line 272
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->updateSeekFloor(JJ)V

    return-void
.end method

.method public static calculateNextSearchBytePosition(JJJJJJ)J
    .registers 16

    const-wide/16 v0, 0x1

    add-long v2, p6, v0

    cmp-long v2, v2, p8

    if-gez v2, :cond_27

    add-long v2, p2, v0

    cmp-long v2, v2, p4

    if-ltz v2, :cond_f

    goto :goto_27

    :cond_f
    sub-long/2addr p0, p2

    sub-long v2, p8, p6

    long-to-float v2, v2

    sub-long/2addr p4, p2

    long-to-float p2, p4

    div-float/2addr v2, p2

    long-to-float p0, p0

    mul-float/2addr p0, v2

    float-to-long p0, p0

    const-wide/16 p2, 0x14

    .line 308
    div-long p2, p0, p2

    add-long/2addr p0, p6

    sub-long/2addr p0, p10

    sub-long p4, p0, p2

    sub-long/2addr p8, v0

    .line 311
    invoke-static/range {p4 .. p9}, Lio/bidmachine/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide p0

    return-wide p0

    :cond_27
    :goto_27
    return-wide p6
.end method


# virtual methods
.method public final getCeilingBytePosition()J
    .registers 3

    .line 352
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    return-wide v0
.end method

.method public final getFloorBytePosition()J
    .registers 3

    .line 344
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    return-wide v0
.end method

.method public final getNextSearchBytePosition()J
    .registers 3

    .line 381
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->nextSearchBytePosition:J

    return-wide v0
.end method

.method public final getSeekTimeUs()J
    .registers 3

    .line 362
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->seekTimeUs:J

    return-wide v0
.end method

.method public final getTargetTimePosition()J
    .registers 3

    .line 357
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->targetTimePosition:J

    return-wide v0
.end method

.method public final updateNextSearchBytePosition()V
    .registers 13

    .line 385
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->targetTimePosition:J

    iget-wide v2, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->floorTimePosition:J

    iget-wide v4, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingTimePosition:J

    iget-wide v6, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    iget-wide v8, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    iget-wide v10, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->approxBytesPerFrame:J

    .line 386
    invoke-static/range {v0 .. v11}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->calculateNextSearchBytePosition(JJJJJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->nextSearchBytePosition:J

    return-void
.end method

.method public final updateSeekCeiling(JJ)V
    .registers 5

    .line 374
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingTimePosition:J

    .line 375
    iput-wide p3, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    .line 376
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->updateNextSearchBytePosition()V

    return-void
.end method

.method public final updateSeekFloor(JJ)V
    .registers 5

    .line 367
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->floorTimePosition:J

    .line 368
    iput-wide p3, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    .line 369
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekOperationParams;->updateNextSearchBytePosition()V

    return-void
.end method

###### Class io.bidmachine.media3.extractor.BinarySearchSeeker.SeekTimestampConverter (io.bidmachine.media3.extractor.BinarySearchSeeker$SeekTimestampConverter)
.class public interface abstract Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/BinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SeekTimestampConverter"
.end annotation


# virtual methods
.method public abstract timeUsToTargetTime(J)J
.end method

###### Class io.bidmachine.media3.extractor.BinarySearchSeeker.TimestampSearchResult (io.bidmachine.media3.extractor.BinarySearchSeeker$TimestampSearchResult)
.class public final Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/BinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimestampSearchResult"
.end annotation


# static fields
.field public static final NO_TIMESTAMP_IN_RANGE_RESULT:Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;


# instance fields
.field public final bytePositionToUpdate:J

.field public final timestampToUpdate:J

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 425
    new-instance v0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, -0x1

    const/4 v1, -0x3

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    sput-object v0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->NO_TIMESTAMP_IN_RANGE_RESULT:Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    return-void
.end method

.method public constructor <init>(IJJ)V
    .registers 6

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput p1, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->type:I

    .line 450
    iput-wide p2, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->timestampToUpdate:J

    .line 451
    iput-wide p4, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->bytePositionToUpdate:J

    return-void
.end method

.method public static synthetic access$500(Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;)I
    .registers 1

    .line 400
    iget p0, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->type:I

    return p0
.end method

.method public static synthetic access$600(Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;)J
    .registers 3

    .line 400
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->timestampToUpdate:J

    return-wide v0
.end method

.method public static synthetic access$700(Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;)J
    .registers 3

    .line 400
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->bytePositionToUpdate:J

    return-wide v0
.end method

.method public static overestimatedResult(JJ)Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;
    .registers 10

    .line 461
    new-instance v0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v1, -0x1

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    return-object v0
.end method

.method public static targetFoundResult(J)Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;
    .registers 8

    .line 481
    new-instance v0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v4, p0

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    return-object v0
.end method

.method public static underestimatedResult(JJ)Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;
    .registers 10

    .line 472
    new-instance v0, Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v1, -0x2

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    return-object v0
.end method

###### Class io.bidmachine.media3.extractor.BinarySearchSeeker.TimestampSeeker (io.bidmachine.media3.extractor.BinarySearchSeeker$TimestampSeeker)
.class public interface abstract Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSeeker;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/BinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TimestampSeeker"
.end annotation


# virtual methods
.method public onSeekFinished()V
    .registers 1

    .line 0
    return-void
.end method

.method public abstract searchForTimestamp(Lio/bidmachine/media3/extractor/ExtractorInput;J)Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
