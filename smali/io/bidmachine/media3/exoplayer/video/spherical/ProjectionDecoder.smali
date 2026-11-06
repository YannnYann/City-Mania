###### Class io.bidmachine.media3.exoplayer.video.spherical.ProjectionDecoder (io.bidmachine.media3.exoplayer.video.spherical.ProjectionDecoder)
.class public final Lio/bidmachine/media3/exoplayer/video/spherical/ProjectionDecoder;
.super Ljava/lang/Object;
.source "ProjectionDecoder.java"


# direct methods
.method public static decode([BI)Lio/bidmachine/media3/exoplayer/video/spherical/Projection;
    .registers 7

    .line 63
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {v0, p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([B)V

    const/4 p0, 0x0

    .line 68
    :try_start_6
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/spherical/ProjectionDecoder;->isProj(Lio/bidmachine/media3/common/util/ParsableByteArray;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/spherical/ProjectionDecoder;->parseProj(Lio/bidmachine/media3/common/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_17

    :cond_11
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/spherical/ProjectionDecoder;->parseMshp(Lio/bidmachine/media3/common/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-object v0, p0

    :goto_17
    if-nez v0, :cond_1a

    return-object p0

    .line 75
    :cond_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_38

    const/4 v4, 0x2

    if-eq v1, v4, :cond_26

    return-object p0

    .line 79
    :cond_26
    new-instance p0, Lio/bidmachine/media3/exoplayer/video/spherical/Projection;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/video/spherical/Projection$Mesh;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/video/spherical/Projection$Mesh;

    invoke-direct {p0, v1, v0, p1}, Lio/bidmachine/media3/exoplayer/video/spherical/Projection;-><init>(Lio/bidmachine/media3/exoplayer/video/spherical/Projection$Mesh;Lio/bidmachine/media3/exoplayer/video/spherical/Projection$Mesh;I)V

    return-object p0

    .line 77
    :cond_38
    new-instance p0, Lio/bidmachine/media3/exoplayer/video/spherical/Projection;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/video/spherical/Projection$Mesh;

    invoke-direct {p0, v0, p1}, Lio/bidmachine/media3/exoplayer/video/spherical/Projection;-><init>(Lio/bidmachine/media3/exoplayer/video/spherical/Projection$Mesh;I)V

    return-object p0
.end method

.method public static decodeZigZag(I)I
    .registers 2

    .line 0
    shr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static isProj(Lio/bidmachine/media3/common/util/ParsableByteArray;)Z
    .registers 3

    const/4 v0, 0x4

    .line 89
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 90
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    const/4 v1, 0x0

    .line 91
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    const p0, 0x70726f6a

    if-ne v0, p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    return v1
.end method

.method public static parseMesh(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/exoplayer/video/spherical/Projection$Mesh;
    .registers 24

    .line 170
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    const/16 v1, 0x2710

    const/4 v2, 0x0

    if-le v0, v1, :cond_a

    return-object v2

    .line 174
    :cond_a
    new-array v1, v0, [F

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v0, :cond_18

    .line 176
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readFloat()F

    move-result v5

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 179
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    const/16 v5, 0x7d00

    if-le v4, v5, :cond_21

    return-object v2

    :cond_21
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 184
    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    int-to-double v9, v0

    mul-double/2addr v9, v5

    .line 185
    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    div-double/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 187
    new-instance v10, Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v11

    invoke-direct {v10, v11}, Lio/bidmachine/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 188
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v11

    const/16 v12, 0x8

    mul-int/2addr v11, v12

    invoke-virtual {v10, v11}, Lio/bidmachine/media3/common/util/ParsableBitArray;->setPosition(I)V

    mul-int/lit8 v11, v4, 0x5

    .line 189
    new-array v11, v11, [F

    const/4 v13, 0x5

    .line 190
    new-array v14, v13, [I

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_50
    if-ge v15, v4, :cond_7b

    move-object/from16 v17, v2

    const/4 v2, 0x0

    :goto_55
    if-ge v2, v13, :cond_76

    .line 194
    aget v18, v14, v2

    .line 195
    invoke-virtual {v10, v9}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Lio/bidmachine/media3/exoplayer/video/spherical/ProjectionDecoder;->decodeZigZag(I)I

    move-result v19

    add-int v3, v18, v19

    if-ge v3, v0, :cond_75

    if-gez v3, :cond_68

    goto :goto_75

    :cond_68
    add-int/lit8 v18, v16, 0x1

    .line 199
    aget v19, v1, v3

    aput v19, v11, v16

    .line 200
    aput v3, v14, v2

    add-int/lit8 v2, v2, 0x1

    move/from16 v16, v18

    goto :goto_55

    :cond_75
    :goto_75
    return-object v17

    :cond_76
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v17

    goto :goto_50

    :cond_7b
    move-object/from16 v17, v2

    .line 205
    invoke-virtual {v10}, Lio/bidmachine/media3/common/util/ParsableBitArray;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    and-int/lit8 v0, v0, -0x8

    invoke-virtual {v10, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->setPosition(I)V

    const/16 v0, 0x20

    .line 207
    invoke-virtual {v10, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 208
    new-array v2, v1, [Lio/bidmachine/media3/exoplayer/video/spherical/Projection$SubMesh;

    const/4 v3, 0x0

    :goto_91
    if-ge v3, v1, :cond_10f

    .line 210
    invoke-virtual {v10, v12}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 211
    invoke-virtual {v10, v12}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 212
    invoke-virtual {v10, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v14

    const v15, 0x1f400

    if-le v14, v15, :cond_a5

    return-object v17

    :cond_a5
    move v15, v1

    int-to-double v0, v4

    mul-double/2addr v0, v5

    .line 216
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit8 v1, v14, 0x3

    .line 218
    new-array v1, v1, [F

    mul-int/lit8 v5, v14, 0x2

    .line 219
    new-array v5, v5, [F

    const/4 v6, 0x0

    const/16 v16, 0x0

    :goto_bd
    if-ge v6, v14, :cond_fe

    .line 221
    invoke-virtual {v10, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Lio/bidmachine/media3/exoplayer/video/spherical/ProjectionDecoder;->decodeZigZag(I)I

    move-result v20

    add-int v12, v16, v20

    if-ltz v12, :cond_fd

    if-lt v12, v4, :cond_ce

    goto :goto_fd

    :cond_ce
    mul-int/lit8 v16, v6, 0x3

    mul-int/lit8 v20, v12, 0x5

    .line 225
    aget v21, v11, v20

    aput v21, v1, v16

    add-int/lit8 v21, v16, 0x1

    add-int/lit8 v22, v20, 0x1

    .line 226
    aget v22, v11, v22

    aput v22, v1, v21

    add-int/lit8 v16, v16, 0x2

    add-int/lit8 v21, v20, 0x2

    .line 227
    aget v21, v11, v21

    aput v21, v1, v16

    mul-int/lit8 v16, v6, 0x2

    add-int/lit8 v21, v20, 0x3

    .line 228
    aget v21, v11, v21

    aput v21, v5, v16

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v20, v20, 0x4

    .line 229
    aget v20, v11, v20

    aput v20, v5, v16

    add-int/lit8 v6, v6, 0x1

    move/from16 v16, v12

    const/16 v12, 0x8

    goto :goto_bd

    :cond_fd
    :goto_fd
    return-object v17

    .line 231
    :cond_fe
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/spherical/Projection$SubMesh;

    invoke-direct {v0, v9, v1, v5, v13}, Lio/bidmachine/media3/exoplayer/video/spherical/Projection$SubMesh;-><init>(I[F[FI)V

    aput-object v0, v2, v3

    add-int/lit8 v3, v3, 0x1

    move v1, v15

    const/16 v0, 0x20

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    const/16 v12, 0x8

    goto :goto_91

    .line 233
    :cond_10f
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/spherical/Projection$Mesh;

    invoke-direct {v0, v2}, Lio/bidmachine/media3/exoplayer/video/spherical/Projection$Mesh;-><init>([Lio/bidmachine/media3/exoplayer/video/spherical/Projection$SubMesh;)V

    return-object v0
.end method

.method public static parseMshp(Lio/bidmachine/media3/common/util/ParsableByteArray;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/util/ParsableByteArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/video/spherical/Projection$Mesh;",
            ">;"
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    const/4 v0, 0x7

    .line 123
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 124
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    const v2, 0x64666c38

    if-ne v0, v2, :cond_34

    .line 126
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    .line 127
    new-instance v2, Ljava/util/zip/Inflater;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 129
    :try_start_20
    invoke-static {p0, v0, v2}, Lio/bidmachine/media3/common/util/Util;->inflate(Lio/bidmachine/media3/common/util/ParsableByteArray;Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/util/zip/Inflater;)Z

    move-result p0
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_2f

    if-nez p0, :cond_2a

    .line 133
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->end()V

    return-object v1

    :cond_2a
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->end()V

    move-object p0, v0

    goto :goto_3a

    :catchall_2f
    move-exception p0

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->end()V

    .line 134
    throw p0

    :cond_34
    const v2, 0x72617720

    if-eq v0, v2, :cond_3a

    return-object v1

    .line 139
    :cond_3a
    :goto_3a
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/video/spherical/ProjectionDecoder;->parseRawMshpData(Lio/bidmachine/media3/common/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static parseProj(Lio/bidmachine/media3/common/util/ParsableByteArray;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/util/ParsableByteArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/video/spherical/Projection$Mesh;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 97
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 98
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 99
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    :goto_d
    const/4 v2, 0x0

    if-ge v0, v1, :cond_36

    .line 101
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    add-int/2addr v3, v0

    if-le v3, v0, :cond_36

    if-le v3, v1, :cond_1a

    goto :goto_36

    .line 105
    :cond_1a
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    const v2, 0x79746d70

    if-eq v0, v2, :cond_2e

    const v2, 0x6d736870

    if-ne v0, v2, :cond_29

    goto :goto_2e

    .line 112
    :cond_29
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    move v0, v3

    goto :goto_d

    .line 108
    :cond_2e
    :goto_2e
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 109
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/video/spherical/ProjectionDecoder;->parseMshp(Lio/bidmachine/media3/common/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_36
    :goto_36
    return-object v2
.end method

.method public static parseRawMshpData(Lio/bidmachine/media3/common/util/ParsableByteArray;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/util/ParsableByteArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/video/spherical/Projection$Mesh;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 147
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v2

    :goto_d
    if-ge v1, v2, :cond_33

    .line 149
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    add-int/2addr v3, v1

    const/4 v4, 0x0

    if-le v3, v1, :cond_32

    if-le v3, v2, :cond_1a

    goto :goto_32

    .line 153
    :cond_1a
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    const v5, 0x6d657368

    if-ne v1, v5, :cond_2d

    .line 155
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/video/spherical/ProjectionDecoder;->parseMesh(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/exoplayer/video/spherical/Projection$Mesh;

    move-result-object v1

    if-nez v1, :cond_2a

    return-object v4

    .line 159
    :cond_2a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_2d
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    move v1, v3

    goto :goto_d

    :cond_32
    :goto_32
    return-object v4

    :cond_33
    return-object v0
.end method
