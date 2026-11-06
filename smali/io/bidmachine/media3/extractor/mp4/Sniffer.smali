###### Class io.bidmachine.media3.extractor.mp4.Sniffer (io.bidmachine.media3.extractor.mp4.Sniffer)
.class public final Lio/bidmachine/media3/extractor/mp4/Sniffer;
.super Ljava/lang/Object;
.source "Sniffer.java"


# static fields
.field public static final COMPATIBLE_BRANDS:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x1d

    .line 43
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lio/bidmachine/media3/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    return-void

    :array_a
    .array-data 4
        0x69736f6d
        0x69736f32
        0x69736f33
        0x69736f34
        0x69736f35
        0x69736f36
        0x69736f39
        0x61766331
        0x68766331
        0x68657631
        0x61763031
        0x6d703431
        0x6d703432
        0x33673261
        0x33673262
        0x33677236
        0x33677336
        0x33676536
        0x33676736
        0x4d345620    # 1.8909645E8f
        0x4d344120    # 1.8901043E8f
        0x66347620
        0x6b646469
        0x4d345650
        0x71742020
        0x4d534e56    # 2.215704E8f
        0x64627931
        0x69736d6c
        0x70696666
    .end array-data
.end method

.method public static isCompatibleBrand(IZ)Z
    .registers 7

    ushr-int/lit8 v0, p0, 0x8

    const v1, 0x336770

    const/4 v2, 0x1

    if-ne v0, v1, :cond_9

    return v2

    :cond_9
    const v0, 0x68656963

    if-ne p0, v0, :cond_11

    if-eqz p1, :cond_11

    return v2

    .line 241
    :cond_11
    sget-object p1, Lio/bidmachine/media3/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    array-length v0, p1

    const/4 v1, 0x0

    move v3, v1

    :goto_16
    if-ge v3, v0, :cond_20

    aget v4, p1, v3

    if-ne v4, p0, :cond_1d

    return v2

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_20
    return v1
.end method

.method public static sniffFragmented(Lio/bidmachine/media3/extractor/ExtractorInput;)Lio/bidmachine/media3/extractor/SniffFailure;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    invoke-static {p0, v0, v1}, Lio/bidmachine/media3/extractor/mp4/Sniffer;->sniffInternal(Lio/bidmachine/media3/extractor/ExtractorInput;ZZ)Lio/bidmachine/media3/extractor/SniffFailure;

    move-result-object p0

    return-object p0
.end method

.method public static sniffInternal(Lio/bidmachine/media3/extractor/ExtractorInput;ZZ)Lio/bidmachine/media3/extractor/SniffFailure;
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 111
    invoke-interface {v0}, Lio/bidmachine/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    const-wide/16 v7, 0x1000

    if-eqz v6, :cond_16

    cmp-long v9, v2, v7

    if-lez v9, :cond_15

    goto :goto_16

    :cond_15
    move-wide v7, v2

    :cond_16
    :goto_16
    long-to-int v7, v7

    .line 118
    new-instance v8, Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/16 v9, 0x40

    invoke-direct {v8, v9}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>(I)V

    const/4 v9, 0x0

    move v10, v9

    move v11, v10

    :goto_21
    if-ge v10, v7, :cond_33

    const/16 v13, 0x8

    .line 125
    invoke-virtual {v8, v13}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    .line 127
    invoke-virtual {v8}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v0, v14, v9, v13, v15}, Lio/bidmachine/media3/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v14

    if-nez v14, :cond_38

    :cond_33
    move v4, v9

    const/16 v17, 0x0

    goto/16 :goto_12c

    .line 132
    :cond_38
    invoke-virtual {v8}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v16

    .line 133
    invoke-virtual {v8}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v14

    const-wide/16 v18, 0x1

    cmp-long v18, v16, v18

    if-nez v18, :cond_5e

    move-wide/from16 v18, v4

    .line 138
    invoke-virtual {v8}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    .line 137
    invoke-interface {v0, v4, v13, v13}, Lio/bidmachine/media3/extractor/ExtractorInput;->peekFully([BII)V

    const/16 v4, 0x10

    .line 139
    invoke-virtual {v8, v4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 140
    invoke-virtual {v8}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v16

    move/from16 v21, v10

    :goto_5a
    move-wide/from16 v9, v16

    const/4 v5, 0x0

    goto :goto_7e

    :cond_5e
    move-wide/from16 v18, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-nez v4, :cond_7b

    .line 143
    invoke-interface {v0}, Lio/bidmachine/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    cmp-long v20, v4, v18

    if-eqz v20, :cond_7b

    .line 145
    invoke-interface {v0}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v16

    sub-long v4, v4, v16

    move/from16 v21, v10

    int-to-long v9, v13

    add-long v16, v4, v9

    :goto_79
    move v4, v13

    goto :goto_5a

    :cond_7b
    move/from16 v21, v10

    goto :goto_79

    :goto_7e
    int-to-long v12, v4

    cmp-long v17, v9, v12

    if-gez v17, :cond_89

    .line 151
    new-instance v0, Lio/bidmachine/media3/extractor/mp4/AtomSizeTooSmallSniffFailure;

    invoke-direct {v0, v14, v9, v10, v4}, Lio/bidmachine/media3/extractor/mp4/AtomSizeTooSmallSniffFailure;-><init>(IJI)V

    return-object v0

    :cond_89
    add-int v4, v21, v4

    move-object/from16 v17, v5

    const v5, 0x6d6f6f76

    if-ne v14, v5, :cond_a1

    long-to-int v5, v9

    add-int/2addr v7, v5

    if-eqz v6, :cond_9c

    int-to-long v9, v7

    cmp-long v5, v9, v2

    if-lez v5, :cond_9c

    long-to-int v7, v2

    :cond_9c
    move v10, v4

    move-wide/from16 v4, v18

    const/4 v9, 0x0

    goto :goto_21

    :cond_a1
    const v5, 0x6d6f6f66

    if-eq v14, v5, :cond_12a

    const v5, 0x6d766578

    if-ne v14, v5, :cond_ad

    goto/16 :goto_12a

    :cond_ad
    const v5, 0x6d646174

    if-ne v14, v5, :cond_b3

    move v11, v15

    :cond_b3
    move-wide/from16 v21, v2

    int-to-long v2, v4

    add-long/2addr v2, v9

    sub-long/2addr v2, v12

    move-wide/from16 v23, v2

    int-to-long v2, v7

    cmp-long v2, v23, v2

    if-ltz v2, :cond_c2

    const/4 v9, 0x0

    goto/16 :goto_12d

    :cond_c2
    sub-long/2addr v9, v12

    long-to-int v2, v9

    add-int v10, v4, v2

    const v3, 0x66747970

    if-ne v14, v3, :cond_11d

    const/16 v3, 0x8

    if-ge v2, v3, :cond_d6

    .line 189
    new-instance v0, Lio/bidmachine/media3/extractor/mp4/AtomSizeTooSmallSniffFailure;

    int-to-long v1, v2

    invoke-direct {v0, v14, v1, v2, v3}, Lio/bidmachine/media3/extractor/mp4/AtomSizeTooSmallSniffFailure;-><init>(IJI)V

    return-object v0

    .line 191
    :cond_d6
    invoke-virtual {v8, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    .line 192
    invoke-virtual {v8}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4, v2}, Lio/bidmachine/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 193
    invoke-virtual {v8}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 194
    invoke-static {v2, v1}, Lio/bidmachine/media3/extractor/mp4/Sniffer;->isCompatibleBrand(IZ)Z

    move-result v3

    if-eqz v3, :cond_ec

    move v11, v15

    :cond_ec
    const/4 v3, 0x4

    .line 198
    invoke-virtual {v8, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 199
    invoke-virtual {v8}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    div-int/2addr v5, v3

    if-nez v11, :cond_110

    if-lez v5, :cond_110

    .line 202
    new-array v12, v5, [I

    move v3, v4

    :goto_fc
    if-ge v3, v5, :cond_10e

    .line 204
    invoke-virtual {v8}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    aput v9, v12, v3

    .line 205
    invoke-static {v9, v1}, Lio/bidmachine/media3/extractor/mp4/Sniffer;->isCompatibleBrand(IZ)Z

    move-result v9

    if-eqz v9, :cond_10b

    goto :goto_113

    :cond_10b
    add-int/lit8 v3, v3, 0x1

    goto :goto_fc

    :cond_10e
    move v15, v11

    goto :goto_113

    :cond_110
    move v15, v11

    move-object/from16 v12, v17

    :goto_113
    if-nez v15, :cond_11b

    .line 213
    new-instance v0, Lio/bidmachine/media3/extractor/mp4/UnsupportedBrandsSniffFailure;

    invoke-direct {v0, v2, v12}, Lio/bidmachine/media3/extractor/mp4/UnsupportedBrandsSniffFailure;-><init>(I[I)V

    return-object v0

    :cond_11b
    move v11, v15

    goto :goto_123

    :cond_11d
    const/4 v4, 0x0

    if-eqz v2, :cond_123

    .line 217
    invoke-interface {v0, v2}, Lio/bidmachine/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    :cond_123
    :goto_123
    move v9, v4

    move-wide/from16 v4, v18

    move-wide/from16 v2, v21

    goto/16 :goto_21

    :cond_12a
    :goto_12a
    move v9, v15

    goto :goto_12d

    :goto_12c
    move v9, v4

    :goto_12d
    if-nez v11, :cond_132

    .line 221
    sget-object v0, Lio/bidmachine/media3/extractor/mp4/NoDeclaredBrandSniffFailure;->INSTANCE:Lio/bidmachine/media3/extractor/mp4/NoDeclaredBrandSniffFailure;

    return-object v0

    :cond_132
    move/from16 v0, p1

    if-eq v0, v9, :cond_13e

    if-eqz v9, :cond_13b

    .line 224
    sget-object v0, Lio/bidmachine/media3/extractor/mp4/IncorrectFragmentationSniffFailure;->FILE_FRAGMENTED:Lio/bidmachine/media3/extractor/mp4/IncorrectFragmentationSniffFailure;

    return-object v0

    .line 225
    :cond_13b
    sget-object v0, Lio/bidmachine/media3/extractor/mp4/IncorrectFragmentationSniffFailure;->FILE_NOT_FRAGMENTED:Lio/bidmachine/media3/extractor/mp4/IncorrectFragmentationSniffFailure;

    return-object v0

    :cond_13e
    return-object v17
.end method

.method public static sniffUnfragmented(Lio/bidmachine/media3/extractor/ExtractorInput;Z)Lio/bidmachine/media3/extractor/SniffFailure;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 105
    invoke-static {p0, v0, p1}, Lio/bidmachine/media3/extractor/mp4/Sniffer;->sniffInternal(Lio/bidmachine/media3/extractor/ExtractorInput;ZZ)Lio/bidmachine/media3/extractor/SniffFailure;

    move-result-object p0

    return-object p0
.end method
