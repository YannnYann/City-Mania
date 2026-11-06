###### Class io.bidmachine.media3.extractor.ts.H262Reader (io.bidmachine.media3.extractor.ts.H262Reader)
.class public final Lio/bidmachine/media3/extractor/ts/H262Reader;
.super Ljava/lang/Object;
.source "H262Reader.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;
    }
.end annotation


# static fields
.field public static final FRAME_RATE_VALUES:[D


# instance fields
.field public final containerMimeType:Ljava/lang/String;

.field public final csdBuffer:Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;

.field public formatId:Ljava/lang/String;

.field public frameDurationUs:J

.field public hasOutputFormat:Z

.field public output:Lio/bidmachine/media3/extractor/TrackOutput;

.field public pesTimeUs:J

.field public final prefixFlags:[Z

.field public sampleHasPicture:Z

.field public sampleIsKeyframe:Z

.field public samplePosition:J

.field public sampleTimeUs:J

.field public startedFirstSample:Z

.field public totalBytesWritten:J

.field public final userData:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

.field public final userDataParsable:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public final userDataReader:Lio/bidmachine/media3/extractor/ts/UserDataReader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    .line 51
    new-array v0, v0, [D

    fill-array-data v0, :array_a

    sput-object v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    return-void

    :array_a
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor <init>(Lio/bidmachine/media3/extractor/ts/UserDataReader;Ljava/lang/String;)V
    .registers 4

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H262Reader;->userDataReader:Lio/bidmachine/media3/extractor/ts/UserDataReader;

    .line 84
    iput-object p2, p0, Lio/bidmachine/media3/extractor/ts/H262Reader;->containerMimeType:Ljava/lang/String;

    const/4 p2, 0x4

    .line 85
    new-array p2, p2, [Z

    iput-object p2, p0, Lio/bidmachine/media3/extractor/ts/H262Reader;->prefixFlags:[Z

    .line 86
    new-instance p2, Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;

    const/16 v0, 0x80

    invoke-direct {p2, v0}, Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;-><init>(I)V

    iput-object p2, p0, Lio/bidmachine/media3/extractor/ts/H262Reader;->csdBuffer:Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;

    if-eqz p1, :cond_28

    .line 88
    new-instance p1, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 p2, 0xb2

    invoke-direct {p1, p2, v0}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H262Reader;->userData:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    .line 89
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H262Reader;->userDataParsable:Lio/bidmachine/media3/common/util/ParsableByteArray;

    goto :goto_2d

    :cond_28
    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H262Reader;->userData:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    .line 92
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H262Reader;->userDataParsable:Lio/bidmachine/media3/common/util/ParsableByteArray;

    :goto_2d
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 94
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ts/H262Reader;->pesTimeUs:J

    .line 95
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, v0, p1}, Lio/bidmachine/media3/extractor/ts/H262Reader;-><init>(Lio/bidmachine/media3/extractor/ts/UserDataReader;Ljava/lang/String;)V

    return-void
.end method

.method public static parseCsdBuffer(Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lio/bidmachine/media3/common/Format;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;->data:[B

    iget v1, p0, Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;->length:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const/4 v1, 0x4

    .line 245
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x5

    .line 246
    aget-byte v4, v0, v3

    and-int/lit16 v5, v4, 0xff

    const/4 v6, 0x6

    .line 247
    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v2, v1

    shr-int/2addr v5, v1

    or-int/2addr v2, v5

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v6

    const/4 v5, 0x7

    .line 252
    aget-byte v6, v0, v5

    and-int/lit16 v6, v6, 0xf0

    shr-int/2addr v6, v1

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3e

    const/4 v7, 0x3

    if-eq v6, v7, :cond_38

    if-eq v6, v1, :cond_30

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_44

    :cond_30
    mul-int/lit8 v1, v4, 0x79

    int-to-float v1, v1

    mul-int/lit8 v6, v2, 0x64

    :goto_35
    int-to-float v6, v6

    div-float/2addr v1, v6

    goto :goto_44

    :cond_38
    mul-int/lit8 v1, v4, 0x10

    int-to-float v1, v1

    mul-int/lit8 v6, v2, 0x9

    goto :goto_35

    :cond_3e
    mul-int/lit8 v1, v4, 0x4

    int-to-float v1, v1

    mul-int/lit8 v6, v2, 0x3

    goto :goto_35

    .line 268
    :goto_44
    new-instance v6, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v6}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    .line 270
    invoke-virtual {v6, p1}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 271
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    const-string p2, "video/mpeg2"

    .line 272
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 273
    invoke-virtual {p1, v2}, Lio/bidmachine/media3/common/Format$Builder;->setWidth(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 274
    invoke-virtual {p1, v4}, Lio/bidmachine/media3/common/Format$Builder;->setHeight(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 275
    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 276
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 277
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p1

    .line 280
    aget-byte p2, v0, v5

    and-int/lit8 p2, p2, 0xf

    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_9c

    .line 281
    sget-object v1, Lio/bidmachine/media3/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    array-length v2, v1

    if-ge p2, v2, :cond_9c

    .line 282
    aget-wide v4, v1, p2

    .line 283
    iget p0, p0, Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;->sequenceExtensionPosition:I

    add-int/lit8 p0, p0, 0x9

    .line 284
    aget-byte p0, v0, p0

    and-int/lit8 p2, p0, 0x60

    shr-int/2addr p2, v3

    and-int/lit8 p0, p0, 0x1f

    if-eq p2, p0, :cond_94

    int-to-double v0, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    add-int/lit8 p0, p0, 0x1

    int-to-double v2, p0

    div-double/2addr v0, v2

    mul-double/2addr v4, v0

    :cond_94
    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v4

    double-to-long v0, v0

    goto :goto_9e

    :cond_9c
    const-wide/16 v0, 0x0

    .line 292
    :goto_9e
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public consume(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 21

    move-object/from16 v0, p0

    .line 129
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 131
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v2

    .line 132
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    .line 135
    iget-wide v4, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->totalBytesWritten:J

    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->totalBytesWritten:J

    .line 136
    iget-object v4, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    move-object/from16 v6, p1

    invoke-interface {v4, v6, v5}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    .line 139
    :goto_28
    iget-object v4, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->prefixFlags:[Z

    invoke-static {v3, v1, v2, v4}, Lio/bidmachine/media3/container/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v4

    if-ne v4, v2, :cond_41

    .line 143
    iget-boolean v4, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-nez v4, :cond_39

    .line 144
    iget-object v4, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->csdBuffer:Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v4, v3, v1, v2}, Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;->onData([BII)V

    .line 146
    :cond_39
    iget-object v4, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->userData:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    if-eqz v4, :cond_40

    .line 147
    invoke-virtual {v4, v3, v1, v2}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    :cond_40
    return-void

    .line 153
    :cond_41
    invoke-virtual {v6}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    add-int/lit8 v7, v4, 0x3

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    sub-int v8, v4, v1

    .line 158
    iget-boolean v9, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->hasOutputFormat:Z

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v9, :cond_8c

    if-lez v8, :cond_5a

    .line 160
    iget-object v9, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->csdBuffer:Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v9, v3, v1, v4}, Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;->onData([BII)V

    :cond_5a
    if-gez v8, :cond_5e

    neg-int v9, v8

    goto :goto_5f

    :cond_5e
    move v9, v10

    .line 165
    :goto_5f
    iget-object v12, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->csdBuffer:Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v12, v5, v9}, Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;->onStartCode(II)Z

    move-result v9

    if-eqz v9, :cond_8c

    .line 167
    iget-object v9, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->csdBuffer:Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;

    iget-object v12, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->formatId:Ljava/lang/String;

    .line 168
    invoke-static {v12}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iget-object v13, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->containerMimeType:Ljava/lang/String;

    invoke-static {v9, v12, v13}, Lio/bidmachine/media3/extractor/ts/H262Reader;->parseCsdBuffer(Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v9

    .line 169
    iget-object v12, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-object v13, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Lio/bidmachine/media3/common/Format;

    invoke-interface {v12, v13}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    .line 170
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->frameDurationUs:J

    .line 171
    iput-boolean v11, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->hasOutputFormat:Z

    .line 174
    :cond_8c
    iget-object v9, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->userData:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    if-eqz v9, :cond_db

    if-lez v8, :cond_97

    .line 177
    invoke-virtual {v9, v3, v1, v4}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    move v1, v10

    goto :goto_98

    :cond_97
    neg-int v1, v8

    .line 182
    :goto_98
    iget-object v8, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->userData:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v8, v1}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 183
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->userData:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v8, v1, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v1, v1, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v8, v1}, Lio/bidmachine/media3/container/NalUnitUtil;->unescapeStream([BI)I

    move-result v1

    .line 184
    iget-object v8, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->userDataParsable:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-static {v8}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-object v9, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->userData:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v9, v9, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v8, v9, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 185
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->userDataReader:Lio/bidmachine/media3/extractor/ts/UserDataReader;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/extractor/ts/UserDataReader;

    iget-wide v8, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    iget-object v12, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->userDataParsable:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1, v8, v9, v12}, Lio/bidmachine/media3/extractor/ts/UserDataReader;->consume(JLio/bidmachine/media3/common/util/ParsableByteArray;)V

    :cond_c8
    const/16 v1, 0xb2

    if-ne v5, v1, :cond_db

    .line 188
    invoke-virtual {v6}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    add-int/lit8 v8, v4, 0x2

    aget-byte v1, v1, v8

    if-ne v1, v11, :cond_db

    .line 189
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->userData:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, v5}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    :cond_db
    if-eqz v5, :cond_ea

    const/16 v1, 0xb3

    if-ne v5, v1, :cond_e2

    goto :goto_ea

    :cond_e2
    const/16 v1, 0xb8

    if-ne v5, v1, :cond_e8

    .line 215
    iput-boolean v11, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->sampleIsKeyframe:Z

    :cond_e8
    move v4, v2

    goto :goto_147

    :cond_ea
    :goto_ea
    sub-int v17, v2, v4

    .line 194
    iget-boolean v1, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->sampleHasPicture:Z

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_114

    iget-boolean v1, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-eqz v1, :cond_114

    iget-wide v13, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    cmp-long v1, v13, v8

    if-eqz v1, :cond_114

    .line 196
    iget-boolean v15, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->sampleIsKeyframe:Z

    .line 197
    iget-wide v11, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->totalBytesWritten:J

    move v4, v2

    iget-wide v1, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->samplePosition:J

    sub-long/2addr v11, v1

    long-to-int v1, v11

    sub-int v16, v1, v17

    .line 198
    iget-object v12, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    const/16 v18, 0x0

    invoke-interface/range {v12 .. v18}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    :goto_111
    move/from16 v2, v17

    goto :goto_116

    :cond_114
    move v4, v2

    goto :goto_111

    .line 200
    :goto_116
    iget-boolean v1, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->startedFirstSample:Z

    if-eqz v1, :cond_121

    iget-boolean v1, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->sampleHasPicture:Z

    if-eqz v1, :cond_11f

    goto :goto_121

    :cond_11f
    const/4 v1, 0x1

    goto :goto_142

    .line 202
    :cond_121
    :goto_121
    iget-wide v11, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->totalBytesWritten:J

    int-to-long v1, v2

    sub-long/2addr v11, v1

    iput-wide v11, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->samplePosition:J

    .line 204
    iget-wide v1, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->pesTimeUs:J

    cmp-long v11, v1, v8

    if-eqz v11, :cond_12e

    goto :goto_139

    .line 206
    :cond_12e
    iget-wide v1, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    cmp-long v11, v1, v8

    if-eqz v11, :cond_138

    .line 207
    iget-wide v11, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->frameDurationUs:J

    add-long/2addr v1, v11

    goto :goto_139

    :cond_138
    move-wide v1, v8

    .line 208
    :goto_139
    iput-wide v1, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    .line 209
    iput-boolean v10, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->sampleIsKeyframe:Z

    .line 210
    iput-wide v8, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->pesTimeUs:J

    const/4 v1, 0x1

    .line 211
    iput-boolean v1, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->startedFirstSample:Z

    :goto_142
    if-nez v5, :cond_145

    move v10, v1

    .line 213
    :cond_145
    iput-boolean v10, v0, Lio/bidmachine/media3/extractor/ts/H262Reader;->sampleHasPicture:Z

    :goto_147
    move v2, v4

    move v1, v7

    goto/16 :goto_28
.end method

.method public createTracks(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 5

    .line 113
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 114
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/extractor/ts/H262Reader;->formatId:Ljava/lang/String;

    .line 115
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/extractor/ts/H262Reader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 116
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H262Reader;->userDataReader:Lio/bidmachine/media3/extractor/ts/UserDataReader;

    if-eqz v0, :cond_1b

    .line 117
    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/extractor/ts/UserDataReader;->createTracks(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    :cond_1b
    return-void
.end method

.method public packetFinished(Z)V
    .registers 10

    .line 224
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H262Reader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_18

    .line 226
    iget-boolean v4, p0, Lio/bidmachine/media3/extractor/ts/H262Reader;->sampleIsKeyframe:Z

    .line 227
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/ts/H262Reader;->totalBytesWritten:J

    iget-wide v2, p0, Lio/bidmachine/media3/extractor/ts/H262Reader;->samplePosition:J

    sub-long/2addr v0, v2

    long-to-int v5, v0

    .line 228
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/H262Reader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-wide v2, p0, Lio/bidmachine/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    :cond_18
    return-void
.end method

.method public packetStarted(JI)V
    .registers 4

    .line 124
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ts/H262Reader;->pesTimeUs:J

    return-void
.end method

.method public seek()V
    .registers 3

    .line 100
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H262Reader;->prefixFlags:[Z

    invoke-static {v0}, Lio/bidmachine/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 101
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H262Reader;->csdBuffer:Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;->reset()V

    .line 102
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H262Reader;->userData:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    if-eqz v0, :cond_11

    .line 103
    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    :cond_11
    const-wide/16 v0, 0x0

    .line 105
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/H262Reader;->totalBytesWritten:J

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H262Reader;->startedFirstSample:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 107
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/H262Reader;->pesTimeUs:J

    .line 108
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    return-void
.end method

###### Class io.bidmachine.media3.extractor.ts.H262Reader.CsdBuffer (io.bidmachine.media3.extractor.ts.H262Reader$CsdBuffer)
.class public final Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;
.super Ljava/lang/Object;
.source "H262Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/ts/H262Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CsdBuffer"
.end annotation


# static fields
.field public static final START_CODE:[B


# instance fields
.field public data:[B

.field public isFilling:Z

.field public length:I

.field public sequenceExtensionPosition:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    .line 297
    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;->START_CODE:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    new-array p1, p1, [B

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;->data:[B

    return-void
.end method


# virtual methods
.method public onData([BII)V
    .registers 8

    .line 350
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;->isFilling:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sub-int/2addr p3, p2

    .line 354
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;->data:[B

    array-length v1, v0

    iget v2, p0, Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;->length:I

    add-int v3, v2, p3

    if-ge v1, v3, :cond_18

    add-int/2addr v2, p3

    mul-int/lit8 v2, v2, 0x2

    .line 355
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;->data:[B

    .line 357
    :cond_18
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;->data:[B

    iget v1, p0, Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;->length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 358
    iget p1, p0, Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;->length:I

    add-int/2addr p1, p3

    iput p1, p0, Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;->length:I

    return-void
.end method

.method public onStartCode(II)Z
    .registers 6

    .line 327
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;->isFilling:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    .line 328
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;->length:I

    sub-int/2addr v0, p2

    iput v0, p0, Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;->length:I

    .line 329
    iget p2, p0, Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;->sequenceExtensionPosition:I

    if-nez p2, :cond_16

    const/16 p2, 0xb5

    if-ne p1, p2, :cond_16

    .line 330
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;->sequenceExtensionPosition:I

    goto :goto_1f

    .line 332
    :cond_16
    iput-boolean v2, p0, Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;->isFilling:Z

    return v1

    :cond_19
    const/16 p2, 0xb3

    if-ne p1, p2, :cond_1f

    .line 336
    iput-boolean v1, p0, Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;->isFilling:Z

    .line 338
    :cond_1f
    :goto_1f
    sget-object p1, Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;->START_CODE:[B

    array-length p2, p1

    invoke-virtual {p0, p1, v2, p2}, Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;->onData([BII)V

    return v2
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 311
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;->isFilling:Z

    .line 312
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;->length:I

    .line 313
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/H262Reader$CsdBuffer;->sequenceExtensionPosition:I

    return-void
.end method
