###### Class io.bidmachine.media3.extractor.ts.TsExtractor (io.bidmachine.media3.extractor.ts.TsExtractor)
.class public final Lio/bidmachine/media3/extractor/ts/TsExtractor;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/ts/TsExtractor$PatReader;,
        Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;
    }
.end annotation


# static fields
.field public static final FACTORY:Lio/bidmachine/media3/extractor/ExtractorsFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public bytesSinceLastSync:I

.field public final continuityCounters:Landroid/util/SparseIntArray;

.field public final durationReader:Lio/bidmachine/media3/extractor/ts/TsDurationReader;

.field public final extractorFlags:I

.field public hasOutputSeekMap:Z

.field public id3Reader:Lio/bidmachine/media3/extractor/ts/TsPayloadReader;

.field public final mode:I

.field public output:Lio/bidmachine/media3/extractor/ExtractorOutput;

.field public final payloadReaderFactory:Lio/bidmachine/media3/extractor/ts/TsPayloadReader$Factory;

.field public pcrPid:I

.field public pendingSeekToStart:Z

.field public remainingPmts:I

.field public final subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

.field public final timestampAdjusters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/util/TimestampAdjuster;",
            ">;"
        }
    .end annotation
.end field

.field public final timestampSearchBytes:I

.field public final trackIds:Landroid/util/SparseBooleanArray;

.field public final trackPids:Landroid/util/SparseBooleanArray;

.field public tracksEnded:Z

.field public tsBinarySearchSeeker:Lio/bidmachine/media3/extractor/ts/TsBinarySearchSeeker;

.field public final tsPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public final tsPayloadReaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/bidmachine/media3/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$C5dTgF64iR_KecWfpJ2m-3FsMyU()[Lio/bidmachine/media3/extractor/Extractor;
    .registers 3

    const/4 v0, 0x1

    .line 118
    new-instance v1, Lio/bidmachine/media3/extractor/ts/TsExtractor;

    sget-object v2, Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {v1, v0, v2}, Lio/bidmachine/media3/extractor/ts/TsExtractor;-><init>(ILio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)V

    new-array v0, v0, [Lio/bidmachine/media3/extractor/Extractor;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 116
    new-instance v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/ts/TsExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->FACTORY:Lio/bidmachine/media3/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>(IILio/bidmachine/media3/extractor/text/SubtitleParser$Factory;Lio/bidmachine/media3/common/util/TimestampAdjuster;Lio/bidmachine/media3/extractor/ts/TsPayloadReader$Factory;I)V
    .registers 7

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    invoke-static {p5}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$Factory;

    iput-object p5, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->payloadReaderFactory:Lio/bidmachine/media3/extractor/ts/TsPayloadReader$Factory;

    .line 330
    iput p6, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->timestampSearchBytes:I

    .line 331
    iput p1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->mode:I

    .line 332
    iput p2, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->extractorFlags:I

    .line 333
    iput-object p3, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    const/4 p2, 0x1

    if-eq p1, p2, :cond_25

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1a

    goto :goto_25

    .line 337
    :cond_1a
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    .line 338
    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 335
    :cond_25
    :goto_25
    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    .line 340
    :goto_2b
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/16 p2, 0x24b8

    new-array p2, p2, [B

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([BI)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 341
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;

    .line 342
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->trackPids:Landroid/util/SparseBooleanArray;

    .line 343
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    .line 344
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    .line 345
    new-instance p1, Lio/bidmachine/media3/extractor/ts/TsDurationReader;

    invoke-direct {p1, p6}, Lio/bidmachine/media3/extractor/ts/TsDurationReader;-><init>(I)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->durationReader:Lio/bidmachine/media3/extractor/ts/TsDurationReader;

    .line 346
    sget-object p1, Lio/bidmachine/media3/extractor/ExtractorOutput;->PLACEHOLDER:Lio/bidmachine/media3/extractor/ExtractorOutput;

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->output:Lio/bidmachine/media3/extractor/ExtractorOutput;

    const/4 p1, -0x1

    .line 347
    iput p1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->pcrPid:I

    .line 348
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->resetPayloadReaders()V

    return-void
.end method

.method public constructor <init>(ILio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)V
    .registers 10

    .line 224
    new-instance v4, Lio/bidmachine/media3/common/util/TimestampAdjuster;

    const-wide/16 v0, 0x0

    invoke-direct {v4, v0, v1}, Lio/bidmachine/media3/common/util/TimestampAdjuster;-><init>(J)V

    new-instance v5, Lio/bidmachine/media3/extractor/ts/DefaultTsPayloadReaderFactory;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lio/bidmachine/media3/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(I)V

    const v6, 0x1b8a0

    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/extractor/ts/TsExtractor;-><init>(IILio/bidmachine/media3/extractor/text/SubtitleParser$Factory;Lio/bidmachine/media3/common/util/TimestampAdjuster;Lio/bidmachine/media3/extractor/ts/TsPayloadReader$Factory;I)V

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/media3/extractor/ts/TsExtractor;)Landroid/util/SparseArray;
    .registers 1

    .line 62
    iget-object p0, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/extractor/ts/TsExtractor;)I
    .registers 1

    .line 62
    iget p0, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->remainingPmts:I

    return p0
.end method

.method public static synthetic access$1000(Lio/bidmachine/media3/extractor/ts/TsExtractor;)Z
    .registers 1

    .line 62
    iget-boolean p0, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tracksEnded:Z

    return p0
.end method

.method public static synthetic access$1002(Lio/bidmachine/media3/extractor/ts/TsExtractor;Z)Z
    .registers 2

    .line 62
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tracksEnded:Z

    return p1
.end method

.method public static synthetic access$102(Lio/bidmachine/media3/extractor/ts/TsExtractor;I)I
    .registers 2

    .line 62
    iput p1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->remainingPmts:I

    return p1
.end method

.method public static synthetic access$108(Lio/bidmachine/media3/extractor/ts/TsExtractor;)I
    .registers 3

    .line 62
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->remainingPmts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->remainingPmts:I

    return v0
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/extractor/ts/TsExtractor;)I
    .registers 1

    .line 62
    iget p0, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->mode:I

    return p0
.end method

.method public static synthetic access$300(Lio/bidmachine/media3/extractor/ts/TsExtractor;)Ljava/util/List;
    .registers 1

    .line 62
    iget-object p0, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$402(Lio/bidmachine/media3/extractor/ts/TsExtractor;I)I
    .registers 2

    .line 62
    iput p1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->pcrPid:I

    return p1
.end method

.method public static synthetic access$500(Lio/bidmachine/media3/extractor/ts/TsExtractor;)Lio/bidmachine/media3/extractor/ts/TsPayloadReader;
    .registers 1

    .line 62
    iget-object p0, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->id3Reader:Lio/bidmachine/media3/extractor/ts/TsPayloadReader;

    return-object p0
.end method

.method public static synthetic access$502(Lio/bidmachine/media3/extractor/ts/TsExtractor;Lio/bidmachine/media3/extractor/ts/TsPayloadReader;)Lio/bidmachine/media3/extractor/ts/TsPayloadReader;
    .registers 2

    .line 62
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->id3Reader:Lio/bidmachine/media3/extractor/ts/TsPayloadReader;

    return-object p1
.end method

.method public static synthetic access$600(Lio/bidmachine/media3/extractor/ts/TsExtractor;)Lio/bidmachine/media3/extractor/ts/TsPayloadReader$Factory;
    .registers 1

    .line 62
    iget-object p0, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->payloadReaderFactory:Lio/bidmachine/media3/extractor/ts/TsPayloadReader$Factory;

    return-object p0
.end method

.method public static synthetic access$700(Lio/bidmachine/media3/extractor/ts/TsExtractor;)Lio/bidmachine/media3/extractor/ExtractorOutput;
    .registers 1

    .line 62
    iget-object p0, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->output:Lio/bidmachine/media3/extractor/ExtractorOutput;

    return-object p0
.end method

.method public static synthetic access$800(Lio/bidmachine/media3/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;
    .registers 1

    .line 62
    iget-object p0, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static synthetic access$900(Lio/bidmachine/media3/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;
    .registers 1

    .line 62
    iget-object p0, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->trackPids:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method private maybeOutputSeekMap(J)V
    .registers 12

    .line 540
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->hasOutputSeekMap:Z

    if-nez v0, :cond_48

    const/4 v0, 0x1

    .line 541
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->hasOutputSeekMap:Z

    .line 542
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->durationReader:Lio/bidmachine/media3/extractor/ts/TsDurationReader;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/TsDurationReader;->getDurationUs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_38

    .line 543
    new-instance v1, Lio/bidmachine/media3/extractor/ts/TsBinarySearchSeeker;

    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->durationReader:Lio/bidmachine/media3/extractor/ts/TsDurationReader;

    .line 545
    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/TsDurationReader;->getPcrTimestampAdjuster()Lio/bidmachine/media3/common/util/TimestampAdjuster;

    move-result-object v2

    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->durationReader:Lio/bidmachine/media3/extractor/ts/TsDurationReader;

    .line 546
    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/TsDurationReader;->getDurationUs()J

    move-result-wide v3

    iget v7, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->pcrPid:I

    iget v8, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->timestampSearchBytes:I

    move-wide v5, p1

    invoke-direct/range {v1 .. v8}, Lio/bidmachine/media3/extractor/ts/TsBinarySearchSeeker;-><init>(Lio/bidmachine/media3/common/util/TimestampAdjuster;JJII)V

    iput-object v1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Lio/bidmachine/media3/extractor/ts/TsBinarySearchSeeker;

    .line 550
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->output:Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-virtual {v1}, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->getSeekMap()Lio/bidmachine/media3/extractor/SeekMap;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/bidmachine/media3/extractor/ExtractorOutput;->seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V

    return-void

    .line 552
    :cond_38
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->output:Lio/bidmachine/media3/extractor/ExtractorOutput;

    new-instance p2, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;

    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->durationReader:Lio/bidmachine/media3/extractor/ts/TsDurationReader;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/TsDurationReader;->getDurationUs()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, p2}, Lio/bidmachine/media3/extractor/ExtractorOutput;->seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V

    :cond_48
    return-void
.end method


# virtual methods
.method public final fillBufferWithAtLeastOnePacket(Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 560
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    rsub-int v1, v1, 0x24b8

    const/4 v2, 0x0

    const/16 v3, 0xbc

    if-ge v1, v3, :cond_29

    .line 561
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_24

    .line 563
    iget-object v4, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v4

    invoke-static {v0, v4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 565
    :cond_24
    iget-object v4, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v4, v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 568
    :cond_29
    :goto_29
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-ge v1, v3, :cond_48

    .line 569
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    rsub-int v4, v1, 0x24b8

    .line 570
    invoke-interface {p1, v0, v1, v4}, Lio/bidmachine/media3/extractor/ExtractorInput;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_41

    return v2

    .line 574
    :cond_41
    iget-object v5, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    add-int/2addr v1, v4

    invoke-virtual {v5, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setLimit(I)V

    goto :goto_29

    :cond_48
    const/4 p1, 0x1

    return p1
.end method

.method public final findEndOfFirstTsPacketInBuffer()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 587
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    .line 588
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 589
    invoke-virtual {v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-static {v2, v0, v1}, Lio/bidmachine/media3/extractor/ts/TsUtil;->findSyncBytePosition([BII)I

    move-result v2

    .line 592
    iget-object v3, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v3, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    add-int/lit16 v3, v2, 0xbc

    if-le v3, v1, :cond_38

    .line 595
    iget v1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    .line 596
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->mode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_37

    const/16 v0, 0x178

    if-gt v1, v0, :cond_2f

    goto :goto_37

    .line 597
    :cond_2f
    const-string v0, "Cannot find sync byte. Most likely not a Transport Stream."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_37
    :goto_37
    return v3

    :cond_38
    const/4 v0, 0x0

    .line 602
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    return v3
.end method

.method public init(Lio/bidmachine/media3/extractor/ExtractorOutput;)V
    .registers 4

    .line 377
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->extractorFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_e

    .line 378
    new-instance v0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingExtractorOutput;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {v0, p1, v1}, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingExtractorOutput;-><init>(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)V

    move-object p1, v0

    .line 379
    :cond_e
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->output:Lio/bidmachine/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public read(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 427
    invoke-interface {v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    .line 428
    iget v5, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->mode:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-ne v5, v8, :cond_13

    move v5, v6

    goto :goto_14

    :cond_13
    move v5, v7

    .line 429
    :goto_14
    iget-boolean v9, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tracksEnded:Z

    const-wide/16 v10, -0x1

    if-eqz v9, :cond_5b

    cmp-long v9, v3, v10

    if-eqz v9, :cond_31

    if-nez v5, :cond_31

    .line 431
    iget-object v9, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->durationReader:Lio/bidmachine/media3/extractor/ts/TsDurationReader;

    invoke-virtual {v9}, Lio/bidmachine/media3/extractor/ts/TsDurationReader;->isDurationReadFinished()Z

    move-result v9

    if-nez v9, :cond_31

    .line 432
    iget-object v3, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->durationReader:Lio/bidmachine/media3/extractor/ts/TsDurationReader;

    iget v4, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->pcrPid:I

    invoke-virtual {v3, v1, v2, v4}, Lio/bidmachine/media3/extractor/ts/TsDurationReader;->readDuration(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;I)I

    move-result v1

    return v1

    .line 434
    :cond_31
    invoke-direct {v0, v3, v4}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->maybeOutputSeekMap(J)V

    .line 436
    iget-boolean v9, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->pendingSeekToStart:Z

    if-eqz v9, :cond_4a

    .line 437
    iput-boolean v7, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->pendingSeekToStart:Z

    const-wide/16 v12, 0x0

    .line 438
    invoke-virtual {v0, v12, v13, v12, v13}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->seek(JJ)V

    .line 439
    invoke-interface {v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v14

    cmp-long v9, v14, v12

    if-eqz v9, :cond_4a

    .line 440
    iput-wide v12, v2, Lio/bidmachine/media3/extractor/PositionHolder;->position:J

    return v6

    .line 445
    :cond_4a
    iget-object v9, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Lio/bidmachine/media3/extractor/ts/TsBinarySearchSeeker;

    if-eqz v9, :cond_5b

    invoke-virtual {v9}, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->isSeeking()Z

    move-result v9

    if-eqz v9, :cond_5b

    .line 446
    iget-object v3, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Lio/bidmachine/media3/extractor/ts/TsBinarySearchSeeker;

    invoke-virtual {v3, v1, v2}, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->handlePendingSeek(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I

    move-result v1

    return v1

    .line 450
    :cond_5b
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->fillBufferWithAtLeastOnePacket(Lio/bidmachine/media3/extractor/ExtractorInput;)Z

    move-result v1

    if-nez v1, :cond_8a

    .line 452
    :goto_61
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v7, v1, :cond_88

    .line 453
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/extractor/ts/TsPayloadReader;

    .line 454
    instance-of v2, v1, Lio/bidmachine/media3/extractor/ts/PesReader;

    if-eqz v2, :cond_85

    .line 455
    check-cast v1, Lio/bidmachine/media3/extractor/ts/PesReader;

    .line 456
    invoke-virtual {v1, v5}, Lio/bidmachine/media3/extractor/ts/PesReader;->canConsumeSynthesizedEmptyPusi(Z)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 457
    new-instance v2, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    invoke-virtual {v1, v2, v6}, Lio/bidmachine/media3/extractor/ts/PesReader;->consume(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    :cond_85
    add-int/lit8 v7, v7, 0x1

    goto :goto_61

    :cond_88
    const/4 v1, -0x1

    return v1

    .line 464
    :cond_8a
    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->findEndOfFirstTsPacketInBuffer()I

    move-result v1

    .line 465
    iget-object v2, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v2

    if-le v1, v2, :cond_97

    return v7

    .line 473
    :cond_97
    iget-object v5, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    const/high16 v9, 0x800000

    and-int/2addr v9, v5

    if-eqz v9, :cond_a8

    .line 476
    iget-object v2, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return v7

    :cond_a8
    const/high16 v9, 0x400000

    and-int/2addr v9, v5

    if-eqz v9, :cond_af

    move v9, v6

    goto :goto_b0

    :cond_af
    move v9, v7

    :goto_b0
    const v12, 0x1fff00

    and-int/2addr v12, v5

    shr-int/lit8 v12, v12, 0x8

    and-int/lit8 v13, v5, 0x20

    if-eqz v13, :cond_bc

    move v13, v6

    goto :goto_bd

    :cond_bc
    move v13, v7

    :goto_bd
    and-int/lit8 v14, v5, 0x10

    if-eqz v14, :cond_ca

    .line 486
    iget-object v14, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lio/bidmachine/media3/extractor/ts/TsPayloadReader;

    goto :goto_cb

    :cond_ca
    const/4 v14, 0x0

    :goto_cb
    if-nez v14, :cond_d3

    .line 488
    iget-object v2, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return v7

    .line 493
    :cond_d3
    iget v15, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->mode:I

    if-eq v15, v8, :cond_f9

    and-int/lit8 v5, v5, 0xf

    .line 495
    iget-object v15, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    move/from16 v16, v7

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v15, v12, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 496
    iget-object v15, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v12, v5}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v7, v5, :cond_f0

    .line 499
    iget-object v2, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return v16

    :cond_f0
    add-int/2addr v7, v6

    and-int/lit8 v7, v7, 0xf

    if-eq v5, v7, :cond_fb

    .line 503
    invoke-interface {v14}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader;->seek()V

    goto :goto_fb

    :cond_f9
    move/from16 v16, v7

    :cond_fb
    :goto_fb
    if-eqz v13, :cond_118

    .line 509
    iget-object v5, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 510
    iget-object v7, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v7}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_10f

    move v7, v8

    goto :goto_111

    :cond_10f
    move/from16 v7, v16

    :goto_111
    or-int/2addr v9, v7

    .line 516
    iget-object v7, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    sub-int/2addr v5, v6

    invoke-virtual {v7, v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 520
    :cond_118
    iget-boolean v5, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tracksEnded:Z

    .line 521
    invoke-virtual {v0, v12}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->shouldConsumePacketPayload(I)Z

    move-result v7

    if-eqz v7, :cond_12f

    .line 522
    iget-object v7, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v7, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 523
    iget-object v7, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-interface {v14, v7, v9}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader;->consume(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    .line 524
    iget-object v7, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v7, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 526
    :cond_12f
    iget v2, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->mode:I

    if-eq v2, v8, :cond_13f

    if-nez v5, :cond_13f

    iget-boolean v2, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tracksEnded:Z

    if-eqz v2, :cond_13f

    cmp-long v2, v3, v10

    if-eqz v2, :cond_13f

    .line 530
    iput-boolean v6, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->pendingSeekToStart:Z

    .line 533
    :cond_13f
    iget-object v2, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return v16
.end method

.method public release()V
    .registers 1

    .line 0
    return-void
.end method

.method public final resetPayloadReaders()V
    .registers 8

    .line 614
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 615
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 616
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->payloadReaderFactory:Lio/bidmachine/media3/extractor/ts/TsPayloadReader$Factory;

    .line 617
    invoke-interface {v0}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$Factory;->createInitialPayloadReaders()Landroid/util/SparseArray;

    move-result-object v0

    .line 618
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_16
    if-ge v3, v1, :cond_2a

    .line 620
    iget-object v4, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/bidmachine/media3/extractor/ts/TsPayloadReader;

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 622
    :cond_2a
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    new-instance v1, Lio/bidmachine/media3/extractor/ts/SectionReader;

    new-instance v3, Lio/bidmachine/media3/extractor/ts/TsExtractor$PatReader;

    invoke-direct {v3, p0}, Lio/bidmachine/media3/extractor/ts/TsExtractor$PatReader;-><init>(Lio/bidmachine/media3/extractor/ts/TsExtractor;)V

    invoke-direct {v1, v3}, Lio/bidmachine/media3/extractor/ts/SectionReader;-><init>(Lio/bidmachine/media3/extractor/ts/SectionPayloadReader;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 623
    iput-object v0, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->id3Reader:Lio/bidmachine/media3/extractor/ts/TsPayloadReader;

    return-void
.end method

.method public seek(JJ)V
    .registers 14

    .line 384
    iget p1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->mode:I

    const/4 p2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p2, :cond_9

    move p1, v0

    goto :goto_a

    :cond_9
    move p1, v1

    :goto_a
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 385
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move p2, v1

    :goto_14
    const-wide/16 v2, 0x0

    if-ge p2, p1, :cond_4d

    .line 387
    iget-object v4, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/common/util/TimestampAdjuster;

    .line 393
    invoke-virtual {v4}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v5, v7

    if-nez v5, :cond_2f

    move v5, v0

    goto :goto_30

    :cond_2f
    move v5, v1

    :goto_30
    if-nez v5, :cond_45

    .line 395
    invoke-virtual {v4}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v5

    cmp-long v7, v5, v7

    if-eqz v7, :cond_44

    cmp-long v2, v5, v2

    if-eqz v2, :cond_44

    cmp-long v2, v5, p3

    if-eqz v2, :cond_44

    move v5, v0

    goto :goto_45

    :cond_44
    move v5, v1

    :cond_45
    :goto_45
    if-eqz v5, :cond_4a

    .line 405
    invoke-virtual {v4, p3, p4}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->reset(J)V

    :cond_4a
    add-int/lit8 p2, p2, 0x1

    goto :goto_14

    :cond_4d
    cmp-long p1, p3, v2

    if-eqz p1, :cond_58

    .line 408
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Lio/bidmachine/media3/extractor/ts/TsBinarySearchSeeker;

    if-eqz p1, :cond_58

    .line 409
    invoke-virtual {p1, p3, p4}, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->setSeekTargetUs(J)V

    .line 411
    :cond_58
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    .line 412
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    move p1, v1

    .line 413
    :goto_63
    iget-object p2, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_79

    .line 414
    iget-object p2, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/bidmachine/media3/extractor/ts/TsPayloadReader;

    invoke-interface {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader;->seek()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_63

    .line 416
    :cond_79
    iput v1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    return-void
.end method

.method public final shouldConsumePacketPayload(I)Z
    .registers 4

    .line 608
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_14

    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tracksEnded:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->trackPids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    .line 610
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_14

    :cond_13
    return v1

    :cond_14
    :goto_14
    const/4 p1, 0x1

    return p1
.end method

.method public sniff(Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v1, 0x3ac

    const/4 v2, 0x0

    .line 356
    invoke-interface {p1, v0, v2, v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->peekFully([BII)V

    move v1, v2

    :goto_d
    const/16 v3, 0xbc

    if-ge v1, v3, :cond_29

    move v3, v2

    :goto_12
    const/4 v4, 0x5

    if-ge v3, v4, :cond_24

    mul-int/lit16 v4, v3, 0xbc

    add-int/2addr v4, v1

    .line 361
    aget-byte v4, v0, v4

    const/16 v5, 0x47

    if-eq v4, v5, :cond_21

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 367
    :cond_24
    invoke-interface {p1, v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    const/4 p1, 0x1

    return p1

    :cond_29
    return v2
.end method

###### Class io.bidmachine.media3.extractor.ts.TsExtractor.PatReader (io.bidmachine.media3.extractor.ts.TsExtractor$PatReader)
.class public Lio/bidmachine/media3/extractor/ts/TsExtractor$PatReader;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/ts/SectionPayloadReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/ts/TsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PatReader"
.end annotation


# instance fields
.field public final patScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

.field public final synthetic this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/ts/TsExtractor;)V
    .registers 3

    .line 631
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PatReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;-><init>([B)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PatReader;->patScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    return-void
.end method


# virtual methods
.method public consume(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 11

    .line 645
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_7d

    .line 651
    :cond_8
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_11

    goto :goto_7d

    :cond_11
    const/4 v0, 0x6

    .line 658
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 660
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1d
    if-ge v3, v0, :cond_6b

    .line 662
    iget-object v4, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PatReader;->patScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {p1, v4, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes(Lio/bidmachine/media3/common/util/ParsableBitArray;I)V

    .line 663
    iget-object v4, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PatReader;->patScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 664
    iget-object v5, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PatReader;->patScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/16 v5, 0xd

    if-nez v4, :cond_3c

    .line 666
    iget-object v4, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PatReader;->patScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v4, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_68

    .line 668
    :cond_3c
    iget-object v4, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PatReader;->patScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v4, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 669
    iget-object v5, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PatReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {v5}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$000(Lio/bidmachine/media3/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_68

    .line 670
    iget-object v5, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PatReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {v5}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$000(Lio/bidmachine/media3/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v5

    new-instance v6, Lio/bidmachine/media3/extractor/ts/SectionReader;

    new-instance v7, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;

    iget-object v8, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PatReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-direct {v7, v8, v4}, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;-><init>(Lio/bidmachine/media3/extractor/ts/TsExtractor;I)V

    invoke-direct {v6, v7}, Lio/bidmachine/media3/extractor/ts/SectionReader;-><init>(Lio/bidmachine/media3/extractor/ts/SectionPayloadReader;)V

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 671
    iget-object v4, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PatReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {v4}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$108(Lio/bidmachine/media3/extractor/ts/TsExtractor;)I

    :cond_68
    :goto_68
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 675
    :cond_6b
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PatReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {p1}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$200(Lio/bidmachine/media3/extractor/ts/TsExtractor;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7d

    .line 676
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PatReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {p1}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$000(Lio/bidmachine/media3/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_7d
    :goto_7d
    return-void
.end method

.method public init(Lio/bidmachine/media3/common/util/TimestampAdjuster;Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 4

    .line 0
    return-void
.end method

###### Class io.bidmachine.media3.extractor.ts.TsExtractor.PmtReader (io.bidmachine.media3.extractor.ts.TsExtractor$PmtReader)
.class public Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/ts/SectionPayloadReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/ts/TsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PmtReader"
.end annotation


# instance fields
.field public final pid:I

.field public final pmtScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

.field public final synthetic this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

.field public final trackIdToPidScratch:Landroid/util/SparseIntArray;

.field public final trackIdToReaderScratch:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/bidmachine/media3/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/ts/TsExtractor;I)V
    .registers 4

    .line 702
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v0, 0x5

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;-><init>([B)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    .line 704
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToReaderScratch:Landroid/util/SparseArray;

    .line 705
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    .line 706
    iput p2, p0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->pid:I

    return-void
.end method


# virtual methods
.method public consume(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 719
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_d

    goto/16 :goto_226

    .line 726
    :cond_d
    iget-object v2, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {v2}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$200(Lio/bidmachine/media3/extractor/ts/TsExtractor;)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_47

    iget-object v2, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {v2}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$200(Lio/bidmachine/media3/extractor/ts/TsExtractor;)I

    move-result v2

    if-eq v2, v3, :cond_47

    iget-object v2, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {v2}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$100(Lio/bidmachine/media3/extractor/ts/TsExtractor;)I

    move-result v2

    if-ne v2, v5, :cond_28

    goto :goto_47

    .line 729
    :cond_28
    new-instance v2, Lio/bidmachine/media3/common/util/TimestampAdjuster;

    iget-object v6, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    .line 730
    invoke-static {v6}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$300(Lio/bidmachine/media3/extractor/ts/TsExtractor;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/bidmachine/media3/common/util/TimestampAdjuster;

    invoke-virtual {v6}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v6

    invoke-direct {v2, v6, v7}, Lio/bidmachine/media3/common/util/TimestampAdjuster;-><init>(J)V

    .line 731
    iget-object v6, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {v6}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$300(Lio/bidmachine/media3/extractor/ts/TsExtractor;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 727
    :cond_47
    :goto_47
    iget-object v2, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {v2}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$300(Lio/bidmachine/media3/extractor/ts/TsExtractor;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/common/util/TimestampAdjuster;

    .line 735
    :goto_53
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_5d

    goto/16 :goto_226

    .line 741
    :cond_5d
    invoke-virtual {v1, v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 742
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    const/4 v7, 0x3

    .line 747
    invoke-virtual {v1, v7}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 749
    iget-object v8, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v1, v8, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes(Lio/bidmachine/media3/common/util/ParsableBitArray;I)V

    .line 751
    iget-object v8, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v8, v7}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 752
    iget-object v8, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    iget-object v9, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    invoke-static {v8, v9}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$402(Lio/bidmachine/media3/extractor/ts/TsExtractor;I)I

    .line 755
    iget-object v8, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v1, v8, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes(Lio/bidmachine/media3/common/util/ParsableBitArray;I)V

    .line 756
    iget-object v8, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 757
    iget-object v8, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/16 v11, 0xc

    invoke-virtual {v8, v11}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 760
    invoke-virtual {v1, v8}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 762
    iget-object v8, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {v8}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$200(Lio/bidmachine/media3/extractor/ts/TsExtractor;)I

    move-result v8

    const/16 v12, 0x2000

    const/16 v13, 0x15

    if-ne v8, v3, :cond_e1

    iget-object v8, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {v8}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$500(Lio/bidmachine/media3/extractor/ts/TsExtractor;)Lio/bidmachine/media3/extractor/ts/TsPayloadReader;

    move-result-object v8

    if-nez v8, :cond_e1

    .line 765
    new-instance v14, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;

    const/16 v18, 0x0

    sget-object v19, Lio/bidmachine/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    const/16 v15, 0x15

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v19}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;-><init>(ILjava/lang/String;ILjava/util/List;[B)V

    .line 767
    iget-object v8, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {v8}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$600(Lio/bidmachine/media3/extractor/ts/TsExtractor;)Lio/bidmachine/media3/extractor/ts/TsPayloadReader$Factory;

    move-result-object v15

    invoke-interface {v15, v13, v14}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$Factory;->createPayloadReader(ILio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;)Lio/bidmachine/media3/extractor/ts/TsPayloadReader;

    move-result-object v14

    invoke-static {v8, v14}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$502(Lio/bidmachine/media3/extractor/ts/TsExtractor;Lio/bidmachine/media3/extractor/ts/TsPayloadReader;)Lio/bidmachine/media3/extractor/ts/TsPayloadReader;

    .line 768
    iget-object v8, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {v8}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$500(Lio/bidmachine/media3/extractor/ts/TsExtractor;)Lio/bidmachine/media3/extractor/ts/TsPayloadReader;

    move-result-object v8

    if-eqz v8, :cond_e1

    .line 769
    iget-object v8, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {v8}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$500(Lio/bidmachine/media3/extractor/ts/TsExtractor;)Lio/bidmachine/media3/extractor/ts/TsPayloadReader;

    move-result-object v8

    iget-object v14, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    .line 771
    invoke-static {v14}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$700(Lio/bidmachine/media3/extractor/ts/TsExtractor;)Lio/bidmachine/media3/extractor/ExtractorOutput;

    move-result-object v14

    new-instance v15, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;

    invoke-direct {v15, v6, v13, v12}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(III)V

    .line 769
    invoke-interface {v8, v2, v14, v15}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader;->init(Lio/bidmachine/media3/common/util/TimestampAdjuster;Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 776
    :cond_e1
    iget-object v8, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToReaderScratch:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V

    .line 777
    iget-object v8, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->clear()V

    .line 778
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    :goto_ef
    if-lez v8, :cond_177

    .line 780
    iget-object v14, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v15, 0x5

    invoke-virtual {v1, v14, v15}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes(Lio/bidmachine/media3/common/util/ParsableBitArray;I)V

    .line 781
    iget-object v14, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/16 v4, 0x8

    invoke-virtual {v14, v4}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 782
    iget-object v14, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v14, v7}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 783
    iget-object v14, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v14, v10}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v14

    .line 784
    iget-object v7, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v7, v9}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 785
    iget-object v7, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v7, v11}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 786
    invoke-virtual {v0, v1, v7}, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->readEsInfo(Lio/bidmachine/media3/common/util/ParsableByteArray;I)Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;

    move-result-object v9

    const/4 v10, 0x6

    if-eq v4, v10, :cond_11e

    if-ne v4, v15, :cond_120

    .line 788
    :cond_11e
    iget v4, v9, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;->streamType:I

    :cond_120
    add-int/lit8 v7, v7, 0x5

    sub-int/2addr v8, v7

    .line 792
    iget-object v7, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {v7}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$200(Lio/bidmachine/media3/extractor/ts/TsExtractor;)I

    move-result v7

    if-ne v7, v3, :cond_12d

    move v7, v4

    goto :goto_12e

    :cond_12d
    move v7, v14

    .line 793
    :goto_12e
    iget-object v10, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {v10}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$800(Lio/bidmachine/media3/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-eqz v10, :cond_13b

    goto :goto_170

    .line 799
    :cond_13b
    iget-object v10, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {v10}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$200(Lio/bidmachine/media3/extractor/ts/TsExtractor;)I

    move-result v10

    if-ne v10, v3, :cond_14c

    if-ne v4, v13, :cond_14c

    .line 800
    iget-object v4, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {v4}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$500(Lio/bidmachine/media3/extractor/ts/TsExtractor;)Lio/bidmachine/media3/extractor/ts/TsPayloadReader;

    move-result-object v4

    goto :goto_156

    .line 801
    :cond_14c
    iget-object v10, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {v10}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$600(Lio/bidmachine/media3/extractor/ts/TsExtractor;)Lio/bidmachine/media3/extractor/ts/TsPayloadReader$Factory;

    move-result-object v10

    invoke-interface {v10, v4, v9}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$Factory;->createPayloadReader(ILio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;)Lio/bidmachine/media3/extractor/ts/TsPayloadReader;

    move-result-object v4

    .line 802
    :goto_156
    iget-object v9, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {v9}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$200(Lio/bidmachine/media3/extractor/ts/TsExtractor;)I

    move-result v9

    if-ne v9, v3, :cond_166

    iget-object v9, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    .line 803
    invoke-virtual {v9, v7, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    if-ge v14, v9, :cond_170

    .line 804
    :cond_166
    iget-object v9, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 805
    iget-object v9, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToReaderScratch:Landroid/util/SparseArray;

    invoke-virtual {v9, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_170
    :goto_170
    const/4 v4, 0x0

    const/4 v7, 0x3

    const/4 v9, 0x4

    const/16 v10, 0xd

    goto/16 :goto_ef

    .line 809
    :cond_177
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_17e
    if-ge v4, v1, :cond_1ca

    .line 811
    iget-object v7, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 812
    iget-object v8, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    .line 813
    iget-object v9, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {v9}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$800(Lio/bidmachine/media3/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;

    move-result-object v9

    invoke-virtual {v9, v7, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 814
    iget-object v9, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {v9}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$900(Lio/bidmachine/media3/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;

    move-result-object v9

    invoke-virtual {v9, v8, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 815
    iget-object v9, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToReaderScratch:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/bidmachine/media3/extractor/ts/TsPayloadReader;

    if-eqz v9, :cond_1c7

    .line 817
    iget-object v10, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {v10}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$500(Lio/bidmachine/media3/extractor/ts/TsExtractor;)Lio/bidmachine/media3/extractor/ts/TsPayloadReader;

    move-result-object v10

    if-eq v9, v10, :cond_1be

    .line 818
    iget-object v10, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    .line 820
    invoke-static {v10}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$700(Lio/bidmachine/media3/extractor/ts/TsExtractor;)Lio/bidmachine/media3/extractor/ExtractorOutput;

    move-result-object v10

    new-instance v11, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;

    invoke-direct {v11, v6, v7, v12}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(III)V

    .line 818
    invoke-interface {v9, v2, v10, v11}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader;->init(Lio/bidmachine/media3/common/util/TimestampAdjuster;Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 823
    :cond_1be
    iget-object v7, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {v7}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$000(Lio/bidmachine/media3/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1c7
    add-int/lit8 v4, v4, 0x1

    goto :goto_17e

    .line 827
    :cond_1ca
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {v1}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$200(Lio/bidmachine/media3/extractor/ts/TsExtractor;)I

    move-result v1

    if-ne v1, v3, :cond_1ef

    .line 828
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {v1}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$1000(Lio/bidmachine/media3/extractor/ts/TsExtractor;)Z

    move-result v1

    if-nez v1, :cond_226

    .line 829
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {v1}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$700(Lio/bidmachine/media3/extractor/ts/TsExtractor;)Lio/bidmachine/media3/extractor/ExtractorOutput;

    move-result-object v1

    invoke-interface {v1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->endTracks()V

    .line 830
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$102(Lio/bidmachine/media3/extractor/ts/TsExtractor;I)I

    .line 831
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {v1, v5}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$1002(Lio/bidmachine/media3/extractor/ts/TsExtractor;Z)Z

    return-void

    :cond_1ef
    const/4 v2, 0x0

    .line 834
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {v1}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$000(Lio/bidmachine/media3/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v1

    iget v3, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->pid:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 835
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {v1}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$200(Lio/bidmachine/media3/extractor/ts/TsExtractor;)I

    move-result v3

    if-ne v3, v5, :cond_205

    move v4, v2

    goto :goto_20d

    :cond_205
    iget-object v2, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {v2}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$100(Lio/bidmachine/media3/extractor/ts/TsExtractor;)I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    :goto_20d
    invoke-static {v1, v4}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$102(Lio/bidmachine/media3/extractor/ts/TsExtractor;I)I

    .line 836
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {v1}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$100(Lio/bidmachine/media3/extractor/ts/TsExtractor;)I

    move-result v1

    if-nez v1, :cond_226

    .line 837
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {v1}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$700(Lio/bidmachine/media3/extractor/ts/TsExtractor;)Lio/bidmachine/media3/extractor/ExtractorOutput;

    move-result-object v1

    invoke-interface {v1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->endTracks()V

    .line 838
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Lio/bidmachine/media3/extractor/ts/TsExtractor;

    invoke-static {v1, v5}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->access$1002(Lio/bidmachine/media3/extractor/ts/TsExtractor;Z)Z

    :cond_226
    :goto_226
    return-void
.end method

.method public init(Lio/bidmachine/media3/common/util/TimestampAdjuster;Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 4

    .line 0
    return-void
.end method

.method public final readEsInfo(Lio/bidmachine/media3/common/util/ParsableByteArray;I)Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;
    .registers 19

    move-object/from16 v0, p1

    .line 852
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    add-int v2, v1, p2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v7, v3

    move-object v8, v4

    move-object v10, v8

    move v9, v5

    .line 858
    :goto_f
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v3

    if-ge v3, v2, :cond_da

    .line 859
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 860
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 861
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v6

    add-int/2addr v6, v4

    if-le v6, v2, :cond_26

    goto/16 :goto_da

    :cond_26
    const/4 v4, 0x5

    const/16 v11, 0xac

    const/16 v12, 0x87

    const/16 v13, 0x81

    if-ne v3, v4, :cond_58

    .line 867
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    const-wide/32 v14, 0x41432d33

    cmp-long v14, v3, v14

    if-nez v14, :cond_3b

    goto :goto_5c

    :cond_3b
    const-wide/32 v13, 0x45414333

    cmp-long v13, v3, v13

    if-nez v13, :cond_43

    goto :goto_63

    :cond_43
    const-wide/32 v12, 0x41432d34

    cmp-long v12, v3, v12

    if-nez v12, :cond_4d

    :goto_4a
    move v7, v11

    goto/16 :goto_d0

    :cond_4d
    const-wide/32 v11, 0x48455643

    cmp-long v3, v3, v11

    if-nez v3, :cond_d0

    const/16 v7, 0x24

    goto/16 :goto_d0

    :cond_58
    const/16 v4, 0x6a

    if-ne v3, v4, :cond_5f

    :goto_5c
    move v7, v13

    goto/16 :goto_d0

    :cond_5f
    const/16 v4, 0x7a

    if-ne v3, v4, :cond_66

    :goto_63
    move v7, v12

    goto/16 :goto_d0

    :cond_66
    const/16 v4, 0x7f

    if-ne v3, v4, :cond_81

    .line 883
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    const/16 v4, 0x15

    if-ne v3, v4, :cond_73

    goto :goto_4a

    :cond_73
    const/16 v4, 0xe

    if-ne v3, v4, :cond_7a

    const/16 v7, 0x88

    goto :goto_d0

    :cond_7a
    const/16 v4, 0x21

    if-ne v3, v4, :cond_d0

    const/16 v7, 0x8b

    goto :goto_d0

    :cond_81
    const/16 v4, 0x7b

    if-ne v3, v4, :cond_89

    const/16 v3, 0x8a

    :goto_87
    move v7, v3

    goto :goto_d0

    :cond_89
    const/16 v4, 0xa

    const/4 v11, 0x3

    if-ne v3, v4, :cond_9c

    .line 897
    invoke-virtual {v0, v11}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 898
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    move-object v8, v3

    goto :goto_d0

    :cond_9c
    const/16 v4, 0x59

    if-ne v3, v4, :cond_c9

    .line 901
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 902
    :goto_a5
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v7

    if-ge v7, v6, :cond_c6

    .line 903
    invoke-virtual {v0, v11}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 904
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    const/4 v12, 0x4

    .line 905
    new-array v13, v12, [B

    .line 906
    invoke-virtual {v0, v13, v5, v12}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 907
    new-instance v12, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;

    invoke-direct {v12, v7, v10, v13}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a5

    :cond_c6
    move-object v10, v3

    move v7, v4

    goto :goto_d0

    :cond_c9
    const/16 v4, 0x6f

    if-ne v3, v4, :cond_d0

    const/16 v3, 0x101

    goto :goto_87

    .line 914
    :cond_d0
    :goto_d0
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v3

    sub-int/2addr v6, v3

    invoke-virtual {v0, v6}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_f

    .line 916
    :cond_da
    :goto_da
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 917
    new-instance v6, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;

    .line 922
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$EsInfo;-><init>(ILjava/lang/String;ILjava/util/List;[B)V

    return-object v6
.end method

###### Class io.bidmachine.media3.extractor.ts.TsExtractor$$ExternalSyntheticLambda0 (io.bidmachine.media3.extractor.ts.TsExtractor$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/extractor/ts/TsExtractor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/extractor/ExtractorsFactory;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createExtractors()[Lio/bidmachine/media3/extractor/Extractor;
    .registers 2

    .line 0
    invoke-static {}, Lio/bidmachine/media3/extractor/ts/TsExtractor;->$r8$lambda$C5dTgF64iR_KecWfpJ2m-3FsMyU()[Lio/bidmachine/media3/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method
