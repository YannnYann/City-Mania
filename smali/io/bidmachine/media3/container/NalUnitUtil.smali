###### Class io.bidmachine.media3.container.NalUnitUtil (io.bidmachine.media3.container.NalUnitUtil)
.class public final Lio/bidmachine/media3/container/NalUnitUtil;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;,
        Lio/bidmachine/media3/container/NalUnitUtil$SpsData;,
        Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;,
        Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;,
        Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;,
        Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormatsAndIndices;,
        Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;,
        Lio/bidmachine/media3/container/NalUnitUtil$H265LayerInfo;,
        Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;,
        Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormat;,
        Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfo;,
        Lio/bidmachine/media3/container/NalUnitUtil$PpsData;,
        Lio/bidmachine/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;
    }
.end annotation


# static fields
.field public static final ASPECT_RATIO_IDC_VALUES:[F

.field public static final NAL_START_CODE:[B

.field public static scratchEscapePositions:[I

.field public static final scratchEscapePositionsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    .line 491
    new-array v0, v0, [B

    fill-array-data v0, :array_20

    sput-object v0, Lio/bidmachine/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    const/16 v0, 0x11

    .line 497
    new-array v0, v0, [F

    fill-array-data v0, :array_26

    sput-object v0, Lio/bidmachine/media3/container/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    .line 520
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/bidmachine/media3/container/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    const/16 v0, 0xa

    .line 526
    new-array v0, v0, [I

    sput-object v0, Lio/bidmachine/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    return-void

    nop

    :array_20
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_26
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public static applyConformanceWindowToHeight(IIII)I
    .registers 5

    .line 0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    const/4 v0, 0x2

    :cond_4
    add-int/2addr p2, p3

    mul-int/2addr v0, p2

    sub-int/2addr p0, v0

    return p0
.end method

.method public static applyConformanceWindowToWidth(IIII)I
    .registers 6

    .line 0
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_8

    if-ne p1, v0, :cond_7

    goto :goto_8

    :cond_7
    move v0, v1

    :cond_8
    :goto_8
    add-int/2addr p2, p3

    mul-int/2addr v0, p2

    sub-int/2addr p0, v0

    return p0
.end method

.method public static clearPrefixFlags([Z)V
    .registers 3

    const/4 v0, 0x0

    .line 1946
    aput-boolean v0, p0, v0

    const/4 v1, 0x1

    .line 1947
    aput-boolean v0, p0, v1

    const/4 v1, 0x2

    .line 1948
    aput-boolean v0, p0, v1

    return-void
.end method

.method public static createCodecStringFromH265SpsPalyoad(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x4

    .line 2003
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    const/4 v0, 0x3

    .line 2004
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v0

    .line 2005
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBit()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2007
    invoke-static {p0, v1, v0, v2}, Lio/bidmachine/media3/container/NalUnitUtil;->parseH265ProfileTierLevel(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;ZILio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;)Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;

    move-result-object p0

    .line 2012
    iget v0, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileSpace:I

    iget-boolean v1, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalTierFlag:Z

    iget v2, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileIdc:I

    iget v3, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileCompatibilityFlags:I

    iget-object v4, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;->constraintBytes:[I

    iget v5, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalLevelIdc:I

    invoke-static/range {v0 .. v5}, Lio/bidmachine/media3/common/util/CodecSpecificDataUtil;->buildHevcCodecString(IZII[II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static findNalUnit([BII[Z)I
    .registers 12

    sub-int v0, p2, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_8

    move v3, v2

    goto :goto_9

    :cond_8
    move v3, v1

    .line 1886
    :goto_9
    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    if-nez v0, :cond_f

    return p2

    .line 1891
    :cond_f
    aget-boolean v3, p3, v1

    if-eqz v3, :cond_19

    .line 1892
    invoke-static {p3}, Lio/bidmachine/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    add-int/lit8 p1, p1, -0x3

    return p1

    :cond_19
    const/4 v3, 0x2

    if-le v0, v2, :cond_29

    .line 1894
    aget-boolean v4, p3, v2

    if-eqz v4, :cond_29

    aget-byte v4, p0, p1

    if-ne v4, v2, :cond_29

    .line 1895
    invoke-static {p3}, Lio/bidmachine/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    sub-int/2addr p1, v3

    return p1

    :cond_29
    if-le v0, v3, :cond_3e

    .line 1897
    aget-boolean v4, p3, v3

    if-eqz v4, :cond_3e

    aget-byte v4, p0, p1

    if-nez v4, :cond_3e

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    if-ne v4, v2, :cond_3e

    .line 1901
    invoke-static {p3}, Lio/bidmachine/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    sub-int/2addr p1, v2

    return p1

    :cond_3e
    add-int/lit8 v4, p2, -0x1

    add-int/2addr p1, v3

    :goto_41
    if-ge p1, v4, :cond_61

    .line 1909
    aget-byte v5, p0, p1

    and-int/lit16 v6, v5, 0xfe

    if-eqz v6, :cond_4a

    goto :goto_5e

    :cond_4a
    add-int/lit8 v6, p1, -0x2

    .line 1912
    aget-byte v7, p0, v6

    if-nez v7, :cond_5c

    add-int/lit8 v7, p1, -0x1

    aget-byte v7, p0, v7

    if-nez v7, :cond_5c

    if-ne v5, v2, :cond_5c

    .line 1913
    invoke-static {p3}, Lio/bidmachine/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    return v6

    :cond_5c
    add-int/lit8 p1, p1, -0x2

    :goto_5e
    add-int/lit8 p1, p1, 0x3

    goto :goto_41

    :cond_61
    if-le v0, v3, :cond_77

    add-int/lit8 p1, p2, -0x3

    .line 1925
    aget-byte p1, p0, p1

    if-nez p1, :cond_75

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_75

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_75

    :goto_73
    move p1, v2

    goto :goto_91

    :cond_75
    move p1, v1

    goto :goto_91

    :cond_77
    if-ne v0, v3, :cond_88

    .line 1927
    aget-boolean p1, p3, v3

    if-eqz p1, :cond_75

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_75

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_75

    goto :goto_73

    .line 1928
    :cond_88
    aget-boolean p1, p3, v2

    if-eqz p1, :cond_75

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_75

    goto :goto_73

    :goto_91
    aput-boolean p1, p3, v1

    if-le v0, v2, :cond_a3

    add-int/lit8 p1, p2, -0x2

    .line 1932
    aget-byte p1, p0, p1

    if-nez p1, :cond_a1

    aget-byte p1, p0, v4

    if-nez p1, :cond_a1

    :goto_9f
    move p1, v2

    goto :goto_ac

    :cond_a1
    move p1, v1

    goto :goto_ac

    .line 1933
    :cond_a3
    aget-boolean p1, p3, v3

    if-eqz p1, :cond_a1

    aget-byte p1, p0, v4

    if-nez p1, :cond_a1

    goto :goto_9f

    :goto_ac
    aput-boolean p1, p3, v2

    .line 1935
    aget-byte p0, p0, v4

    if-nez p0, :cond_b3

    move v1, v2

    :cond_b3
    aput-boolean v1, p3, v3

    return p2
.end method

.method public static findNalUnitPositions([B)Lcom/google/common/collect/ImmutableList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 1988
    new-array v0, v0, [Z

    .line 1989
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 1990
    :goto_8
    array-length v3, p0

    if-ge v2, v3, :cond_1d

    .line 1991
    array-length v3, p0

    invoke-static {p0, v2, v3, v0}, Lio/bidmachine/media3/container/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v2

    .line 1992
    array-length v3, p0

    if-eq v2, v3, :cond_1a

    .line 1993
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    :cond_1a
    add-int/lit8 v2, v2, 0x3

    goto :goto_8

    .line 1997
    :cond_1d
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static findNextUnescapeIndex([BII)I
    .registers 5

    :goto_0
    add-int/lit8 v0, p2, -0x2

    if-ge p1, v0, :cond_19

    .line 2023
    aget-byte v0, p0, p1

    if-nez v0, :cond_16

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_16

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    return p1

    :cond_16
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_19
    return p2
.end method

.method public static getH265BaseLayerCodecsString(Ljava/util/List;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1963
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_53

    .line 1964
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 1965
    array-length v3, v2

    const/4 v4, 0x3

    if-le v3, v4, :cond_50

    .line 1967
    invoke-static {v2}, Lio/bidmachine/media3/container/NalUnitUtil;->findNalUnitPositions([B)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    move v6, v0

    .line 1968
    :goto_17
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    move-result v7

    if-ge v6, v7, :cond_50

    .line 1970
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v4

    if-ge v7, v3, :cond_4d

    .line 1972
    new-instance v7, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    .line 1973
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v4

    invoke-direct {v7, v2, v8, v3}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 1974
    invoke-static {v7}, Lio/bidmachine/media3/container/NalUnitUtil;->parseH265NalHeader(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;)Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;

    move-result-object v8

    .line 1975
    iget v9, v8, Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;->nalUnitType:I

    const/16 v10, 0x21

    if-ne v9, v10, :cond_4d

    iget v8, v8, Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;->layerId:I

    if-nez v8, :cond_4d

    .line 1976
    invoke-static {v7}, Lio/bidmachine/media3/container/NalUnitUtil;->createCodecStringFromH265SpsPalyoad(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4d
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_53
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getH265NalUnitType([BI)I
    .registers 2

    add-int/lit8 p1, p1, 0x3

    .line 758
    aget-byte p0, p0, p1

    and-int/lit8 p0, p0, 0x7e

    shr-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static getNalUnitType([BI)I
    .registers 2

    add-int/lit8 p1, p1, 0x3

    .line 652
    aget-byte p0, p0, p1

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static isDependedOn([BIILio/bidmachine/media3/common/Format;)Z
    .registers 6

    .line 722
    iget-object v0, p3, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "video/avc"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 723
    aget-byte p0, p0, p1

    invoke-static {p0}, Lio/bidmachine/media3/container/NalUnitUtil;->isH264NalUnitDependedOn(B)Z

    move-result p0

    return p0

    .line 725
    :cond_11
    iget-object v0, p3, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "video/hevc"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 726
    invoke-static {p0, p1, p2, p3}, Lio/bidmachine/media3/container/NalUnitUtil;->isH265NalUnitDependedOn([BIILio/bidmachine/media3/common/Format;)Z

    move-result p0

    return p0

    :cond_20
    const/4 p0, 0x1

    return p0
.end method

.method public static isH264NalUnitDependedOn(B)Z
    .registers 4

    .line 0
    and-int/lit8 v0, p0, 0x60

    shr-int/lit8 v0, v0, 0x5

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    and-int/lit8 p0, p0, 0x1f

    const/4 v0, 0x0

    if-ne p0, v1, :cond_e

    return v0

    :cond_e
    const/16 v2, 0x9

    if-ne p0, v2, :cond_13

    return v0

    :cond_13
    const/16 v2, 0xe

    if-ne p0, v2, :cond_18

    return v0

    :cond_18
    return v1
.end method

.method public static isH265NalUnitDependedOn([BIILio/bidmachine/media3/common/Format;)Z
    .registers 6

    .line 733
    new-instance v0, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    add-int/2addr p2, p1

    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 734
    invoke-static {v0}, Lio/bidmachine/media3/container/NalUnitUtil;->parseH265NalHeader(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;)Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;

    move-result-object p0

    .line 735
    iget p1, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;->nalUnitType:I

    const/16 p2, 0x23

    const/4 v0, 0x0

    if-ne p1, p2, :cond_12

    return v0

    :cond_12
    const/16 p2, 0xe

    const/4 v1, 0x1

    if-gt p1, p2, :cond_23

    .line 739
    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_23

    .line 740
    iget p0, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;->temporalId:I

    iget p1, p3, Lio/bidmachine/media3/common/Format;->maxSubLayers:I

    sub-int/2addr p1, v1

    if-ne p0, p1, :cond_23

    return v0

    :cond_23
    return v1
.end method

.method public static isNalUnitSei(Lio/bidmachine/media3/common/Format;B)Z
    .registers 5

    .line 635
    iget-object v0, p0, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "video/avc"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_13

    iget-object v0, p0, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    .line 636
    invoke-static {v0, v1}, Lio/bidmachine/media3/common/MimeTypes;->containsCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_13
    and-int/lit8 v0, p1, 0x1f

    const/4 v1, 0x6

    if-eq v0, v1, :cond_34

    :cond_18
    iget-object v0, p0, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 638
    const-string v1, "video/hevc"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object p0, p0, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    .line 639
    invoke-static {p0, v1}, Lio/bidmachine/media3/common/MimeTypes;->containsCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_32

    :cond_2a
    and-int/lit8 p0, p1, 0x7e

    shr-int/2addr p0, v2

    const/16 p1, 0x27

    if-ne p0, p1, :cond_32

    goto :goto_34

    :cond_32
    const/4 p0, 0x0

    return p0

    :cond_34
    :goto_34
    return v2
.end method

.method public static numberOfBytesInNalUnitHeader(Lio/bidmachine/media3/common/Format;)I
    .registers 3

    .line 702
    iget-object v0, p0, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "video/avc"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x1

    return p0

    .line 705
    :cond_c
    iget-object v0, p0, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "video/hevc"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object p0, p0, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    .line 706
    invoke-static {p0, v1}, Lio/bidmachine/media3/common/MimeTypes;->containsCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    return p0

    :cond_21
    :goto_21
    const/4 p0, 0x2

    return p0
.end method

.method public static parseH265NalHeader(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;)Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;
    .registers 4

    .line 1001
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBit()V

    const/4 v0, 0x6

    .line 1002
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    .line 1003
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v0

    const/4 v2, 0x3

    .line 1004
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    .line 1005
    new-instance v2, Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;

    invoke-direct {v2, v1, v0, p0}, Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;-><init>(III)V

    return-object v2
.end method

.method public static parseH265ProfileTierLevel(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;ZILio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;)Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x6

    .line 2106
    new-array v4, v3, [I

    const/4 v5, 0x2

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eqz p1, :cond_42

    .line 2108
    invoke-virtual {v0, v5}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    .line 2109
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v8

    const/4 v9, 0x5

    .line 2110
    invoke-virtual {v0, v9}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v9

    move v10, v7

    move v11, v10

    :goto_1e
    const/16 v12, 0x20

    if-ge v10, v12, :cond_2e

    .line 2113
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_2b

    const/4 v12, 0x1

    shl-int/2addr v12, v10

    or-int/2addr v11, v12

    :cond_2b
    add-int/lit8 v10, v10, 0x1

    goto :goto_1e

    :cond_2e
    move v10, v7

    :goto_2f
    if-ge v10, v3, :cond_3a

    .line 2118
    invoke-virtual {v0, v6}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v12

    aput v12, v4, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2f

    :cond_3a
    move v13, v2

    :goto_3b
    move-object/from16 v17, v4

    move v14, v8

    move v15, v9

    move/from16 v16, v11

    goto :goto_57

    :cond_42
    if-eqz v2, :cond_50

    .line 2121
    iget v3, v2, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileSpace:I

    .line 2122
    iget-boolean v8, v2, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalTierFlag:Z

    .line 2123
    iget v9, v2, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileIdc:I

    .line 2124
    iget v11, v2, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileCompatibilityFlags:I

    .line 2125
    iget-object v4, v2, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;->constraintBytes:[I

    move v13, v3

    goto :goto_3b

    :cond_50
    move-object/from16 v17, v4

    move v13, v7

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    .line 2127
    :goto_57
    invoke-virtual {v0, v6}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v18

    move v2, v7

    :goto_5c
    if-ge v7, v1, :cond_71

    .line 2132
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_66

    add-int/lit8 v2, v2, 0x58

    .line 2135
    :cond_66
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_6e

    add-int/lit8 v2, v2, 0x8

    :cond_6e
    add-int/lit8 v7, v7, 0x1

    goto :goto_5c

    .line 2139
    :cond_71
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    if-lez v1, :cond_7b

    sub-int/2addr v6, v1

    mul-int/2addr v6, v5

    .line 2141
    invoke-virtual {v0, v6}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 2144
    :cond_7b
    new-instance v12, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;

    invoke-direct/range {v12 .. v18}, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;-><init>(IZII[II)V

    return-object v12
.end method

.method public static parseH265RepFormat(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;)Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormat;
    .registers 10

    const/16 v0, 0x10

    .line 2203
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    .line 2204
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v0

    .line 2208
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v2, 0x2

    .line 2209
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1b

    .line 2211
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBit()V

    :cond_1b
    const/4 v3, 0x4

    .line 2213
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v4

    .line 2214
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    move v6, v3

    move v5, v4

    move v4, v2

    goto :goto_2c

    :cond_28
    const/4 v2, 0x0

    move v4, v2

    move v5, v4

    move v6, v5

    .line 2216
    :goto_2c
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 2217
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    .line 2218
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    .line 2219
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v7

    .line 2220
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result p0

    .line 2222
    invoke-static {v1, v4, v2, v3}, Lio/bidmachine/media3/container/NalUnitUtil;->applyConformanceWindowToWidth(IIII)I

    move-result v1

    .line 2225
    invoke-static {v0, v4, v7, p0}, Lio/bidmachine/media3/container/NalUnitUtil;->applyConformanceWindowToHeight(IIII)I

    move-result v0

    :cond_4a
    move v8, v0

    move v7, v1

    .line 2228
    new-instance v3, Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormat;

    invoke-direct/range {v3 .. v8}, Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormat;-><init>(IIIII)V

    return-object v3
.end method

.method public static parseH265RepFormatsAndIndices(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;I)Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormatsAndIndices;
    .registers 8

    .line 2174
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 2176
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->builderWithExpectedSize(I)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 2177
    new-array v3, p1, [I

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v1, :cond_19

    .line 2180
    invoke-static {p0}, Lio/bidmachine/media3/container/NalUnitUtil;->parseH265RepFormat(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;)Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormat;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_19
    const/4 v4, 0x1

    if-le v1, v4, :cond_34

    .line 2182
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_34

    int-to-double v0, v1

    .line 2183
    sget-object v5, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v0, v1, v5}, Lcom/google/common/math/DoubleMath;->log2(DLjava/math/RoundingMode;)I

    move-result v0

    :goto_29
    if-ge v4, p1, :cond_3f

    .line 2187
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    aput v1, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_34
    :goto_34
    if-ge v4, p1, :cond_3f

    .line 2191
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    aput p0, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 2194
    :cond_3f
    new-instance p0, Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormatsAndIndices;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormatsAndIndices;-><init>(Ljava/util/List;[I)V

    return-object p0
.end method

.method public static parseH265Sei3dRefDisplayInfo([BII)Lio/bidmachine/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;
    .registers 16

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 p2, p2, -0x1

    .line 1771
    :goto_4
    aget-byte v0, p0, p2

    if-nez v0, :cond_d

    if-le p2, p1, :cond_d

    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    :cond_d
    const/4 v1, 0x0

    if-eqz v0, :cond_d0

    if-gt p2, p1, :cond_14

    goto/16 :goto_d0

    .line 1778
    :cond_14
    new-instance v0, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    add-int/lit8 p2, p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    :cond_1b
    const/16 p0, 0x10

    .line 1781
    invoke-virtual {v0, p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result p0

    if-eqz p0, :cond_d0

    const/16 p0, 0x8

    .line 1784
    invoke-virtual {v0, p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result p1

    const/4 p2, 0x0

    move v2, p2

    :goto_2b
    const/16 v3, 0xff

    if-ne p1, v3, :cond_36

    add-int/lit16 v2, v2, 0xff

    .line 1787
    invoke-virtual {v0, p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result p1

    goto :goto_2b

    :cond_36
    add-int/2addr v2, p1

    .line 1792
    invoke-virtual {v0, p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result p1

    move v4, p2

    :goto_3c
    if-ne p1, v3, :cond_45

    add-int/lit16 v4, v4, 0xff

    .line 1795
    invoke-virtual {v0, p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result p1

    goto :goto_3c

    :cond_45
    add-int/2addr v4, p1

    if-eqz v4, :cond_d0

    .line 1798
    invoke-virtual {v0, v4}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result p0

    if-nez p0, :cond_50

    goto/16 :goto_d0

    :cond_50
    const/16 p0, 0xb0

    if-ne v2, p0, :cond_1b

    .line 1803
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    .line 1804
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result p0

    if-eqz p0, :cond_64

    .line 1807
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result p1

    move v5, p1

    goto :goto_65

    :cond_64
    move v5, p2

    .line 1809
    :goto_65
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result p1

    const/4 v2, -0x1

    move v7, v2

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    move v2, p2

    :goto_71
    if-gt v2, p1, :cond_c8

    .line 1817
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v7

    .line 1818
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v8

    const/4 v3, 0x6

    .line 1819
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v9

    const/16 v6, 0x3f

    if-ne v9, v6, :cond_85

    return-object v1

    :cond_85
    if-nez v9, :cond_8e

    add-int/lit8 v10, v4, -0x1e

    .line 1825
    invoke-static {p2, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_96

    :cond_8e
    add-int v10, v9, v4

    add-int/lit8 v10, v10, -0x1f

    .line 1826
    invoke-static {p2, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1828
    :goto_96
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v10

    if-eqz p0, :cond_ba

    .line 1830
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    if-ne v3, v6, :cond_a3

    return-object v1

    :cond_a3
    if-nez v3, :cond_ac

    add-int/lit8 v6, v5, -0x1e

    .line 1836
    invoke-static {p2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_b4

    :cond_ac
    add-int v6, v3, v5

    add-int/lit8 v6, v6, -0x1f

    .line 1837
    invoke-static {p2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1839
    :goto_b4
    invoke-virtual {v0, v6}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v6

    move v11, v3

    move v12, v6

    .line 1841
    :cond_ba
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_c5

    const/16 v3, 0xa

    .line 1842
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    :cond_c5
    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    .line 1846
    :cond_c8
    new-instance v3, Lio/bidmachine/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;

    add-int/lit8 v6, p1, 0x1

    invoke-direct/range {v3 .. v12}, Lio/bidmachine/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;-><init>(IIIIIIIII)V

    return-object v3

    :cond_d0
    :goto_d0
    return-object v1
.end method

.method public static parseH265SpsNalUnit([BIILio/bidmachine/media3/container/NalUnitUtil$H265VpsData;)Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;
    .registers 5

    .line 1505
    new-instance v0, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 1506
    invoke-static {v0}, Lio/bidmachine/media3/container/NalUnitUtil;->parseH265NalHeader(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;)Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;

    move-result-object v0

    add-int/lit8 p1, p1, 0x2

    .line 1508
    invoke-static {p0, p1, p2, v0, p3}, Lio/bidmachine/media3/container/NalUnitUtil;->parseH265SpsNalUnitPayload([BIILio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;)Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;

    move-result-object p0

    return-object p0
.end method

.method public static parseH265SpsNalUnitPayload([BIILio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;)Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;
    .registers 22

    move-object/from16 v1, p3

    move-object/from16 v0, p4

    .line 1528
    new-instance v2, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct {v2, v3, v4, v5}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    const/4 v3, 0x4

    .line 1529
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    const/4 v3, 0x3

    .line 1532
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v4

    .line 1533
    iget v5, v1, Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;->layerId:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_23

    const/4 v5, 0x7

    if-ne v4, v5, :cond_23

    move v5, v6

    goto :goto_24

    :cond_23
    move v5, v7

    :goto_24
    if-eqz v0, :cond_46

    .line 1536
    iget-object v8, v0, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;->layerInfos:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v8}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_46

    .line 1537
    iget v8, v1, Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;->layerId:I

    iget-object v9, v0, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;->layerInfos:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v9}, Ljava/util/AbstractCollection;->size()I

    move-result v9

    sub-int/2addr v9, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1538
    iget-object v9, v0, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;->layerInfos:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/bidmachine/media3/container/NalUnitUtil$H265LayerInfo;

    iget v8, v8, Lio/bidmachine/media3/container/NalUnitUtil$H265LayerInfo;->layerIdInVps:I

    goto :goto_47

    :cond_46
    move v8, v7

    :goto_47
    const/4 v9, 0x0

    if-nez v5, :cond_53

    .line 1542
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 1544
    invoke-static {v2, v6, v4, v9}, Lio/bidmachine/media3/container/NalUnitUtil;->parseH265ProfileTierLevel(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;ZILio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;)Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;

    move-result-object v9

    :cond_51
    :goto_51
    move v10, v7

    goto :goto_6e

    :cond_53
    if-eqz v0, :cond_51

    .line 1550
    iget-object v10, v0, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;->profileTierLevelsAndIndices:Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;

    iget-object v11, v10, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;->indices:[I

    aget v11, v11, v8

    .line 1551
    iget-object v10, v10, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;->profileTierLevels:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v10}, Ljava/util/AbstractCollection;->size()I

    move-result v10

    if-le v10, v11, :cond_51

    .line 1552
    iget-object v9, v0, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;->profileTierLevelsAndIndices:Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;

    iget-object v9, v9, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;->profileTierLevels:Lcom/google/common/collect/ImmutableList;

    .line 1553
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;

    goto :goto_51

    .line 1557
    :goto_6e
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v7

    const/16 v11, 0x8

    const/4 v12, -0x1

    if-eqz v5, :cond_b4

    .line 1565
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v13

    if-eqz v13, :cond_82

    .line 1566
    invoke-virtual {v2, v11}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v13

    goto :goto_83

    :cond_82
    move v13, v12

    :goto_83
    if-eqz v0, :cond_ae

    .line 1568
    iget-object v14, v0, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;->repFormatsAndIndices:Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormatsAndIndices;

    if-eqz v14, :cond_ae

    if-ne v13, v12, :cond_8f

    .line 1570
    iget-object v13, v14, Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormatsAndIndices;->indices:[I

    aget v13, v13, v8

    :cond_8f
    if-eq v13, v12, :cond_ae

    .line 1572
    iget-object v14, v14, Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormatsAndIndices;->repFormats:Lcom/google/common/collect/ImmutableList;

    .line 1573
    invoke-virtual {v14}, Ljava/util/AbstractCollection;->size()I

    move-result v14

    if-le v14, v13, :cond_ae

    .line 1574
    iget-object v14, v0, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;->repFormatsAndIndices:Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormatsAndIndices;

    iget-object v14, v14, Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormatsAndIndices;->repFormats:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormat;

    .line 1575
    iget v14, v13, Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormat;->chromaFormatIdc:I

    .line 1576
    iget v15, v13, Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormat;->width:I

    .line 1577
    iget v6, v13, Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormat;->height:I

    .line 1578
    iget v10, v13, Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormat;->bitDepthLumaMinus8:I

    .line 1579
    iget v13, v13, Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormat;->bitDepthChromaMinus8:I

    goto :goto_f0

    :cond_ae
    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto :goto_f0

    .line 1583
    :cond_b4
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v14

    if-ne v14, v3, :cond_bd

    .line 1585
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 1587
    :cond_bd
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v6

    .line 1588
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    .line 1589
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v13

    if-eqz v13, :cond_e6

    .line 1590
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v13

    .line 1591
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v15

    .line 1592
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v12

    .line 1593
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    .line 1595
    invoke-static {v6, v14, v13, v15}, Lio/bidmachine/media3/container/NalUnitUtil;->applyConformanceWindowToWidth(IIII)I

    move-result v6

    .line 1598
    invoke-static {v10, v14, v12, v3}, Lio/bidmachine/media3/container/NalUnitUtil;->applyConformanceWindowToHeight(IIII)I

    move-result v3

    move v15, v6

    move v6, v3

    goto :goto_e8

    :cond_e6
    move v15, v6

    move v6, v10

    .line 1601
    :goto_e8
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    .line 1602
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v13

    .line 1604
    :goto_f0
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    if-nez v5, :cond_115

    .line 1608
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_fe

    const/4 v12, 0x0

    goto :goto_ff

    :cond_fe
    move v12, v4

    :goto_ff
    const/4 v11, -0x1

    :goto_100
    if-gt v12, v4, :cond_116

    .line 1609
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1611
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1612
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p3

    goto :goto_100

    :cond_115
    const/4 v11, -0x1

    .line 1615
    :cond_116
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1616
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1617
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1618
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1619
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1620
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1621
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_146

    if-eqz v5, :cond_135

    .line 1624
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    goto :goto_136

    :cond_135
    const/4 v1, 0x0

    :goto_136
    if-eqz v1, :cond_13d

    const/4 v1, 0x6

    .line 1627
    invoke-virtual {v2, v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    goto :goto_146

    .line 1628
    :cond_13d
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_146

    .line 1629
    invoke-static {v2}, Lio/bidmachine/media3/container/NalUnitUtil;->skipH265ScalingList(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;)V

    :cond_146
    :goto_146
    const/4 v1, 0x2

    .line 1632
    invoke-virtual {v2, v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1633
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_15e

    const/16 v5, 0x8

    .line 1635
    invoke-virtual {v2, v5}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1636
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1637
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1638
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 1640
    :cond_15e
    invoke-static {v2}, Lio/bidmachine/media3/container/NalUnitUtil;->skipH265ShortTermReferencePictureSets(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;)V

    .line 1641
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_177

    .line 1642
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    const/4 v12, 0x0

    :goto_16c
    if-ge v12, v5, :cond_177

    add-int/lit8 v1, v3, 0x5

    .line 1646
    invoke-virtual {v2, v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    add-int/lit8 v12, v12, 0x1

    const/4 v1, 0x2

    goto :goto_16c

    .line 1649
    :cond_177
    invoke-virtual {v2, v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1654
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v3, :cond_245

    .line 1655
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_1c2

    const/16 v3, 0x8

    .line 1656
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v12

    const/16 v3, 0xff

    if-ne v12, v3, :cond_1a4

    const/16 v3, 0x10

    .line 1658
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v12

    .line 1659
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    if-eqz v12, :cond_1c2

    if-eqz v3, :cond_1c2

    int-to-float v5, v12

    int-to-float v3, v3

    div-float/2addr v5, v3

    goto :goto_1c2

    .line 1663
    :cond_1a4
    sget-object v3, Lio/bidmachine/media3/container/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v1, v3

    if-ge v12, v1, :cond_1ac

    .line 1664
    aget v5, v3, v12

    goto :goto_1c2

    .line 1666
    :cond_1ac
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NalUnitUtil"

    invoke-static {v3, v1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    :cond_1c2
    :goto_1c2
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_1cb

    .line 1670
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 1672
    :cond_1cb
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_1fd

    const/4 v1, 0x3

    .line 1673
    invoke-virtual {v2, v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1675
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_1dd

    const/4 v0, 0x1

    goto :goto_1de

    :cond_1dd
    const/4 v0, 0x2

    .line 1676
    :goto_1de
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_1fa

    const/16 v3, 0x8

    .line 1677
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    .line 1678
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v8

    .line 1679
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1681
    invoke-static {v1}, Lio/bidmachine/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v12

    .line 1683
    invoke-static {v8}, Lio/bidmachine/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v1

    goto :goto_227

    :cond_1fa
    :goto_1fa
    const/4 v1, -0x1

    const/4 v12, -0x1

    goto :goto_227

    :cond_1fd
    if-eqz v0, :cond_225

    .line 1685
    iget-object v1, v0, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;->videoSignalInfosAndIndices:Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;

    if-eqz v1, :cond_225

    .line 1686
    iget-object v3, v1, Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;->indices:[I

    aget v3, v3, v8

    .line 1687
    iget-object v1, v1, Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;->videoSignalInfos:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-le v1, v3, :cond_225

    .line 1688
    iget-object v0, v0, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;->videoSignalInfosAndIndices:Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;

    iget-object v0, v0, Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;->videoSignalInfos:Lcom/google/common/collect/ImmutableList;

    .line 1689
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfo;

    .line 1690
    iget v12, v0, Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfo;->colorSpace:I

    .line 1691
    iget v1, v0, Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfo;->colorRange:I

    .line 1692
    iget v0, v0, Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfo;->colorTransfer:I

    move/from16 v16, v1

    move v1, v0

    move/from16 v0, v16

    goto :goto_227

    :cond_225
    const/4 v0, -0x1

    goto :goto_1fa

    .line 1695
    :goto_227
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_233

    .line 1696
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1697
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1699
    :cond_233
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 1700
    invoke-virtual {v2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_23e

    mul-int/lit8 v6, v6, 0x2

    :cond_23e
    move v2, v13

    move v13, v0

    move v0, v2

    move v2, v4

    move v4, v14

    move v14, v1

    goto :goto_24b

    :cond_245
    move v2, v4

    move v0, v13

    move v4, v14

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    .line 1707
    :goto_24b
    new-instance v1, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;

    move v3, v10

    move v10, v5

    move v5, v3

    move-object v3, v9

    move v8, v15

    move v9, v6

    move v6, v0

    move-object v0, v1

    move-object/from16 v1, p3

    invoke-direct/range {v0 .. v14}, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;-><init>(Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;ILio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;IIIIIIFIIII)V

    return-object v0
.end method

.method public static parseH265VideoSignalInfo(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;)Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfo;
    .registers 5

    const/4 v0, 0x3

    .line 2361
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 2364
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x2

    :goto_d
    const/16 v1, 0x8

    .line 2367
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    invoke-static {v2}, Lio/bidmachine/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v2

    .line 2371
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    .line 2370
    invoke-static {v3}, Lio/bidmachine/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v3

    .line 2372
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 2374
    new-instance p0, Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfo;

    invoke-direct {p0, v2, v0, v3}, Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfo;-><init>(III)V

    return-object p0
.end method

.method public static parseH265VideoSignalInfosAndIndices(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;II[I)Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;
    .registers 12

    .line 2302
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 2303
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    if-eqz v0, :cond_12

    .line 2306
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 2309
    :cond_12
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    .line 2310
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v0, :cond_1f

    if-eqz v2, :cond_4b

    :cond_1f
    move v4, v3

    :goto_20
    if-ge v4, p2, :cond_4b

    move v5, v3

    .line 2315
    :goto_23
    aget v6, p3, v4

    if-ge v5, v6, :cond_48

    if-eqz v0, :cond_2e

    .line 2319
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    goto :goto_2f

    :cond_2e
    move v6, v3

    :goto_2f
    if-eqz v2, :cond_36

    .line 2322
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v7

    goto :goto_37

    :cond_36
    move v7, v3

    :goto_37
    if-eqz v6, :cond_3e

    const/16 v6, 0x20

    .line 2325
    invoke-virtual {p0, v6}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    :cond_3e
    if-eqz v7, :cond_45

    const/16 v6, 0x12

    .line 2328
    invoke-virtual {p0, v6}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    :cond_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 2334
    :cond_4b
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result p2

    const/4 p3, 0x4

    if-eqz p2, :cond_58

    .line 2336
    invoke-virtual {p0, p3}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_59

    :cond_58
    move v0, p1

    .line 2339
    :goto_59
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->builderWithExpectedSize(I)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 2340
    new-array v4, p1, [I

    move v5, v3

    :goto_60
    if-ge v5, v0, :cond_6c

    .line 2343
    invoke-static {p0}, Lio/bidmachine/media3/container/NalUnitUtil;->parseH265VideoSignalInfo(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;)Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfo;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_60

    :cond_6c
    if-eqz p2, :cond_7b

    if-le v0, v1, :cond_7b

    :goto_70
    if-ge v3, p1, :cond_7b

    .line 2349
    invoke-virtual {p0, p3}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result p2

    aput p2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_70

    .line 2352
    :cond_7b
    new-instance p0, Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-direct {p0, p1, v4}, Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;-><init>(Ljava/util/List;[I)V

    return-object p0
.end method

.method public static parseH265VpsNalUnit([BII)Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;
    .registers 4

    .line 988
    new-instance v0, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 989
    invoke-static {v0}, Lio/bidmachine/media3/container/NalUnitUtil;->parseH265NalHeader(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;)Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;

    move-result-object p0

    .line 990
    invoke-static {v0, p0}, Lio/bidmachine/media3/container/NalUnitUtil;->parseH265VpsNalUnitPayload(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;)Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;

    move-result-object p0

    return-object p0
.end method

.method public static parseH265VpsNalUnitPayload(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;)Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;
    .registers 37

    move-object/from16 v0, p0

    const/4 v1, 0x4

    .line 1014
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1015
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    .line 1016
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    const/4 v4, 0x6

    .line 1017
    invoke-virtual {v0, v4}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v5

    add-int/lit8 v6, v5, 0x1

    const/4 v7, 0x3

    .line 1019
    invoke-virtual {v0, v7}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v8

    const/16 v9, 0x11

    .line 1020
    invoke-virtual {v0, v9}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1023
    invoke-static {v0, v9, v8, v10}, Lio/bidmachine/media3/container/NalUnitUtil;->parseH265ProfileTierLevel(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;ZILio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;)Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;

    move-result-object v11

    .line 1030
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_2e

    move v12, v13

    goto :goto_2f

    :cond_2e
    move v12, v8

    :goto_2f
    if-gt v12, v8, :cond_3d

    .line 1031
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1032
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1033
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    add-int/lit8 v12, v12, 0x1

    goto :goto_2f

    .line 1036
    :cond_3d
    invoke-virtual {v0, v4}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v12

    .line 1037
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v14

    add-int/2addr v14, v9

    .line 1039
    invoke-static {v11}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    .line 1040
    new-instance v10, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;

    new-array v1, v9, [I

    invoke-direct {v10, v15, v1}, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;-><init>(Ljava/util/List;[I)V

    const/4 v1, 0x2

    if-lt v6, v1, :cond_58

    if-lt v14, v1, :cond_58

    move v15, v9

    goto :goto_59

    :cond_58
    move v15, v13

    :goto_59
    if-eqz v2, :cond_5f

    if-eqz v3, :cond_5f

    move v2, v9

    goto :goto_60

    :cond_5f
    move v2, v13

    :goto_60
    add-int/lit8 v3, v12, 0x1

    if-lt v3, v6, :cond_67

    move/from16 v18, v9

    goto :goto_69

    :cond_67
    move/from16 v18, v13

    :goto_69
    if-eqz v15, :cond_6f

    if-eqz v2, :cond_6f

    if-nez v18, :cond_73

    :cond_6f
    move-object/from16 v19, v10

    goto/16 :goto_5fc

    .line 1063
    :cond_73
    new-array v2, v1, [I

    aput v3, v2, v9

    aput v14, v2, v13

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    move/from16 v18, v9

    .line 1064
    new-array v9, v14, [I

    move/from16 v19, v4

    .line 1065
    new-array v4, v14, [I

    .line 1067
    aget-object v20, v2, v13

    aput v13, v20, v13

    .line 1068
    aput v18, v9, v13

    .line 1069
    aput v13, v4, v13

    move/from16 v1, v18

    :goto_93
    if-ge v1, v14, :cond_b3

    move v7, v13

    move/from16 v22, v7

    :goto_98
    if-gt v7, v12, :cond_af

    .line 1074
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v23

    if-eqz v23, :cond_aa

    .line 1075
    aget-object v23, v2, v1

    add-int/lit8 v24, v22, 0x1

    aput v7, v23, v22

    .line 1076
    aput v7, v4, v1

    move/from16 v22, v24

    .line 1078
    :cond_aa
    aput v22, v9, v1

    add-int/lit8 v7, v7, 0x1

    goto :goto_98

    :cond_af
    add-int/lit8 v1, v1, 0x1

    const/4 v7, 0x3

    goto :goto_93

    .line 1082
    :cond_b3
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_e2

    const/16 v1, 0x40

    .line 1083
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1084
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 1085
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 1087
    :cond_c7
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    move v7, v13

    :goto_cc
    if-ge v7, v1, :cond_e2

    .line 1089
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    if-eqz v7, :cond_d9

    .line 1091
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_db

    :cond_d9
    move/from16 v13, v18

    .line 1090
    :cond_db
    invoke-static {v0, v13, v8}, Lio/bidmachine/media3/container/NalUnitUtil;->skipH265HrdParameters(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;ZI)V

    add-int/lit8 v7, v7, 0x1

    const/4 v13, 0x0

    goto :goto_cc

    .line 1096
    :cond_e2
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-nez v1, :cond_f8

    .line 1098
    new-instance v16, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, p1

    move-object/from16 v19, v10

    invoke-direct/range {v16 .. v21}, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;-><init>(Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v16

    :cond_f8
    move/from16 v1, v19

    move-object/from16 v19, v10

    .line 1106
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->byteAlign()V

    const/4 v7, 0x0

    .line 1110
    invoke-static {v0, v7, v8, v11}, Lio/bidmachine/media3/container/NalUnitUtil;->parseH265ProfileTierLevel(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;ZILio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;)Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;

    move-result-object v10

    .line 1113
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v7

    const/16 v13, 0x10

    move/from16 v23, v1

    .line 1114
    new-array v1, v13, [Z

    move-object/from16 v24, v1

    move-object/from16 v25, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_114
    if-ge v1, v13, :cond_123

    .line 1117
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v26

    aput-boolean v26, v24, v1

    if-eqz v26, :cond_120

    add-int/lit8 v2, v2, 0x1

    :cond_120
    add-int/lit8 v1, v1, 0x1

    goto :goto_114

    :cond_123
    if-eqz v2, :cond_5ee

    .line 1126
    aget-boolean v1, v24, v18

    if-nez v1, :cond_12b

    goto/16 :goto_5ee

    .line 1135
    :cond_12b
    new-array v1, v2, [I

    move-object/from16 v27, v1

    const/4 v13, 0x0

    :goto_130
    sub-int v1, v2, v7

    if-ge v13, v1, :cond_13e

    const/4 v1, 0x3

    .line 1137
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v28

    aput v28, v27, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_130

    :cond_13e
    add-int/lit8 v1, v2, 0x1

    .line 1139
    new-array v1, v1, [I

    if-eqz v7, :cond_165

    move/from16 v13, v18

    :goto_146
    if-ge v13, v2, :cond_15f

    move-object/from16 v28, v1

    const/4 v1, 0x0

    :goto_14b
    if-ge v1, v13, :cond_15a

    .line 1143
    aget v29, v28, v13

    aget v30, v27, v1

    add-int/lit8 v30, v30, 0x1

    add-int v29, v29, v30

    aput v29, v28, v13

    add-int/lit8 v1, v1, 0x1

    goto :goto_14b

    :cond_15a
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v28

    goto :goto_146

    :cond_15f
    move-object/from16 v28, v1

    .line 1146
    aput v23, v28, v2

    :goto_163
    const/4 v1, 0x2

    goto :goto_168

    :cond_165
    move-object/from16 v28, v1

    goto :goto_163

    .line 1149
    :goto_168
    new-array v13, v1, [I

    aput v2, v13, v18

    const/16 v22, 0x0

    aput v6, v13, v22

    invoke-static {v15, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 1152
    new-array v13, v6, [I

    .line 1153
    aput v22, v13, v22

    .line 1154
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v15

    move-object/from16 v29, v1

    move/from16 v1, v18

    :goto_182
    if-ge v1, v6, :cond_1cc

    if-eqz v15, :cond_191

    move/from16 v30, v1

    move/from16 v1, v23

    .line 1157
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v23

    aput v23, v13, v30

    goto :goto_197

    :cond_191
    move/from16 v30, v1

    move/from16 v1, v23

    .line 1159
    aput v30, v13, v30

    :goto_197
    if-nez v7, :cond_1ad

    const/4 v1, 0x0

    :goto_19a
    if-ge v1, v2, :cond_1c7

    .line 1163
    aget-object v31, v29, v30

    aget v32, v27, v1

    move/from16 v33, v1

    add-int/lit8 v1, v32, 0x1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    aput v1, v31, v33

    add-int/lit8 v1, v33, 0x1

    goto :goto_19a

    :cond_1ad
    const/4 v1, 0x0

    :goto_1ae
    if-ge v1, v2, :cond_1c7

    .line 1167
    aget-object v31, v29, v30

    aget v32, v13, v30

    add-int/lit8 v33, v1, 0x1

    aget v34, v28, v33

    shl-int v34, v18, v34

    add-int/lit8 v34, v34, -0x1

    and-int v32, v32, v34

    aget v34, v28, v1

    shr-int v32, v32, v34

    aput v32, v31, v1

    move/from16 v1, v33

    goto :goto_1ae

    :cond_1c7
    add-int/lit8 v1, v30, 0x1

    const/16 v23, 0x6

    goto :goto_182

    .line 1174
    :cond_1cc
    new-array v1, v3, [I

    move/from16 v2, v18

    const/4 v7, 0x0

    :goto_1d1
    const/4 v15, -0x1

    if-ge v7, v6, :cond_216

    .line 1177
    aget v23, v13, v7

    aput v15, v1, v23

    move-object/from16 v26, v1

    const/4 v15, 0x0

    const/16 v23, 0x0

    :goto_1dd
    const/16 v1, 0x10

    if-ge v15, v1, :cond_1f8

    .line 1182
    aget-boolean v27, v24, v15

    if-eqz v27, :cond_1f3

    move/from16 v1, v18

    if-ne v15, v1, :cond_1f1

    .line 1188
    aget v1, v13, v7

    aget-object v28, v29, v7

    aget v28, v28, v23

    aput v28, v26, v1

    :cond_1f1
    add-int/lit8 v23, v23, 0x1

    :cond_1f3
    add-int/lit8 v15, v15, 0x1

    const/16 v18, 0x1

    goto :goto_1dd

    :cond_1f8
    if-lez v7, :cond_20f

    const/4 v1, 0x0

    :goto_1fb
    if-ge v1, v7, :cond_20d

    .line 1196
    aget v15, v13, v7

    aget v15, v26, v15

    aget v23, v13, v1

    move/from16 v28, v1

    aget v1, v26, v23

    if-ne v15, v1, :cond_20a

    goto :goto_20f

    :cond_20a
    add-int/lit8 v1, v28, 0x1

    goto :goto_1fb

    :cond_20d
    add-int/lit8 v2, v2, 0x1

    :cond_20f
    :goto_20f
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v26

    const/16 v18, 0x1

    goto :goto_1d1

    :cond_216
    move-object/from16 v26, v1

    const/4 v1, 0x4

    .line 1207
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    const/4 v7, 0x2

    if-lt v2, v7, :cond_5e0

    if-nez v1, :cond_224

    goto/16 :goto_5e0

    .line 1217
    :cond_224
    new-array v7, v2, [I

    const/4 v15, 0x0

    :goto_227
    if-ge v15, v2, :cond_232

    .line 1219
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v23

    aput v23, v7, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_227

    .line 1222
    :cond_232
    new-array v1, v3, [I

    const/4 v15, 0x0

    :goto_235
    if-ge v15, v6, :cond_246

    move-object/from16 v23, v1

    .line 1224
    aget v1, v13, v15

    invoke-static {v1, v12}, Ljava/lang/Math;->min(II)I

    move-result v1

    aput v15, v23, v1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v23

    goto :goto_235

    :cond_246
    move-object/from16 v23, v1

    .line 1226
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    const/4 v15, 0x0

    :goto_24d
    if-gt v15, v12, :cond_278

    move/from16 v24, v2

    .line 1228
    aget v2, v26, v15

    move-object/from16 v27, v4

    const/16 v18, 0x1

    add-int/lit8 v4, v24, -0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ltz v2, :cond_262

    .line 1229
    aget v2, v7, v2

    goto :goto_263

    :cond_262
    const/4 v2, -0x1

    .line 1230
    :goto_263
    new-instance v4, Lio/bidmachine/media3/container/NalUnitUtil$H265LayerInfo;

    move-object/from16 v28, v7

    aget v7, v23, v15

    invoke-direct {v4, v7, v2}, Lio/bidmachine/media3/container/NalUnitUtil$H265LayerInfo;-><init>(II)V

    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v24

    move-object/from16 v4, v27

    move-object/from16 v7, v28

    goto :goto_24d

    :cond_278
    move-object/from16 v27, v4

    .line 1232
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    const/4 v7, 0x0

    .line 1234
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/container/NalUnitUtil$H265LayerInfo;

    iget v1, v1, Lio/bidmachine/media3/container/NalUnitUtil$H265LayerInfo;->viewId:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_298

    .line 1236
    new-instance v16, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, p1

    invoke-direct/range {v16 .. v21}, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;-><init>(Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v16

    :cond_298
    const/4 v1, 0x1

    :goto_299
    if-gt v1, v12, :cond_2ab

    .line 1245
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/container/NalUnitUtil$H265LayerInfo;

    iget v4, v4, Lio/bidmachine/media3/container/NalUnitUtil$H265LayerInfo;->viewId:I

    const/4 v7, -0x1

    if-eq v4, v7, :cond_2a8

    move v4, v1

    goto :goto_2ad

    :cond_2a8
    add-int/lit8 v1, v1, 0x1

    goto :goto_299

    :cond_2ab
    const/4 v7, -0x1

    move v4, v7

    :goto_2ad
    if-ne v4, v7, :cond_2bd

    .line 1252
    new-instance v16, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, p1

    invoke-direct/range {v16 .. v21}, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;-><init>(Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v16

    :cond_2bd
    const/4 v1, 0x2

    .line 1261
    new-array v7, v1, [I

    const/16 v18, 0x1

    aput v6, v7, v18

    const/16 v22, 0x0

    aput v6, v7, v22

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Z

    .line 1262
    new-array v15, v1, [I

    aput v6, v15, v18

    aput v6, v15, v22

    invoke-static {v12, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    const/4 v15, 0x1

    :goto_2dd
    if-ge v15, v6, :cond_2f8

    move-object/from16 v17, v1

    const/4 v1, 0x0

    :goto_2e2
    if-ge v1, v15, :cond_2f3

    .line 1265
    aget-object v23, v7, v15

    aget-object v24, v17, v15

    .line 1266
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v26

    aput-boolean v26, v24, v1

    aput-boolean v26, v23, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e2

    :cond_2f3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v17

    goto :goto_2dd

    :cond_2f8
    move-object/from16 v17, v1

    const/4 v1, 0x1

    :goto_2fb
    if-ge v1, v6, :cond_323

    const/4 v15, 0x0

    :goto_2fe
    if-ge v15, v5, :cond_31e

    move-object/from16 v23, v13

    const/4 v13, 0x0

    :goto_303
    if-ge v13, v1, :cond_319

    .line 1272
    aget-object v24, v17, v1

    aget-boolean v26, v24, v13

    if-eqz v26, :cond_316

    aget-object v26, v17, v13

    aget-boolean v26, v26, v15

    if-eqz v26, :cond_316

    const/16 v18, 0x1

    .line 1273
    aput-boolean v18, v24, v15

    goto :goto_319

    :cond_316
    add-int/lit8 v13, v13, 0x1

    goto :goto_303

    :cond_319
    :goto_319
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v13, v23

    goto :goto_2fe

    :cond_31e
    move-object/from16 v23, v13

    add-int/lit8 v1, v1, 0x1

    goto :goto_2fb

    :cond_323
    move-object/from16 v23, v13

    .line 1281
    new-array v1, v3, [I

    const/4 v13, 0x0

    :goto_328
    if-ge v13, v6, :cond_33f

    const/4 v15, 0x0

    const/16 v24, 0x0

    :goto_32d
    if-ge v15, v13, :cond_338

    .line 1285
    aget-object v26, v7, v13

    aget-boolean v26, v26, v15

    add-int v24, v24, v26

    add-int/lit8 v15, v15, 0x1

    goto :goto_32d

    .line 1287
    :cond_338
    aget v15, v23, v13

    aput v24, v1, v15

    add-int/lit8 v13, v13, 0x1

    goto :goto_328

    :cond_33f
    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_341
    if-ge v13, v6, :cond_34e

    .line 1292
    aget v24, v23, v13

    aget v24, v1, v24

    if-nez v24, :cond_34b

    add-int/lit8 v15, v15, 0x1

    :cond_34b
    add-int/lit8 v13, v13, 0x1

    goto :goto_341

    :cond_34e
    const/4 v13, 0x1

    if-le v15, v13, :cond_35f

    .line 1298
    new-instance v16, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, p1

    invoke-direct/range {v16 .. v21}, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;-><init>(Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v16

    .line 1308
    :cond_35f
    new-array v13, v6, [I

    .line 1309
    new-array v15, v14, [I

    .line 1310
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v24

    if-eqz v24, :cond_37a

    move-object/from16 v24, v1

    const/4 v1, 0x0

    :goto_36c
    if-ge v1, v6, :cond_380

    move/from16 v26, v1

    const/4 v1, 0x3

    .line 1312
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v28

    aput v28, v13, v26

    add-int/lit8 v1, v26, 0x1

    goto :goto_36c

    :cond_37a
    move-object/from16 v24, v1

    const/4 v1, 0x0

    .line 1315
    invoke-static {v13, v1, v6, v8}, Ljava/util/Arrays;->fill([IIII)V

    :cond_380
    const/4 v1, 0x0

    :goto_381
    if-ge v1, v14, :cond_3af

    move/from16 v26, v1

    move-object/from16 v29, v7

    move-object/from16 v28, v13

    const/4 v1, 0x0

    const/4 v13, 0x0

    .line 1319
    :goto_38b
    aget v7, v9, v26

    if-ge v1, v7, :cond_3a4

    .line 1320
    aget-object v7, v25, v26

    aget v7, v7, v1

    .line 1324
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/bidmachine/media3/container/NalUnitUtil$H265LayerInfo;

    iget v7, v7, Lio/bidmachine/media3/container/NalUnitUtil$H265LayerInfo;->layerIdInVps:I

    aget v7, v28, v7

    .line 1322
    invoke-static {v13, v7}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int/lit8 v1, v1, 0x1

    goto :goto_38b

    :cond_3a4
    add-int/lit8 v13, v13, 0x1

    .line 1326
    aput v13, v15, v26

    add-int/lit8 v1, v26, 0x1

    move-object/from16 v13, v28

    move-object/from16 v7, v29

    goto :goto_381

    :cond_3af
    move-object/from16 v29, v7

    .line 1329
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_3d6

    const/4 v1, 0x0

    :goto_3b8
    if-ge v1, v5, :cond_3d6

    add-int/lit8 v7, v1, 0x1

    move v13, v7

    :goto_3bd
    if-ge v13, v6, :cond_3d4

    .line 1332
    aget-object v26, v29, v13

    aget-boolean v26, v26, v1

    if-eqz v26, :cond_3cc

    move/from16 v26, v1

    const/4 v1, 0x3

    .line 1333
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    goto :goto_3cf

    :cond_3cc
    move/from16 v26, v1

    const/4 v1, 0x3

    :goto_3cf
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, v26

    goto :goto_3bd

    :cond_3d4
    move v1, v7

    goto :goto_3b8

    .line 1338
    :cond_3d6
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 1341
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    const/4 v13, 0x1

    add-int/2addr v1, v13

    .line 1342
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v5

    .line 1343
    invoke-virtual {v5, v11}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    if-le v1, v13, :cond_3fc

    .line 1345
    invoke-virtual {v5, v10}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    const/4 v7, 0x2

    :goto_3ec
    if-ge v7, v1, :cond_3fc

    .line 1351
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v11

    .line 1349
    invoke-static {v0, v11, v8, v10}, Lio/bidmachine/media3/container/NalUnitUtil;->parseH265ProfileTierLevel(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;ZILio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;)Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;

    move-result-object v10

    .line 1354
    invoke-virtual {v5, v10}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3ec

    .line 1358
    :cond_3fc
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    .line 1362
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v7

    add-int/2addr v7, v14

    if-le v7, v14, :cond_415

    .line 1366
    new-instance v16, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, p1

    invoke-direct/range {v16 .. v21}, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;-><init>(Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v16

    :cond_415
    const/4 v8, 0x2

    .line 1374
    invoke-virtual {v0, v8}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v10

    .line 1376
    new-array v11, v8, [I

    const/16 v18, 0x1

    aput v3, v11, v18

    const/4 v8, 0x0

    aput v7, v11, v8

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[Z

    .line 1377
    new-array v13, v7, [I

    move/from16 v22, v8

    .line 1378
    new-array v8, v7, [I

    move-object/from16 v21, v8

    move/from16 v8, v22

    :goto_433
    if-ge v8, v14, :cond_492

    .line 1380
    aput v22, v13, v8

    .line 1381
    aget v26, v27, v8

    aput v26, v21, v8

    if-nez v10, :cond_458

    move/from16 v26, v8

    .line 1383
    aget-object v8, v11, v26

    move-object/from16 v28, v11

    aget v11, v9, v26

    move-object/from16 v31, v5

    move-object/from16 v30, v13

    move/from16 v5, v22

    const/4 v13, 0x1

    invoke-static {v8, v5, v11, v13}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 1384
    aget v5, v9, v26

    aput v5, v30, v26

    move/from16 v18, v13

    :goto_455
    const/16 v22, 0x0

    goto :goto_489

    :cond_458
    move-object/from16 v31, v5

    move/from16 v26, v8

    move-object/from16 v28, v11

    move-object/from16 v30, v13

    const/4 v13, 0x1

    if-ne v10, v13, :cond_47f

    .line 1386
    aget v5, v27, v26

    const/4 v8, 0x0

    .line 1387
    :goto_466
    aget v11, v9, v26

    if-ge v8, v11, :cond_47a

    .line 1388
    aget-object v11, v28, v26

    aget-object v13, v25, v26

    aget v13, v13, v8

    if-ne v13, v5, :cond_474

    const/4 v13, 0x1

    goto :goto_475

    :cond_474
    const/4 v13, 0x0

    :goto_475
    aput-boolean v13, v11, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_466

    :cond_47a
    const/16 v18, 0x1

    .line 1390
    aput v18, v30, v26

    goto :goto_455

    :cond_47f
    move/from16 v18, v13

    const/16 v22, 0x0

    .line 1392
    aget-object v5, v28, v22

    aput-boolean v18, v5, v22

    .line 1393
    aput v18, v30, v22

    :goto_489
    add-int/lit8 v8, v26, 0x1

    move-object/from16 v11, v28

    move-object/from16 v13, v30

    move-object/from16 v5, v31

    goto :goto_433

    :cond_492
    move-object/from16 v31, v5

    move-object/from16 v28, v11

    move-object/from16 v30, v13

    const/16 v18, 0x1

    .line 1397
    new-array v5, v3, [I

    const/4 v8, 0x2

    .line 1398
    new-array v11, v8, [I

    aput v3, v11, v18

    aput v7, v11, v22

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Z

    const/4 v11, 0x1

    const/4 v12, 0x0

    :goto_4ab
    if-ge v11, v7, :cond_58a

    if-ne v10, v8, :cond_4d1

    const/4 v8, 0x0

    .line 1403
    :goto_4b0
    aget v13, v9, v11

    if-ge v8, v13, :cond_4d1

    .line 1404
    aget-object v13, v28, v11

    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v26

    aput-boolean v26, v13, v8

    .line 1405
    aget v13, v30, v11

    aget-object v26, v28, v11

    aget-boolean v26, v26, v8

    add-int v13, v13, v26

    aput v13, v30, v11

    if-eqz v26, :cond_4ce

    .line 1407
    aget-object v13, v25, v11

    aget v13, v13, v8

    aput v13, v21, v11

    :cond_4ce
    add-int/lit8 v8, v8, 0x1

    goto :goto_4b0

    :cond_4d1
    if-nez v12, :cond_4f6

    .line 1414
    aget-object v8, v25, v11

    const/16 v22, 0x0

    aget v8, v8, v22

    if-nez v8, :cond_4f8

    aget-object v8, v28, v11

    aget-boolean v8, v8, v22

    if-eqz v8, :cond_4f8

    const/4 v8, 0x1

    .line 1415
    :goto_4e2
    aget v13, v9, v11

    if-ge v8, v13, :cond_4f8

    .line 1416
    aget-object v13, v25, v11

    aget v13, v13, v8

    if-ne v13, v4, :cond_4f3

    aget-object v13, v28, v11

    aget-boolean v13, v13, v4

    if-eqz v13, :cond_4f3

    move v12, v11

    :cond_4f3
    add-int/lit8 v8, v8, 0x1

    goto :goto_4e2

    :cond_4f6
    const/16 v22, 0x0

    :cond_4f8
    move/from16 v8, v22

    .line 1423
    :goto_4fa
    aget v13, v9, v11

    if-ge v8, v13, :cond_56d

    const/4 v13, 0x1

    if-le v1, v13, :cond_560

    .line 1425
    aget-object v13, v3, v11

    aget-object v26, v28, v11

    aget-boolean v26, v26, v8

    aput-boolean v26, v13, v8

    move v13, v4

    move-object/from16 v26, v5

    int-to-double v4, v1

    move/from16 v27, v1

    .line 1426
    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v4, v5, v1}, Lcom/google/common/math/DoubleMath;->log2(DLjava/math/RoundingMode;)I

    move-result v1

    .line 1427
    aget-object v4, v3, v11

    aget-boolean v4, v4, v8

    if-nez v4, :cond_54b

    .line 1428
    aget-object v4, v25, v11

    aget v4, v4, v8

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/container/NalUnitUtil$H265LayerInfo;

    iget v4, v4, Lio/bidmachine/media3/container/NalUnitUtil$H265LayerInfo;->layerIdInVps:I

    move/from16 v5, v22

    :goto_529
    if-ge v5, v8, :cond_54b

    .line 1430
    aget-object v32, v25, v11

    move/from16 v33, v4

    aget v4, v32, v5

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/container/NalUnitUtil$H265LayerInfo;

    iget v4, v4, Lio/bidmachine/media3/container/NalUnitUtil$H265LayerInfo;->layerIdInVps:I

    .line 1431
    aget-object v32, v17, v33

    aget-boolean v4, v32, v4

    if-eqz v4, :cond_546

    .line 1432
    aget-object v4, v3, v11

    const/16 v18, 0x1

    aput-boolean v18, v4, v8

    goto :goto_54b

    :cond_546
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v33

    goto :goto_529

    .line 1437
    :cond_54b
    :goto_54b
    aget-object v4, v3, v11

    aget-boolean v4, v4, v8

    if-eqz v4, :cond_565

    if-lez v12, :cond_55c

    if-ne v11, v12, :cond_55c

    .line 1440
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    aput v1, v26, v8

    goto :goto_565

    .line 1442
    :cond_55c
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    goto :goto_565

    :cond_560
    move/from16 v27, v1

    move v13, v4

    move-object/from16 v26, v5

    :cond_565
    :goto_565
    add-int/lit8 v8, v8, 0x1

    move v4, v13

    move-object/from16 v5, v26

    move/from16 v1, v27

    goto :goto_4fa

    :cond_56d
    move/from16 v27, v1

    move v13, v4

    move-object/from16 v26, v5

    .line 1447
    aget v1, v30, v11

    const/4 v4, 0x1

    if-ne v1, v4, :cond_580

    aget v1, v21, v11

    aget v1, v24, v1

    if-lez v1, :cond_580

    .line 1449
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBit()V

    :cond_580
    add-int/lit8 v11, v11, 0x1

    move v4, v13

    move-object/from16 v5, v26

    move/from16 v1, v27

    const/4 v8, 0x2

    goto/16 :goto_4ab

    :cond_58a
    move-object/from16 v26, v5

    const/4 v4, 0x1

    if-nez v12, :cond_59d

    .line 1455
    new-instance v16, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, p1

    invoke-direct/range {v16 .. v21}, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;-><init>(Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v16

    :cond_59d
    move/from16 v18, v4

    .line 1463
    invoke-static {v0, v6}, Lio/bidmachine/media3/container/NalUnitUtil;->parseH265RepFormatsAndIndices(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;I)Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormatsAndIndices;

    move-result-object v4

    const/4 v1, 0x2

    .line 1465
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    move/from16 v1, v18

    :goto_5a9
    if-ge v1, v6, :cond_5b7

    .line 1467
    aget v5, v23, v1

    aget v5, v24, v5

    if-nez v5, :cond_5b4

    .line 1468
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBit()V

    :cond_5b4
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a9

    .line 1472
    :cond_5b7
    invoke-static {v0, v7, v15, v9, v3}, Lio/bidmachine/media3/container/NalUnitUtil;->skipH265DpbSize(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;I[I[I[[Z)V

    move-object/from16 v7, v29

    .line 1475
    invoke-static {v0, v6, v7}, Lio/bidmachine/media3/container/NalUnitUtil;->skipToH265VuiPresentFlagAfterDpbSize(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;I[[Z)V

    .line 1478
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_5ce

    .line 1479
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->byteAlign()V

    .line 1481
    invoke-static {v0, v6, v14, v15}, Lio/bidmachine/media3/container/NalUnitUtil;->parseH265VideoSignalInfosAndIndices(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;II[I)Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;

    move-result-object v10

    move-object v5, v10

    goto :goto_5cf

    :cond_5ce
    const/4 v5, 0x0

    .line 1485
    :goto_5cf
    new-instance v0, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;

    new-instance v3, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;

    move-object/from16 v6, v26

    move-object/from16 v1, v31

    invoke-direct {v3, v1, v6}, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;-><init>(Ljava/util/List;[I)V

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;-><init>(Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v0

    .line 1210
    :cond_5e0
    :goto_5e0
    new-instance v16, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, p1

    invoke-direct/range {v16 .. v21}, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;-><init>(Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v16

    .line 1127
    :cond_5ee
    :goto_5ee
    new-instance v16, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, p1

    invoke-direct/range {v16 .. v21}, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;-><init>(Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v16

    .line 1054
    :goto_5fc
    new-instance v16, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, p1

    invoke-direct/range {v16 .. v21}, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;-><init>(Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v16
.end method

.method public static parsePpsNalUnit([BII)Lio/bidmachine/media3/container/NalUnitUtil$PpsData;
    .registers 3

    add-int/lit8 p1, p1, 0x1

    .line 1734
    invoke-static {p0, p1, p2}, Lio/bidmachine/media3/container/NalUnitUtil;->parsePpsNalUnitPayload([BII)Lio/bidmachine/media3/container/NalUnitUtil$PpsData;

    move-result-object p0

    return-object p0
.end method

.method public static parsePpsNalUnitPayload([BII)Lio/bidmachine/media3/container/NalUnitUtil$PpsData;
    .registers 4

    .line 1747
    new-instance v0, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 1748
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result p0

    .line 1749
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result p1

    .line 1750
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 1751
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result p2

    .line 1752
    new-instance v0, Lio/bidmachine/media3/container/NalUnitUtil$PpsData;

    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/media3/container/NalUnitUtil$PpsData;-><init>(IIZ)V

    return-object v0
.end method

.method public static parseSpsNalUnit([BII)Lio/bidmachine/media3/container/NalUnitUtil$SpsData;
    .registers 3

    add-int/lit8 p1, p1, 0x1

    .line 771
    invoke-static {p0, p1, p2}, Lio/bidmachine/media3/container/NalUnitUtil;->parseSpsNalUnitPayload([BII)Lio/bidmachine/media3/container/NalUnitUtil$SpsData;

    move-result-object p0

    return-object p0
.end method

.method public static parseSpsNalUnitPayload([BII)Lio/bidmachine/media3/container/NalUnitUtil$SpsData;
    .registers 35

    .line 784
    new-instance v0, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    const/16 v1, 0x8

    .line 785
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    .line 786
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v4

    .line 787
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v5

    .line 788
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v6

    const/16 v2, 0x56

    const/16 v7, 0x2c

    const/16 v8, 0xf4

    const/16 v9, 0x7a

    const/16 v10, 0x6e

    const/4 v11, 0x3

    const/4 v13, 0x1

    const/16 v15, 0x64

    if-eq v3, v15, :cond_51

    if-eq v3, v10, :cond_51

    if-eq v3, v9, :cond_51

    if-eq v3, v8, :cond_51

    if-eq v3, v7, :cond_51

    const/16 v14, 0x53

    if-eq v3, v14, :cond_51

    if-eq v3, v2, :cond_51

    const/16 v14, 0x76

    if-eq v3, v14, :cond_51

    const/16 v14, 0x80

    if-eq v3, v14, :cond_51

    const/16 v14, 0x8a

    if-ne v3, v14, :cond_48

    goto :goto_51

    :cond_48
    move v14, v13

    const/16 p1, 0x10

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    goto :goto_97

    .line 804
    :cond_51
    :goto_51
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v14

    if-ne v14, v11, :cond_5c

    .line 806
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v16

    goto :goto_5e

    :cond_5c
    const/16 v16, 0x0

    .line 808
    :goto_5e
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v17

    .line 809
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v18

    .line 810
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 811
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v19

    if-eqz v19, :cond_93

    if-eq v14, v11, :cond_75

    move v12, v1

    :goto_72
    const/16 p1, 0x10

    goto :goto_7a

    :cond_75
    const/16 v19, 0xc

    move/from16 v12, v19

    goto :goto_72

    :goto_7a
    const/4 v1, 0x0

    :goto_7b
    if-ge v1, v12, :cond_95

    .line 815
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v19

    if-eqz v19, :cond_8e

    const/4 v8, 0x6

    if-ge v1, v8, :cond_89

    move/from16 v8, p1

    goto :goto_8b

    :cond_89
    const/16 v8, 0x40

    .line 817
    :goto_8b
    invoke-static {v0, v8}, Lio/bidmachine/media3/container/NalUnitUtil;->skipScalingList(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;I)V

    :cond_8e
    add-int/lit8 v1, v1, 0x1

    const/16 v8, 0xf4

    goto :goto_7b

    :cond_93
    const/16 p1, 0x10

    :cond_95
    move/from16 v12, v18

    .line 823
    :goto_97
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 824
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v8

    if-nez v8, :cond_af

    .line 829
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v18

    add-int/lit8 v18, v18, 0x4

    move/from16 v21, v3

    move/from16 v23, v8

    const/4 v2, 0x0

    goto :goto_db

    :cond_af
    if-ne v8, v13, :cond_d5

    .line 831
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v18

    .line 832
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 833
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 834
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v9

    move/from16 v21, v3

    int-to-long v2, v9

    move/from16 v23, v8

    const/4 v9, 0x0

    :goto_c5
    int-to-long v7, v9

    cmp-long v7, v7, v2

    if-gez v7, :cond_d0

    .line 836
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    add-int/lit8 v9, v9, 0x1

    goto :goto_c5

    :cond_d0
    move/from16 v2, v18

    :goto_d2
    const/16 v18, 0x0

    goto :goto_db

    :cond_d5
    move/from16 v21, v3

    move/from16 v23, v8

    const/4 v2, 0x0

    goto :goto_d2

    .line 839
    :goto_db
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v7

    .line 840
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 842
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    add-int/2addr v3, v13

    .line 843
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v8

    add-int/2addr v8, v13

    .line 844
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v9

    rsub-int/lit8 v24, v9, 0x2

    mul-int v24, v24, v8

    if-nez v9, :cond_f9

    .line 847
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 850
    :cond_f9
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBit()V

    mul-int/lit8 v3, v3, 0x10

    mul-int/lit8 v24, v24, 0x10

    .line 853
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v8

    const/16 v25, 0x2

    if-eqz v8, :cond_13b

    .line 855
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v8

    .line 856
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v26

    .line 857
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v27

    .line 858
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v28

    if-nez v14, :cond_11f

    rsub-int/lit8 v14, v9, 0x2

    move/from16 v29, v13

    goto :goto_130

    :cond_11f
    if-ne v14, v11, :cond_124

    move/from16 v29, v13

    goto :goto_126

    :cond_124
    move/from16 v29, v25

    :goto_126
    if-ne v14, v13, :cond_12b

    move/from16 v14, v25

    goto :goto_12c

    :cond_12b
    move v14, v13

    :goto_12c
    rsub-int/lit8 v30, v9, 0x2

    mul-int v14, v14, v30

    :goto_130
    add-int v8, v8, v26

    mul-int v8, v8, v29

    sub-int/2addr v3, v8

    add-int v27, v27, v28

    mul-int v27, v27, v14

    sub-int v24, v24, v27

    :cond_13b
    move v8, v3

    move/from16 v3, v21

    const/16 v14, 0x2c

    if-eq v3, v14, :cond_152

    const/16 v14, 0x56

    if-eq v3, v14, :cond_152

    if-eq v3, v15, :cond_152

    if-eq v3, v10, :cond_152

    const/16 v10, 0x7a

    if-eq v3, v10, :cond_152

    const/16 v10, 0xf4

    if-ne v3, v10, :cond_158

    :cond_152
    and-int/lit8 v10, v4, 0x10

    if-eqz v10, :cond_158

    const/4 v14, 0x0

    goto :goto_15a

    :cond_158
    move/from16 v14, p1

    .line 891
    :goto_15a
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v10

    const/high16 v19, 0x3f800000    # 1.0f

    if-eqz v10, :cond_246

    .line 893
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_1a3

    const/16 v10, 0x8

    .line 895
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v13

    const/16 v10, 0xff

    if-ne v13, v10, :cond_185

    move/from16 v10, p1

    .line 897
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v13

    .line 898
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v10

    if-eqz v13, :cond_1a3

    if-eqz v10, :cond_1a3

    int-to-float v13, v13

    int-to-float v10, v10

    div-float v19, v13, v10

    goto :goto_1a3

    .line 902
    :cond_185
    sget-object v10, Lio/bidmachine/media3/container/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v15, v10

    if-ge v13, v15, :cond_18d

    .line 903
    aget v19, v10, v13

    goto :goto_1a3

    .line 905
    :cond_18d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v13, "NalUnitUtil"

    invoke-static {v13, v10}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    :cond_1a3
    :goto_1a3
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_1ac

    .line 909
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 911
    :cond_1ac
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_1e3

    .line 912
    invoke-virtual {v0, v11}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 914
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_1bd

    const/4 v13, 0x1

    goto :goto_1bf

    :cond_1bd
    move/from16 v13, v25

    .line 915
    :goto_1bf
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_1e0

    const/16 v10, 0x8

    .line 916
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v11

    .line 917
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v15

    .line 918
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 920
    invoke-static {v11}, Lio/bidmachine/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v10

    .line 922
    invoke-static {v15}, Lio/bidmachine/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v15

    move/from16 v31, v15

    move v15, v10

    move/from16 v10, v31

    goto :goto_1e6

    :cond_1e0
    const/4 v10, -0x1

    :goto_1e1
    const/4 v15, -0x1

    goto :goto_1e6

    :cond_1e3
    const/4 v10, -0x1

    const/4 v13, -0x1

    goto :goto_1e1

    .line 925
    :goto_1e6
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_1f2

    .line 926
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 927
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 929
    :cond_1f2
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_1fd

    const/16 v11, 0x41

    .line 930
    invoke-virtual {v0, v11}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 932
    :cond_1fd
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_206

    .line 934
    invoke-static {v0}, Lio/bidmachine/media3/container/NalUnitUtil;->skipHrdParameters(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;)V

    .line 936
    :cond_206
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v20

    if-eqz v20, :cond_20f

    .line 938
    invoke-static {v0}, Lio/bidmachine/media3/container/NalUnitUtil;->skipHrdParameters(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;)V

    :cond_20f
    if-nez v11, :cond_213

    if-eqz v20, :cond_216

    .line 941
    :cond_213
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 943
    :cond_216
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 944
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_235

    .line 945
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 946
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 947
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 948
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 949
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 950
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v14

    .line 951
    invoke-virtual {v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    :cond_235
    move/from16 v21, v10

    move/from16 v20, v13

    move/from16 v22, v14

    move/from16 v11, v17

    move/from16 v17, v18

    move/from16 v10, v19

    move/from16 v18, v2

    move/from16 v19, v15

    goto :goto_256

    :cond_246
    move/from16 v22, v14

    move/from16 v11, v17

    move/from16 v17, v18

    move/from16 v10, v19

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    move/from16 v18, v2

    .line 955
    :goto_256
    new-instance v2, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;

    move v15, v1

    move v14, v9

    move/from16 v13, v16

    move/from16 v16, v23

    move/from16 v9, v24

    invoke-direct/range {v2 .. v22}, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;-><init>(IIIIIIIFIIZZIIIZIIII)V

    return-object v2
.end method

.method public static skipH265DpbSize(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;I[I[I[[Z)V
    .registers 12

    const/4 v0, 0x1

    move v1, v0

    :goto_2
    if-ge v1, p1, :cond_3b

    .line 2244
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    .line 2245
    :goto_a
    aget v5, p2, v1

    if-ge v4, v5, :cond_38

    if-lez v4, :cond_17

    if-eqz v2, :cond_17

    .line 2248
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v5

    goto :goto_1c

    :cond_17
    if-nez v4, :cond_1b

    move v5, v0

    goto :goto_1c

    :cond_1b
    move v5, v3

    :goto_1c
    if-eqz v5, :cond_35

    move v5, v3

    .line 2253
    :goto_1f
    aget v6, p3, v1

    if-ge v5, v6, :cond_2f

    .line 2255
    aget-object v6, p4, v1

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_2c

    .line 2256
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 2259
    :cond_2f
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 2260
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3b
    return-void
.end method

.method public static skipH265HrdParameters(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;ZI)V
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_2e

    .line 2041
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result p1

    .line 2042
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-nez p1, :cond_12

    if-eqz v1, :cond_10

    goto :goto_12

    :cond_10
    move v2, v0

    goto :goto_31

    .line 2044
    :cond_12
    :goto_12
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v3, 0x13

    .line 2048
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    :cond_1d
    const/16 v3, 0x8

    .line 2050
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    if-eqz v2, :cond_28

    const/4 v3, 0x4

    .line 2052
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    :cond_28
    const/16 v3, 0xf

    .line 2056
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    goto :goto_31

    :cond_2e
    move p1, v0

    move v1, p1

    move v2, v1

    :goto_31
    move v3, v0

    :goto_32
    if-gt v3, p2, :cond_73

    .line 2060
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    if-nez v4, :cond_3e

    .line 2065
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    :cond_3e
    if-eqz v4, :cond_45

    .line 2068
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move v4, v0

    goto :goto_49

    .line 2070
    :cond_45
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    :goto_49
    if-nez v4, :cond_50

    .line 2073
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    goto :goto_51

    :cond_50
    move v4, v0

    :goto_51
    add-int v5, p1, v1

    move v6, v0

    :goto_54
    if-ge v6, v5, :cond_70

    move v7, v0

    :goto_57
    if-gt v7, v4, :cond_6d

    .line 2080
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 2081
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    if-eqz v2, :cond_67

    .line 2083
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 2084
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 2086
    :cond_67
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBit()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_57

    :cond_6d
    add-int/lit8 v6, v6, 0x1

    goto :goto_54

    :cond_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_73
    return-void
.end method

.method public static skipH265ScalingList(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;)V
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_36

    move v3, v0

    :goto_6
    const/4 v4, 0x6

    if-ge v3, v4, :cond_33

    .line 2408
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_14

    .line 2410
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    goto :goto_2d

    :cond_14
    shl-int/lit8 v4, v1, 0x1

    add-int/2addr v4, v2

    shl-int v4, v5, v4

    const/16 v6, 0x40

    .line 2412
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-le v1, v5, :cond_24

    .line 2415
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    :cond_24
    move v6, v0

    :goto_25
    if-ge v6, v4, :cond_2d

    .line 2418
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    :cond_2d
    :goto_2d
    const/4 v4, 0x3

    if-ne v1, v4, :cond_31

    move v5, v4

    :cond_31
    add-int/2addr v3, v5

    goto :goto_6

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_36
    return-void
.end method

.method public static skipH265ShortTermReferencePictureSets(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;)V
    .registers 19

    .line 2432
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    const/4 v1, 0x0

    .line 2439
    new-array v2, v1, [I

    .line 2440
    new-array v3, v1, [I

    const/4 v4, -0x1

    move v6, v1

    move v5, v4

    :goto_c
    if-ge v6, v0, :cond_10c

    const/4 v7, 0x1

    if-eqz v6, :cond_c0

    .line 2447
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v8

    if-eqz v8, :cond_c0

    add-int v8, v4, v5

    .line 2451
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v9

    .line 2452
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    add-int/2addr v10, v7

    mul-int/lit8 v9, v9, 0x2

    rsub-int/lit8 v9, v9, 0x1

    mul-int/2addr v9, v10

    add-int/lit8 v10, v8, 0x1

    .line 2455
    new-array v11, v10, [Z

    move v12, v1

    :goto_2c
    if-gt v12, v8, :cond_40

    .line 2457
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v13

    if-nez v13, :cond_3b

    .line 2458
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v13

    aput-boolean v13, v11, v12

    goto :goto_3d

    .line 2461
    :cond_3b
    aput-boolean v7, v11, v12

    :goto_3d
    add-int/lit8 v12, v12, 0x1

    goto :goto_2c

    .line 2468
    :cond_40
    new-array v7, v10, [I

    .line 2469
    new-array v10, v10, [I

    add-int/lit8 v12, v5, -0x1

    move v13, v1

    :goto_47
    if-ltz v12, :cond_5c

    .line 2471
    aget v14, v3, v12

    add-int/2addr v14, v9

    if-gez v14, :cond_59

    add-int v15, v4, v12

    .line 2472
    aget-boolean v15, v11, v15

    if-eqz v15, :cond_59

    add-int/lit8 v15, v13, 0x1

    .line 2473
    aput v14, v7, v13

    move v13, v15

    :cond_59
    add-int/lit8 v12, v12, -0x1

    goto :goto_47

    :cond_5c
    if-gez v9, :cond_67

    .line 2476
    aget-boolean v12, v11, v8

    if-eqz v12, :cond_67

    add-int/lit8 v12, v13, 0x1

    .line 2477
    aput v9, v7, v13

    move v13, v12

    :cond_67
    move v12, v1

    :goto_68
    if-ge v12, v4, :cond_7b

    .line 2480
    aget v14, v2, v12

    add-int/2addr v14, v9

    if-gez v14, :cond_78

    .line 2481
    aget-boolean v15, v11, v12

    if-eqz v15, :cond_78

    add-int/lit8 v15, v13, 0x1

    .line 2482
    aput v14, v7, v13

    move v13, v15

    :cond_78
    add-int/lit8 v12, v12, 0x1

    goto :goto_68

    .line 2486
    :cond_7b
    invoke-static {v7, v13}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    add-int/lit8 v12, v4, -0x1

    move v14, v1

    :goto_82
    if-ltz v12, :cond_96

    .line 2490
    aget v15, v2, v12

    add-int/2addr v15, v9

    if-lez v15, :cond_93

    .line 2491
    aget-boolean v16, v11, v12

    if-eqz v16, :cond_93

    add-int/lit8 v16, v14, 0x1

    .line 2492
    aput v15, v10, v14

    move/from16 v14, v16

    :cond_93
    add-int/lit8 v12, v12, -0x1

    goto :goto_82

    :cond_96
    if-lez v9, :cond_a1

    .line 2495
    aget-boolean v2, v11, v8

    if-eqz v2, :cond_a1

    add-int/lit8 v2, v14, 0x1

    .line 2496
    aput v9, v10, v14

    move v14, v2

    :cond_a1
    move v2, v1

    :goto_a2
    if-ge v2, v5, :cond_b7

    .line 2499
    aget v8, v3, v2

    add-int/2addr v8, v9

    if-lez v8, :cond_b4

    add-int v12, v4, v2

    .line 2500
    aget-boolean v12, v11, v12

    if-eqz v12, :cond_b4

    add-int/lit8 v12, v14, 0x1

    .line 2501
    aput v8, v10, v14

    move v14, v12

    :cond_b4
    add-int/lit8 v2, v2, 0x1

    goto :goto_a2

    .line 2505
    :cond_b7
    invoke-static {v10, v14}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    move-object v3, v2

    move-object v2, v7

    move v4, v13

    move v5, v14

    goto :goto_108

    .line 2507
    :cond_c0
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    .line 2508
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    .line 2509
    new-array v4, v2, [I

    move v5, v1

    :goto_cb
    if-ge v5, v2, :cond_e3

    if-lez v5, :cond_d4

    add-int/lit8 v8, v5, -0x1

    .line 2512
    aget v8, v4, v8

    goto :goto_d5

    :cond_d4
    move v8, v1

    :goto_d5
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v9

    add-int/2addr v9, v7

    sub-int/2addr v8, v9

    aput v8, v4, v5

    .line 2513
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBit()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_cb

    .line 2515
    :cond_e3
    new-array v5, v3, [I

    move v8, v1

    :goto_e6
    if-ge v8, v3, :cond_fe

    if-lez v8, :cond_ef

    add-int/lit8 v9, v8, -0x1

    .line 2518
    aget v9, v5, v9

    goto :goto_f0

    :cond_ef
    move v9, v1

    :goto_f0
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    add-int/2addr v10, v7

    add-int/2addr v9, v10

    aput v9, v5, v8

    .line 2519
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBit()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_e6

    :cond_fe
    move-object/from16 v17, v4

    move v4, v2

    move-object/from16 v2, v17

    move-object/from16 v17, v5

    move v5, v3

    move-object/from16 v3, v17

    :goto_108
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_c

    :cond_10c
    return-void
.end method

.method public static skipHrdParameters(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;)V
    .registers 3

    .line 2391
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x8

    .line 2392
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_1a

    .line 2394
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 2395
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 2396
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBit()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1a
    const/16 v0, 0x14

    .line 2402
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    return-void
.end method

.method public static skipScalingList(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;I)V
    .registers 5

    const/16 v0, 0x8

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_5
    if-ge v2, p1, :cond_19

    if-eqz v0, :cond_12

    .line 2382
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x100

    .line 2383
    rem-int/lit16 v0, v0, 0x100

    :cond_12
    if-nez v0, :cond_15

    goto :goto_16

    :cond_15
    move v1, v0

    :goto_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_19
    return-void
.end method

.method public static skipToH265VuiPresentFlagAfterDpbSize(Lio/bidmachine/media3/container/ParsableNalUnitBitArray;I[[Z)V
    .registers 8

    .line 2273
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 2274
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    .line 2275
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    goto :goto_26

    :cond_11
    move v1, v2

    :goto_12
    if-ge v1, p1, :cond_26

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v1, :cond_23

    .line 2281
    aget-object v4, p2, v1

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_20

    .line 2282
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 2287
    :cond_26
    :goto_26
    invoke-virtual {p0}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result p1

    :goto_2a
    if-gt v2, p1, :cond_34

    const/16 p2, 0x8

    .line 2289
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_34
    return-void
.end method

.method public static unescapeStream([BI)I
    .registers 10

    .line 540
    sget-object v0, Lio/bidmachine/media3/container/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_6
    :goto_6
    if-ge v2, p1, :cond_29

    .line 544
    :try_start_8
    invoke-static {p0, v2, p1}, Lio/bidmachine/media3/container/NalUnitUtil;->findNextUnescapeIndex([BII)I

    move-result v2

    if-ge v2, p1, :cond_6

    .line 546
    sget-object v4, Lio/bidmachine/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    array-length v5, v4

    if-gt v5, v3, :cond_1f

    .line 548
    array-length v5, v4

    mul-int/lit8 v5, v5, 0x2

    .line 549
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    sput-object v4, Lio/bidmachine/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    goto :goto_1f

    :catchall_1d
    move-exception p0

    goto :goto_4d

    .line 551
    :cond_1f
    :goto_1f
    sget-object v4, Lio/bidmachine/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    add-int/lit8 v5, v3, 0x1

    aput v2, v4, v3

    add-int/lit8 v2, v2, 0x3

    move v3, v5

    goto :goto_6

    :cond_29
    sub-int/2addr p1, v3

    move v2, v1

    move v4, v2

    move v5, v4

    :goto_2d
    if-ge v2, v3, :cond_46

    .line 560
    sget-object v6, Lio/bidmachine/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    aget v6, v6, v2

    sub-int/2addr v6, v5

    .line 562
    invoke-static {p0, v5, p0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    add-int/lit8 v7, v4, 0x1

    .line 564
    aput-byte v1, p0, v4

    add-int/lit8 v4, v4, 0x2

    .line 565
    aput-byte v1, p0, v7

    add-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_46
    sub-int v1, p1, v4

    .line 570
    invoke-static {p0, v5, p0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 571
    monitor-exit v0

    return p1

    .line 572
    :goto_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_8 .. :try_end_4e} :catchall_1d

    throw p0
.end method

###### Class io.bidmachine.media3.container.NalUnitUtil.H265LayerInfo (io.bidmachine.media3.container.NalUnitUtil$H265LayerInfo)
.class public final Lio/bidmachine/media3/container/NalUnitUtil$H265LayerInfo;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/container/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "H265LayerInfo"
.end annotation


# instance fields
.field public final layerIdInVps:I

.field public final viewId:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput p1, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265LayerInfo;->layerIdInVps:I

    .line 234
    iput p2, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265LayerInfo;->viewId:I

    return-void
.end method

###### Class io.bidmachine.media3.container.NalUnitUtil.H265NalHeader (io.bidmachine.media3.container.NalUnitUtil$H265NalHeader)
.class public final Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/container/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "H265NalHeader"
.end annotation


# instance fields
.field public final layerId:I

.field public final nalUnitType:I

.field public final temporalId:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput p1, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;->nalUnitType:I

    .line 219
    iput p2, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;->layerId:I

    .line 220
    iput p3, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;->temporalId:I

    return-void
.end method

###### Class io.bidmachine.media3.container.NalUnitUtil.H265ProfileTierLevel (io.bidmachine.media3.container.NalUnitUtil$H265ProfileTierLevel)
.class public final Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/container/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "H265ProfileTierLevel"
.end annotation


# instance fields
.field public final constraintBytes:[I

.field public final generalLevelIdc:I

.field public final generalProfileCompatibilityFlags:I

.field public final generalProfileIdc:I

.field public final generalProfileSpace:I

.field public final generalTierFlag:Z


# direct methods
.method public constructor <init>(IZII[II)V
    .registers 7

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput p1, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileSpace:I

    .line 256
    iput-boolean p2, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalTierFlag:Z

    .line 257
    iput p3, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileIdc:I

    .line 258
    iput p4, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileCompatibilityFlags:I

    .line 259
    iput-object p5, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;->constraintBytes:[I

    .line 260
    iput p6, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalLevelIdc:I

    return-void
.end method

###### Class io.bidmachine.media3.container.NalUnitUtil.H265ProfileTierLevelsAndIndices (io.bidmachine.media3.container.NalUnitUtil$H265ProfileTierLevelsAndIndices)
.class public final Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/container/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "H265ProfileTierLevelsAndIndices"
.end annotation


# instance fields
.field public final indices:[I

.field public final profileTierLevels:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;[I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;",
            ">;[I)V"
        }
    .end annotation

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;->profileTierLevels:Lcom/google/common/collect/ImmutableList;

    .line 278
    iput-object p2, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;->indices:[I

    return-void
.end method

###### Class io.bidmachine.media3.container.NalUnitUtil.H265RepFormat (io.bidmachine.media3.container.NalUnitUtil$H265RepFormat)
.class public final Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormat;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/container/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "H265RepFormat"
.end annotation


# instance fields
.field public final bitDepthChromaMinus8:I

.field public final bitDepthLumaMinus8:I

.field public final chromaFormatIdc:I

.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(IIIII)V
    .registers 6

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput p1, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormat;->chromaFormatIdc:I

    .line 298
    iput p2, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormat;->bitDepthLumaMinus8:I

    .line 299
    iput p3, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormat;->bitDepthChromaMinus8:I

    .line 300
    iput p4, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormat;->width:I

    .line 301
    iput p5, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormat;->height:I

    return-void
.end method

###### Class io.bidmachine.media3.container.NalUnitUtil.H265RepFormatsAndIndices (io.bidmachine.media3.container.NalUnitUtil$H265RepFormatsAndIndices)
.class public final Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormatsAndIndices;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/container/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "H265RepFormatsAndIndices"
.end annotation


# instance fields
.field public final indices:[I

.field public final repFormats:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;[I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormat;",
            ">;[I)V"
        }
    .end annotation

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormatsAndIndices;->repFormats:Lcom/google/common/collect/ImmutableList;

    .line 319
    iput-object p2, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormatsAndIndices;->indices:[I

    return-void
.end method

###### Class io.bidmachine.media3.container.NalUnitUtil.H265Sei3dRefDisplayInfoData (io.bidmachine.media3.container.NalUnitUtil$H265Sei3dRefDisplayInfoData)
.class public final Lio/bidmachine/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/container/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "H265Sei3dRefDisplayInfoData"
.end annotation


# instance fields
.field public final exponentRefDisplayWidth:I

.field public final exponentRefViewingDist:I

.field public final leftViewId:I

.field public final mantissaRefDisplayWidth:I

.field public final mantissaRefViewingDist:I

.field public final numRefDisplays:I

.field public final precRefDisplayWidth:I

.field public final precRefViewingDist:I

.field public final rightViewId:I


# direct methods
.method public constructor <init>(IIIIIIIII)V
    .registers 10

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput p1, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;->precRefDisplayWidth:I

    .line 479
    iput p2, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;->precRefViewingDist:I

    .line 480
    iput p3, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;->numRefDisplays:I

    .line 481
    iput p4, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;->leftViewId:I

    .line 482
    iput p5, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;->rightViewId:I

    .line 483
    iput p6, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;->exponentRefDisplayWidth:I

    .line 484
    iput p7, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;->mantissaRefDisplayWidth:I

    .line 485
    iput p8, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;->exponentRefViewingDist:I

    .line 486
    iput p9, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;->mantissaRefViewingDist:I

    return-void
.end method

###### Class io.bidmachine.media3.container.NalUnitUtil.H265SpsData (io.bidmachine.media3.container.NalUnitUtil$H265SpsData)
.class public final Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/container/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "H265SpsData"
.end annotation


# instance fields
.field public final bitDepthChromaMinus8:I

.field public final bitDepthLumaMinus8:I

.field public final chromaFormatIdc:I

.field public final colorRange:I

.field public final colorSpace:I

.field public final colorTransfer:I

.field public final height:I

.field public final maxNumReorderPics:I

.field public final maxSubLayersMinus1:I

.field public final nalHeader:Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;

.field public final pixelWidthHeightRatio:F

.field public final profileTierLevel:Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;

.field public final seqParameterSetId:I

.field public final width:I


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;ILio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;IIIIIIFIIII)V
    .registers 15

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput-object p1, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->nalHeader:Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;

    .line 423
    iput p2, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->maxSubLayersMinus1:I

    .line 424
    iput-object p3, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->profileTierLevel:Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevel;

    .line 425
    iput p4, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->chromaFormatIdc:I

    .line 426
    iput p5, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->bitDepthLumaMinus8:I

    .line 427
    iput p6, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->bitDepthChromaMinus8:I

    .line 428
    iput p7, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->seqParameterSetId:I

    .line 429
    iput p8, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->width:I

    .line 430
    iput p9, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->height:I

    .line 431
    iput p10, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->pixelWidthHeightRatio:F

    .line 432
    iput p11, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->maxNumReorderPics:I

    .line 433
    iput p12, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->colorSpace:I

    .line 434
    iput p13, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->colorRange:I

    .line 435
    iput p14, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265SpsData;->colorTransfer:I

    return-void
.end method

###### Class io.bidmachine.media3.container.NalUnitUtil.H265VideoSignalInfo (io.bidmachine.media3.container.NalUnitUtil$H265VideoSignalInfo)
.class public final Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfo;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/container/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "H265VideoSignalInfo"
.end annotation


# instance fields
.field public final colorRange:I

.field public final colorSpace:I

.field public final colorTransfer:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput p1, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfo;->colorSpace:I

    .line 335
    iput p2, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfo;->colorRange:I

    .line 336
    iput p3, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfo;->colorTransfer:I

    return-void
.end method

###### Class io.bidmachine.media3.container.NalUnitUtil.H265VideoSignalInfosAndIndices (io.bidmachine.media3.container.NalUnitUtil$H265VideoSignalInfosAndIndices)
.class public final Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/container/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "H265VideoSignalInfosAndIndices"
.end annotation


# instance fields
.field public final indices:[I

.field public final videoSignalInfos:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;[I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfo;",
            ">;[I)V"
        }
    .end annotation

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;->videoSignalInfos:Lcom/google/common/collect/ImmutableList;

    .line 355
    iput-object p2, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;->indices:[I

    return-void
.end method

###### Class io.bidmachine.media3.container.NalUnitUtil.H265VpsData (io.bidmachine.media3.container.NalUnitUtil$H265VpsData)
.class public final Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/container/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "H265VpsData"
.end annotation


# instance fields
.field public final layerInfos:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/container/NalUnitUtil$H265LayerInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final nalHeader:Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;

.field public final profileTierLevelsAndIndices:Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;

.field public final repFormatsAndIndices:Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormatsAndIndices;

.field public final videoSignalInfosAndIndices:Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/container/NalUnitUtil$H265LayerInfo;",
            ">;",
            "Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;",
            "Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormatsAndIndices;",
            "Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;",
            ")V"
        }
    .end annotation

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    iput-object p1, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;->nalHeader:Lio/bidmachine/media3/container/NalUnitUtil$H265NalHeader;

    if-eqz p2, :cond_c

    .line 382
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    goto :goto_10

    :cond_c
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    :goto_10
    iput-object p1, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;->layerInfos:Lcom/google/common/collect/ImmutableList;

    .line 383
    iput-object p3, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;->profileTierLevelsAndIndices:Lio/bidmachine/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;

    .line 384
    iput-object p4, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;->repFormatsAndIndices:Lio/bidmachine/media3/container/NalUnitUtil$H265RepFormatsAndIndices;

    .line 385
    iput-object p5, p0, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;->videoSignalInfosAndIndices:Lio/bidmachine/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;

    return-void
.end method

###### Class io.bidmachine.media3.container.NalUnitUtil.PpsData (io.bidmachine.media3.container.NalUnitUtil$PpsData)
.class public final Lio/bidmachine/media3/container/NalUnitUtil$PpsData;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/container/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PpsData"
.end annotation


# instance fields
.field public final bottomFieldPicOrderInFramePresentFlag:Z

.field public final picParameterSetId:I

.field public final seqParameterSetId:I


# direct methods
.method public constructor <init>(IIZ)V
    .registers 4

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput p1, p0, Lio/bidmachine/media3/container/NalUnitUtil$PpsData;->picParameterSetId:I

    .line 451
    iput p2, p0, Lio/bidmachine/media3/container/NalUnitUtil$PpsData;->seqParameterSetId:I

    .line 452
    iput-boolean p3, p0, Lio/bidmachine/media3/container/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    return-void
.end method

###### Class io.bidmachine.media3.container.NalUnitUtil.SpsData (io.bidmachine.media3.container.NalUnitUtil$SpsData)
.class public final Lio/bidmachine/media3/container/NalUnitUtil$SpsData;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/container/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpsData"
.end annotation


# instance fields
.field public final bitDepthChromaMinus8:I

.field public final bitDepthLumaMinus8:I

.field public final colorRange:I

.field public final colorSpace:I

.field public final colorTransfer:I

.field public final constraintsFlagsAndReservedZero2Bits:I

.field public final deltaPicOrderAlwaysZeroFlag:Z

.field public final frameMbsOnlyFlag:Z

.field public final frameNumLength:I

.field public final height:I

.field public final levelIdc:I

.field public final maxNumRefFrames:I

.field public final maxNumReorderFrames:I

.field public final picOrderCntLsbLength:I

.field public final picOrderCountType:I

.field public final pixelWidthHeightRatio:F

.field public final profileIdc:I

.field public final separateColorPlaneFlag:Z

.field public final seqParameterSetId:I

.field public final width:I


# direct methods
.method public constructor <init>(IIIIIIIFIIZZIIIZIIII)V
    .registers 21

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput p1, p0, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->profileIdc:I

    .line 188
    iput p2, p0, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->constraintsFlagsAndReservedZero2Bits:I

    .line 189
    iput p3, p0, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->levelIdc:I

    .line 190
    iput p4, p0, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->seqParameterSetId:I

    .line 191
    iput p5, p0, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->maxNumRefFrames:I

    .line 192
    iput p6, p0, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->width:I

    .line 193
    iput p7, p0, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->height:I

    .line 194
    iput p8, p0, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->pixelWidthHeightRatio:F

    .line 195
    iput p9, p0, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->bitDepthLumaMinus8:I

    .line 196
    iput p10, p0, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->bitDepthChromaMinus8:I

    .line 197
    iput-boolean p11, p0, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->separateColorPlaneFlag:Z

    .line 198
    iput-boolean p12, p0, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->frameMbsOnlyFlag:Z

    .line 199
    iput p13, p0, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->frameNumLength:I

    .line 200
    iput p14, p0, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->picOrderCountType:I

    .line 201
    iput p15, p0, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    move/from16 p1, p16

    .line 202
    iput-boolean p1, p0, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->deltaPicOrderAlwaysZeroFlag:Z

    move/from16 p1, p17

    .line 203
    iput p1, p0, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->colorSpace:I

    move/from16 p1, p18

    .line 204
    iput p1, p0, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->colorRange:I

    move/from16 p1, p19

    .line 205
    iput p1, p0, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->colorTransfer:I

    move/from16 p1, p20

    .line 206
    iput p1, p0, Lio/bidmachine/media3/container/NalUnitUtil$SpsData;->maxNumReorderFrames:I

    return-void
.end method
