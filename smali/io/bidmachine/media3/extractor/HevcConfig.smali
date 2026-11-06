###### Class io.bidmachine.media3.extractor.HevcConfig (io.bidmachine.media3.extractor.HevcConfig)
.class public final Lio/bidmachine/media3/extractor/HevcConfig;
.super Ljava/lang/Object;
.source "HevcConfig.java"


# instance fields
.field public final bitdepthChroma:I

.field public final bitdepthLuma:I

.field public final codecs:Ljava/lang/String;

.field public final colorRange:I

.field public final colorSpace:I

.field public final colorTransfer:I

.field public final height:I

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final maxNumReorderPics:I

.field public final maxSubLayers:I

.field public final nalUnitLengthFieldLength:I

.field public final pixelWidthHeightRatio:F

.field public final stereoMode:I

.field public final vpsData:Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;

.field public final width:I


# direct methods
.method public constructor <init>(Ljava/util/List;IIIIIIIIIIFILjava/lang/String;Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;IIIIIIIIIIFI",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;",
            ")V"
        }
    .end annotation

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p1, p0, Lio/bidmachine/media3/extractor/HevcConfig;->initializationData:Ljava/util/List;

    .line 281
    iput p2, p0, Lio/bidmachine/media3/extractor/HevcConfig;->nalUnitLengthFieldLength:I

    .line 282
    iput p3, p0, Lio/bidmachine/media3/extractor/HevcConfig;->maxSubLayers:I

    .line 283
    iput p4, p0, Lio/bidmachine/media3/extractor/HevcConfig;->width:I

    .line 284
    iput p5, p0, Lio/bidmachine/media3/extractor/HevcConfig;->height:I

    .line 285
    iput p6, p0, Lio/bidmachine/media3/extractor/HevcConfig;->bitdepthLuma:I

    .line 286
    iput p7, p0, Lio/bidmachine/media3/extractor/HevcConfig;->bitdepthChroma:I

    .line 287
    iput p8, p0, Lio/bidmachine/media3/extractor/HevcConfig;->colorSpace:I

    .line 288
    iput p9, p0, Lio/bidmachine/media3/extractor/HevcConfig;->colorRange:I

    .line 289
    iput p10, p0, Lio/bidmachine/media3/extractor/HevcConfig;->colorTransfer:I

    .line 290
    iput p11, p0, Lio/bidmachine/media3/extractor/HevcConfig;->stereoMode:I

    .line 291
    iput p12, p0, Lio/bidmachine/media3/extractor/HevcConfig;->pixelWidthHeightRatio:F

    .line 292
    iput p13, p0, Lio/bidmachine/media3/extractor/HevcConfig;->maxNumReorderPics:I

    .line 293
    iput-object p14, p0, Lio/bidmachine/media3/extractor/HevcConfig;->codecs:Ljava/lang/String;

    .line 294
    iput-object p15, p0, Lio/bidmachine/media3/extractor/HevcConfig;->vpsData:Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;

    return-void
.end method

.method public static parse(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/HevcConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-static {p0, v0, v1}, Lio/bidmachine/media3/extractor/HevcConfig;->parseImpl(Lio/bidmachine/media3/common/util/ParsableByteArray;ZLio/bidmachine/media3/container/NalUnitUtil$H265VpsData;)Lio/bidmachine/media3/extractor/HevcConfig;

    move-result-object p0

    return-object p0
.end method

.method public static parseImpl(Lio/bidmachine/media3/common/util/ParsableByteArray;ZLio/bidmachine/media3/container/NalUnitUtil$H265VpsData;)Lio/bidmachine/media3/extractor/HevcConfig;
    .registers 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x4

    if-eqz p1, :cond_c

    .line 75
    :try_start_5
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_11

    :catch_9
    move-exception v0

    goto/16 :goto_159

    :cond_c
    const/16 v2, 0x15

    .line 77
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 79
    :goto_11
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    .line 82
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 84
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_22
    const/4 v8, 0x1

    if-ge v6, v3, :cond_3f

    .line 86
    invoke-virtual {v0, v8}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 87
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    move v9, v5

    :goto_2d
    if-ge v9, v8, :cond_3c

    .line 89
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    add-int/lit8 v11, v10, 0x4

    add-int/2addr v7, v11

    .line 91
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2d

    :cond_3c
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 96
    :cond_3f
    invoke-virtual {v0, v4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 97
    new-array v4, v7, [B

    const/4 v6, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object/from16 v26, p2

    move v14, v6

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v22, v21

    move/from16 v24, v22

    move/from16 v23, v9

    move-object/from16 v25, v10

    move v6, v5

    move v9, v6

    :goto_62
    if-ge v6, v3, :cond_142

    .line 114
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    and-int/lit8 v10, v10, 0x3f

    .line 115
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v11

    move v13, v5

    move-object/from16 v12, v26

    :goto_71
    if-ge v13, v11, :cond_135

    .line 117
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    move/from16 v27, v8

    .line 118
    sget-object v8, Lio/bidmachine/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    move/from16 v28, v2

    array-length v2, v8

    invoke-static {v8, v5, v4, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    array-length v2, v8

    add-int/2addr v9, v2

    .line 126
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v8

    .line 125
    invoke-static {v2, v8, v4, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x20

    if-ne v10, v2, :cond_9e

    if-nez v13, :cond_9e

    add-int v2, v9, v1

    .line 129
    invoke-static {v4, v9, v2}, Lio/bidmachine/media3/container/NalUnitUtil;->parseH265VpsNalUnit([BII)Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;

    move-result-object v12

    move/from16 v29, v3

    goto/16 :goto_126

    :cond_9e
    const/16 v2, 0x21

    if-ne v10, v2, :cond_ff

    if-nez v13, :cond_ff

    add-int v2, v9, v1

    .line 133
    invoke-static {v4, v9, v2, v12}, Lio/bidmachine/media3/container/NalUnitUtil;->parseH265SpsNalUnit([BIILio/bidmachine/media3/container/NalUnitUtil$H265VpsData;)Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;

    move-result-object v2

    .line 135
    iget v8, v2, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->maxSubLayersMinus1:I

    add-int/lit8 v14, v8, 0x1

    .line 136
    iget v15, v2, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->width:I

    .line 137
    iget v8, v2, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->height:I

    .line 138
    iget v5, v2, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->bitDepthLumaMinus8:I

    add-int/lit8 v17, v5, 0x8

    .line 139
    iget v5, v2, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->bitDepthChromaMinus8:I

    add-int/lit8 v18, v5, 0x8

    .line 140
    iget v5, v2, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->colorSpace:I

    move/from16 v29, v3

    .line 141
    iget v3, v2, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->colorRange:I

    move/from16 v16, v3

    .line 142
    iget v3, v2, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->colorTransfer:I

    move/from16 v19, v3

    .line 143
    iget v3, v2, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->pixelWidthHeightRatio:F

    move/from16 v20, v3

    .line 144
    iget v3, v2, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->maxNumReorderPics:I

    .line 146
    iget-object v2, v2, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->profileTierLevel:Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;

    if-eqz v2, :cond_ef

    move/from16 v21, v3

    .line 147
    iget v3, v2, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileSpace:I

    move/from16 v30, v3

    iget-boolean v3, v2, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalTierFlag:Z

    move/from16 v31, v3

    iget v3, v2, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileIdc:I

    move/from16 v32, v3

    iget v3, v2, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileCompatibilityFlags:I

    move/from16 v33, v3

    iget-object v3, v2, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;->constraintBytes:[I

    iget v2, v2, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalLevelIdc:I

    move/from16 v35, v2

    move-object/from16 v34, v3

    .line 148
    invoke-static/range {v30 .. v35}, Lio/bidmachine/media3/common/util/CodecSpecificDataUtil;->buildHevcCodecString(IZII[II)Ljava/lang/String;

    move-result-object v25

    goto :goto_f1

    :cond_ef
    move/from16 v21, v3

    :goto_f1
    move/from16 v23, v20

    move/from16 v24, v21

    move/from16 v20, v16

    move/from16 v21, v19

    move/from16 v19, v5

    move/from16 v16, v8

    :cond_fd
    const/4 v5, 0x0

    goto :goto_126

    :cond_ff
    move/from16 v29, v3

    const/16 v2, 0x27

    if-ne v10, v2, :cond_fd

    if-nez v13, :cond_fd

    add-int v2, v9, v1

    .line 158
    invoke-static {v4, v9, v2}, Lio/bidmachine/media3/container/NalUnitUtil;->parseH265Sei3dRefDisplayInfo([BII)Lio/bidmachine/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;

    move-result-object v2

    if-eqz v2, :cond_fd

    if-eqz v12, :cond_fd

    .line 162
    iget v2, v2, Lio/bidmachine/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;->leftViewId:I

    iget-object v3, v12, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;->layerInfos:Lcom/google/common/collect/ImmutableList;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/container/NalUnitUtil$H265LayerInfo;

    iget v3, v3, Lio/bidmachine/media3/container/NalUnitUtil$H265LayerInfo;->viewId:I

    if-ne v2, v3, :cond_123

    const/16 v22, 0x4

    goto :goto_126

    :cond_123
    const/4 v2, 0x5

    move/from16 v22, v2

    :goto_126
    add-int/2addr v9, v1

    .line 168
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v13, v13, 0x1

    move/from16 v8, v27

    move/from16 v2, v28

    move/from16 v3, v29

    const/4 v1, 0x4

    goto/16 :goto_71

    :cond_135
    move/from16 v28, v2

    move/from16 v29, v3

    move/from16 v27, v8

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v26, v12

    const/4 v1, 0x4

    goto/16 :goto_62

    :cond_142
    move/from16 v28, v2

    move/from16 v27, v8

    if-nez v7, :cond_14c

    .line 173
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_14a
    move-object v12, v0

    goto :goto_151

    :cond_14c
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_14a

    .line 174
    :goto_151
    new-instance v11, Lio/bidmachine/media3/extractor/HevcConfig;

    add-int/lit8 v13, v28, 0x1

    invoke-direct/range {v11 .. v26}, Lio/bidmachine/media3/extractor/HevcConfig;-><init>(Ljava/util/List;IIIIIIIIIIFILjava/lang/String;Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;)V
    :try_end_158
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_158} :catch_9

    return-object v11

    .line 191
    :goto_159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_168

    .line 192
    const-string v2, "L-HEVC config"

    goto :goto_16a

    :cond_168
    const-string v2, "HEVC config"

    :goto_16a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-static {v1, v0}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method public static parseLayered(Lio/bidmachine/media3/common/util/ParsableByteArray;Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;)Lio/bidmachine/media3/extractor/HevcConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 56
    invoke-static {p0, v0, p1}, Lio/bidmachine/media3/extractor/HevcConfig;->parseImpl(Lio/bidmachine/media3/common/util/ParsableByteArray;ZLio/bidmachine/media3/container/NalUnitUtil$H265VpsData;)Lio/bidmachine/media3/extractor/HevcConfig;

    move-result-object p0

    return-object p0
.end method
