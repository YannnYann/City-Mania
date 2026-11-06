###### Class io.bidmachine.media3.extractor.Ac3Util (io.bidmachine.media3.extractor.Ac3Util)
.class public final Lio/bidmachine/media3/extractor/Ac3Util;
.super Ljava/lang/Object;
.source "Ac3Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/Ac3Util$SyncFrameInfo;
    }
.end annotation


# static fields
.field public static final BITRATE_BY_HALF_FRMSIZECOD:[I

.field public static final BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

.field public static final CHANNEL_COUNT_BY_ACMOD:[I

.field public static final SAMPLE_RATE_BY_FSCOD:[I

.field public static final SAMPLE_RATE_BY_FSCOD2:[I

.field public static final SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x3

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x2

    .line 142
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/extractor/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    const v0, 0xac44

    const/16 v1, 0x7d00

    const v2, 0xbb80

    .line 145
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/extractor/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    const/16 v0, 0x5622

    const/16 v1, 0x3e80

    const/16 v2, 0x5dc0

    .line 148
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/extractor/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    const/16 v0, 0x8

    .line 151
    new-array v0, v0, [I

    fill-array-data v0, :array_3e

    sput-object v0, Lio/bidmachine/media3/extractor/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    const/16 v0, 0x13

    .line 154
    new-array v1, v0, [I

    fill-array-data v1, :array_52

    sput-object v1, Lio/bidmachine/media3/extractor/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    .line 160
    new-array v0, v0, [I

    fill-array-data v0, :array_7c

    sput-object v0, Lio/bidmachine/media3/extractor/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    return-void

    :array_3e
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    :array_52
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    :array_7c
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method public static calculateEac3Bitrate(III)I
    .registers 3

    mul-int/2addr p0, p1

    mul-int/lit8 p2, p2, 0x20

    .line 632
    div-int/2addr p0, p2

    return p0
.end method

.method public static findTrueHdSyncframeOffset(Ljava/nio/ByteBuffer;)I
    .registers 6

    .line 557
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 558
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    move v2, v0

    :goto_b
    if-gt v2, v1, :cond_1f

    add-int/lit8 v3, v2, 0x4

    .line 561
    invoke-static {p0, v3}, Lio/bidmachine/media3/common/util/Util;->getBigEndianInt(Ljava/nio/ByteBuffer;I)I

    move-result v3

    and-int/lit8 v3, v3, -0x2

    const v4, -0x78d9046

    if-ne v3, v4, :cond_1c

    sub-int/2addr v2, v0

    return v2

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method

.method public static getAc3SyncframeSize(II)I
    .registers 6

    .line 605
    div-int/lit8 v0, p1, 0x2

    if-ltz p0, :cond_2e

    .line 606
    sget-object v1, Lio/bidmachine/media3/extractor/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    array-length v2, v1

    if-ge p0, v2, :cond_2e

    if-ltz p1, :cond_2e

    sget-object v2, Lio/bidmachine/media3/extractor/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    array-length v3, v2

    if-lt v0, v3, :cond_11

    goto :goto_2e

    .line 613
    :cond_11
    aget p0, v1, p0

    const v1, 0xac44

    if-ne p0, v1, :cond_20

    .line 615
    aget p0, v2, v0

    rem-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x2

    return p0

    .line 617
    :cond_20
    sget-object p1, Lio/bidmachine/media3/extractor/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    aget p1, p1, v0

    const/16 v0, 0x7d00

    if-ne p0, v0, :cond_2b

    mul-int/lit8 p1, p1, 0x6

    return p1

    :cond_2b
    mul-int/lit8 p1, p1, 0x4

    return p1

    :cond_2e
    :goto_2e
    const/4 p0, -0x1

    return p0
.end method

.method public static parseAc3AnnexFFormat(Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lio/bidmachine/media3/common/DrmInitData;)Lio/bidmachine/media3/common/Format;
    .registers 9

    .line 181
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-direct {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;-><init>()V

    .line 182
    invoke-virtual {v0, p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->reset(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    const/4 v1, 0x2

    .line 184
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 185
    sget-object v2, Lio/bidmachine/media3/extractor/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v1, v2, v1

    const/16 v2, 0x8

    .line 186
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 187
    sget-object v2, Lio/bidmachine/media3/extractor/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    .line 188
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    if-eqz v3, :cond_28

    add-int/lit8 v2, v2, 0x1

    :cond_28
    const/4 v3, 0x5

    .line 191
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 192
    sget-object v4, Lio/bidmachine/media3/extractor/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    aget v3, v4, v3

    mul-int/lit16 v3, v3, 0x3e8

    .line 194
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->byteAlign()V

    .line 195
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->getBytePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 196
    new-instance p0, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {p0}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    .line 197
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    const-string p1, "audio/ac3"

    .line 198
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 199
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/Format$Builder;->setChannelCount(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 200
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setSampleRate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 201
    invoke-virtual {p0, p3}, Lio/bidmachine/media3/common/Format$Builder;->setDrmInitData(Lio/bidmachine/media3/common/DrmInitData;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 202
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 203
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/common/Format$Builder;->setAverageBitrate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 204
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/common/Format$Builder;->setPeakBitrate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 205
    invoke-virtual {p0}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p0

    return-object p0
.end method

.method public static parseAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .registers 4

    .line 538
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xf8

    const/4 v1, 0x3

    shr-int/2addr v0, v1

    const/16 v2, 0xa

    if-le v0, v2, :cond_38

    .line 540
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    if-ne v0, v1, :cond_23

    goto :goto_31

    .line 541
    :cond_23
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit8 p0, p0, 0x30

    shr-int/lit8 v1, p0, 0x4

    .line 542
    :goto_31
    sget-object p0, Lio/bidmachine/media3/extractor/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    aget p0, p0, v1

    mul-int/lit16 p0, p0, 0x100

    return p0

    :cond_38
    const/16 p0, 0x600

    return p0
.end method

.method public static parseAc3SyncframeInfo(Lio/bidmachine/media3/common/util/ParsableBitArray;)Lio/bidmachine/media3/extractor/Ac3Util$SyncFrameInfo;
    .registers 31

    move-object/from16 v0, p0

    .line 281
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->getPosition()I

    move-result v1

    const/16 v2, 0x28

    .line 282
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/4 v2, 0x5

    .line 284
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/4 v5, 0x1

    const/16 v6, 0xa

    if-le v3, v6, :cond_17

    move v3, v5

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    .line 285
    :goto_18
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->setPosition(I)V

    const/4 v1, -0x1

    const/16 v7, 0x8

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v3, :cond_227

    const/16 v3, 0x10

    .line 297
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 298
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    if-eqz v11, :cond_36

    if-eq v11, v5, :cond_34

    if-eq v11, v10, :cond_32

    goto :goto_37

    :cond_32
    move v1, v10

    goto :goto_37

    :cond_34
    move v1, v5

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    .line 312
    :goto_37
    invoke-virtual {v0, v9}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/16 v11, 0xb

    .line 313
    invoke-virtual {v0, v11}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    add-int/2addr v11, v5

    mul-int/2addr v11, v10

    .line 314
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v12

    if-ne v12, v9, :cond_53

    .line 319
    sget-object v13, Lio/bidmachine/media3/extractor/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    invoke-virtual {v0, v10}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v14

    aget v13, v13, v14

    move v14, v9

    const/4 v15, 0x6

    goto :goto_65

    .line 322
    :cond_53
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 323
    sget-object v14, Lio/bidmachine/media3/extractor/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    aget v14, v14, v13

    .line 324
    sget-object v15, Lio/bidmachine/media3/extractor/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v15, v15, v12

    move/from16 v29, v14

    move v14, v13

    move v13, v15

    move/from16 v15, v29

    :goto_65
    mul-int/lit16 v4, v15, 0x100

    .line 327
    invoke-static {v11, v13, v15}, Lio/bidmachine/media3/extractor/Ac3Util;->calculateEac3Bitrate(III)I

    move-result v16

    .line 328
    invoke-virtual {v0, v9}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 329
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v18

    .line 330
    sget-object v19, Lio/bidmachine/media3/extractor/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    aget v19, v19, v8

    add-int v19, v19, v18

    .line 331
    invoke-virtual {v0, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 332
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_85

    .line 333
    invoke-virtual {v0, v7}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_85
    if-nez v8, :cond_93

    .line 336
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 337
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_93

    .line 338
    invoke-virtual {v0, v7}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_93
    if-ne v1, v5, :cond_9e

    .line 341
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_9e

    .line 342
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 344
    :cond_9e
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    const/4 v6, 0x4

    if-eqz v3, :cond_1bb

    if-le v8, v10, :cond_aa

    .line 346
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_aa
    and-int/lit8 v3, v8, 0x1

    if-eqz v3, :cond_b5

    if-le v8, v10, :cond_b5

    const/4 v3, 0x6

    .line 349
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_b6

    :cond_b5
    const/4 v3, 0x6

    :goto_b6
    and-int/lit8 v17, v8, 0x4

    if-eqz v17, :cond_bd

    .line 352
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_bd
    if-eqz v18, :cond_c8

    .line 354
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 355
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_c8
    if-nez v1, :cond_1bb

    .line 358
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_d5

    const/4 v3, 0x6

    .line 359
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_d6

    :cond_d5
    const/4 v3, 0x6

    :goto_d6
    if-nez v8, :cond_e1

    .line 361
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_e1

    .line 362
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 364
    :cond_e1
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_ea

    .line 365
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 367
    :cond_ea
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    if-ne v3, v5, :cond_f5

    .line 369
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_188

    :cond_f5
    if-ne v3, v10, :cond_fe

    const/16 v3, 0xc

    .line 371
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_188

    :cond_fe
    if-ne v3, v9, :cond_188

    .line 373
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 374
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v18

    if-eqz v18, :cond_164

    .line 375
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 376
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v18

    if-eqz v18, :cond_116

    .line 377
    invoke-virtual {v0, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 379
    :cond_116
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v18

    if-eqz v18, :cond_11f

    .line 380
    invoke-virtual {v0, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 382
    :cond_11f
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v18

    if-eqz v18, :cond_128

    .line 383
    invoke-virtual {v0, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 385
    :cond_128
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v18

    if-eqz v18, :cond_131

    .line 386
    invoke-virtual {v0, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 388
    :cond_131
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v18

    if-eqz v18, :cond_13a

    .line 389
    invoke-virtual {v0, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 391
    :cond_13a
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v18

    if-eqz v18, :cond_143

    .line 392
    invoke-virtual {v0, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 394
    :cond_143
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v18

    if-eqz v18, :cond_14c

    .line 395
    invoke-virtual {v0, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 397
    :cond_14c
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v18

    if-eqz v18, :cond_164

    .line 398
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v18

    if-eqz v18, :cond_15b

    .line 399
    invoke-virtual {v0, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 401
    :cond_15b
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v18

    if-eqz v18, :cond_164

    .line 402
    invoke-virtual {v0, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 406
    :cond_164
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v18

    if-eqz v18, :cond_180

    .line 407
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 408
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v18

    if-eqz v18, :cond_180

    const/4 v5, 0x7

    .line 409
    invoke-virtual {v0, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 410
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_180

    .line 411
    invoke-virtual {v0, v7}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_180
    add-int/2addr v3, v10

    mul-int/2addr v3, v7

    .line 415
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 416
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->byteAlign()V

    :cond_188
    :goto_188
    if-ge v8, v10, :cond_1a0

    .line 419
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    const/16 v5, 0xe

    if-eqz v3, :cond_195

    .line 420
    invoke-virtual {v0, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_195
    if-nez v8, :cond_1a0

    .line 423
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_1a0

    .line 424
    invoke-virtual {v0, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 428
    :cond_1a0
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_1bb

    if-nez v14, :cond_1ac

    .line 430
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1bb

    :cond_1ac
    const/4 v3, 0x0

    :goto_1ad
    if-ge v3, v15, :cond_1bb

    .line 433
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_1b8

    .line 434
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_1b8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1ad

    .line 441
    :cond_1bb
    :goto_1bb
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_1e8

    .line 442
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    if-ne v8, v10, :cond_1c9

    .line 444
    invoke-virtual {v0, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_1c9
    const/4 v3, 0x6

    if-lt v8, v3, :cond_1cf

    .line 447
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 449
    :cond_1cf
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_1d8

    .line 450
    invoke-virtual {v0, v7}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_1d8
    if-nez v8, :cond_1e3

    .line 452
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_1e3

    .line 453
    invoke-virtual {v0, v7}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_1e3
    if-ge v12, v9, :cond_1e8

    .line 456
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBit()V

    :cond_1e8
    if-nez v1, :cond_1ef

    if-eq v14, v9, :cond_1ef

    .line 460
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBit()V

    :cond_1ef
    if-ne v1, v10, :cond_1fb

    if-eq v14, v9, :cond_1f9

    .line 463
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_1fb

    :cond_1f9
    const/4 v3, 0x6

    goto :goto_1fd

    :cond_1fb
    const/4 v3, 0x6

    goto :goto_200

    .line 464
    :goto_1fd
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 467
    :goto_200
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_216

    .line 468
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_216

    .line 469
    invoke-virtual {v0, v7}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    if-ne v0, v3, :cond_216

    .line 470
    const-string v0, "audio/eac3-joc"

    goto :goto_218

    .line 473
    :cond_216
    const-string v0, "audio/eac3"

    :goto_218
    move-object/from16 v21, v0

    move/from16 v27, v16

    :goto_21c
    move/from16 v22, v1

    move/from16 v26, v4

    move/from16 v25, v11

    move/from16 v24, v13

    move/from16 v23, v19

    goto :goto_280

    :cond_227
    const/16 v2, 0x20

    .line 475
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 476
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    if-ne v2, v9, :cond_235

    const/4 v3, 0x0

    :goto_233
    const/4 v4, 0x6

    goto :goto_238

    .line 477
    :cond_235
    const-string v3, "audio/ac3"

    goto :goto_233

    .line 482
    :goto_238
    invoke-virtual {v0, v4}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 483
    sget-object v5, Lio/bidmachine/media3/extractor/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    div-int/lit8 v6, v4, 0x2

    aget v5, v5, v6

    mul-int/lit16 v5, v5, 0x3e8

    .line 484
    invoke-static {v2, v4}, Lio/bidmachine/media3/extractor/Ac3Util;->getAc3SyncframeSize(II)I

    move-result v11

    .line 485
    invoke-virtual {v0, v7}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 486
    invoke-virtual {v0, v9}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_259

    const/4 v6, 0x1

    if-eq v4, v6, :cond_259

    .line 488
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_259
    and-int/lit8 v6, v4, 0x4

    if-eqz v6, :cond_260

    .line 491
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_260
    if-ne v4, v10, :cond_265

    .line 494
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 497
    :cond_265
    sget-object v6, Lio/bidmachine/media3/extractor/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    array-length v7, v6

    if-ge v2, v7, :cond_26e

    aget v2, v6, v2

    move v13, v2

    goto :goto_26f

    :cond_26e
    move v13, v1

    .line 499
    :goto_26f
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    .line 500
    sget-object v2, Lio/bidmachine/media3/extractor/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    aget v2, v2, v4

    add-int v19, v2, v0

    const/16 v4, 0x600

    move-object/from16 v21, v3

    move/from16 v27, v5

    goto :goto_21c

    .line 502
    :goto_280
    new-instance v20, Lio/bidmachine/media3/extractor/Ac3Util$SyncFrameInfo;

    const/16 v28, 0x0

    invoke-direct/range {v20 .. v28}, Lio/bidmachine/media3/extractor/Ac3Util$SyncFrameInfo;-><init>(Ljava/lang/String;IIIIIILio/bidmachine/media3/extractor/Ac3Util$1;)V

    return-object v20
.end method

.method public static parseAc3SyncframeSize([B)I
    .registers 5

    .line 513
    array-length v0, p0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    const/4 v0, 0x5

    .line 517
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xf8

    const/4 v2, 0x3

    shr-int/2addr v0, v2

    const/16 v3, 0xa

    if-le v0, v3, :cond_21

    const/4 v0, 0x2

    .line 519
    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x8

    .line 520
    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v1

    add-int/lit8 p0, p0, 0x1

    mul-int/2addr p0, v0

    return p0

    :cond_21
    const/4 v0, 0x4

    .line 523
    aget-byte p0, p0, v0

    and-int/lit16 v0, p0, 0xc0

    shr-int/2addr v0, v1

    and-int/lit8 p0, p0, 0x3f

    .line 525
    invoke-static {v0, p0}, Lio/bidmachine/media3/extractor/Ac3Util;->getAc3SyncframeSize(II)I

    move-result p0

    return p0
.end method

.method public static parseEAc3AnnexFFormat(Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lio/bidmachine/media3/common/DrmInitData;)Lio/bidmachine/media3/common/Format;
    .registers 11

    .line 223
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-direct {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;-><init>()V

    .line 224
    invoke-virtual {v0, p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->reset(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    const/16 v1, 0xd

    .line 226
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    const/4 v2, 0x3

    .line 227
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/4 v3, 0x2

    .line 230
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 231
    sget-object v4, Lio/bidmachine/media3/extractor/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v3, v4, v3

    const/16 v4, 0xa

    .line 232
    invoke-virtual {v0, v4}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 233
    sget-object v4, Lio/bidmachine/media3/extractor/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    .line 234
    invoke-virtual {v0, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    if-eqz v6, :cond_33

    add-int/lit8 v4, v4, 0x1

    .line 239
    :cond_33
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/4 v2, 0x4

    .line 240
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 241
    invoke-virtual {v0, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    if-lez v2, :cond_4f

    const/4 v2, 0x6

    .line 243
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 246
    invoke-virtual {v0, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    if-eqz v2, :cond_4c

    add-int/lit8 v4, v4, 0x2

    .line 249
    :cond_4c
    invoke-virtual {v0, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 253
    :cond_4f
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v2

    const/4 v6, 0x7

    if-le v2, v6, :cond_62

    .line 254
    invoke-virtual {v0, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 255
    invoke-virtual {v0, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    if-eqz v2, :cond_62

    .line 256
    const-string v2, "audio/eac3-joc"

    goto :goto_64

    .line 260
    :cond_62
    const-string v2, "audio/eac3"

    :goto_64
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->byteAlign()V

    .line 261
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->getBytePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 262
    new-instance p0, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {p0}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    .line 263
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 264
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 265
    invoke-virtual {p0, v4}, Lio/bidmachine/media3/common/Format$Builder;->setChannelCount(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 266
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/common/Format$Builder;->setSampleRate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 267
    invoke-virtual {p0, p3}, Lio/bidmachine/media3/common/Format$Builder;->setDrmInitData(Lio/bidmachine/media3/common/DrmInitData;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 268
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 269
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setPeakBitrate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 270
    invoke-virtual {p0}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p0

    return-object p0
.end method

.method public static parseTrueHdSyncframeAudioSampleCount(Ljava/nio/ByteBuffer;I)I
    .registers 4

    .line 600
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 601
    :goto_14
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    if-eqz v0, :cond_1e

    const/16 p1, 0x9

    goto :goto_20

    :cond_1e
    const/16 p1, 0x8

    :goto_20
    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    shr-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0x7

    const/16 p1, 0x28

    shl-int p0, p1, p0

    return p0
.end method

.method public static parseTrueHdSyncframeAudioSampleCount([B)I
    .registers 7

    const/4 v0, 0x4

    .line 580
    aget-byte v1, p0, v0

    const/4 v2, -0x8

    const/4 v3, 0x0

    if-ne v1, v2, :cond_36

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_36

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_36

    const/4 v1, 0x7

    aget-byte v2, p0, v1

    and-int/lit16 v4, v2, 0xfe

    const/16 v5, 0xba

    if-eq v4, v5, :cond_1f

    goto :goto_36

    :cond_1f
    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0xbb

    if-ne v2, v4, :cond_26

    const/4 v3, 0x1

    :cond_26
    if-eqz v3, :cond_2b

    const/16 v2, 0x9

    goto :goto_2d

    :cond_2b
    const/16 v2, 0x8

    .line 587
    :goto_2d
    aget-byte p0, p0, v2

    shr-int/2addr p0, v0

    and-int/2addr p0, v1

    const/16 v0, 0x28

    shl-int p0, v0, p0

    return p0

    :cond_36
    :goto_36
    return v3
.end method

###### Class io.bidmachine.media3.extractor.Ac3Util.AnonymousClass1 (io.bidmachine.media3.extractor.Ac3Util$1)
.class public synthetic Lio/bidmachine/media3/extractor/Ac3Util$1;
.super Ljava/lang/Object;
.source "Ac3Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/Ac3Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.extractor.Ac3Util.SyncFrameInfo (io.bidmachine.media3.extractor.Ac3Util$SyncFrameInfo)
.class public final Lio/bidmachine/media3/extractor/Ac3Util$SyncFrameInfo;
.super Ljava/lang/Object;
.source "Ac3Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/Ac3Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncFrameInfo"
.end annotation


# instance fields
.field public final bitrate:I

.field public final channelCount:I

.field public final frameSize:I

.field public final mimeType:Ljava/lang/String;

.field public final sampleCount:I

.field public final sampleRate:I

.field public final streamType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .registers 8

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lio/bidmachine/media3/extractor/Ac3Util$SyncFrameInfo;->mimeType:Ljava/lang/String;

    .line 105
    iput p2, p0, Lio/bidmachine/media3/extractor/Ac3Util$SyncFrameInfo;->streamType:I

    .line 106
    iput p3, p0, Lio/bidmachine/media3/extractor/Ac3Util$SyncFrameInfo;->channelCount:I

    .line 107
    iput p4, p0, Lio/bidmachine/media3/extractor/Ac3Util$SyncFrameInfo;->sampleRate:I

    .line 108
    iput p5, p0, Lio/bidmachine/media3/extractor/Ac3Util$SyncFrameInfo;->frameSize:I

    .line 109
    iput p6, p0, Lio/bidmachine/media3/extractor/Ac3Util$SyncFrameInfo;->sampleCount:I

    .line 110
    iput p7, p0, Lio/bidmachine/media3/extractor/Ac3Util$SyncFrameInfo;->bitrate:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIIIIILio/bidmachine/media3/extractor/Ac3Util$1;)V
    .registers 9

    .line 45
    invoke-direct/range {p0 .. p7}, Lio/bidmachine/media3/extractor/Ac3Util$SyncFrameInfo;-><init>(Ljava/lang/String;IIIIII)V

    return-void
.end method
