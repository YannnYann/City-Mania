###### Class io.bidmachine.media3.extractor.ts.H265Reader (io.bidmachine.media3.extractor.ts.H265Reader)
.class public final Lio/bidmachine/media3/extractor/ts/H265Reader;
.super Ljava/lang/Object;
.source "H265Reader.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;
    }
.end annotation


# instance fields
.field public final containerMimeType:Ljava/lang/String;

.field public formatId:Ljava/lang/String;

.field public hasOutputFormat:Z

.field public output:Lio/bidmachine/media3/extractor/TrackOutput;

.field public pesTimeUs:J

.field public final pps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

.field public final prefixFlags:[Z

.field public final prefixSei:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

.field public sampleReader:Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;

.field public final seiReader:Lio/bidmachine/media3/extractor/ts/SeiReader;

.field public final seiWrapper:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public final sps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

.field public final suffixSei:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

.field public totalBytesWritten:J

.field public final vps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/ts/SeiReader;Ljava/lang/String;)V
    .registers 4

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->seiReader:Lio/bidmachine/media3/extractor/ts/SeiReader;

    .line 74
    iput-object p2, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->containerMimeType:Ljava/lang/String;

    const/4 p1, 0x3

    .line 75
    new-array p1, p1, [Z

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->prefixFlags:[Z

    .line 76
    new-instance p1, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 p2, 0x20

    const/16 v0, 0x80

    invoke-direct {p1, p2, v0}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->vps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    .line 77
    new-instance p1, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 p2, 0x21

    invoke-direct {p1, p2, v0}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->sps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    .line 78
    new-instance p1, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 p2, 0x22

    invoke-direct {p1, p2, v0}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->pps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    .line 79
    new-instance p1, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 p2, 0x27

    invoke-direct {p1, p2, v0}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->prefixSei:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    .line 80
    new-instance p1, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 p2, 0x28

    invoke-direct {p1, p2, v0}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->suffixSei:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 81
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->pesTimeUs:J

    .line 82
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->seiWrapper:Lio/bidmachine/media3/common/util/ParsableByteArray;

    return-void
.end method

.method private assertTracksCreated()V
    .registers 2

    .line 296
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->sampleReader:Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private endNalUnit(JIIJ)V
    .registers 9

    .line 213
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->sampleReader:Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;

    iget-boolean v1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->hasOutputFormat:Z

    invoke-virtual {v0, p1, p2, p3, v1}, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->endNalUnit(JIZ)V

    .line 214
    iget-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-nez p1, :cond_5a

    .line 215
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->vps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 216
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->sps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 217
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->pps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 218
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->vps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_5a

    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->sps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_5a

    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->pps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 219
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->formatId:Ljava/lang/String;

    iget-object p2, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->vps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object p3, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->sps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->pps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->containerMimeType:Ljava/lang/String;

    invoke-static {p1, p2, p3, v0, v1}, Lio/bidmachine/media3/extractor/ts/H265Reader;->parseMediaFormat(Ljava/lang/String;Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;Ljava/lang/String;)Lio/bidmachine/media3/common/Format;

    move-result-object p1

    .line 220
    iget-object p2, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-interface {p2, p1}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    .line 221
    iget p2, p1, Lio/bidmachine/media3/common/Format;->maxNumReorderSamples:I

    const/4 p3, -0x1

    const/4 v0, 0x1

    if-eq p2, p3, :cond_4d

    move p2, v0

    goto :goto_4e

    :cond_4d
    const/4 p2, 0x0

    :goto_4e
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 222
    iget-object p2, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->seiReader:Lio/bidmachine/media3/extractor/ts/SeiReader;

    iget p1, p1, Lio/bidmachine/media3/common/Format;->maxNumReorderSamples:I

    invoke-virtual {p2, p1}, Lio/bidmachine/media3/extractor/ts/SeiReader;->setReorderingQueueSize(I)V

    .line 223
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->hasOutputFormat:Z

    .line 226
    :cond_5a
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->prefixSei:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result p1

    const/4 p2, 0x5

    if-eqz p1, :cond_82

    .line 227
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->prefixSei:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object p3, p1, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget p1, p1, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {p3, p1}, Lio/bidmachine/media3/container/NalUnitUtil;->unescapeStream([BI)I

    move-result p1

    .line 228
    iget-object p3, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->seiWrapper:Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->prefixSei:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v0, v0, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {p3, v0, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 231
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->seiWrapper:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 232
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->seiReader:Lio/bidmachine/media3/extractor/ts/SeiReader;

    iget-object p3, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->seiWrapper:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1, p5, p6, p3}, Lio/bidmachine/media3/extractor/ts/SeiReader;->consume(JLio/bidmachine/media3/common/util/ParsableByteArray;)V

    .line 234
    :cond_82
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->suffixSei:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result p1

    if-eqz p1, :cond_a9

    .line 235
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->suffixSei:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object p3, p1, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget p1, p1, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {p3, p1}, Lio/bidmachine/media3/container/NalUnitUtil;->unescapeStream([BI)I

    move-result p1

    .line 236
    iget-object p3, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->seiWrapper:Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-object p4, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->suffixSei:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object p4, p4, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {p3, p4, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 239
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->seiWrapper:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 240
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->seiReader:Lio/bidmachine/media3/extractor/ts/SeiReader;

    iget-object p2, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->seiWrapper:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1, p5, p6, p2}, Lio/bidmachine/media3/extractor/ts/SeiReader;->consume(JLio/bidmachine/media3/common/util/ParsableByteArray;)V

    :cond_a9
    return-void
.end method

.method private nalUnitData([BII)V
    .registers 5

    .line 201
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->sampleReader:Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;

    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->readNalUnitData([BII)V

    .line 202
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-nez v0, :cond_18

    .line 203
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->vps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 204
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->sps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 205
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->pps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 207
    :cond_18
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->prefixSei:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 208
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->suffixSei:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    return-void
.end method

.method public static parseMediaFormat(Ljava/lang/String;Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;Ljava/lang/String;)Lio/bidmachine/media3/common/Format;
    .registers 13

    .line 251
    iget v0, p1, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iget v1, p2, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v1, v0

    iget v2, p3, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 252
    iget-object v2, p1, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    iget-object v0, p2, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v2, p1, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iget v4, p2, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    iget-object v0, p3, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget p1, p1, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iget v2, p2, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr p1, v2

    iget p3, p3, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v0, v3, v1, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    iget-object p1, p2, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget p2, p2, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    const/4 p3, 0x3

    const/4 v0, 0x0

    .line 258
    invoke-static {p1, p3, p2, v0}, Lio/bidmachine/media3/container/NalUnitUtil;->parseH265SpsNalUnit([BIILio/bidmachine/media3/container/NalUnitUtil$H265VpsData;)Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;

    move-result-object p1

    .line 262
    iget-object p2, p1, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->profileTierLevel:Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;

    if-eqz p2, :cond_43

    .line 263
    iget v2, p2, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileSpace:I

    iget-boolean v3, p2, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalTierFlag:Z

    iget v4, p2, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileIdc:I

    iget v5, p2, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileCompatibilityFlags:I

    iget-object v6, p2, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;->constraintBytes:[I

    iget v7, p2, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalLevelIdc:I

    .line 264
    invoke-static/range {v2 .. v7}, Lio/bidmachine/media3/common/util/CodecSpecificDataUtil;->buildHevcCodecString(IZII[II)Ljava/lang/String;

    move-result-object v0

    .line 272
    :cond_43
    new-instance p2, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {p2}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    .line 273
    invoke-virtual {p2, p0}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 274
    invoke-virtual {p0, p4}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    const-string p2, "video/hevc"

    .line 275
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 276
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    iget p2, p1, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->width:I

    .line 277
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/common/Format$Builder;->setWidth(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    iget p2, p1, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->height:I

    .line 278
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/common/Format$Builder;->setHeight(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    new-instance p2, Lio/bidmachine/media3/common/ColorInfo$Builder;

    invoke-direct {p2}, Lio/bidmachine/media3/common/ColorInfo$Builder;-><init>()V

    iget p3, p1, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->colorSpace:I

    .line 281
    invoke-virtual {p2, p3}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setColorSpace(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    move-result-object p2

    iget p3, p1, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->colorRange:I

    .line 282
    invoke-virtual {p2, p3}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setColorRange(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    move-result-object p2

    iget p3, p1, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->colorTransfer:I

    .line 283
    invoke-virtual {p2, p3}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setColorTransfer(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    move-result-object p2

    iget p3, p1, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->bitDepthLumaMinus8:I

    add-int/lit8 p3, p3, 0x8

    .line 284
    invoke-virtual {p2, p3}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    move-result-object p2

    iget p3, p1, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->bitDepthChromaMinus8:I

    add-int/lit8 p3, p3, 0x8

    .line 285
    invoke-virtual {p2, p3}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    move-result-object p2

    .line 286
    invoke-virtual {p2}, Lio/bidmachine/media3/common/ColorInfo$Builder;->build()Lio/bidmachine/media3/common/ColorInfo;

    move-result-object p2

    .line 279
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/common/Format$Builder;->setColorInfo(Lio/bidmachine/media3/common/ColorInfo;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    iget p2, p1, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->pixelWidthHeightRatio:F

    .line 287
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    iget p2, p1, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->maxNumReorderPics:I

    .line 288
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/common/Format$Builder;->setMaxNumReorderSamples(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    iget p1, p1, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->maxSubLayersMinus1:I

    add-int/lit8 p1, p1, 0x1

    .line 289
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/Format$Builder;->setMaxSubLayers(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 290
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 291
    invoke-virtual {p0}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public consume(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 17

    .line 118
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/ts/H265Reader;->assertTracksCreated()V

    .line 120
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_71

    .line 121
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 122
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v7

    .line 123
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v8

    .line 126
    iget-wide v2, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->totalBytesWritten:J

    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->totalBytesWritten:J

    .line 127
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    move-object/from16 v9, p1

    invoke-interface {v2, v9, v3}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    :goto_2a
    if-ge v1, v7, :cond_3

    .line 131
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->prefixFlags:[Z

    invoke-static {v8, v1, v7, v2}, Lio/bidmachine/media3/container/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v2

    if-ne v2, v7, :cond_38

    .line 135
    invoke-direct {p0, v8, v1, v7}, Lio/bidmachine/media3/extractor/ts/H265Reader;->nalUnitData([BII)V

    return-void

    .line 140
    :cond_38
    invoke-static {v8, v2}, Lio/bidmachine/media3/container/NalUnitUtil;->getH265NalUnitType([BI)I

    move-result v10

    if-lez v2, :cond_4a

    add-int/lit8 v3, v2, -0x1

    .line 145
    aget-byte v3, v8, v3

    if-nez v3, :cond_4a

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x4

    :goto_47
    move v11, v2

    move v12, v3

    goto :goto_4c

    :cond_4a
    const/4 v3, 0x3

    goto :goto_47

    :goto_4c
    sub-int v2, v11, v1

    if-lez v2, :cond_53

    .line 154
    invoke-direct {p0, v8, v1, v11}, Lio/bidmachine/media3/extractor/ts/H265Reader;->nalUnitData([BII)V

    :cond_53
    sub-int v3, v7, v11

    .line 158
    iget-wide v4, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->totalBytesWritten:J

    int-to-long v13, v3

    sub-long/2addr v4, v13

    if-gez v2, :cond_5e

    neg-int v1, v2

    :goto_5c
    move-wide v13, v4

    goto :goto_60

    :cond_5e
    const/4 v1, 0x0

    goto :goto_5c

    .line 165
    :goto_60
    iget-wide v5, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->pesTimeUs:J

    move-object v0, p0

    move v4, v1

    move-wide v1, v13

    .line 162
    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/extractor/ts/H265Reader;->endNalUnit(JIIJ)V

    .line 168
    iget-wide v5, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->pesTimeUs:J

    move v4, v10

    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/media3/extractor/ts/H265Reader;->startNalUnit(JIIJ)V

    add-int v1, v11, v12

    goto :goto_2a

    :cond_71
    return-void
.end method

.method public createTracks(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 5

    .line 103
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 104
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->formatId:Ljava/lang/String;

    .line 105
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 106
    new-instance v1, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;

    invoke-direct {v1, v0}, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;-><init>(Lio/bidmachine/media3/extractor/TrackOutput;)V

    iput-object v1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->sampleReader:Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;

    .line 107
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->seiReader:Lio/bidmachine/media3/extractor/ts/SeiReader;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/extractor/ts/SeiReader;->createTracks(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    return-void
.end method

.method public packetFinished(Z)V
    .registers 16

    .line 177
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/ts/H265Reader;->assertTracksCreated()V

    if-eqz p1, :cond_1f

    .line 179
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->seiReader:Lio/bidmachine/media3/extractor/ts/SeiReader;

    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/ts/SeiReader;->flush()V

    .line 182
    iget-wide v1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->totalBytesWritten:J

    const/4 v4, 0x0

    iget-wide v5, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->pesTimeUs:J

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/extractor/ts/H265Reader;->endNalUnit(JIIJ)V

    .line 183
    iget-wide v8, v0, Lio/bidmachine/media3/extractor/ts/H265Reader;->totalBytesWritten:J

    const/16 v11, 0x30

    iget-wide v12, v0, Lio/bidmachine/media3/extractor/ts/H265Reader;->pesTimeUs:J

    const/4 v10, 0x0

    move-object v7, v0

    invoke-virtual/range {v7 .. v13}, Lio/bidmachine/media3/extractor/ts/H265Reader;->startNalUnit(JIIJ)V

    :cond_1f
    return-void
.end method

.method public packetStarted(JI)V
    .registers 4

    .line 113
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->pesTimeUs:J

    return-void
.end method

.method public seek()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 87
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->totalBytesWritten:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 88
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->pesTimeUs:J

    .line 89
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->prefixFlags:[Z

    invoke-static {v0}, Lio/bidmachine/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 90
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->vps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 91
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->sps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 92
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->pps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 93
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->prefixSei:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 94
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->suffixSei:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 95
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->seiReader:Lio/bidmachine/media3/extractor/ts/SeiReader;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/SeiReader;->clear()V

    .line 96
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->sampleReader:Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;

    if-eqz v0, :cond_35

    .line 97
    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->reset()V

    :cond_35
    return-void
.end method

.method public final startNalUnit(JIIJ)V
    .registers 15

    .line 189
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->sampleReader:Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;

    iget-boolean v7, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->hasOutputFormat:Z

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->startNalUnit(JIIJZ)V

    .line 190
    iget-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-nez p1, :cond_1e

    .line 191
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->vps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, v4}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 192
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->sps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, v4}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 193
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->pps:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, v4}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 195
    :cond_1e
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->prefixSei:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, v4}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 196
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader;->suffixSei:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, v4}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    return-void
.end method

###### Class io.bidmachine.media3.extractor.ts.H265Reader.SampleReader (io.bidmachine.media3.extractor.ts.H265Reader$SampleReader)
.class public final Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;
.super Ljava/lang/Object;
.source "H265Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/ts/H265Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SampleReader"
.end annotation


# instance fields
.field public isFirstPrefixNalUnit:Z

.field public isFirstSlice:Z

.field public lookingForFirstSliceFlag:Z

.field public nalUnitBytesRead:I

.field public nalUnitHasKeyframeData:Z

.field public nalUnitPosition:J

.field public nalUnitTimeUs:J

.field public final output:Lio/bidmachine/media3/extractor/TrackOutput;

.field public readingPrefix:Z

.field public readingSample:Z

.field public sampleIsKeyframe:Z

.field public samplePosition:J

.field public sampleTimeUs:J


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/TrackOutput;)V
    .registers 2

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    return-void
.end method

.method public static isPrefixNalUnit(I)Z
    .registers 2

    .line 0
    const/16 v0, 0x20

    if-gt v0, p0, :cond_8

    const/16 v0, 0x23

    if-le p0, v0, :cond_c

    :cond_8
    const/16 v0, 0x27

    if-ne p0, v0, :cond_e

    :cond_c
    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static isVclBodyNalUnit(I)Z
    .registers 2

    .line 0
    const/16 v0, 0x20

    if-lt p0, v0, :cond_b

    const/16 v0, 0x28

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public endNalUnit(JIZ)V
    .registers 7

    .line 380
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    if-eqz v0, :cond_10

    .line 382
    iget-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    const/4 p1, 0x0

    .line 383
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    return-void

    .line 384
    :cond_10
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->isFirstPrefixNalUnit:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    return-void

    :cond_1a
    :goto_1a
    if-eqz p4, :cond_28

    .line 386
    iget-boolean p4, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    if-eqz p4, :cond_28

    .line 388
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->nalUnitPosition:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    add-int/2addr p3, p1

    .line 389
    invoke-virtual {p0, p3}, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->outputSample(I)V

    .line 391
    :cond_28
    iget-wide p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->nalUnitPosition:J

    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->samplePosition:J

    .line 392
    iget-wide p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->nalUnitTimeUs:J

    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->sampleTimeUs:J

    .line 393
    iget-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    const/4 p1, 0x1

    .line 394
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    return-void
.end method

.method public final outputSample(I)V
    .registers 11

    .line 399
    iget-wide v1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->sampleTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-eqz v0, :cond_21

    iget-wide v3, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->nalUnitPosition:J

    iget-wide v5, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->samplePosition:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_14

    goto :goto_21

    :cond_14
    move-wide v7, v3

    .line 402
    iget-boolean v3, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    sub-long v4, v7, v5

    long-to-int v4, v4

    .line 404
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    :cond_21
    :goto_21
    return-void
.end method

.method public readNalUnitData([BII)V
    .registers 6

    .line 368
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    if-eqz v0, :cond_1e

    add-int/lit8 v0, p2, 0x2

    .line 369
    iget v1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_1a

    .line 371
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0x80

    const/4 p2, 0x0

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    move p1, p2

    :goto_15
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    .line 372
    iput-boolean p2, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    return-void

    :cond_1a
    sub-int/2addr p3, p2

    add-int/2addr v1, p3

    .line 374
    iput v1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    :cond_1e
    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 331
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    .line 332
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    .line 333
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->isFirstPrefixNalUnit:Z

    .line 334
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    .line 335
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    return-void
.end method

.method public startNalUnit(JIIJZ)V
    .registers 9

    const/4 v0, 0x0

    .line 340
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    .line 341
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->isFirstPrefixNalUnit:Z

    .line 342
    iput-wide p5, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->nalUnitTimeUs:J

    .line 343
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    .line 344
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->nalUnitPosition:J

    .line 346
    invoke-static {p4}, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->isVclBodyNalUnit(I)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_2e

    .line 347
    iget-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    if-eqz p1, :cond_21

    iget-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    if-nez p1, :cond_21

    if-eqz p7, :cond_1f

    .line 349
    invoke-virtual {p0, p3}, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->outputSample(I)V

    .line 351
    :cond_1f
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    .line 353
    :cond_21
    invoke-static {p4}, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->isPrefixNalUnit(I)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 354
    iget-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->isFirstPrefixNalUnit:Z

    .line 355
    iput-boolean p2, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    :cond_2e
    const/16 p1, 0x10

    if-lt p4, p1, :cond_38

    const/16 p1, 0x15

    if-gt p4, p1, :cond_38

    move p1, p2

    goto :goto_39

    :cond_38
    move p1, v0

    .line 360
    :goto_39
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    if-nez p1, :cond_41

    const/16 p1, 0x9

    if-gt p4, p1, :cond_42

    :cond_41
    move v0, p2

    .line 363
    :cond_42
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    return-void
.end method
