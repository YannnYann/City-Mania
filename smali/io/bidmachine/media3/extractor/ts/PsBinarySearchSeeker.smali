###### Class io.bidmachine.media3.extractor.ts.PsBinarySearchSeeker (io.bidmachine.media3.extractor.ts.PsBinarySearchSeeker)
.class public final Lio/bidmachine/media3/extractor/ts/PsBinarySearchSeeker;
.super Lio/bidmachine/media3/extractor/BinarySearchSeeker;
.source "PsBinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/common/util/TimestampAdjuster;JJ)V
    .registers 22

    .line 44
    new-instance v1, Lio/bidmachine/media3/extractor/BinarySearchSeeker$DefaultSeekTimestampConverter;

    invoke-direct {v1}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$DefaultSeekTimestampConverter;-><init>()V

    new-instance v2, Lio/bidmachine/media3/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;

    const/4 v0, 0x0

    move-object/from16 v3, p1

    invoke-direct {v2, v3, v0}, Lio/bidmachine/media3/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;-><init>(Lio/bidmachine/media3/common/util/TimestampAdjuster;Lio/bidmachine/media3/extractor/ts/PsBinarySearchSeeker$1;)V

    const-wide/16 v3, 0x1

    add-long v7, p2, v3

    const-wide/16 v13, 0xbc

    const/16 v15, 0x3e8

    const-wide/16 v5, 0x0

    const-wide/16 v9, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v3, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v0 .. v15}, Lio/bidmachine/media3/extractor/BinarySearchSeeker;-><init>(Lio/bidmachine/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJJI)V

    return-void
.end method

.method public static synthetic access$100([BI)I
    .registers 2

    .line 36
    invoke-static {p0, p1}, Lio/bidmachine/media3/extractor/ts/PsBinarySearchSeeker;->peekIntAtPosition([BI)I

    move-result p0

    return p0
.end method

.method public static peekIntAtPosition([BI)I
    .registers 4

    .line 206
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

###### Class io.bidmachine.media3.extractor.ts.PsBinarySearchSeeker.AnonymousClass1 (io.bidmachine.media3.extractor.ts.PsBinarySearchSeeker$1)
.class public synthetic Lio/bidmachine/media3/extractor/ts/PsBinarySearchSeeker$1;
.super Ljava/lang/Object;
.source "PsBinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/ts/PsBinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.extractor.ts.PsBinarySearchSeeker.PsScrSeeker (io.bidmachine.media3.extractor.ts.PsBinarySearchSeeker$PsScrSeeker)
.class public final Lio/bidmachine/media3/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;
.super Ljava/lang/Object;
.source "PsBinarySearchSeeker.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSeeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/ts/PsBinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PsScrSeeker"
.end annotation


# instance fields
.field public final packetBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public final scrTimestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/common/util/TimestampAdjuster;)V
    .registers 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->scrTimestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;

    .line 70
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->packetBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/common/util/TimestampAdjuster;Lio/bidmachine/media3/extractor/ts/PsBinarySearchSeeker$1;)V
    .registers 3

    .line 63
    invoke-direct {p0, p1}, Lio/bidmachine/media3/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;-><init>(Lio/bidmachine/media3/common/util/TimestampAdjuster;)V

    return-void
.end method

.method public static skipToEndOfCurrentPack(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 6

    .line 145
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v0

    .line 147
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_10

    .line 150
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-void

    :cond_10
    const/16 v1, 0x9

    .line 153
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 155
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    .line 156
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-ge v2, v1, :cond_25

    .line 157
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-void

    .line 160
    :cond_25
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 162
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_33

    .line 163
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-void

    .line 167
    :cond_33
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v3

    invoke-static {v1, v3}, Lio/bidmachine/media3/extractor/ts/PsBinarySearchSeeker;->access$100([BI)I

    move-result v1

    const/16 v3, 0x1bb

    if-ne v1, v3, :cond_57

    .line 169
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 170
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 171
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-ge v3, v1, :cond_54

    .line 172
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-void

    .line 175
    :cond_54
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 182
    :cond_57
    :goto_57
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lt v1, v2, :cond_9b

    .line 183
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v3

    invoke-static {v1, v3}, Lio/bidmachine/media3/extractor/ts/PsBinarySearchSeeker;->access$100([BI)I

    move-result v1

    const/16 v3, 0x1ba

    if-eq v1, v3, :cond_9b

    const/16 v3, 0x1b9

    if-ne v1, v3, :cond_72

    goto :goto_9b

    :cond_72
    ushr-int/lit8 v1, v1, 0x8

    const/4 v3, 0x1

    if-eq v1, v3, :cond_78

    goto :goto_9b

    .line 191
    :cond_78
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 193
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_86

    .line 195
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-void

    .line 198
    :cond_86
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 200
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v3

    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 199
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_57

    :cond_9b
    :goto_9b
    return-void
.end method


# virtual methods
.method public onSeekFinished()V
    .registers 3

    .line 87
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->packetBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    sget-object v1, Lio/bidmachine/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset([B)V

    return-void
.end method

.method public final searchForScrValueInBuffer(Lio/bidmachine/media3/common/util/ParsableByteArray;JJ)Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;
    .registers 15

    const/4 v0, -0x1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    move v3, v0

    move-wide v4, v1

    .line 96
    :goto_8
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v6

    const/4 v7, 0x4

    if-lt v6, v7, :cond_6a

    .line 97
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v6

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v8

    invoke-static {v6, v8}, Lio/bidmachine/media3/extractor/ts/PsBinarySearchSeeker;->access$100([BI)I

    move-result v6

    const/16 v8, 0x1ba

    if-eq v6, v8, :cond_24

    const/4 v6, 0x1

    .line 99
    invoke-virtual {p1, v6}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_8

    .line 102
    :cond_24
    invoke-virtual {p1, v7}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 106
    invoke-static {p1}, Lio/bidmachine/media3/extractor/ts/PsDurationReader;->readScrValueFromPack(Lio/bidmachine/media3/common/util/ParsableByteArray;)J

    move-result-wide v6

    cmp-long v0, v6, v1

    if-eqz v0, :cond_62

    .line 108
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->scrTimestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;

    invoke-virtual {v0, v6, v7}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v6

    cmp-long v0, v6, p2

    if-lez v0, :cond_49

    cmp-long p1, v4, v1

    if-nez p1, :cond_42

    .line 112
    invoke-static {v6, v7, p4, p5}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->overestimatedResult(JJ)Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object p1

    return-object p1

    :cond_42
    int-to-long p1, v3

    add-long/2addr p4, p1

    .line 115
    invoke-static {p4, p5}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->targetFoundResult(J)Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object p1

    return-object p1

    :cond_49
    const-wide/32 v3, 0x186a0

    add-long/2addr v3, v6

    cmp-long v0, v3, p2

    if-lez v0, :cond_5c

    .line 119
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result p1

    int-to-long p1, p1

    add-long/2addr p4, p1

    .line 120
    invoke-static {p4, p5}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->targetFoundResult(J)Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object p1

    return-object p1

    .line 124
    :cond_5c
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    move v3, v0

    move-wide v4, v6

    .line 126
    :cond_62
    invoke-static {p1}, Lio/bidmachine/media3/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->skipToEndOfCurrentPack(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    .line 127
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    goto :goto_8

    :cond_6a
    cmp-long p1, v4, v1

    if-eqz p1, :cond_75

    int-to-long p1, v0

    add-long/2addr p4, p1

    .line 132
    invoke-static {v4, v5, p4, p5}, Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->underestimatedResult(JJ)Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object p1

    return-object p1

    .line 135
    :cond_75
    sget-object p1, Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->NO_TIMESTAMP_IN_RANGE_RESULT:Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    return-object p1
.end method

.method public searchForTimestamp(Lio/bidmachine/media3/extractor/ExtractorInput;J)Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    .line 77
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    sub-long/2addr v0, v4

    const-wide/16 v2, 0x4e20

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 79
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->packetBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    .line 80
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->packetBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lio/bidmachine/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 82
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->packetBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    move-object v0, p0

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->searchForScrValueInBuffer(Lio/bidmachine/media3/common/util/ParsableByteArray;JJ)Lio/bidmachine/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object p1

    return-object p1
.end method
