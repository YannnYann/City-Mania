###### Class io.bidmachine.media3.extractor.ogg.DefaultOggSeeker (io.bidmachine.media3.extractor.ogg.DefaultOggSeeker)
.class public final Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;
.super Ljava/lang/Object;
.source "DefaultOggSeeker.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/ogg/OggSeeker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;
    }
.end annotation


# instance fields
.field public end:J

.field public endGranule:J

.field public final pageHeader:Lio/bidmachine/media3/extractor/ogg/OggPageHeader;

.field public final payloadEndPosition:J

.field public final payloadStartPosition:J

.field public positionBeforeSeekToEnd:J

.field public start:J

.field public startGranule:J

.field public state:I

.field public final streamReader:Lio/bidmachine/media3/extractor/ogg/StreamReader;

.field public targetGranule:J

.field public totalGranules:J


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/ogg/StreamReader;JJJJZ)V
    .registers 13

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_10

    cmp-long v0, p4, p2

    if-lez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    move v0, v1

    .line 78
    :goto_11
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 80
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->streamReader:Lio/bidmachine/media3/extractor/ogg/StreamReader;

    .line 81
    iput-wide p2, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->payloadStartPosition:J

    .line 82
    iput-wide p4, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    sub-long/2addr p4, p2

    cmp-long p1, p6, p4

    if-eqz p1, :cond_25

    if-eqz p10, :cond_22

    goto :goto_25

    .line 88
    :cond_22
    iput v1, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->state:I

    goto :goto_2a

    .line 85
    :cond_25
    :goto_25
    iput-wide p8, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    const/4 p1, 0x4

    .line 86
    iput p1, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->state:I

    .line 90
    :goto_2a
    new-instance p1, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Lio/bidmachine/media3/extractor/ogg/OggPageHeader;

    return-void
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;)Lio/bidmachine/media3/extractor/ogg/StreamReader;
    .registers 1

    .line 34
    iget-object p0, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->streamReader:Lio/bidmachine/media3/extractor/ogg/StreamReader;

    return-object p0
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;)J
    .registers 3

    .line 34
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->payloadStartPosition:J

    return-wide v0
.end method

.method public static synthetic access$300(Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;)J
    .registers 3

    .line 34
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    return-wide v0
.end method

.method public static synthetic access$400(Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;)J
    .registers 3

    .line 34
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic createSeekMap()Lio/bidmachine/media3/extractor/SeekMap;
    .registers 2

    .line 34
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->createSeekMap()Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;

    move-result-object v0

    return-object v0
.end method

.method public createSeekMap()Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;
    .registers 5

    .line 131
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    new-instance v0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;-><init>(Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker$1;)V

    return-object v0

    :cond_f
    return-object v1
.end method

.method public final getNextSeekPosition(Lio/bidmachine/media3/extractor/ExtractorInput;)J
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 156
    iget-wide v2, v0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->start:J

    iget-wide v4, v0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->end:J

    cmp-long v2, v2, v4

    const-wide/16 v3, -0x1

    if-nez v2, :cond_f

    return-wide v3

    .line 160
    :cond_f
    invoke-interface {v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    .line 161
    iget-object v2, v0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Lio/bidmachine/media3/extractor/ogg/OggPageHeader;

    iget-wide v7, v0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->end:J

    invoke-virtual {v2, v1, v7, v8}, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;->skipToNextPage(Lio/bidmachine/media3/extractor/ExtractorInput;J)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 162
    iget-wide v1, v0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->start:J

    cmp-long v3, v1, v5

    if-eqz v3, :cond_24

    return-wide v1

    .line 163
    :cond_24
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No ogg page can be found."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_2c
    iget-object v2, v0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Lio/bidmachine/media3/extractor/ogg/OggPageHeader;

    const/4 v7, 0x0

    invoke-virtual {v2, v1, v7}, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;->populate(Lio/bidmachine/media3/extractor/ExtractorInput;Z)Z

    .line 169
    invoke-interface {v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 171
    iget-wide v7, v0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->targetGranule:J

    iget-object v2, v0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Lio/bidmachine/media3/extractor/ogg/OggPageHeader;

    iget-wide v9, v2, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;->granulePosition:J

    sub-long/2addr v7, v9

    .line 172
    iget v11, v2, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;->headerSize:I

    iget v2, v2, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v11, v2

    const-wide/16 v12, 0x0

    cmp-long v2, v12, v7

    if-gtz v2, :cond_4f

    const-wide/32 v14, 0x11940

    cmp-long v2, v7, v14

    if-gez v2, :cond_4f

    return-wide v3

    :cond_4f
    cmp-long v2, v7, v12

    if-gez v2, :cond_58

    .line 178
    iput-wide v5, v0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->end:J

    .line 179
    iput-wide v9, v0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->endGranule:J

    goto :goto_66

    .line 181
    :cond_58
    invoke-interface {v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    int-to-long v5, v11

    add-long/2addr v3, v5

    iput-wide v3, v0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->start:J

    .line 182
    iget-object v3, v0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Lio/bidmachine/media3/extractor/ogg/OggPageHeader;

    iget-wide v3, v3, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;->granulePosition:J

    iput-wide v3, v0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->startGranule:J

    .line 185
    :goto_66
    iget-wide v3, v0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->end:J

    iget-wide v5, v0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->start:J

    sub-long/2addr v3, v5

    const-wide/32 v9, 0x186a0

    cmp-long v3, v3, v9

    if-gez v3, :cond_75

    .line 186
    iput-wide v5, v0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->end:J

    return-wide v5

    :cond_75
    int-to-long v3, v11

    const-wide/16 v5, 0x1

    if-gtz v2, :cond_7d

    const-wide/16 v9, 0x2

    goto :goto_7e

    :cond_7d
    move-wide v9, v5

    :goto_7e
    mul-long/2addr v3, v9

    .line 192
    invoke-interface {v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    sub-long/2addr v1, v3

    iget-wide v3, v0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->end:J

    iget-wide v11, v0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->start:J

    sub-long v9, v3, v11

    mul-long/2addr v7, v9

    iget-wide v9, v0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->endGranule:J

    iget-wide v13, v0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->startGranule:J

    sub-long/2addr v9, v13

    div-long/2addr v7, v9

    add-long v9, v1, v7

    sub-long v13, v3, v5

    .line 195
    invoke-static/range {v9 .. v14}, Lio/bidmachine/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public read(Lio/bidmachine/media3/extractor/ExtractorInput;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget v0, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eqz v0, :cond_30

    if-eq v0, v1, :cond_43

    const/4 v1, 0x2

    const-wide/16 v3, -0x1

    const/4 v5, 0x3

    if-eq v0, v1, :cond_19

    if-eq v0, v5, :cond_24

    if-ne v0, v2, :cond_13

    return-wide v3

    .line 124
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 112
    :cond_19
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->getNextSeekPosition(Lio/bidmachine/media3/extractor/ExtractorInput;)J

    move-result-wide v0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_22

    return-wide v0

    .line 116
    :cond_22
    iput v5, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->state:I

    .line 119
    :cond_24
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->skipToPageOfTargetGranule(Lio/bidmachine/media3/extractor/ExtractorInput;)V

    .line 120
    iput v2, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->state:I

    .line 121
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->startGranule:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    neg-long v0, v0

    return-wide v0

    .line 99
    :cond_30
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iput-wide v3, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->positionBeforeSeekToEnd:J

    .line 100
    iput v1, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->state:I

    .line 102
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    const-wide/32 v5, 0xff1b

    sub-long/2addr v0, v5

    cmp-long v3, v0, v3

    if-lez v3, :cond_43

    return-wide v0

    .line 108
    :cond_43
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->readGranuleOfLastPage(Lio/bidmachine/media3/extractor/ExtractorInput;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    .line 109
    iput v2, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->state:I

    .line 110
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->positionBeforeSeekToEnd:J

    return-wide v0
.end method

.method public readGranuleOfLastPage(Lio/bidmachine/media3/extractor/ExtractorInput;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Lio/bidmachine/media3/extractor/ogg/OggPageHeader;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;->reset()V

    .line 232
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Lio/bidmachine/media3/extractor/ogg/OggPageHeader;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;->skipToNextPage(Lio/bidmachine/media3/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 235
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Lio/bidmachine/media3/extractor/ogg/OggPageHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;->populate(Lio/bidmachine/media3/extractor/ExtractorInput;Z)Z

    .line 236
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Lio/bidmachine/media3/extractor/ogg/OggPageHeader;

    iget v1, v0, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;->headerSize:I

    iget v0, v0, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 237
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Lio/bidmachine/media3/extractor/ogg/OggPageHeader;

    iget-wide v0, v0, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;->granulePosition:J

    .line 238
    :goto_21
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Lio/bidmachine/media3/extractor/ogg/OggPageHeader;

    iget v3, v2, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;->type:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-eq v3, v4, :cond_55

    .line 239
    invoke-virtual {v2, p1}, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;->skipToNextPage(Lio/bidmachine/media3/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 240
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-wide v4, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_55

    .line 241
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Lio/bidmachine/media3/extractor/ogg/OggPageHeader;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;->populate(Lio/bidmachine/media3/extractor/ExtractorInput;Z)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 242
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Lio/bidmachine/media3/extractor/ogg/OggPageHeader;

    iget v3, v2, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;->headerSize:I

    iget v2, v2, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v3, v2

    invoke-static {p1, v3}, Lio/bidmachine/media3/extractor/ExtractorUtil;->skipFullyQuietly(Lio/bidmachine/media3/extractor/ExtractorInput;I)Z

    move-result v2

    if-nez v2, :cond_50

    goto :goto_55

    .line 247
    :cond_50
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Lio/bidmachine/media3/extractor/ogg/OggPageHeader;

    iget-wide v0, v0, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;->granulePosition:J

    goto :goto_21

    :cond_55
    :goto_55
    return-wide v0

    .line 233
    :cond_56
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public final skipToPageOfTargetGranule(Lio/bidmachine/media3/extractor/ExtractorInput;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    :goto_0
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Lio/bidmachine/media3/extractor/ogg/OggPageHeader;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;->skipToNextPage(Lio/bidmachine/media3/extractor/ExtractorInput;)Z

    .line 210
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Lio/bidmachine/media3/extractor/ogg/OggPageHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;->populate(Lio/bidmachine/media3/extractor/ExtractorInput;Z)Z

    .line 211
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Lio/bidmachine/media3/extractor/ogg/OggPageHeader;

    iget-wide v1, v0, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;->granulePosition:J

    iget-wide v3, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->targetGranule:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_19

    .line 218
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->resetPeekPosition()V

    return-void

    .line 214
    :cond_19
    iget v1, v0, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;->headerSize:I

    iget v0, v0, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 215
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->start:J

    .line 216
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Lio/bidmachine/media3/extractor/ogg/OggPageHeader;

    iget-wide v0, v0, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;->granulePosition:J

    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->startGranule:J

    goto :goto_0
.end method

.method public startSeek(J)V
    .registers 13

    .line 136
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    const-wide/16 v2, 0x1

    sub-long v8, v0, v2

    const-wide/16 v6, 0x0

    move-wide v4, p1

    invoke-static/range {v4 .. v9}, Lio/bidmachine/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->targetGranule:J

    const/4 p1, 0x2

    .line 137
    iput p1, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->state:I

    .line 138
    iget-wide p1, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->payloadStartPosition:J

    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->start:J

    .line 139
    iget-wide p1, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->end:J

    const-wide/16 p1, 0x0

    .line 140
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->startGranule:J

    .line 141
    iget-wide p1, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->endGranule:J

    return-void
.end method

###### Class io.bidmachine.media3.extractor.ogg.DefaultOggSeeker.AnonymousClass1 (io.bidmachine.media3.extractor.ogg.DefaultOggSeeker$1)
.class public synthetic Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker$1;
.super Ljava/lang/Object;
.source "DefaultOggSeeker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.extractor.ogg.DefaultOggSeeker.OggSeekMap (io.bidmachine.media3.extractor.ogg.DefaultOggSeeker$OggSeekMap)
.class public final Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;
.super Ljava/lang/Object;
.source "DefaultOggSeeker.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OggSeekMap"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;)V
    .registers 2

    .line 252
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker$1;)V
    .registers 3

    .line 252
    invoke-direct {p0, p1}, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;-><init>(Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;)V

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .registers 4

    .line 278
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;

    invoke-static {v0}, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->access$100(Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;)Lio/bidmachine/media3/extractor/ogg/StreamReader;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;

    invoke-static {v1}, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->access$300(Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/extractor/ogg/StreamReader;->convertGranuleToTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekPoints(J)Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;
    .registers 13

    .line 261
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;

    invoke-static {v0}, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->access$100(Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;)Lio/bidmachine/media3/extractor/ogg/StreamReader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/extractor/ogg/StreamReader;->convertTimeToGranule(J)J

    move-result-wide v0

    .line 262
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;

    .line 263
    invoke-static {v2}, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->access$200(Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v2

    .line 266
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;

    .line 267
    invoke-static {v1}, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->access$400(Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v4

    iget-object v1, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;

    invoke-static {v1}, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->access$200(Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;

    .line 268
    invoke-static {v1}, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->access$300(Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    add-long/2addr v2, v0

    const-wide/16 v0, 0x7530

    sub-long v4, v2, v0

    .line 271
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;

    .line 272
    invoke-static {v0}, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->access$200(Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v6

    iget-object v0, p0, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;

    invoke-static {v0}, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;->access$400(Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long v8, v0, v2

    invoke-static/range {v4 .. v9}, Lio/bidmachine/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    .line 273
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
