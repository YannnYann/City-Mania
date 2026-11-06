###### Class io.bidmachine.media3.extractor.ts.H264Reader (io.bidmachine.media3.extractor.ts.H264Reader)
.class public final Lio/bidmachine/media3/extractor/ts/H264Reader;
.super Ljava/lang/Object;
.source "H264Reader.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;
    }
.end annotation


# instance fields
.field public final allowNonIdrKeyframes:Z

.field public final containerMimeType:Ljava/lang/String;

.field public final detectAccessUnits:Z

.field public formatId:Ljava/lang/String;

.field public hasOutputFormat:Z

.field public output:Lio/bidmachine/media3/extractor/TrackOutput;

.field public pesTimeUs:J

.field public final pps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

.field public final prefixFlags:[Z

.field public randomAccessIndicator:Z

.field public sampleReader:Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;

.field public final sei:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

.field public final seiReader:Lio/bidmachine/media3/extractor/ts/SeiReader;

.field public final seiWrapper:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public final sps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

.field public totalBytesWritten:J


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/ts/SeiReader;ZZLjava/lang/String;)V
    .registers 5

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->seiReader:Lio/bidmachine/media3/extractor/ts/SeiReader;

    .line 88
    iput-boolean p2, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->allowNonIdrKeyframes:Z

    .line 89
    iput-boolean p3, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->detectAccessUnits:Z

    .line 90
    iput-object p4, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->containerMimeType:Ljava/lang/String;

    const/4 p1, 0x3

    .line 91
    new-array p1, p1, [Z

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->prefixFlags:[Z

    .line 92
    new-instance p1, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    const/4 p2, 0x7

    const/16 p3, 0x80

    invoke-direct {p1, p2, p3}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->sps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    .line 93
    new-instance p1, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 p2, 0x8

    invoke-direct {p1, p2, p3}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->pps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    .line 94
    new-instance p1, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    const/4 p2, 0x6

    invoke-direct {p1, p2, p3}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->sei:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 95
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->pesTimeUs:J

    .line 96
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->seiWrapper:Lio/bidmachine/media3/common/util/ParsableByteArray;

    return-void
.end method

.method private assertTracksCreated()V
    .registers 2

    .line 289
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->sampleReader:Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public consume(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 16

    .line 131
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/ts/H264Reader;->assertTracksCreated()V

    .line 133
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 134
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v7

    .line 135
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v8

    .line 138
    iget-wide v2, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->totalBytesWritten:J

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->totalBytesWritten:J

    .line 139
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    invoke-interface {v2, p1, v3}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    .line 143
    :goto_22
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->prefixFlags:[Z

    invoke-static {v8, v1, v7, v2}, Lio/bidmachine/media3/container/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v2

    if-ne v2, v7, :cond_2e

    .line 147
    invoke-virtual {p0, v8, v1, v7}, Lio/bidmachine/media3/extractor/ts/H264Reader;->nalUnitData([BII)V

    return-void

    .line 152
    :cond_2e
    invoke-static {v8, v2}, Lio/bidmachine/media3/container/NalUnitUtil;->getNalUnitType([BI)I

    move-result v9

    if-lez v2, :cond_40

    add-int/lit8 v3, v2, -0x1

    .line 157
    aget-byte v3, v8, v3

    if-nez v3, :cond_40

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x4

    :goto_3d
    move v10, v2

    move v11, v3

    goto :goto_42

    :cond_40
    const/4 v3, 0x3

    goto :goto_3d

    :goto_42
    sub-int v2, v10, v1

    if-lez v2, :cond_49

    .line 166
    invoke-virtual {p0, v8, v1, v10}, Lio/bidmachine/media3/extractor/ts/H264Reader;->nalUnitData([BII)V

    :cond_49
    sub-int v3, v7, v10

    .line 169
    iget-wide v4, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->totalBytesWritten:J

    int-to-long v12, v3

    sub-long/2addr v4, v12

    if-gez v2, :cond_54

    neg-int v1, v2

    :goto_52
    move-wide v12, v4

    goto :goto_56

    :cond_54
    const/4 v1, 0x0

    goto :goto_52

    .line 176
    :goto_56
    iget-wide v5, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->pesTimeUs:J

    move-object v0, p0

    move v4, v1

    move-wide v1, v12

    .line 173
    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/media3/extractor/ts/H264Reader;->endNalUnit(JIIJ)V

    .line 179
    iget-wide v4, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->pesTimeUs:J

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/extractor/ts/H264Reader;->startNalUnit(JIJ)V

    add-int v1, v10, v11

    goto :goto_22
.end method

.method public createTracks(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 7

    .line 116
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 117
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->formatId:Ljava/lang/String;

    .line 118
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 119
    new-instance v1, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;

    iget-boolean v2, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->allowNonIdrKeyframes:Z

    iget-boolean v3, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->detectAccessUnits:Z

    invoke-direct {v1, v0, v2, v3}, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;-><init>(Lio/bidmachine/media3/extractor/TrackOutput;ZZ)V

    iput-object v1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->sampleReader:Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;

    .line 120
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->seiReader:Lio/bidmachine/media3/extractor/ts/SeiReader;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/extractor/ts/SeiReader;->createTracks(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    return-void
.end method

.method public final endNalUnit(JIIJ)V
    .registers 14

    .line 219
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->sampleReader:Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->needsSpsPps()Z

    move-result v0

    if-eqz v0, :cond_136

    .line 220
    :cond_c
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->sps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 221
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->pps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 222
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->hasOutputFormat:Z

    const/4 v1, 0x3

    if-nez v0, :cond_f6

    .line 223
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->sps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_136

    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->pps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_136

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 225
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->sps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, v2, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v2, v2, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->pps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, v2, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v2, v2, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->sps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, v2, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v2, v2, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v1, v2}, Lio/bidmachine/media3/container/NalUnitUtil;->parseSpsNalUnit([BII)Lio/bidmachine/media3/container/NalUnitUtil$SpsData;

    move-result-object v2

    .line 228
    iget-object v3, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->pps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v4, v3, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v3, v3, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v4, v1, v3}, Lio/bidmachine/media3/container/NalUnitUtil;->parsePpsNalUnit([BII)Lio/bidmachine/media3/container/NalUnitUtil$PpsData;

    move-result-object v1

    .line 229
    iget v3, v2, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->profileIdc:I

    iget v4, v2, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->constraintsFlagsAndReservedZero2Bits:I

    iget v5, v2, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->levelIdc:I

    .line 230
    invoke-static {v3, v4, v5}, Lio/bidmachine/media3/common/util/CodecSpecificDataUtil;->buildAvcCodecString(III)Ljava/lang/String;

    move-result-object v3

    .line 234
    iget-object v4, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    new-instance v5, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v5}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    iget-object v6, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->formatId:Ljava/lang/String;

    .line 236
    invoke-virtual {v5, v6}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v5

    iget-object v6, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->containerMimeType:Ljava/lang/String;

    .line 237
    invoke-virtual {v5, v6}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v5

    const-string v6, "video/avc"

    .line 238
    invoke-virtual {v5, v6}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v5

    .line 239
    invoke-virtual {v5, v3}, Lio/bidmachine/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v3

    iget v5, v2, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->width:I

    .line 240
    invoke-virtual {v3, v5}, Lio/bidmachine/media3/common/Format$Builder;->setWidth(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v3

    iget v5, v2, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->height:I

    .line 241
    invoke-virtual {v3, v5}, Lio/bidmachine/media3/common/Format$Builder;->setHeight(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v3

    new-instance v5, Lio/bidmachine/media3/common/ColorInfo$Builder;

    invoke-direct {v5}, Lio/bidmachine/media3/common/ColorInfo$Builder;-><init>()V

    iget v6, v2, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->colorSpace:I

    .line 244
    invoke-virtual {v5, v6}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setColorSpace(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    move-result-object v5

    iget v6, v2, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->colorRange:I

    .line 245
    invoke-virtual {v5, v6}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setColorRange(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    move-result-object v5

    iget v6, v2, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->colorTransfer:I

    .line 246
    invoke-virtual {v5, v6}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setColorTransfer(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    move-result-object v5

    iget v6, v2, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->bitDepthLumaMinus8:I

    add-int/lit8 v6, v6, 0x8

    .line 247
    invoke-virtual {v5, v6}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    move-result-object v5

    iget v6, v2, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->bitDepthChromaMinus8:I

    add-int/lit8 v6, v6, 0x8

    .line 248
    invoke-virtual {v5, v6}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    move-result-object v5

    .line 249
    invoke-virtual {v5}, Lio/bidmachine/media3/common/ColorInfo$Builder;->build()Lio/bidmachine/media3/common/ColorInfo;

    move-result-object v5

    .line 242
    invoke-virtual {v3, v5}, Lio/bidmachine/media3/common/Format$Builder;->setColorInfo(Lio/bidmachine/media3/common/ColorInfo;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v3

    iget v5, v2, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->pixelWidthHeightRatio:F

    .line 250
    invoke-virtual {v3, v5}, Lio/bidmachine/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v3

    .line 251
    invoke-virtual {v3, v0}, Lio/bidmachine/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    iget v3, v2, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->maxNumReorderFrames:I

    .line 252
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/Format$Builder;->setMaxNumReorderSamples(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v0

    .line 234
    invoke-interface {v4, v0}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    const/4 v0, 0x1

    .line 254
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->hasOutputFormat:Z

    .line 255
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->seiReader:Lio/bidmachine/media3/extractor/ts/SeiReader;

    iget v3, v2, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->maxNumReorderFrames:I

    invoke-virtual {v0, v3}, Lio/bidmachine/media3/extractor/ts/SeiReader;->setReorderingQueueSize(I)V

    .line 256
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->sampleReader:Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->putSps(Lio/bidmachine/media3/container/NalUnitUtil$SpsData;)V

    .line 257
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->sampleReader:Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->putPps(Lio/bidmachine/media3/container/NalUnitUtil$PpsData;)V

    .line 258
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->sps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 259
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->pps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    goto :goto_136

    .line 261
    :cond_f6
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->sps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_11a

    .line 262
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->sps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v2, v0, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v0, v0, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v2, v1, v0}, Lio/bidmachine/media3/container/NalUnitUtil;->parseSpsNalUnit([BII)Lio/bidmachine/media3/container/NalUnitUtil$SpsData;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->seiReader:Lio/bidmachine/media3/extractor/ts/SeiReader;

    iget v2, v0, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->maxNumReorderFrames:I

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/extractor/ts/SeiReader;->setReorderingQueueSize(I)V

    .line 264
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->sampleReader:Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v1, v0}, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->putSps(Lio/bidmachine/media3/container/NalUnitUtil$SpsData;)V

    .line 265
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->sps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    goto :goto_136

    .line 266
    :cond_11a
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->pps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_136

    .line 267
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->pps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v2, v0, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v0, v0, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v2, v1, v0}, Lio/bidmachine/media3/container/NalUnitUtil;->parsePpsNalUnit([BII)Lio/bidmachine/media3/container/NalUnitUtil$PpsData;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->sampleReader:Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v1, v0}, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->putPps(Lio/bidmachine/media3/container/NalUnitUtil$PpsData;)V

    .line 269
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->pps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 272
    :cond_136
    :goto_136
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->sei:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result p4

    if-eqz p4, :cond_15e

    .line 273
    iget-object p4, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->sei:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v0, p4, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget p4, p4, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v0, p4}, Lio/bidmachine/media3/container/NalUnitUtil;->unescapeStream([BI)I

    move-result p4

    .line 274
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->seiWrapper:Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->sei:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v1, v1, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v0, v1, p4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 275
    iget-object p4, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->seiWrapper:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/4 v0, 0x4

    invoke-virtual {p4, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 276
    iget-object p4, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->seiReader:Lio/bidmachine/media3/extractor/ts/SeiReader;

    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->seiWrapper:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p4, p5, p6, v0}, Lio/bidmachine/media3/extractor/ts/SeiReader;->consume(JLio/bidmachine/media3/common/util/ParsableByteArray;)V

    .line 278
    :cond_15e
    iget-object p4, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->sampleReader:Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;

    iget-boolean p5, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->hasOutputFormat:Z

    invoke-virtual {p4, p1, p2, p3, p5}, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->endNalUnit(JIZ)Z

    move-result p1

    if-eqz p1, :cond_16b

    const/4 p1, 0x0

    .line 283
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->randomAccessIndicator:Z

    :cond_16b
    return-void
.end method

.method public final nalUnitData([BII)V
    .registers 5

    .line 209
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->sampleReader:Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->needsSpsPps()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 210
    :cond_c
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->sps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 211
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->pps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 213
    :cond_16
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->sei:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 214
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->sampleReader:Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->appendToNalUnit([BII)V

    return-void
.end method

.method public packetFinished(Z)V
    .registers 16

    .line 187
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/ts/H264Reader;->assertTracksCreated()V

    if-eqz p1, :cond_27

    .line 189
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->seiReader:Lio/bidmachine/media3/extractor/ts/SeiReader;

    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/ts/SeiReader;->flush()V

    .line 191
    iget-wide v1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->totalBytesWritten:J

    const/4 v4, 0x0

    iget-wide v5, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->pesTimeUs:J

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/media3/extractor/ts/H264Reader;->endNalUnit(JIIJ)V

    move-object v7, v0

    .line 192
    iget-wide v8, v7, Lio/bidmachine/media3/extractor/ts/H264Reader;->totalBytesWritten:J

    const/16 v10, 0x9

    iget-wide v11, v7, Lio/bidmachine/media3/extractor/ts/H264Reader;->pesTimeUs:J

    invoke-virtual/range {v7 .. v12}, Lio/bidmachine/media3/extractor/ts/H264Reader;->startNalUnit(JIJ)V

    .line 193
    iget-wide v8, v7, Lio/bidmachine/media3/extractor/ts/H264Reader;->totalBytesWritten:J

    const/4 v11, 0x0

    iget-wide v12, v7, Lio/bidmachine/media3/extractor/ts/H264Reader;->pesTimeUs:J

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v13}, Lio/bidmachine/media3/extractor/ts/H264Reader;->endNalUnit(JIIJ)V

    :cond_27
    return-void
.end method

.method public packetStarted(JI)V
    .registers 4

    .line 125
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->pesTimeUs:J

    .line 126
    iget-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->randomAccessIndicator:Z

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_a

    const/4 p2, 0x1

    goto :goto_b

    :cond_a
    const/4 p2, 0x0

    :goto_b
    or-int/2addr p1, p2

    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->randomAccessIndicator:Z

    return-void
.end method

.method public seek()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 101
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->totalBytesWritten:J

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->randomAccessIndicator:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 103
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->pesTimeUs:J

    .line 104
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->prefixFlags:[Z

    invoke-static {v0}, Lio/bidmachine/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 105
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->sps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 106
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->pps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 107
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->sei:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 108
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->seiReader:Lio/bidmachine/media3/extractor/ts/SeiReader;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/SeiReader;->clear()V

    .line 109
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->sampleReader:Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;

    if-eqz v0, :cond_2e

    .line 110
    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->reset()V

    :cond_2e
    return-void
.end method

.method public final startNalUnit(JIJ)V
    .registers 14

    .line 199
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->sampleReader:Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->needsSpsPps()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 200
    :cond_c
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->sps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 201
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->pps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 203
    :cond_16
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->sei:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 204
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->sampleReader:Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;

    iget-boolean v7, p0, Lio/bidmachine/media3/extractor/ts/H264Reader;->randomAccessIndicator:Z

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v7}, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->startNalUnit(JIJZ)V

    return-void
.end method

###### Class io.bidmachine.media3.extractor.ts.H264Reader.AnonymousClass1 (io.bidmachine.media3.extractor.ts.H264Reader$1)
.class public synthetic Lio/bidmachine/media3/extractor/ts/H264Reader$1;
.super Ljava/lang/Object;
.source "H264Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/ts/H264Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.extractor.ts.H264Reader.SampleReader (io.bidmachine.media3.extractor.ts.H264Reader$SampleReader)
.class public final Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;
.super Ljava/lang/Object;
.source "H264Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/ts/H264Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SampleReader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;
    }
.end annotation


# instance fields
.field public final allowNonIdrKeyframes:Z

.field public final bitArray:Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

.field public buffer:[B

.field public bufferLength:I

.field public final detectAccessUnits:Z

.field public isFilling:Z

.field public nalUnitStartPosition:J

.field public nalUnitTimeUs:J

.field public nalUnitType:I

.field public final output:Lio/bidmachine/media3/extractor/TrackOutput;

.field public final pps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/bidmachine/media3/container/NalUnitUtil$PpsData;",
            ">;"
        }
    .end annotation
.end field

.field public previousSliceHeader:Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

.field public randomAccessIndicator:Z

.field public readingSample:Z

.field public sampleIsKeyframe:Z

.field public samplePosition:J

.field public sampleTimeUs:J

.field public sliceHeader:Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

.field public final sps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/bidmachine/media3/container/NalUnitUtil$SpsData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/TrackOutput;ZZ)V
    .registers 4

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 326
    iput-boolean p2, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    .line 327
    iput-boolean p3, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    .line 328
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    .line 329
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    .line 330
    new-instance p1, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;-><init>(Lio/bidmachine/media3/extractor/ts/H264Reader$1;)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 331
    new-instance p1, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-direct {p1, p2}, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;-><init>(Lio/bidmachine/media3/extractor/ts/H264Reader$1;)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    const/16 p1, 0x80

    .line 332
    new-array p1, p1, [B

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->buffer:[B

    .line 333
    new-instance p2, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, p3}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    iput-object p2, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    .line 334
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->reset()V

    return-void
.end method


# virtual methods
.method public appendToNalUnit([BII)V
    .registers 27

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 384
    iget-boolean v2, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    if-nez v2, :cond_a

    goto/16 :goto_184

    :cond_a
    sub-int v2, p3, v1

    .line 388
    iget-object v3, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->buffer:[B

    array-length v4, v3

    iget v5, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    add-int v6, v5, v2

    const/4 v7, 0x2

    if-ge v4, v6, :cond_1e

    add-int/2addr v5, v2

    mul-int/2addr v5, v7

    .line 389
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->buffer:[B

    .line 391
    :cond_1e
    iget-object v3, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->buffer:[B

    iget v4, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    move-object/from16 v5, p1

    invoke-static {v5, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 392
    iget v1, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    add-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    .line 394
    iget-object v2, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    iget-object v3, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->buffer:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->reset([BII)V

    .line 395
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v1

    if-nez v1, :cond_40

    goto/16 :goto_184

    .line 398
    :cond_40
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 399
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v1, v7}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v10

    .line 400
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 404
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_5b

    goto/16 :goto_184

    .line 407
    :cond_5b
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 408
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_6a

    goto/16 :goto_184

    .line 411
    :cond_6a
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    .line 412
    iget-boolean v1, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-nez v1, :cond_7c

    .line 414
    iput-boolean v4, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 415
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {v1, v11}, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->setSliceType(I)V

    return-void

    .line 418
    :cond_7c
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_86

    goto/16 :goto_184

    .line 421
    :cond_86
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v13

    .line 422
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_97

    .line 424
    iput-boolean v4, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    return-void

    .line 427
    :cond_97
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/container/NalUnitUtil$PpsData;

    .line 428
    iget-object v3, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    iget v5, v1, Lio/bidmachine/media3/container/NalUnitUtil$PpsData;->seqParameterSetId:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;

    .line 429
    iget-boolean v3, v9, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->separateColorPlaneFlag:Z

    if-eqz v3, :cond_bd

    .line 430
    iget-object v3, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v3, v7}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v3

    if-nez v3, :cond_b8

    goto/16 :goto_184

    .line 433
    :cond_b8
    iget-object v3, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v3, v7}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 435
    :cond_bd
    iget-object v3, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    iget v5, v9, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->frameNumLength:I

    invoke-virtual {v3, v5}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v3

    if-nez v3, :cond_c9

    goto/16 :goto_184

    .line 441
    :cond_c9
    iget-object v3, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    iget v5, v9, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->frameNumLength:I

    invoke-virtual {v3, v5}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v12

    .line 442
    iget-boolean v3, v9, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->frameMbsOnlyFlag:Z

    const/4 v5, 0x1

    if-nez v3, :cond_102

    .line 443
    iget-object v3, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v3, v5}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v3

    if-nez v3, :cond_e0

    goto/16 :goto_184

    .line 446
    :cond_e0
    iget-object v3, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v3}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_fd

    .line 448
    iget-object v6, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v6, v5}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v6

    if-nez v6, :cond_f2

    goto/16 :goto_184

    .line 451
    :cond_f2
    iget-object v6, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v6}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    move v14, v3

    move v15, v5

    move/from16 v16, v6

    goto :goto_105

    :cond_fd
    move v14, v3

    move v15, v4

    :goto_ff
    move/from16 v16, v15

    goto :goto_105

    :cond_102
    move v14, v4

    move v15, v14

    goto :goto_ff

    .line 455
    :goto_105
    iget v3, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    if-ne v3, v2, :cond_10c

    move/from16 v17, v5

    goto :goto_10e

    :cond_10c
    move/from16 v17, v4

    :goto_10e
    if-eqz v17, :cond_123

    .line 458
    iget-object v2, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v2

    if-nez v2, :cond_11a

    goto/16 :goto_184

    .line 461
    :cond_11a
    iget-object v2, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    move/from16 v18, v2

    goto :goto_125

    :cond_123
    move/from16 v18, v4

    .line 467
    :goto_125
    iget v2, v9, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->picOrderCountType:I

    if-nez v2, :cond_161

    .line 468
    iget-object v2, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    iget v3, v9, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    invoke-virtual {v2, v3}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v2

    if-nez v2, :cond_134

    goto :goto_184

    .line 471
    :cond_134
    iget-object v2, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    iget v3, v9, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    invoke-virtual {v2, v3}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    .line 472
    iget-boolean v1, v1, Lio/bidmachine/media3/container/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    if-eqz v1, :cond_15a

    if-nez v14, :cond_15a

    .line 473
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_14b

    goto :goto_184

    .line 476
    :cond_14b
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v1

    move/from16 v20, v1

    move/from16 v19, v2

    move/from16 v21, v4

    :goto_157
    move/from16 v22, v21

    goto :goto_1a2

    :cond_15a
    move/from16 v19, v2

    move/from16 v20, v4

    :goto_15e
    move/from16 v21, v20

    goto :goto_157

    :cond_161
    if-ne v2, v5, :cond_19d

    .line 478
    iget-boolean v2, v9, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->deltaPicOrderAlwaysZeroFlag:Z

    if-nez v2, :cond_19d

    .line 479
    iget-object v2, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v2

    if-nez v2, :cond_170

    goto :goto_184

    .line 482
    :cond_170
    iget-object v2, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v2

    .line 483
    iget-boolean v1, v1, Lio/bidmachine/media3/container/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    if-eqz v1, :cond_194

    if-nez v14, :cond_194

    .line 484
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_185

    :goto_184
    return-void

    .line 487
    :cond_185
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v1

    move/from16 v22, v1

    move/from16 v21, v2

    move/from16 v19, v4

    move/from16 v20, v19

    goto :goto_1a2

    :cond_194
    move/from16 v21, v2

    move/from16 v19, v4

    move/from16 v20, v19

    move/from16 v22, v20

    goto :goto_1a2

    :cond_19d
    move/from16 v19, v4

    move/from16 v20, v19

    goto :goto_15e

    .line 490
    :goto_1a2
    iget-object v8, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual/range {v8 .. v22}, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->setAll(Lio/bidmachine/media3/container/NalUnitUtil$SpsData;IIIIZZZZIIIII)V

    .line 505
    iput-boolean v4, v0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    return-void
.end method

.method public endNalUnit(JIZ)Z
    .registers 7

    .line 509
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_14

    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 510
    invoke-static {v0, v1}, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->access$100(Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;)Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_14
    if-eqz p4, :cond_22

    .line 512
    iget-boolean p4, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    if-eqz p4, :cond_22

    .line 513
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    add-int/2addr p3, p1

    .line 514
    invoke-virtual {p0, p3}, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->outputSample(I)V

    .line 516
    :cond_22
    iget-wide p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->samplePosition:J

    .line 517
    iget-wide p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->nalUnitTimeUs:J

    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->sampleTimeUs:J

    const/4 p1, 0x0

    .line 518
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    const/4 p1, 0x1

    .line 519
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    .line 521
    :cond_30
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->setSampleIsKeyframe()V

    const/16 p1, 0x18

    .line 523
    iput p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    .line 524
    iget-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    return p1
.end method

.method public needsSpsPps()Z
    .registers 2

    .line 338
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    return v0
.end method

.method public final outputSample(I)V
    .registers 11

    .line 536
    iget-wide v1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->sampleTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-eqz v0, :cond_21

    iget-wide v3, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    iget-wide v5, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->samplePosition:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_14

    goto :goto_21

    :cond_14
    move-wide v7, v3

    .line 539
    iget-boolean v3, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    sub-long v4, v7, v5

    long-to-int v4, v4

    .line 541
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    :cond_21
    :goto_21
    return-void
.end method

.method public putPps(Lio/bidmachine/media3/container/NalUnitUtil$PpsData;)V
    .registers 4

    .line 346
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    iget v1, p1, Lio/bidmachine/media3/container/NalUnitUtil$PpsData;->picParameterSetId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public putSps(Lio/bidmachine/media3/container/NalUnitUtil$SpsData;)V
    .registers 4

    .line 342
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    iget v1, p1, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->seqParameterSetId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 350
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 351
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    .line 352
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->clear()V

    return-void
.end method

.method public final setSampleIsKeyframe()V
    .registers 6

    .line 529
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isISlice()Z

    move-result v0

    goto :goto_d

    :cond_b
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->randomAccessIndicator:Z

    .line 530
    :goto_d
    iget-boolean v1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    iget v2, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1b

    if-eqz v0, :cond_1a

    if-ne v2, v4, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v4, 0x0

    :cond_1b
    :goto_1b
    or-int v0, v1, v4

    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    return-void
.end method

.method public startNalUnit(JIJZ)V
    .registers 7

    .line 357
    iput p3, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    .line 358
    iput-wide p4, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->nalUnitTimeUs:J

    .line 359
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    .line 360
    iput-boolean p6, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->randomAccessIndicator:Z

    .line 361
    iget-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_f

    if-eq p3, p2, :cond_1b

    :cond_f
    iget-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz p1, :cond_2b

    const/4 p1, 0x5

    if-eq p3, p1, :cond_1b

    if-eq p3, p2, :cond_1b

    const/4 p1, 0x2

    if-ne p3, p1, :cond_2b

    .line 367
    :cond_1b
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 368
    iget-object p3, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iput-object p3, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 369
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 370
    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->clear()V

    const/4 p1, 0x0

    .line 371
    iput p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    .line 372
    iput-boolean p2, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    :cond_2b
    return-void
.end method

###### Class io.bidmachine.media3.extractor.ts.H264Reader.SampleReader.SliceHeaderData (io.bidmachine.media3.extractor.ts.H264Reader$SampleReader$SliceHeaderData)
.class public final Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;
.super Ljava/lang/Object;
.source "H264Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SliceHeaderData"
.end annotation


# instance fields
.field public bottomFieldFlag:Z

.field public bottomFieldFlagPresent:Z

.field public deltaPicOrderCnt0:I

.field public deltaPicOrderCnt1:I

.field public deltaPicOrderCntBottom:I

.field public fieldPicFlag:Z

.field public frameNum:I

.field public hasSliceType:Z

.field public idrPicFlag:Z

.field public idrPicId:I

.field public isComplete:Z

.field public nalRefIdc:I

.field public picOrderCntLsb:I

.field public picParameterSetId:I

.field public sliceType:I

.field public spsData:Lio/bidmachine/media3/container/NalUnitUtil$SpsData;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/extractor/ts/H264Reader$1;)V
    .registers 2

    .line 544
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;)Z
    .registers 2

    .line 544
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isFirstVclNalUnitOfPicture(Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 568
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    .line 569
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    return-void
.end method

.method public final isFirstVclNalUnitOfPicture(Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;)Z
    .registers 8

    .line 615
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 618
    :cond_6
    iget-boolean v0, p1, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    const/4 v2, 0x1

    if-nez v0, :cond_c

    return v2

    .line 622
    :cond_c
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->spsData:Lio/bidmachine/media3/container/NalUnitUtil$SpsData;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;

    .line 623
    iget-object v3, p1, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->spsData:Lio/bidmachine/media3/container/NalUnitUtil$SpsData;

    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;

    .line 624
    iget v4, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->frameNum:I

    iget v5, p1, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->frameNum:I

    if-ne v4, v5, :cond_7c

    iget v4, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picParameterSetId:I

    iget v5, p1, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picParameterSetId:I

    if-ne v4, v5, :cond_7c

    iget-boolean v4, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->fieldPicFlag:Z

    iget-boolean v5, p1, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->fieldPicFlag:Z

    if-ne v4, v5, :cond_7c

    iget-boolean v4, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlagPresent:Z

    if-eqz v4, :cond_3c

    iget-boolean v4, p1, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlagPresent:Z

    if-eqz v4, :cond_3c

    iget-boolean v4, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlag:Z

    iget-boolean v5, p1, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlag:Z

    if-ne v4, v5, :cond_7c

    :cond_3c
    iget v4, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->nalRefIdc:I

    iget v5, p1, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->nalRefIdc:I

    if-eq v4, v5, :cond_46

    if-eqz v4, :cond_7c

    if-eqz v5, :cond_7c

    :cond_46
    iget v0, v0, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->picOrderCountType:I

    if-nez v0, :cond_5a

    iget v4, v3, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->picOrderCountType:I

    if-nez v4, :cond_5a

    iget v4, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picOrderCntLsb:I

    iget v5, p1, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picOrderCntLsb:I

    if-ne v4, v5, :cond_7c

    iget v4, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCntBottom:I

    iget v5, p1, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCntBottom:I

    if-ne v4, v5, :cond_7c

    :cond_5a
    if-ne v0, v2, :cond_6c

    iget v0, v3, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->picOrderCountType:I

    if-ne v0, v2, :cond_6c

    iget v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt0:I

    iget v3, p1, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt0:I

    if-ne v0, v3, :cond_7c

    iget v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt1:I

    iget v3, p1, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt1:I

    if-ne v0, v3, :cond_7c

    :cond_6c
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicFlag:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicFlag:Z

    if-ne v0, v3, :cond_7c

    if-eqz v0, :cond_7b

    iget v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicId:I

    iget p1, p1, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicId:I

    if-eq v0, p1, :cond_7b

    goto :goto_7c

    :cond_7b
    return v1

    :cond_7c
    :goto_7c
    return v2
.end method

.method public isISlice()Z
    .registers 3

    .line 611
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->sliceType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_c

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public setAll(Lio/bidmachine/media3/container/NalUnitUtil$SpsData;IIIIZZZZIIIII)V
    .registers 15

    .line 592
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->spsData:Lio/bidmachine/media3/container/NalUnitUtil$SpsData;

    .line 593
    iput p2, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->nalRefIdc:I

    .line 594
    iput p3, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->sliceType:I

    .line 595
    iput p4, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->frameNum:I

    .line 596
    iput p5, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picParameterSetId:I

    .line 597
    iput-boolean p6, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->fieldPicFlag:Z

    .line 598
    iput-boolean p7, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlagPresent:Z

    .line 599
    iput-boolean p8, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlag:Z

    .line 600
    iput-boolean p9, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicFlag:Z

    .line 601
    iput p10, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicId:I

    .line 602
    iput p11, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picOrderCntLsb:I

    .line 603
    iput p12, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCntBottom:I

    .line 604
    iput p13, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt0:I

    .line 605
    iput p14, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt1:I

    const/4 p1, 0x1

    .line 606
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    .line 607
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    return-void
.end method

.method public setSliceType(I)V
    .registers 2

    .line 573
    iput p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->sliceType:I

    const/4 p1, 0x1

    .line 574
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    return-void
.end method
