###### Class io.bidmachine.media3.extractor.ts.H263Reader (io.bidmachine.media3.extractor.ts.H263Reader)
.class public final Lio/bidmachine/media3/extractor/ts/H263Reader;
.super Ljava/lang/Object;
.source "H263Reader.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;,
        Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;
    }
.end annotation


# static fields
.field public static final PIXEL_WIDTH_HEIGHT_RATIO_BY_ASPECT_RATIO_INFO:[F


# instance fields
.field public final containerMimeType:Ljava/lang/String;

.field public final csdBuffer:Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;

.field public formatId:Ljava/lang/String;

.field public hasOutputFormat:Z

.field public output:Lio/bidmachine/media3/extractor/TrackOutput;

.field public pesTimeUs:J

.field public final prefixFlags:[Z

.field public sampleReader:Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;

.field public totalBytesWritten:J

.field public final userData:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

.field public final userDataParsable:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public final userDataReader:Lio/bidmachine/media3/extractor/ts/UserDataReader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x7

    .line 63
    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Lio/bidmachine/media3/extractor/ts/H263Reader;->PIXEL_WIDTH_HEIGHT_RATIO_BY_ASPECT_RATIO_INFO:[F

    return-void

    nop

    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lio/bidmachine/media3/extractor/ts/UserDataReader;Ljava/lang/String;)V
    .registers 6

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->userDataReader:Lio/bidmachine/media3/extractor/ts/UserDataReader;

    .line 95
    iput-object p2, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->containerMimeType:Ljava/lang/String;

    const/4 p2, 0x4

    .line 96
    new-array p2, p2, [Z

    iput-object p2, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->prefixFlags:[Z

    .line 97
    new-instance p2, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;

    const/16 v0, 0x80

    invoke-direct {p2, v0}, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;-><init>(I)V

    iput-object p2, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->csdBuffer:Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 98
    iput-wide v1, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->pesTimeUs:J

    if-eqz p1, :cond_2f

    .line 100
    new-instance p1, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 p2, 0xb2

    invoke-direct {p1, p2, v0}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->userData:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    .line 101
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->userDataParsable:Lio/bidmachine/media3/common/util/ParsableByteArray;

    return-void

    :cond_2f
    const/4 p1, 0x0

    .line 103
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->userData:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    .line 104
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->userDataParsable:Lio/bidmachine/media3/common/util/ParsableByteArray;

    return-void
.end method

.method public static parseCsdBuffer(Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;ILjava/lang/String;Ljava/lang/String;)Lio/bidmachine/media3/common/Format;
    .registers 12

    .line 245
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->data:[B

    iget p0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->length:I

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 246
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-direct {v0, p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 247
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBytes(I)V

    const/4 p1, 0x4

    .line 250
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 251
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBit()V

    const/16 v1, 0x8

    .line 252
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 253
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_29

    .line 254
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 255
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 258
    :cond_29
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 259
    const-string v4, "Invalid aspect ratio"

    const-string v5, "H263Reader"

    const/16 v6, 0xf

    if-ne p1, v6, :cond_4a

    .line 260
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    .line 261
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    if-nez v1, :cond_45

    .line 263
    invoke-static {v5, v4}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    :cond_45
    int-to-float p1, p1

    int-to-float v1, v1

    div-float v2, p1, v1

    goto :goto_55

    .line 268
    :cond_4a
    sget-object v1, Lio/bidmachine/media3/extractor/ts/H263Reader;->PIXEL_WIDTH_HEIGHT_RATIO_BY_ASPECT_RATIO_INFO:[F

    array-length v7, v1

    if-ge p1, v7, :cond_52

    .line 269
    aget v2, v1, p1

    goto :goto_55

    .line 271
    :cond_52
    invoke-static {v5, v4}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :goto_55
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result p1

    const/4 v1, 0x2

    if-eqz p1, :cond_8c

    .line 275
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/4 p1, 0x1

    .line 276
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 277
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_8c

    .line 278
    invoke-virtual {v0, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 279
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBit()V

    .line 280
    invoke-virtual {v0, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 281
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBit()V

    .line 282
    invoke-virtual {v0, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 283
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBit()V

    .line 284
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/16 p1, 0xb

    .line 285
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 286
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBit()V

    .line 287
    invoke-virtual {v0, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 288
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBit()V

    .line 291
    :cond_8c
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    if-eqz p1, :cond_97

    .line 293
    const-string p1, "Unhandled video object layer shape"

    invoke-static {v5, p1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_97
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBit()V

    const/16 p1, 0x10

    .line 296
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    .line 297
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBit()V

    .line 298
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_be

    if-nez p1, :cond_b1

    .line 300
    const-string p1, "Invalid vop_increment_time_resolution"

    invoke-static {v5, p1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_be

    :cond_b1
    add-int/lit8 p1, p1, -0x1

    const/4 v1, 0x0

    :goto_b4
    if-lez p1, :cond_bb

    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 p1, p1, 0x1

    goto :goto_b4

    .line 308
    :cond_bb
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 311
    :cond_be
    :goto_be
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBit()V

    const/16 p1, 0xd

    .line 312
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 313
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBit()V

    .line 314
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    .line 315
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBit()V

    .line 316
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBit()V

    .line 317
    new-instance v0, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    .line 318
    invoke-virtual {v0, p2}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p2

    .line 319
    invoke-virtual {p2, p3}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p2

    const-string p3, "video/mp4v-es"

    .line 320
    invoke-virtual {p2, p3}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p2

    .line 321
    invoke-virtual {p2, v1}, Lio/bidmachine/media3/common/Format$Builder;->setWidth(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p2

    .line 322
    invoke-virtual {p2, p1}, Lio/bidmachine/media3/common/Format$Builder;->setHeight(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 323
    invoke-virtual {p1, v2}, Lio/bidmachine/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 324
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/bidmachine/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 325
    invoke-virtual {p0}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public consume(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 16

    .line 142
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->sampleReader:Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 145
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    .line 146
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    .line 149
    iget-wide v3, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->totalBytesWritten:J

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->totalBytesWritten:J

    .line 150
    iget-object v3, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    invoke-interface {v3, p1, v4}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    .line 153
    :goto_29
    iget-object v3, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->prefixFlags:[Z

    invoke-static {v2, v0, v1, v3}, Lio/bidmachine/media3/container/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v3

    if-ne v3, v1, :cond_47

    .line 157
    iget-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->hasOutputFormat:Z

    if-nez p1, :cond_3a

    .line 158
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->csdBuffer:Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;

    invoke-virtual {p1, v2, v0, v1}, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->onData([BII)V

    .line 160
    :cond_3a
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->sampleReader:Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;

    invoke-virtual {p1, v2, v0, v1}, Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;->onData([BII)V

    .line 161
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->userData:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    if-eqz p1, :cond_46

    .line 162
    invoke-virtual {p1, v2, v0, v1}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    :cond_46
    return-void

    .line 168
    :cond_47
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    add-int/lit8 v5, v3, 0x3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    sub-int v6, v3, v0

    .line 173
    iget-boolean v7, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->hasOutputFormat:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v7, :cond_86

    if-lez v6, :cond_60

    .line 175
    iget-object v7, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->csdBuffer:Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;

    invoke-virtual {v7, v2, v0, v3}, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->onData([BII)V

    :cond_60
    if-gez v6, :cond_64

    neg-int v7, v6

    goto :goto_65

    :cond_64
    move v7, v9

    .line 180
    :goto_65
    iget-object v10, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->csdBuffer:Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;

    invoke-virtual {v10, v4, v7}, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->onStartCode(II)Z

    move-result v7

    if-eqz v7, :cond_86

    .line 182
    iget-object v7, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-object v10, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->csdBuffer:Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;

    iget v11, v10, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->volStartPosition:I

    iget-object v12, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->formatId:Ljava/lang/String;

    .line 186
    invoke-static {v12}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iget-object v13, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->containerMimeType:Ljava/lang/String;

    .line 183
    invoke-static {v10, v11, v12, v13}, Lio/bidmachine/media3/extractor/ts/H263Reader;->parseCsdBuffer(Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;ILjava/lang/String;Ljava/lang/String;)Lio/bidmachine/media3/common/Format;

    move-result-object v10

    .line 182
    invoke-interface {v7, v10}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    .line 188
    iput-boolean v8, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->hasOutputFormat:Z

    .line 192
    :cond_86
    iget-object v7, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->sampleReader:Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;

    invoke-virtual {v7, v2, v0, v3}, Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;->onData([BII)V

    .line 194
    iget-object v7, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->userData:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    if-eqz v7, :cond_d9

    if-lez v6, :cond_95

    .line 197
    invoke-virtual {v7, v2, v0, v3}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    goto :goto_96

    :cond_95
    neg-int v9, v6

    .line 202
    :goto_96
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->userData:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, v9}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 203
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->userData:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v6, v0, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v0, v0, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v6, v0}, Lio/bidmachine/media3/container/NalUnitUtil;->unescapeStream([BI)I

    move-result v0

    .line 204
    iget-object v6, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->userDataParsable:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-static {v6}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-object v7, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->userData:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v7, v7, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v6, v7, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 205
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->userDataReader:Lio/bidmachine/media3/extractor/ts/UserDataReader;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/ts/UserDataReader;

    iget-wide v6, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->pesTimeUs:J

    iget-object v9, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->userDataParsable:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v6, v7, v9}, Lio/bidmachine/media3/extractor/ts/UserDataReader;->consume(JLio/bidmachine/media3/common/util/ParsableByteArray;)V

    :cond_c6
    const/16 v0, 0xb2

    if-ne v4, v0, :cond_d9

    .line 209
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    add-int/lit8 v6, v3, 0x2

    aget-byte v0, v0, v6

    if-ne v0, v8, :cond_d9

    .line 210
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->userData:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, v4}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    :cond_d9
    sub-int v0, v1, v3

    .line 215
    iget-wide v6, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->totalBytesWritten:J

    int-to-long v8, v0

    sub-long/2addr v6, v8

    .line 216
    iget-object v3, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->sampleReader:Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;

    iget-boolean v8, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->hasOutputFormat:Z

    invoke-virtual {v3, v6, v7, v0, v8}, Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;->onDataEnd(JIZ)V

    .line 218
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->sampleReader:Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;

    iget-wide v6, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->pesTimeUs:J

    invoke-virtual {v0, v4, v6, v7}, Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;->onStartCode(IJ)V

    move v0, v5

    goto/16 :goto_29
.end method

.method public createTracks(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 5

    .line 124
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 125
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->formatId:Ljava/lang/String;

    .line 126
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 127
    new-instance v1, Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;

    invoke-direct {v1, v0}, Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;-><init>(Lio/bidmachine/media3/extractor/TrackOutput;)V

    iput-object v1, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->sampleReader:Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;

    .line 128
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->userDataReader:Lio/bidmachine/media3/extractor/ts/UserDataReader;

    if-eqz v0, :cond_22

    .line 129
    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/extractor/ts/UserDataReader;->createTracks(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    :cond_22
    return-void
.end method

.method public packetFinished(Z)V
    .registers 6

    .line 227
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->sampleReader:Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_16

    .line 229
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->sampleReader:Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;

    iget-wide v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->totalBytesWritten:J

    const/4 v2, 0x0

    iget-boolean v3, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->hasOutputFormat:Z

    invoke-virtual {p1, v0, v1, v2, v3}, Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;->onDataEnd(JIZ)V

    .line 230
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->sampleReader:Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;

    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;->reset()V

    :cond_16
    return-void
.end method

.method public packetStarted(JI)V
    .registers 4

    .line 136
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->pesTimeUs:J

    return-void
.end method

.method public seek()V
    .registers 3

    .line 110
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->prefixFlags:[Z

    invoke-static {v0}, Lio/bidmachine/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 111
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->csdBuffer:Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->reset()V

    .line 112
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->sampleReader:Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;

    if-eqz v0, :cond_11

    .line 113
    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;->reset()V

    .line 115
    :cond_11
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->userData:Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;

    if-eqz v0, :cond_18

    .line 116
    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    :cond_18
    const-wide/16 v0, 0x0

    .line 118
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->totalBytesWritten:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 119
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader;->pesTimeUs:J

    return-void
.end method

###### Class io.bidmachine.media3.extractor.ts.H263Reader.CsdBuffer (io.bidmachine.media3.extractor.ts.H263Reader$CsdBuffer)
.class public final Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;
.super Ljava/lang/Object;
.source "H263Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/ts/H263Reader;
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

.field public state:I

.field public volStartPosition:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    .line 330
    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->START_CODE:[B

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

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    new-array p1, p1, [B

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->data:[B

    return-void
.end method


# virtual methods
.method public onData([BII)V
    .registers 8

    .line 426
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->isFilling:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sub-int/2addr p3, p2

    .line 430
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->data:[B

    array-length v1, v0

    iget v2, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->length:I

    add-int v3, v2, p3

    if-ge v1, v3, :cond_18

    add-int/2addr v2, p3

    mul-int/lit8 v2, v2, 0x2

    .line 431
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->data:[B

    .line 433
    :cond_18
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->data:[B

    iget v1, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 434
    iget p1, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->length:I

    add-int/2addr p1, p3

    iput p1, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->length:I

    return-void
.end method

.method public onStartCode(II)Z
    .registers 11

    .line 378
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_59

    const/16 v3, 0xb5

    const/4 v4, 0x2

    const-string v5, "Unexpected start code value"

    const-string v6, "H263Reader"

    if-eq v0, v2, :cond_4d

    const/4 v7, 0x3

    if-eq v0, v4, :cond_3f

    const/4 v4, 0x4

    if-eq v0, v7, :cond_2b

    if-ne v0, v4, :cond_25

    const/16 v0, 0xb3

    if-eq p1, v0, :cond_1d

    if-ne p1, v3, :cond_61

    .line 413
    :cond_1d
    iget p1, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->length:I

    sub-int/2addr p1, p2

    iput p1, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->length:I

    .line 414
    iput-boolean v1, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->isFilling:Z

    return v2

    .line 419
    :cond_25
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2b
    and-int/lit16 p1, p1, 0xf0

    const/16 p2, 0x20

    if-eq p1, p2, :cond_38

    .line 403
    invoke-static {v6, v5}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->reset()V

    goto :goto_61

    .line 406
    :cond_38
    iget p1, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->length:I

    iput p1, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->volStartPosition:I

    .line 407
    iput v4, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->state:I

    goto :goto_61

    :cond_3f
    const/16 p2, 0x1f

    if-le p1, p2, :cond_4a

    .line 395
    invoke-static {v6, v5}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->reset()V

    goto :goto_61

    .line 398
    :cond_4a
    iput v7, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->state:I

    goto :goto_61

    :cond_4d
    if-eq p1, v3, :cond_56

    .line 387
    invoke-static {v6, v5}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->reset()V

    goto :goto_61

    .line 390
    :cond_56
    iput v4, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->state:I

    goto :goto_61

    :cond_59
    const/16 p2, 0xb0

    if-ne p1, p2, :cond_61

    .line 381
    iput v2, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->state:I

    .line 382
    iput-boolean v2, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->isFilling:Z

    .line 421
    :cond_61
    :goto_61
    sget-object p1, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->START_CODE:[B

    array-length p2, p1

    invoke-virtual {p0, p1, v1, p2}, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->onData([BII)V

    return v1
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 362
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->isFilling:Z

    .line 363
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->length:I

    .line 364
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$CsdBuffer;->state:I

    return-void
.end method

###### Class io.bidmachine.media3.extractor.ts.H263Reader.SampleReader (io.bidmachine.media3.extractor.ts.H263Reader$SampleReader)
.class public final Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;
.super Ljava/lang/Object;
.source "H263Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/ts/H263Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SampleReader"
.end annotation


# instance fields
.field public lookingForVopCodingType:Z

.field public final output:Lio/bidmachine/media3/extractor/TrackOutput;

.field public readingSample:Z

.field public sampleIsKeyframe:Z

.field public samplePosition:J

.field public sampleTimeUs:J

.field public startCodeValue:I

.field public vopBytesRead:I


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/TrackOutput;)V
    .registers 2

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    return-void
.end method


# virtual methods
.method public onData([BII)V
    .registers 6

    .line 478
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;->lookingForVopCodingType:Z

    if-eqz v0, :cond_20

    add-int/lit8 v0, p2, 0x1

    .line 479
    iget v1, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;->vopBytesRead:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_1c

    .line 481
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xc0

    shr-int/lit8 p1, p1, 0x6

    const/4 p2, 0x0

    if-nez p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    move p1, p2

    :goto_17
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;->sampleIsKeyframe:Z

    .line 482
    iput-boolean p2, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;->lookingForVopCodingType:Z

    return-void

    :cond_1c
    sub-int/2addr p3, p2

    add-int/2addr v1, p3

    .line 484
    iput v1, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;->vopBytesRead:I

    :cond_20
    return-void
.end method

.method public onDataEnd(JIZ)V
    .registers 14

    .line 491
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;->sampleTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 492
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;->startCodeValue:I

    const/16 v1, 0xb6

    if-ne v0, v1, :cond_2d

    if-eqz p4, :cond_2d

    iget-boolean p4, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;->readingSample:Z

    if-eqz p4, :cond_2d

    .line 493
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;->samplePosition:J

    sub-long v0, p1, v0

    long-to-int v6, v0

    .line 494
    iget-boolean v5, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;->sampleIsKeyframe:Z

    .line 495
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-wide v3, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;->sampleTimeUs:J

    const/4 v8, 0x0

    move v7, p3

    invoke-interface/range {v2 .. v8}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    .line 500
    :cond_2d
    iget p3, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;->startCodeValue:I

    const/16 p4, 0xb3

    if-eq p3, p4, :cond_35

    .line 501
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;->samplePosition:J

    :cond_35
    return-void
.end method

.method public onStartCode(IJ)V
    .registers 8

    .line 468
    iput p1, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;->startCodeValue:I

    const/4 v0, 0x0

    .line 469
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;->sampleIsKeyframe:Z

    const/4 v1, 0x1

    const/16 v2, 0xb6

    if-eq p1, v2, :cond_11

    const/16 v3, 0xb3

    if-ne p1, v3, :cond_f

    goto :goto_11

    :cond_f
    move v3, v0

    goto :goto_12

    :cond_11
    :goto_11
    move v3, v1

    .line 470
    :goto_12
    iput-boolean v3, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;->readingSample:Z

    if-ne p1, v2, :cond_17

    goto :goto_18

    :cond_17
    move v1, v0

    .line 472
    :goto_18
    iput-boolean v1, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;->lookingForVopCodingType:Z

    .line 473
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;->vopBytesRead:I

    .line 474
    iput-wide p2, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;->sampleTimeUs:J

    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 461
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;->readingSample:Z

    .line 462
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;->lookingForVopCodingType:Z

    .line 463
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;->sampleIsKeyframe:Z

    const/4 v0, -0x1

    .line 464
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/H263Reader$SampleReader;->startCodeValue:I

    return-void
.end method
