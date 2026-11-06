###### Class io.bidmachine.media3.extractor.VorbisUtil (io.bidmachine.media3.extractor.VorbisUtil)
.class public final Lio/bidmachine/media3/extractor/VorbisUtil;
.super Ljava/lang/Object;
.source "VorbisUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;,
        Lio/bidmachine/media3/extractor/VorbisUtil$CommentHeader;,
        Lio/bidmachine/media3/extractor/VorbisUtil$Mode;
    }
.end annotation


# direct methods
.method public static getVorbisToAndroidChannelLayoutMapping(I)[I
    .registers 10

    const/16 v0, 0x8

    const/4 v1, 0x7

    const/4 v2, 0x4

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq p0, v5, :cond_2d

    if-eq p0, v4, :cond_28

    if-eq p0, v3, :cond_22

    if-eq p0, v1, :cond_1c

    if-eq p0, v0, :cond_16

    const/4 p0, 0x0

    return-object p0

    .line 164
    :cond_16
    new-array p0, v0, [I

    fill-array-data p0, :array_32

    return-object p0

    .line 162
    :cond_1c
    new-array p0, v1, [I

    fill-array-data p0, :array_46

    return-object p0

    .line 160
    :cond_22
    new-array p0, v3, [I

    fill-array-data p0, :array_58

    return-object p0

    .line 158
    :cond_28
    filled-new-array {v6, v7, v8, v5, v2}, [I

    move-result-object p0

    return-object p0

    .line 156
    :cond_2d
    filled-new-array {v6, v7, v8}, [I

    move-result-object p0

    return-object p0

    :array_32
    .array-data 4
        0x0
        0x2
        0x1
        0x7
        0x5
        0x6
        0x3
        0x4
    .end array-data

    :array_46
    .array-data 4
        0x0
        0x2
        0x1
        0x6
        0x5
        0x3
        0x4
    .end array-data

    :array_58
    .array-data 4
        0x0
        0x2
        0x1
        0x5
        0x3
        0x4
    .end array-data
.end method

.method public static iLog(I)I
    .registers 2

    .line 0
    const/4 v0, 0x0

    :goto_1
    if-lez p0, :cond_8

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_8
    return v0
.end method

.method public static mapType1QuantValues(JJ)J
    .registers 6

    long-to-double p0, p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    long-to-double p2, p2

    div-double/2addr v0, p2

    .line 681
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-long p0, p0

    return-wide p0
.end method

.method public static parseVorbisComments(Ljava/util/List;)Lio/bidmachine/media3/common/Metadata;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/media3/common/Metadata;"
        }
    .end annotation

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 363
    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_68

    .line 364
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 365
    const-string v4, "="

    invoke-static {v3, v4}, Lio/bidmachine/media3/common/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 366
    array-length v5, v4

    const/4 v6, 0x2

    const-string v7, "VorbisUtil"

    if-eq v5, v6, :cond_34

    .line 367
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse Vorbis comment: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_65

    .line 371
    :cond_34
    aget-object v3, v4, v1

    const-string v5, "METADATA_BLOCK_PICTURE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_59

    .line 376
    :try_start_3f
    aget-object v3, v4, v5

    invoke-static {v3, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 377
    new-instance v4, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {v4, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-static {v4}, Lio/bidmachine/media3/extractor/metadata/flac/PictureFrame;->fromPictureBlock(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/metadata/flac/PictureFrame;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catch Ljava/lang/RuntimeException; {:try_start_3f .. :try_end_51} :catch_52

    goto :goto_65

    :catch_52
    move-exception v3

    .line 379
    const-string v4, "Failed to parse vorbis picture"

    invoke-static {v7, v4, v3}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_65

    .line 382
    :cond_59
    new-instance v3, Lio/bidmachine/media3/extractor/metadata/vorbis/VorbisComment;

    aget-object v6, v4, v1

    aget-object v4, v4, v5

    invoke-direct {v3, v6, v4}, Lio/bidmachine/media3/extractor/metadata/vorbis/VorbisComment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 387
    :cond_68
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_70

    const/4 p0, 0x0

    goto :goto_75

    :cond_70
    new-instance p0, Lio/bidmachine/media3/common/Metadata;

    invoke-direct {p0, v0}, Lio/bidmachine/media3/common/Metadata;-><init>(Ljava/util/List;)V

    :goto_75
    return-object p0
.end method

.method public static parseVorbisCsdFromEsdsInitializationData([B)Lcom/google/common/collect/ImmutableList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/google/common/collect/ImmutableList<",
            "[B>;"
        }
    .end annotation

    .line 196
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {v0, p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([B)V

    const/4 v1, 0x1

    .line 197
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const/4 v2, 0x0

    move v3, v2

    .line 200
    :goto_b
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    const/16 v5, 0xff

    if-lez v4, :cond_1f

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->peekUnsignedByte()I

    move-result v4

    if-ne v4, v5, :cond_1f

    add-int/lit16 v3, v3, 0xff

    .line 202
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_b

    .line 204
    :cond_1f
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    add-int/2addr v3, v4

    move v4, v2

    .line 207
    :goto_25
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v6

    if-lez v6, :cond_37

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->peekUnsignedByte()I

    move-result v6

    if-ne v6, v5, :cond_37

    add-int/lit16 v4, v4, 0xff

    .line 209
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_25

    .line 211
    :cond_37
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    add-int/2addr v4, v1

    .line 214
    new-array v1, v3, [B

    .line 215
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 216
    invoke-static {p0, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v3

    add-int/2addr v0, v4

    .line 227
    array-length v3, p0

    sub-int/2addr v3, v0

    .line 228
    new-array v4, v3, [B

    .line 229
    invoke-static {p0, v0, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    invoke-static {v1, v4}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static readFloors(Lio/bidmachine/media3/extractor/VorbisBitArray;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 570
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_9
    if-ge v4, v1, :cond_aa

    const/16 v5, 0x10

    .line 572
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    const/4 v7, 0x4

    const/16 v8, 0x8

    if-eqz v6, :cond_89

    if-ne v6, v2, :cond_72

    const/4 v5, 0x5

    .line 586
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    .line 588
    new-array v6, v5, [I

    const/4 v9, -0x1

    move v10, v3

    :goto_21
    if-ge v10, v5, :cond_2f

    .line 590
    invoke-virtual {p0, v7}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v11

    aput v11, v6, v10

    if-le v11, v9, :cond_2c

    move v9, v11

    :cond_2c
    add-int/lit8 v10, v10, 0x1

    goto :goto_21

    :cond_2f
    add-int/lit8 v9, v9, 0x1

    .line 595
    new-array v10, v9, [I

    move v11, v3

    :goto_34
    const/4 v12, 0x2

    if-ge v11, v9, :cond_56

    const/4 v13, 0x3

    .line 597
    invoke-virtual {p0, v13}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v13

    add-int/2addr v13, v2

    aput v13, v10, v11

    .line 598
    invoke-virtual {p0, v12}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v12

    if-lez v12, :cond_48

    .line 600
    invoke-virtual {p0, v8}, Lio/bidmachine/media3/extractor/VorbisBitArray;->skipBits(I)V

    :cond_48
    move v13, v3

    :goto_49
    shl-int v14, v2, v12

    if-ge v13, v14, :cond_53

    .line 603
    invoke-virtual {p0, v8}, Lio/bidmachine/media3/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_49

    :cond_53
    add-int/lit8 v11, v11, 0x1

    goto :goto_34

    .line 606
    :cond_56
    invoke-virtual {p0, v12}, Lio/bidmachine/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 607
    invoke-virtual {p0, v7}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v7

    move v8, v3

    move v9, v8

    move v11, v9

    :goto_60
    if-ge v8, v5, :cond_a6

    .line 610
    aget v12, v6, v8

    .line 611
    aget v12, v10, v12

    add-int/2addr v9, v12

    :goto_67
    if-ge v11, v9, :cond_6f

    .line 613
    invoke-virtual {p0, v7}, Lio/bidmachine/media3/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_67

    :cond_6f
    add-int/lit8 v8, v8, 0x1

    goto :goto_60

    .line 618
    :cond_72
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "floor type greater than 1 not decodable: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p0

    throw p0

    .line 575
    :cond_89
    invoke-virtual {p0, v8}, Lio/bidmachine/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 576
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 577
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 578
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 579
    invoke-virtual {p0, v8}, Lio/bidmachine/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 580
    invoke-virtual {p0, v7}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    add-int/2addr v5, v2

    move v6, v3

    :goto_9e
    if-ge v6, v5, :cond_a6

    .line 582
    invoke-virtual {p0, v8}, Lio/bidmachine/media3/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_9e

    :cond_a6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9

    :cond_aa
    return-void
.end method

.method public static readMappings(ILio/bidmachine/media3/extractor/VorbisBitArray;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 496
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v0, :cond_87

    const/16 v4, 0x10

    .line 498
    invoke-virtual {p1, v4}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    if-eqz v4, :cond_2a

    .line 500
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mapping type other than 0 not supported: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VorbisUtil"

    invoke-static {v5, v4}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7c

    .line 504
    :cond_2a
    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_37

    .line 505
    invoke-virtual {p1, v5}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    add-int/2addr v4, v1

    goto :goto_38

    :cond_37
    move v4, v1

    .line 510
    :goto_38
    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v6

    const/16 v7, 0x8

    if-eqz v6, :cond_5b

    .line 511
    invoke-virtual {p1, v7}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    add-int/2addr v6, v1

    move v8, v2

    :goto_46
    if-ge v8, v6, :cond_5b

    add-int/lit8 v9, p0, -0x1

    .line 513
    invoke-static {v9}, Lio/bidmachine/media3/extractor/VorbisUtil;->iLog(I)I

    move-result v10

    invoke-virtual {p1, v10}, Lio/bidmachine/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 514
    invoke-static {v9}, Lio/bidmachine/media3/extractor/VorbisUtil;->iLog(I)I

    move-result v9

    invoke-virtual {p1, v9}, Lio/bidmachine/media3/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_46

    :cond_5b
    const/4 v6, 0x2

    .line 519
    invoke-virtual {p1, v6}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    if-nez v6, :cond_7f

    if-le v4, v1, :cond_6d

    move v6, v2

    :goto_65
    if-ge v6, p0, :cond_6d

    .line 525
    invoke-virtual {p1, v5}, Lio/bidmachine/media3/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_65

    :cond_6d
    move v5, v2

    :goto_6e
    if-ge v5, v4, :cond_7c

    .line 529
    invoke-virtual {p1, v7}, Lio/bidmachine/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 530
    invoke-virtual {p1, v7}, Lio/bidmachine/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 531
    invoke-virtual {p1, v7}, Lio/bidmachine/media3/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6e

    :cond_7c
    :goto_7c
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 520
    :cond_7f
    const-string p0, "to reserved bits must be zero after mapping coupling steps"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_87
    return-void
.end method

.method public static readModes(Lio/bidmachine/media3/extractor/VorbisBitArray;)[Lio/bidmachine/media3/extractor/VorbisUtil$Mode;
    .registers 9

    const/4 v0, 0x6

    .line 483
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 484
    new-array v1, v0, [Lio/bidmachine/media3/extractor/VorbisUtil$Mode;

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_2a

    .line 486
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v3

    const/16 v4, 0x10

    .line 487
    invoke-virtual {p0, v4}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    .line 488
    invoke-virtual {p0, v4}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    const/16 v6, 0x8

    .line 489
    invoke-virtual {p0, v6}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    .line 490
    new-instance v7, Lio/bidmachine/media3/extractor/VorbisUtil$Mode;

    invoke-direct {v7, v3, v5, v4, v6}, Lio/bidmachine/media3/extractor/VorbisUtil$Mode;-><init>(ZIII)V

    aput-object v7, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_2a
    return-object v1
.end method

.method public static readResidues(Lio/bidmachine/media3/extractor/VorbisBitArray;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 537
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_9
    if-ge v4, v1, :cond_68

    const/16 v5, 0x10

    .line 539
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_60

    const/16 v5, 0x18

    .line 544
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 545
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 546
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 547
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    add-int/2addr v5, v2

    const/16 v6, 0x8

    .line 548
    invoke-virtual {p0, v6}, Lio/bidmachine/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 549
    new-array v7, v5, [I

    move v8, v3

    :goto_2c
    if-ge v8, v5, :cond_47

    const/4 v9, 0x3

    .line 552
    invoke-virtual {p0, v9}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v9

    .line 553
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_3f

    const/4 v10, 0x5

    .line 554
    invoke-virtual {p0, v10}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v10

    goto :goto_40

    :cond_3f
    move v10, v3

    :goto_40
    mul-int/2addr v10, v6

    add-int/2addr v10, v9

    .line 556
    aput v10, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2c

    :cond_47
    move v8, v3

    :goto_48
    if-ge v8, v5, :cond_5d

    move v9, v3

    :goto_4b
    if-ge v9, v6, :cond_5a

    .line 560
    aget v10, v7, v8

    shl-int v11, v2, v9

    and-int/2addr v10, v11

    if-eqz v10, :cond_57

    .line 561
    invoke-virtual {p0, v6}, Lio/bidmachine/media3/extractor/VorbisBitArray;->skipBits(I)V

    :cond_57
    add-int/lit8 v9, v9, 0x1

    goto :goto_4b

    :cond_5a
    add-int/lit8 v8, v8, 0x1

    goto :goto_48

    :cond_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 541
    :cond_60
    const-string p0, "residueType greater than 2 is not decodable"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_68
    return-void
.end method

.method public static readVorbisCommentHeader(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/VorbisUtil$CommentHeader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 301
    invoke-static {p0, v0, v0}, Lio/bidmachine/media3/extractor/VorbisUtil;->readVorbisCommentHeader(Lio/bidmachine/media3/common/util/ParsableByteArray;ZZ)Lio/bidmachine/media3/extractor/VorbisUtil$CommentHeader;

    move-result-object p0

    return-object p0
.end method

.method public static readVorbisCommentHeader(Lio/bidmachine/media3/common/util/ParsableByteArray;ZZ)Lio/bidmachine/media3/extractor/VorbisUtil$CommentHeader;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    const/4 p1, 0x3

    .line 325
    invoke-static {p1, p0, v0}, Lio/bidmachine/media3/extractor/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILio/bidmachine/media3/common/util/ParsableByteArray;Z)Z

    .line 329
    :cond_7
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v1

    long-to-int p1, v1

    .line 331
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object p1

    .line 332
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 334
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v2

    long-to-int v4, v2

    .line 335
    new-array v4, v4, [Ljava/lang/String;

    add-int/lit8 v1, v1, 0xf

    :goto_1d
    int-to-long v5, v0

    cmp-long v5, v5, v2

    if-gez v5, :cond_37

    .line 338
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v5

    long-to-int v5, v5

    add-int/lit8 v1, v1, 0x4

    .line 340
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 341
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_37
    if-eqz p2, :cond_4a

    .line 343
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_42

    goto :goto_4a

    .line 344
    :cond_42
    const-string p0, "framing bit expected to be set"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_4a
    :goto_4a
    add-int/lit8 v1, v1, 0x1

    .line 348
    new-instance p0, Lio/bidmachine/media3/extractor/VorbisUtil$CommentHeader;

    invoke-direct {p0, p1, v4, v1}, Lio/bidmachine/media3/extractor/VorbisUtil$CommentHeader;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    return-object p0
.end method

.method public static readVorbisIdentificationHeader(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 251
    invoke-static {v0, p0, v1}, Lio/bidmachine/media3/extractor/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILio/bidmachine/media3/common/util/ParsableByteArray;Z)Z

    .line 253
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v3

    .line 254
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 255
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v5

    .line 256
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v2

    const/4 v6, -0x1

    if-gtz v2, :cond_19

    move v2, v6

    .line 260
    :cond_19
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v7

    if-gtz v7, :cond_20

    move v7, v6

    .line 264
    :cond_20
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v8

    if-gtz v8, :cond_27

    move v8, v6

    .line 268
    :cond_27
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    and-int/lit8 v9, v6, 0xf

    int-to-double v9, v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 269
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-int v9, v9

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v6, v6, 0x4

    int-to-double v13, v6

    .line 270
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-int v10, v10

    .line 272
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    and-int/2addr v6, v0

    if-lez v6, :cond_48

    move v11, v0

    goto :goto_49

    :cond_48
    move v11, v1

    .line 274
    :goto_49
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result p0

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v12

    move v6, v2

    .line 276
    new-instance v2, Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;

    invoke-direct/range {v2 .. v12}, Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;-><init>(IIIIIIIIZ[B)V

    return-object v2
.end method

.method public static readVorbisModes(Lio/bidmachine/media3/common/util/ParsableByteArray;I)[Lio/bidmachine/media3/extractor/VorbisUtil$Mode;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 452
    invoke-static {v0, p0, v1}, Lio/bidmachine/media3/extractor/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILio/bidmachine/media3/common/util/ParsableByteArray;Z)Z

    .line 454
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 456
    new-instance v2, Lio/bidmachine/media3/extractor/VorbisBitArray;

    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lio/bidmachine/media3/extractor/VorbisBitArray;-><init>([B)V

    .line 457
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {v2, p0}, Lio/bidmachine/media3/extractor/VorbisBitArray;->skipBits(I)V

    move p0, v1

    :goto_1e
    if-ge p0, v0, :cond_26

    .line 460
    invoke-static {v2}, Lio/bidmachine/media3/extractor/VorbisUtil;->skipBook(Lio/bidmachine/media3/extractor/VorbisBitArray;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1e

    :cond_26
    const/4 p0, 0x6

    .line 463
    invoke-virtual {v2, p0}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    :goto_2d
    const/4 v0, 0x0

    if-ge v1, p0, :cond_42

    const/16 v3, 0x10

    .line 465
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v3

    if-nez v3, :cond_3b

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 466
    :cond_3b
    const-string p0, "placeholder of time domain transforms not zeroed out"

    invoke-static {p0, v0}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p0

    throw p0

    .line 470
    :cond_42
    invoke-static {v2}, Lio/bidmachine/media3/extractor/VorbisUtil;->readFloors(Lio/bidmachine/media3/extractor/VorbisBitArray;)V

    .line 471
    invoke-static {v2}, Lio/bidmachine/media3/extractor/VorbisUtil;->readResidues(Lio/bidmachine/media3/extractor/VorbisBitArray;)V

    .line 472
    invoke-static {p1, v2}, Lio/bidmachine/media3/extractor/VorbisUtil;->readMappings(ILio/bidmachine/media3/extractor/VorbisBitArray;)V

    .line 474
    invoke-static {v2}, Lio/bidmachine/media3/extractor/VorbisUtil;->readModes(Lio/bidmachine/media3/extractor/VorbisBitArray;)[Lio/bidmachine/media3/extractor/VorbisUtil$Mode;

    move-result-object p0

    .line 475
    invoke-virtual {v2}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_56

    return-object p0

    .line 476
    :cond_56
    const-string p0, "framing bit after modes not set as expected"

    invoke-static {p0, v0}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static skipBook(Lio/bidmachine/media3/extractor/VorbisBitArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    const/16 v0, 0x18

    .line 625
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v1

    const v2, 0x564342

    const/4 v3, 0x0

    if-ne v1, v2, :cond_94

    const/16 v1, 0x10

    .line 630
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v1

    .line 631
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v0

    .line 633
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x5

    if-nez v2, :cond_36

    .line 635
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v2

    :goto_22
    if-ge v4, v0, :cond_47

    if-eqz v2, :cond_30

    .line 638
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_33

    .line 639
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/extractor/VorbisBitArray;->skipBits(I)V

    goto :goto_33

    .line 642
    :cond_30
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/extractor/VorbisBitArray;->skipBits(I)V

    :cond_33
    :goto_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 646
    :cond_36
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/extractor/VorbisBitArray;->skipBits(I)V

    :goto_39
    if-ge v4, v0, :cond_47

    sub-int v2, v0, v4

    .line 648
    invoke-static {v2}, Lio/bidmachine/media3/extractor/VorbisUtil;->iLog(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v2

    add-int/2addr v4, v2

    goto :goto_39

    :cond_47
    const/4 v2, 0x4

    .line 652
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    const/4 v5, 0x2

    if-gt v4, v5, :cond_7e

    const/4 v3, 0x1

    if-eq v4, v3, :cond_56

    if-ne v4, v5, :cond_55

    goto :goto_56

    :cond_55
    return-void

    :cond_56
    :goto_56
    const/16 v5, 0x20

    .line 657
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 658
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/extractor/VorbisBitArray;->skipBits(I)V

    .line 659
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v2

    add-int/2addr v2, v3

    .line 660
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/extractor/VorbisBitArray;->skipBits(I)V

    if-ne v4, v3, :cond_74

    if-eqz v1, :cond_71

    int-to-long v3, v0

    int-to-long v0, v1

    .line 664
    invoke-static {v3, v4, v0, v1}, Lio/bidmachine/media3/extractor/VorbisUtil;->mapType1QuantValues(JJ)J

    move-result-wide v0

    goto :goto_77

    :cond_71
    const-wide/16 v0, 0x0

    goto :goto_77

    :cond_74
    int-to-long v3, v0

    int-to-long v0, v1

    mul-long/2addr v0, v3

    :goto_77
    int-to-long v2, v2

    mul-long/2addr v0, v2

    long-to-int v0, v0

    .line 672
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/VorbisBitArray;->skipBits(I)V

    return-void

    .line 654
    :cond_7e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "lookup type greater than 2 not decodable: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p0

    throw p0

    .line 626
    :cond_94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected code book to start with [0x56, 0x43, 0x42] at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/VorbisBitArray;->getPosition()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 626
    invoke-static {p0, v3}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static verifyVorbisHeaderCapturePattern(ILio/bidmachine/media3/common/util/ParsableByteArray;Z)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 402
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ge v0, v1, :cond_26

    if-eqz p2, :cond_c

    return v3

    .line 406
    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "too short header: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 406
    invoke-static {p0, v2}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p0

    throw p0

    .line 411
    :cond_26
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-eq v0, p0, :cond_49

    if-eqz p2, :cond_2f

    return v3

    .line 415
    :cond_2f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "expected header type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 415
    invoke-static {p0, v2}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p0

    throw p0

    .line 420
    :cond_49
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x76

    if-ne p0, v0, :cond_7c

    .line 421
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x6f

    if-ne p0, v0, :cond_7c

    .line 422
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x72

    if-ne p0, v0, :cond_7c

    .line 423
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x62

    if-ne p0, v0, :cond_7c

    .line 424
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x69

    if-ne p0, v0, :cond_7c

    .line 425
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 p1, 0x73

    if-eq p0, p1, :cond_7a

    goto :goto_7c

    :cond_7a
    const/4 p0, 0x1

    return p0

    :cond_7c
    :goto_7c
    if-eqz p2, :cond_7f

    return v3

    .line 429
    :cond_7f
    const-string p0, "expected characters \'vorbis\'"

    invoke-static {p0, v2}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

###### Class io.bidmachine.media3.extractor.VorbisUtil.CommentHeader (io.bidmachine.media3.extractor.VorbisUtil$CommentHeader)
.class public final Lio/bidmachine/media3/extractor/VorbisUtil$CommentHeader;
.super Ljava/lang/Object;
.source "VorbisUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/VorbisUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommentHeader"
.end annotation


# instance fields
.field public final comments:[Ljava/lang/String;

.field public final length:I

.field public final vendor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;I)V
    .registers 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lio/bidmachine/media3/extractor/VorbisUtil$CommentHeader;->vendor:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lio/bidmachine/media3/extractor/VorbisUtil$CommentHeader;->comments:[Ljava/lang/String;

    .line 49
    iput p3, p0, Lio/bidmachine/media3/extractor/VorbisUtil$CommentHeader;->length:I

    return-void
.end method

###### Class io.bidmachine.media3.extractor.VorbisUtil.Mode (io.bidmachine.media3.extractor.VorbisUtil$Mode)
.class public final Lio/bidmachine/media3/extractor/VorbisUtil$Mode;
.super Ljava/lang/Object;
.source "VorbisUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/VorbisUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mode"
.end annotation


# instance fields
.field public final blockFlag:Z

.field public final mapping:I

.field public final transformType:I

.field public final windowType:I


# direct methods
.method public constructor <init>(ZIII)V
    .registers 5

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/VorbisUtil$Mode;->blockFlag:Z

    .line 137
    iput p2, p0, Lio/bidmachine/media3/extractor/VorbisUtil$Mode;->windowType:I

    .line 138
    iput p3, p0, Lio/bidmachine/media3/extractor/VorbisUtil$Mode;->transformType:I

    .line 139
    iput p4, p0, Lio/bidmachine/media3/extractor/VorbisUtil$Mode;->mapping:I

    return-void
.end method

###### Class io.bidmachine.media3.extractor.VorbisUtil.VorbisIdHeader (io.bidmachine.media3.extractor.VorbisUtil$VorbisIdHeader)
.class public final Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;
.super Ljava/lang/Object;
.source "VorbisUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/VorbisUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VorbisIdHeader"
.end annotation


# instance fields
.field public final bitrateMaximum:I

.field public final bitrateMinimum:I

.field public final bitrateNominal:I

.field public final blockSize0:I

.field public final blockSize1:I

.field public final channels:I

.field public final data:[B

.field public final framingFlag:Z

.field public final sampleRate:I

.field public final version:I


# direct methods
.method public constructor <init>(IIIIIIIIZ[B)V
    .registers 11

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput p1, p0, Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;->version:I

    .line 115
    iput p2, p0, Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;->channels:I

    .line 116
    iput p3, p0, Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;->sampleRate:I

    .line 117
    iput p4, p0, Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;->bitrateMaximum:I

    .line 118
    iput p5, p0, Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;->bitrateNominal:I

    .line 119
    iput p6, p0, Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;->bitrateMinimum:I

    .line 120
    iput p7, p0, Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;->blockSize0:I

    .line 121
    iput p8, p0, Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;->blockSize1:I

    .line 122
    iput-boolean p9, p0, Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;->framingFlag:Z

    .line 123
    iput-object p10, p0, Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;->data:[B

    return-void
.end method
