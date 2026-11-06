###### Class io.bidmachine.media3.extractor.mp4.BoxParser (io.bidmachine.media3.extractor.mp4.BoxParser)
.class public final Lio/bidmachine/media3/extractor/mp4/BoxParser;
.super Ljava/lang/Object;
.source "BoxParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/mp4/BoxParser$TkhdData;,
        Lio/bidmachine/media3/extractor/mp4/BoxParser$MdhdData;,
        Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;,
        Lio/bidmachine/media3/extractor/mp4/BoxParser$StszSampleSizeBox;,
        Lio/bidmachine/media3/extractor/mp4/BoxParser$Stz2SampleSizeBox;,
        Lio/bidmachine/media3/extractor/mp4/BoxParser$SampleSizeBox;,
        Lio/bidmachine/media3/extractor/mp4/BoxParser$ChunkIterator;,
        Lio/bidmachine/media3/extractor/mp4/BoxParser$VexuData;,
        Lio/bidmachine/media3/extractor/mp4/BoxParser$EyesData;,
        Lio/bidmachine/media3/extractor/mp4/BoxParser$StriData;,
        Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;,
        Lio/bidmachine/media3/extractor/mp4/BoxParser$BtrtData;
    }
.end annotation


# static fields
.field public static final opusMagic:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 113
    const-string v0, "OpusHead"

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/extractor/mp4/BoxParser;->opusMagic:[B

    return-void
.end method

.method public static allocateHdrStaticInfo()Ljava/nio/ByteBuffer;
    .registers 2

    const/16 v0, 0x19

    .line 1814
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static canApplyEditWithGaplessInfo([JJJJ)Z
    .registers 14

    .line 2499
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 2500
    invoke-static {v2, v3, v0}, Lio/bidmachine/media3/common/util/Util;->constrainValue(III)I

    move-result v4

    .line 2501
    array-length v5, p0

    sub-int/2addr v5, v2

    .line 2502
    invoke-static {v5, v3, v0}, Lio/bidmachine/media3/common/util/Util;->constrainValue(III)I

    move-result v0

    .line 2503
    aget-wide v5, p0, v3

    cmp-long v2, v5, p3

    if-gtz v2, :cond_26

    aget-wide v4, p0, v4

    cmp-long p3, p3, v4

    if-gez p3, :cond_26

    aget-wide p3, p0, v0

    cmp-long p0, p3, p5

    if-gez p0, :cond_26

    cmp-long p0, p5, p1

    if-gtz p0, :cond_26

    return v1

    :cond_26
    return v3
.end method

.method public static findBoxPosition(Lio/bidmachine/media3/common/util/ParsableByteArray;III)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 2224
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, p2, :cond_a

    move v3, v2

    goto :goto_b

    :cond_a
    move v3, v1

    :goto_b
    const/4 v4, 0x0

    .line 2225
    invoke-static {v3, v4}, Lio/bidmachine/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    :goto_f
    sub-int v3, v0, p2

    if-ge v3, p3, :cond_2d

    .line 2227
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2228
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    if-lez v3, :cond_1e

    move v4, v2

    goto :goto_1f

    :cond_1e
    move v4, v1

    .line 2229
    :goto_1f
    const-string v5, "childAtomSize must be positive"

    invoke-static {v4, v5}, Lio/bidmachine/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2230
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    if-ne v4, p1, :cond_2b

    return v0

    :cond_2b
    add-int/2addr v0, v3

    goto :goto_f

    :cond_2d
    const/4 p0, -0x1

    return p0
.end method

.method public static getLanguageFromCode(I)Ljava/lang/String;
    .registers 6

    shr-int/lit8 v0, p0, 0xa

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    shr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    and-int/lit8 p0, p0, 0x1f

    add-int/lit8 p0, p0, 0x60

    int-to-char p0, p0

    const/4 v2, 0x3

    .line 1045
    new-array v3, v2, [C

    const/4 v4, 0x0

    aput-char v0, v3, v4

    const/4 v0, 0x1

    aput-char v1, v3, v0

    const/4 v1, 0x2

    aput-char p0, v3, v1

    :goto_1f
    if-ge v4, v2, :cond_30

    .line 1051
    aget-char p0, v3, v4

    const/16 v1, 0x61

    if-lt p0, v1, :cond_2e

    const/16 v1, 0x7a

    if-le p0, v1, :cond_2c

    goto :goto_2e

    :cond_2c
    add-int/2addr v4, v0

    goto :goto_1f

    :cond_2e
    :goto_2e
    const/4 p0, 0x0

    return-object p0

    .line 1056
    :cond_30
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static getTrackTypeForHdlr(I)I
    .registers 2

    .line 0
    const v0, 0x736f756e

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const v0, 0x76696465

    if-ne p0, v0, :cond_e

    const/4 p0, 0x2

    return p0

    :cond_e
    const v0, 0x74657874

    if-eq p0, v0, :cond_2c

    const v0, 0x7362746c

    if-eq p0, v0, :cond_2c

    const v0, 0x73756274

    if-eq p0, v0, :cond_2c

    const v0, 0x636c6370

    if-ne p0, v0, :cond_23

    goto :goto_2c

    :cond_23
    const v0, 0x6d657461

    if-ne p0, v0, :cond_2a

    const/4 p0, 0x5

    return p0

    :cond_2a
    const/4 p0, -0x1

    return p0

    :cond_2c
    :goto_2c
    const/4 p0, 0x3

    return p0
.end method

.method public static maybeSkipRemainingMetaBoxHeaderBytes(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 4

    .line 301
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    const/4 v1, 0x4

    .line 306
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 307
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    const v2, 0x68646c72    # 4.3148E24f

    if-eq v1, v2, :cond_13

    add-int/lit8 v0, v0, 0x4

    .line 310
    :cond_13
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-void
.end method

.method public static parseApvc(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/common/ColorInfo;
    .registers 12

    .line 1772
    new-instance v0, Lio/bidmachine/media3/common/ColorInfo$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/ColorInfo$Builder;-><init>()V

    .line 1773
    new-instance v1, Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 1774
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result p0

    const/16 v2, 0x8

    mul-int/2addr p0, v2

    invoke-virtual {v1, p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->setPosition(I)V

    const/4 p0, 0x1

    .line 1776
    invoke-virtual {v1, p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 1777
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_22
    if-ge v5, v3, :cond_7f

    .line 1779
    invoke-virtual {v1, p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 1780
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    move v7, v4

    :goto_2c
    if-ge v7, v6, :cond_7c

    const/4 v8, 0x6

    .line 1782
    invoke-virtual {v1, v8}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1784
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v8

    .line 1785
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBit()V

    const/16 v9, 0xb

    .line 1788
    invoke-virtual {v1, v9}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBytes(I)V

    const/4 v9, 0x4

    .line 1789
    invoke-virtual {v1, v9}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1790
    invoke-virtual {v1, v9}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    add-int/2addr v9, v2

    .line 1791
    invoke-virtual {v0, v9}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    .line 1792
    invoke-virtual {v0, v9}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    .line 1793
    invoke-virtual {v1, p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBytes(I)V

    if-eqz v8, :cond_79

    .line 1795
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 1796
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 1797
    invoke-virtual {v1, p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 1798
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v10

    .line 1800
    invoke-static {v8}, Lio/bidmachine/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v8

    invoke-virtual {v0, v8}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setColorSpace(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    move-result-object v8

    if-eqz v10, :cond_6d

    move v10, p0

    goto :goto_6e

    :cond_6d
    const/4 v10, 0x2

    .line 1801
    :goto_6e
    invoke-virtual {v8, v10}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setColorRange(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    move-result-object v8

    .line 1803
    invoke-static {v9}, Lio/bidmachine/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v9

    .line 1802
    invoke-virtual {v8, v9}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setColorTransfer(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    :cond_79
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    :cond_7c
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 1807
    :cond_7f
    invoke-virtual {v0}, Lio/bidmachine/media3/common/ColorInfo$Builder;->build()Lio/bidmachine/media3/common/ColorInfo;

    move-result-object p0

    return-object p0
.end method

.method public static parseAudioSampleEntry(Lio/bidmachine/media3/common/util/ParsableByteArray;IIIILjava/lang/String;ZLio/bidmachine/media3/common/DrmInitData;Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;I)V
    .registers 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    add-int/lit8 v8, v2, 0x10

    .line 1882
    invoke-virtual {v0, v8}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v8, 0x6

    const/16 v9, 0x8

    if-eqz p6, :cond_22

    .line 1886
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v11

    .line 1887
    invoke-virtual {v0, v8}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_26

    .line 1889
    :cond_22
    invoke-virtual {v0, v9}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const/4 v11, 0x0

    :goto_26
    const/4 v14, 0x4

    const/4 v12, 0x2

    const/16 v17, 0x3

    const/4 v13, 0x1

    const/16 v10, 0x10

    if-eqz v11, :cond_31

    if-ne v11, v13, :cond_37

    :cond_31
    move/from16 v21, v12

    move/from16 v20, v14

    goto/16 :goto_9e

    :cond_37
    if-ne v11, v12, :cond_4b8

    .line 1913
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1915
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readDouble()D

    move-result-wide v19

    move/from16 v21, v12

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v8, v12

    .line 1916
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v11

    .line 1918
    invoke-virtual {v0, v14}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1919
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v12

    .line 1920
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v13

    and-int/lit8 v19, v13, 0x1

    if-eqz v19, :cond_5d

    const/16 v19, 0x1

    goto :goto_5f

    :cond_5d
    const/16 v19, 0x0

    :goto_5f
    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_67

    const/4 v13, 0x1

    :goto_64
    move/from16 v20, v14

    goto :goto_69

    :cond_67
    const/4 v13, 0x0

    goto :goto_64

    :goto_69
    const/16 v14, 0x20

    if-nez v19, :cond_92

    if-ne v12, v9, :cond_72

    move/from16 v10, v17

    goto :goto_98

    :cond_72
    if-ne v12, v10, :cond_7c

    if-eqz v13, :cond_79

    const/high16 v10, 0x10000000

    goto :goto_98

    :cond_79
    move/from16 v10, v21

    goto :goto_98

    :cond_7c
    const/16 v10, 0x18

    if-ne v12, v10, :cond_88

    if-eqz v13, :cond_85

    const/high16 v10, 0x50000000

    goto :goto_98

    :cond_85
    const/16 v10, 0x15

    goto :goto_98

    :cond_88
    if-ne v12, v14, :cond_97

    if-eqz v13, :cond_8f

    const/high16 v10, 0x60000000

    goto :goto_98

    :cond_8f
    const/16 v10, 0x16

    goto :goto_98

    :cond_92
    if-ne v12, v14, :cond_97

    move/from16 v10, v20

    goto :goto_98

    :cond_97
    const/4 v10, -0x1

    .line 1936
    :goto_98
    invoke-virtual {v0, v9}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    move v9, v11

    const/4 v12, 0x0

    goto :goto_bd

    .line 1901
    :goto_9e
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    .line 1902
    invoke-virtual {v0, v8}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1904
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v8

    .line 1906
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v12

    add-int/lit8 v12, v12, -0x4

    invoke-virtual {v0, v12}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1907
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v12

    const/4 v13, 0x1

    if-ne v11, v13, :cond_bc

    .line 1910
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_bc
    const/4 v10, -0x1

    :goto_bd
    const v11, 0x73617762

    const v13, 0x73616d72

    const v14, 0x69616d66

    if-ne v1, v14, :cond_cb

    const/4 v8, -0x1

    const/4 v9, -0x1

    goto :goto_d6

    :cond_cb
    if-ne v1, v13, :cond_d1

    const/16 v8, 0x1f40

    :goto_cf
    const/4 v9, 0x1

    goto :goto_d6

    :cond_d1
    if-ne v1, v11, :cond_d6

    const/16 v8, 0x3e80

    goto :goto_cf

    .line 1958
    :cond_d6
    :goto_d6
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v14

    const v15, 0x656e6361

    if-ne v1, v15, :cond_106

    .line 1962
    invoke-static {v0, v2, v3}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseSampleEntryEncryptionData(Lio/bidmachine/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v15

    if-eqz v15, :cond_103

    .line 1964
    iget-object v1, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v6, :cond_f1

    const/4 v6, 0x0

    goto :goto_fb

    .line 1968
    :cond_f1
    iget-object v11, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;

    iget-object v11, v11, Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v6, v11}, Lio/bidmachine/media3/common/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lio/bidmachine/media3/common/DrmInitData;

    move-result-object v6

    .line 1969
    :goto_fb
    iget-object v11, v7, Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;->trackEncryptionBoxes:[Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;

    iget-object v15, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;

    aput-object v15, v11, p9

    .line 1971
    :cond_103
    invoke-virtual {v0, v14}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    :cond_106
    const v11, 0x61632d33

    .line 1980
    const-string v15, "audio/mhm1"

    if-ne v1, v11, :cond_111

    .line 1981
    const-string v1, "audio/ac3"

    goto/16 :goto_1d4

    :cond_111
    const v11, 0x65632d33

    if-ne v1, v11, :cond_11a

    .line 1983
    const-string v1, "audio/eac3"

    goto/16 :goto_1d4

    :cond_11a
    const v11, 0x61632d34

    if-ne v1, v11, :cond_123

    .line 1985
    const-string v1, "audio/ac4"

    goto/16 :goto_1d4

    :cond_123
    const v11, 0x64747363

    if-ne v1, v11, :cond_12c

    .line 1987
    const-string v1, "audio/vnd.dts"

    goto/16 :goto_1d4

    :cond_12c
    const v11, 0x64747368

    if-eq v1, v11, :cond_1d2

    const v11, 0x6474736c

    if-ne v1, v11, :cond_138

    goto/16 :goto_1d2

    :cond_138
    const v11, 0x64747365

    if-ne v1, v11, :cond_141

    .line 1991
    const-string v1, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_1d4

    :cond_141
    const v11, 0x64747378

    if-ne v1, v11, :cond_14a

    .line 1993
    const-string v1, "audio/vnd.dts.uhd;profile=p2"

    goto/16 :goto_1d4

    :cond_14a
    if-ne v1, v13, :cond_150

    .line 1995
    const-string v1, "audio/3gpp"

    goto/16 :goto_1d4

    :cond_150
    const v11, 0x73617762

    if-ne v1, v11, :cond_159

    .line 1997
    const-string v1, "audio/amr-wb"

    goto/16 :goto_1d4

    :cond_159
    const v11, 0x736f7774

    .line 1998
    const-string v13, "audio/raw"

    if-ne v1, v11, :cond_165

    :goto_160
    move-object v1, v13

    move/from16 v10, v21

    goto/16 :goto_1d4

    :cond_165
    const v11, 0x74776f73

    if-ne v1, v11, :cond_16f

    move-object v1, v13

    const/high16 v10, 0x10000000

    goto/16 :goto_1d4

    :cond_16f
    const v11, 0x6c70636d

    if-ne v1, v11, :cond_17b

    const/4 v11, -0x1

    if-ne v10, v11, :cond_178

    goto :goto_160

    :cond_178
    move-object v1, v13

    goto/16 :goto_1d4

    :cond_17b
    const v11, 0x2e6d7032

    if-eq v1, v11, :cond_1cf

    const v11, 0x2e6d7033

    if-ne v1, v11, :cond_186

    goto :goto_1cf

    :cond_186
    const v11, 0x6d686131

    if-ne v1, v11, :cond_18e

    .line 2012
    const-string v1, "audio/mha1"

    goto :goto_1d4

    :cond_18e
    const v11, 0x6d686d31

    if-ne v1, v11, :cond_195

    move-object v1, v15

    goto :goto_1d4

    :cond_195
    const v11, 0x616c6163

    if-ne v1, v11, :cond_19d

    .line 2016
    const-string v1, "audio/alac"

    goto :goto_1d4

    :cond_19d
    const v11, 0x616c6177

    if-ne v1, v11, :cond_1a5

    .line 2018
    const-string v1, "audio/g711-alaw"

    goto :goto_1d4

    :cond_1a5
    const v11, 0x756c6177

    if-ne v1, v11, :cond_1ad

    .line 2020
    const-string v1, "audio/g711-mlaw"

    goto :goto_1d4

    :cond_1ad
    const v11, 0x4f707573

    if-ne v1, v11, :cond_1b5

    .line 2022
    const-string v1, "audio/opus"

    goto :goto_1d4

    :cond_1b5
    const v11, 0x664c6143

    if-ne v1, v11, :cond_1bd

    .line 2024
    const-string v1, "audio/flac"

    goto :goto_1d4

    :cond_1bd
    const v11, 0x6d6c7061

    if-ne v1, v11, :cond_1c5

    .line 2026
    const-string v1, "audio/true-hd"

    goto :goto_1d4

    :cond_1c5
    const v11, 0x69616d66

    if-ne v1, v11, :cond_1cd

    .line 2028
    const-string v1, "audio/iamf"

    goto :goto_1d4

    :cond_1cd
    const/4 v1, 0x0

    goto :goto_1d4

    .line 2010
    :cond_1cf
    :goto_1cf
    const-string v1, "audio/mpeg"

    goto :goto_1d4

    .line 1989
    :cond_1d2
    :goto_1d2
    const-string v1, "audio/vnd.dts.hd"

    :goto_1d4
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    :goto_1da
    sub-int v2, v14, p2

    if-ge v2, v3, :cond_44c

    .line 2033
    invoke-virtual {v0, v14}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2034
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    if-lez v2, :cond_1eb

    const/4 v3, 0x1

    :goto_1e8
    move/from16 v23, v10

    goto :goto_1ed

    :cond_1eb
    const/4 v3, 0x0

    goto :goto_1e8

    .line 2035
    :goto_1ed
    const-string v10, "childAtomSize must be positive"

    invoke-static {v3, v10}, Lio/bidmachine/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2036
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    const v10, 0x6d686143

    if-ne v3, v10, :cond_25f

    add-int/lit8 v3, v14, 0x8

    .line 2041
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v3, 0x1

    .line 2042
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2043
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    .line 2044
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2046
    invoke-static {v1, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_221

    .line 2047
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v10, "mhm1.%02X"

    invoke-static {v10, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_21f
    move-object v11, v3

    goto :goto_230

    .line 2048
    :cond_221
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v10, "mha1.%02X"

    invoke-static {v10, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_21f

    .line 2049
    :goto_230
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    .line 2050
    new-array v10, v3, [B

    move-object/from16 p7, v11

    const/4 v11, 0x0

    .line 2051
    invoke-virtual {v0, v10, v11, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    if-nez v13, :cond_244

    .line 2054
    invoke-static {v10}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    :goto_242
    move-object v13, v3

    goto :goto_24f

    .line 2058
    :cond_244
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v10, v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    goto :goto_242

    :goto_24f
    move-object/from16 v11, p7

    :cond_251
    move-object/from16 p7, v15

    :goto_253
    move/from16 v15, v20

    :goto_255
    const/4 v10, -0x1

    const/16 v18, 0x0

    const v20, 0x616c6163

    const/16 v22, 0x1

    goto/16 :goto_441

    :cond_25f
    const v10, 0x6d686150

    if-ne v3, v10, :cond_289

    add-int/lit8 v3, v14, 0x8

    .line 2063
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2064
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    if-lez v3, :cond_251

    .line 2066
    new-array v10, v3, [B

    move-object/from16 p7, v15

    const/4 v15, 0x0

    .line 2067
    invoke-virtual {v0, v10, v15, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    if-nez v13, :cond_27e

    .line 2069
    invoke-static {v10}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v13

    goto :goto_253

    .line 2074
    :cond_27e
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3, v10}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v13

    goto :goto_253

    :cond_289
    move-object/from16 p7, v15

    const v10, 0x65736473

    if-eq v3, v10, :cond_297

    if-eqz p6, :cond_2a2

    const v15, 0x77617665

    if-ne v3, v15, :cond_2a2

    :cond_297
    move/from16 v15, v20

    const/16 v18, 0x0

    const v20, 0x616c6163

    const/16 v22, 0x1

    goto/16 :goto_3fe

    :cond_2a2
    const v10, 0x62747274

    if-ne v3, v10, :cond_2ac

    .line 2106
    invoke-static {v0, v14}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseBtrtFromParent(Lio/bidmachine/media3/common/util/ParsableByteArray;I)Lio/bidmachine/media3/extractor/mp4/BoxParser$BtrtData;

    move-result-object v19

    goto :goto_253

    :cond_2ac
    const v10, 0x64616333

    if-ne v3, v10, :cond_2c8

    add-int/lit8 v3, v14, 0x8

    .line 2108
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2110
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v5, v6}, Lio/bidmachine/media3/extractor/Ac3Util;->parseAc3AnnexFFormat(Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lio/bidmachine/media3/common/DrmInitData;)Lio/bidmachine/media3/common/Format;

    move-result-object v3

    iput-object v3, v7, Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;->format:Lio/bidmachine/media3/common/Format;

    :goto_2c0
    move/from16 v15, v20

    const/16 v18, 0x0

    const/16 v22, 0x1

    goto/16 :goto_3fb

    :cond_2c8
    const v10, 0x64656333

    if-ne v3, v10, :cond_2dd

    add-int/lit8 v3, v14, 0x8

    .line 2112
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2114
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v5, v6}, Lio/bidmachine/media3/extractor/Ac3Util;->parseEAc3AnnexFFormat(Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lio/bidmachine/media3/common/DrmInitData;)Lio/bidmachine/media3/common/Format;

    move-result-object v3

    iput-object v3, v7, Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;->format:Lio/bidmachine/media3/common/Format;

    goto :goto_2c0

    :cond_2dd
    const v10, 0x64616334

    if-ne v3, v10, :cond_2f2

    add-int/lit8 v3, v14, 0x8

    .line 2116
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2118
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v5, v6}, Lio/bidmachine/media3/extractor/Ac4Util;->parseAc4AnnexEFormat(Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lio/bidmachine/media3/common/DrmInitData;)Lio/bidmachine/media3/common/Format;

    move-result-object v3

    iput-object v3, v7, Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;->format:Lio/bidmachine/media3/common/Format;

    goto :goto_2c0

    :cond_2f2
    const v10, 0x646d6c70

    if-ne v3, v10, :cond_317

    if-lez v12, :cond_300

    move v8, v12

    move/from16 v15, v20

    move/from16 v9, v21

    goto/16 :goto_255

    .line 2121
    :cond_300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x0

    invoke-static {v0, v15}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_317
    const/4 v15, 0x0

    const v10, 0x64647473

    if-eq v3, v10, :cond_322

    const v10, 0x75647473

    if-ne v3, v10, :cond_32a

    :cond_322
    move/from16 v15, v20

    const/16 v18, 0x0

    const/16 v22, 0x1

    goto/16 :goto_3d8

    :cond_32a
    const v10, 0x644f7073

    if-ne v3, v10, :cond_348

    add-int/lit8 v3, v2, -0x8

    .line 2144
    sget-object v10, Lio/bidmachine/media3/extractor/mp4/BoxParser;->opusMagic:[B

    array-length v13, v10

    add-int/2addr v13, v3

    invoke-static {v10, v13}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v13

    add-int/lit8 v15, v14, 0x8

    .line 2145
    invoke-virtual {v0, v15}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2146
    array-length v10, v10

    invoke-virtual {v0, v13, v10, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 2147
    invoke-static {v13}, Lio/bidmachine/media3/extractor/OpusUtil;->buildInitializationData([B)Ljava/util/List;

    move-result-object v13

    goto/16 :goto_253

    :cond_348
    const v10, 0x64664c61

    if-ne v3, v10, :cond_37d

    add-int/lit8 v3, v2, -0xc

    add-int/lit8 v10, v2, -0x8

    .line 2150
    new-array v10, v10, [B

    const/16 v13, 0x66

    const/16 v18, 0x0

    .line 2151
    aput-byte v13, v10, v18

    const/16 v13, 0x4c

    const/16 v22, 0x1

    .line 2152
    aput-byte v13, v10, v22

    const/16 v13, 0x61

    .line 2153
    aput-byte v13, v10, v21

    const/16 v13, 0x43

    .line 2154
    aput-byte v13, v10, v17

    add-int/lit8 v13, v14, 0xc

    .line 2155
    invoke-virtual {v0, v13}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    move/from16 v15, v20

    .line 2156
    invoke-virtual {v0, v10, v15, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 2157
    invoke-static {v10}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v13

    const/4 v10, -0x1

    const/16 v18, 0x0

    :goto_378
    const v20, 0x616c6163

    goto/16 :goto_441

    :cond_37d
    move/from16 v15, v20

    const v10, 0x616c6163

    const/16 v22, 0x1

    if-ne v3, v10, :cond_3b4

    add-int/lit8 v3, v2, -0xc

    .line 2160
    new-array v8, v3, [B

    add-int/lit8 v9, v14, 0xc

    .line 2161
    invoke-virtual {v0, v9}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v9, 0x0

    .line 2162
    invoke-virtual {v0, v8, v9, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 2166
    invoke-static {v8}, Lio/bidmachine/media3/common/util/CodecSpecificDataUtil;->parseAlacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v3

    .line 2167
    iget-object v9, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2168
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2169
    invoke-static {v8}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v13

    move v8, v9

    move/from16 v20, v10

    const/4 v10, -0x1

    const/16 v18, 0x0

    move v9, v3

    goto/16 :goto_441

    :cond_3b4
    const v10, 0x69616362

    if-ne v3, v10, :cond_3d5

    add-int/lit8 v3, v14, 0x9

    .line 2171
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2173
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedLeb128ToInt()I

    move-result v3

    .line 2174
    new-array v10, v3, [B

    const/4 v13, 0x0

    .line 2175
    invoke-virtual {v0, v10, v13, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 2176
    invoke-static {v10}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    move/from16 v18, v13

    const/4 v10, -0x1

    const v20, 0x616c6163

    move-object v13, v3

    goto/16 :goto_441

    :cond_3d5
    const/16 v18, 0x0

    goto :goto_3fb

    .line 2131
    :goto_3d8
    new-instance v3, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v3}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    .line 2133
    invoke-virtual {v3, v4}, Lio/bidmachine/media3/common/Format$Builder;->setId(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v3

    .line 2134
    invoke-virtual {v3, v1}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v3

    .line 2135
    invoke-virtual {v3, v9}, Lio/bidmachine/media3/common/Format$Builder;->setChannelCount(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v3

    .line 2136
    invoke-virtual {v3, v8}, Lio/bidmachine/media3/common/Format$Builder;->setSampleRate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v3

    .line 2137
    invoke-virtual {v3, v6}, Lio/bidmachine/media3/common/Format$Builder;->setDrmInitData(Lio/bidmachine/media3/common/DrmInitData;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v3

    .line 2138
    invoke-virtual {v3, v5}, Lio/bidmachine/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v3

    .line 2139
    invoke-virtual {v3}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v3

    iput-object v3, v7, Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;->format:Lio/bidmachine/media3/common/Format;

    :goto_3fb
    const/4 v10, -0x1

    goto/16 :goto_378

    :goto_3fe
    if-ne v3, v10, :cond_403

    move v3, v14

    :goto_401
    const/4 v10, -0x1

    goto :goto_408

    .line 2082
    :cond_403
    invoke-static {v0, v10, v14, v2}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->findBoxPosition(Lio/bidmachine/media3/common/util/ParsableByteArray;III)I

    move-result v3

    goto :goto_401

    :goto_408
    if-eq v3, v10, :cond_441

    .line 2084
    invoke-static {v0, v3}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseEsdsFromParent(Lio/bidmachine/media3/common/util/ParsableByteArray;I)Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;

    move-result-object v16

    .line 2085
    invoke-static/range {v16 .. v16}, Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;->access$1000(Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;)Ljava/lang/String;

    move-result-object v1

    .line 2086
    invoke-static/range {v16 .. v16}, Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;->access$1100(Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;)[B

    move-result-object v3

    if-eqz v3, :cond_441

    .line 2088
    const-string v13, "audio/vorbis"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_425

    .line 2090
    invoke-static {v3}, Lio/bidmachine/media3/extractor/VorbisUtil;->parseVorbisCsdFromEsdsInitializationData([B)Lcom/google/common/collect/ImmutableList;

    move-result-object v13

    goto :goto_441

    .line 2092
    :cond_425
    const-string v13, "audio/mp4a-latm"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_43d

    .line 2096
    invoke-static {v3}, Lio/bidmachine/media3/extractor/AacUtil;->parseAudioSpecificConfig([B)Lio/bidmachine/media3/extractor/AacUtil$Config;

    move-result-object v8

    .line 2097
    iget v9, v8, Lio/bidmachine/media3/extractor/AacUtil$Config;->sampleRateHz:I

    .line 2098
    iget v11, v8, Lio/bidmachine/media3/extractor/AacUtil$Config;->channelCount:I

    .line 2099
    iget-object v8, v8, Lio/bidmachine/media3/extractor/AacUtil$Config;->codecs:Ljava/lang/String;

    move/from16 v24, v11

    move-object v11, v8

    move v8, v9

    move/from16 v9, v24

    .line 2101
    :cond_43d
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v13

    :cond_441
    :goto_441
    add-int/2addr v14, v2

    move/from16 v3, p3

    move/from16 v20, v15

    move/from16 v10, v23

    move-object/from16 v15, p7

    goto/16 :goto_1da

    :cond_44c
    move/from16 v23, v10

    .line 2181
    iget-object v0, v7, Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;->format:Lio/bidmachine/media3/common/Format;

    if-nez v0, :cond_4b8

    if-eqz v1, :cond_4b8

    .line 2182
    new-instance v0, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    .line 2184
    invoke-virtual {v0, v4}, Lio/bidmachine/media3/common/Format$Builder;->setId(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 2185
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 2186
    invoke-virtual {v0, v11}, Lio/bidmachine/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 2187
    invoke-virtual {v0, v9}, Lio/bidmachine/media3/common/Format$Builder;->setChannelCount(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 2188
    invoke-virtual {v0, v8}, Lio/bidmachine/media3/common/Format$Builder;->setSampleRate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    move/from16 v10, v23

    .line 2189
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/common/Format$Builder;->setPcmEncoding(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 2190
    invoke-virtual {v0, v13}, Lio/bidmachine/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 2191
    invoke-virtual {v0, v6}, Lio/bidmachine/media3/common/Format$Builder;->setDrmInitData(Lio/bidmachine/media3/common/DrmInitData;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 2192
    invoke-virtual {v0, v5}, Lio/bidmachine/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    if-eqz v16, :cond_499

    .line 2197
    invoke-static/range {v16 .. v16}, Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;->access$1500(Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setAverageBitrate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    .line 2198
    invoke-static/range {v16 .. v16}, Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;->access$1400(Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/Format$Builder;->setPeakBitrate(I)Lio/bidmachine/media3/common/Format$Builder;

    goto :goto_4b2

    :cond_499
    if-eqz v19, :cond_4b2

    .line 2201
    invoke-static/range {v19 .. v19}, Lio/bidmachine/media3/extractor/mp4/BoxParser$BtrtData;->access$1300(Lio/bidmachine/media3/extractor/mp4/BoxParser$BtrtData;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setAverageBitrate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    .line 2202
    invoke-static/range {v19 .. v19}, Lio/bidmachine/media3/extractor/mp4/BoxParser$BtrtData;->access$1200(Lio/bidmachine/media3/extractor/mp4/BoxParser$BtrtData;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/Format$Builder;->setPeakBitrate(I)Lio/bidmachine/media3/common/Format$Builder;

    .line 2205
    :cond_4b2
    :goto_4b2
    invoke-virtual {v0}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v0

    iput-object v0, v7, Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;->format:Lio/bidmachine/media3/common/Format;

    :cond_4b8
    return-void
.end method

.method public static parseAv1c(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/common/ColorInfo;
    .registers 16

    .line 1644
    new-instance v0, Lio/bidmachine/media3/common/ColorInfo$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/ColorInfo$Builder;-><init>()V

    .line 1645
    new-instance v1, Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 1646
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result p0

    const/16 v2, 0x8

    mul-int/2addr p0, v2

    invoke-virtual {v1, p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->setPosition(I)V

    const/4 p0, 0x1

    .line 1650
    invoke-virtual {v1, p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBytes(I)V

    const/4 v3, 0x3

    .line 1651
    invoke-virtual {v1, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    const/4 v5, 0x6

    .line 1652
    invoke-virtual {v1, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1653
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    .line 1654
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    const/16 v7, 0xc

    const/16 v8, 0xa

    const/4 v9, 0x2

    if-ne v4, v9, :cond_45

    if-eqz v5, :cond_45

    if-eqz v6, :cond_3a

    move v4, v7

    goto :goto_3b

    :cond_3a
    move v4, v8

    .line 1656
    :goto_3b
    invoke-virtual {v0, v4}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    if-eqz v6, :cond_41

    move v8, v7

    .line 1657
    :cond_41
    invoke-virtual {v0, v8}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    goto :goto_56

    :cond_45
    if-gt v4, v9, :cond_56

    if-eqz v5, :cond_4b

    move v4, v8

    goto :goto_4c

    :cond_4b
    move v4, v2

    .line 1659
    :goto_4c
    invoke-virtual {v0, v4}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    if-eqz v5, :cond_52

    goto :goto_53

    :cond_52
    move v8, v2

    .line 1660
    :goto_53
    invoke-virtual {v0, v8}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    :cond_56
    :goto_56
    const/16 v4, 0xd

    .line 1664
    invoke-virtual {v1, v4}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1667
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBit()V

    const/4 v5, 0x4

    .line 1668
    invoke-virtual {v1, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 1669
    const-string v8, "BoxParsers"

    if-eq v6, p0, :cond_80

    .line 1670
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported obu_type: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lio/bidmachine/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    invoke-virtual {v0}, Lio/bidmachine/media3/common/ColorInfo$Builder;->build()Lio/bidmachine/media3/common/ColorInfo;

    move-result-object p0

    return-object p0

    .line 1673
    :cond_80
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_90

    .line 1674
    const-string p0, "Unsupported obu_extension_flag"

    invoke-static {v8, p0}, Lio/bidmachine/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    invoke-virtual {v0}, Lio/bidmachine/media3/common/ColorInfo$Builder;->build()Lio/bidmachine/media3/common/ColorInfo;

    move-result-object p0

    return-object p0

    .line 1677
    :cond_90
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    .line 1678
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBit()V

    if-eqz v6, :cond_ab

    .line 1680
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    const/16 v10, 0x7f

    if-le v6, v10, :cond_ab

    .line 1681
    const-string p0, "Excessive obu_size"

    invoke-static {v8, p0}, Lio/bidmachine/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    invoke-virtual {v0}, Lio/bidmachine/media3/common/ColorInfo$Builder;->build()Lio/bidmachine/media3/common/ColorInfo;

    move-result-object p0

    return-object p0

    .line 1685
    :cond_ab
    invoke-virtual {v1, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 1686
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBit()V

    .line 1687
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_c2

    .line 1688
    const-string p0, "Unsupported reduced_still_picture_header"

    invoke-static {v8, p0}, Lio/bidmachine/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    invoke-virtual {v0}, Lio/bidmachine/media3/common/ColorInfo$Builder;->build()Lio/bidmachine/media3/common/ColorInfo;

    move-result-object p0

    return-object p0

    .line 1691
    :cond_c2
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_d2

    .line 1692
    const-string p0, "Unsupported timing_info_present_flag"

    invoke-static {v8, p0}, Lio/bidmachine/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    invoke-virtual {v0}, Lio/bidmachine/media3/common/ColorInfo$Builder;->build()Lio/bidmachine/media3/common/ColorInfo;

    move-result-object p0

    return-object p0

    .line 1695
    :cond_d2
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_e2

    .line 1696
    const-string p0, "Unsupported initial_display_delay_present_flag"

    invoke-static {v8, p0}, Lio/bidmachine/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    invoke-virtual {v0}, Lio/bidmachine/media3/common/ColorInfo$Builder;->build()Lio/bidmachine/media3/common/ColorInfo;

    move-result-object p0

    return-object p0

    :cond_e2
    const/4 v8, 0x5

    .line 1699
    invoke-virtual {v1, v8}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v10

    const/4 v11, 0x0

    move v12, v11

    :goto_e9
    const/4 v13, 0x7

    if-gt v12, v10, :cond_fb

    .line 1701
    invoke-virtual {v1, v7}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1702
    invoke-virtual {v1, v8}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v14

    if-le v14, v13, :cond_f8

    .line 1704
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBit()V

    :cond_f8
    add-int/lit8 v12, v12, 0x1

    goto :goto_e9

    .line 1707
    :cond_fb
    invoke-virtual {v1, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 1708
    invoke-virtual {v1, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    add-int/2addr v7, p0

    .line 1709
    invoke-virtual {v1, v7}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    add-int/2addr v5, p0

    .line 1710
    invoke-virtual {v1, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1711
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_114

    .line 1712
    invoke-virtual {v1, v13}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1714
    :cond_114
    invoke-virtual {v1, v13}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1715
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_120

    .line 1717
    invoke-virtual {v1, v9}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1720
    :cond_120
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v7

    if-eqz v7, :cond_128

    move v7, v9

    goto :goto_12c

    .line 1722
    :cond_128
    invoke-virtual {v1, p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    :goto_12c
    if-lez v7, :cond_137

    .line 1724
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v7

    if-nez v7, :cond_137

    .line 1725
    invoke-virtual {v1, p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_137
    if-eqz v5, :cond_13c

    .line 1729
    invoke-virtual {v1, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1731
    :cond_13c
    invoke-virtual {v1, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1733
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-ne v6, v9, :cond_14a

    if-eqz v3, :cond_14a

    .line 1735
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBit()V

    :cond_14a
    if-eq v6, p0, :cond_153

    .line 1738
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_153

    move v11, p0

    .line 1740
    :cond_153
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_18a

    .line 1741
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 1742
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 1743
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    if-nez v11, :cond_16f

    if-ne v3, p0, :cond_16f

    if-ne v5, v4, :cond_16f

    if-nez v2, :cond_16f

    move v1, p0

    goto :goto_173

    .line 1750
    :cond_16f
    invoke-virtual {v1, p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 1752
    :goto_173
    invoke-static {v3}, Lio/bidmachine/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setColorSpace(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    move-result-object v2

    if-ne v1, p0, :cond_17e

    goto :goto_17f

    :cond_17e
    move p0, v9

    .line 1753
    :goto_17f
    invoke-virtual {v2, p0}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setColorRange(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    move-result-object p0

    .line 1755
    invoke-static {v5}, Lio/bidmachine/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v1

    .line 1754
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setColorTransfer(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    .line 1757
    :cond_18a
    invoke-virtual {v0}, Lio/bidmachine/media3/common/ColorInfo$Builder;->build()Lio/bidmachine/media3/common/ColorInfo;

    move-result-object p0

    return-object p0
.end method

.method public static parseBtrtFromParent(Lio/bidmachine/media3/common/util/ParsableByteArray;I)Lio/bidmachine/media3/extractor/mp4/BoxParser$BtrtData;
    .registers 5

    add-int/lit8 p1, p1, 0x8

    .line 2298
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 p1, 0x4

    .line 2300
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2301
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    .line 2302
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide p0

    .line 2304
    new-instance v2, Lio/bidmachine/media3/extractor/mp4/BoxParser$BtrtData;

    invoke-direct {v2, p0, p1, v0, v1}, Lio/bidmachine/media3/extractor/mp4/BoxParser$BtrtData;-><init>(JJ)V

    return-object v2
.end method

.method public static parseCommonEncryptionSinfFromParent(Lio/bidmachine/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x8

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v1

    move v7, v2

    move-object v4, v3

    move-object v6, v4

    :goto_9
    sub-int v8, v0, p1

    if-ge v8, p2, :cond_3d

    .line 2390
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2391
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v8

    .line 2392
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    const v10, 0x66726d61

    if-ne v9, v10, :cond_26

    .line 2394
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_3b

    :cond_26
    const v10, 0x7363686d

    if-ne v9, v10, :cond_34

    const/4 v4, 0x4

    .line 2396
    invoke-virtual {p0, v4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2398
    invoke-virtual {p0, v4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3b

    :cond_34
    const v10, 0x73636869

    if-ne v9, v10, :cond_3b

    move v5, v0

    move v7, v8

    :cond_3b
    :goto_3b
    add-int/2addr v0, v8

    goto :goto_9

    .line 2406
    :cond_3d
    const-string p1, "cenc"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    const-string p1, "cbc1"

    .line 2407
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    const-string p1, "cens"

    .line 2408
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    const-string p1, "cbcs"

    .line 2409
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    goto :goto_5f

    :cond_5e
    return-object v3

    :cond_5f
    :goto_5f
    const/4 p1, 0x1

    if-eqz v6, :cond_64

    move p2, p1

    goto :goto_65

    :cond_64
    move p2, v2

    .line 2410
    :goto_65
    const-string v0, "frma atom is mandatory"

    invoke-static {p2, v0}, Lio/bidmachine/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    if-eq v5, v1, :cond_6e

    move p2, p1

    goto :goto_6f

    :cond_6e
    move p2, v2

    .line 2411
    :goto_6f
    const-string v0, "schi atom is mandatory"

    invoke-static {p2, v0}, Lio/bidmachine/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2415
    invoke-static {p0, v5, v7, v4}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseSchiFromParent(Lio/bidmachine/media3/common/util/ParsableByteArray;IILjava/lang/String;)Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object p0

    if-eqz p0, :cond_7b

    move v2, p1

    .line 2417
    :cond_7b
    const-string p1, "tenc atom is mandatory"

    invoke-static {v2, p1}, Lio/bidmachine/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2418
    invoke-static {p0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;

    invoke-static {v6, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static parseEdts(Lio/bidmachine/media3/container/Mp4Box$ContainerBox;)Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/container/Mp4Box$ContainerBox;",
            ")",
            "Landroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    const v0, 0x656c7374

    .line 1838
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    move-result-object p0

    if-nez p0, :cond_b

    const/4 p0, 0x0

    return-object p0

    .line 1842
    :cond_b
    iget-object p0, p0, Lio/bidmachine/media3/container/Mp4Box$LeafBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/16 v0, 0x8

    .line 1843
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1844
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1845
    invoke-static {v0}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v0

    .line 1846
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 1847
    new-array v2, v1, [J

    .line 1848
    new-array v3, v1, [J

    const/4 v4, 0x0

    :goto_23
    if-ge v4, v1, :cond_56

    const/4 v5, 0x1

    if-ne v0, v5, :cond_2d

    .line 1851
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    goto :goto_31

    :cond_2d
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    :goto_31
    aput-wide v6, v2, v4

    if-ne v0, v5, :cond_3a

    .line 1852
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v6

    goto :goto_3f

    :cond_3a
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    int-to-long v6, v6

    :goto_3f
    aput-wide v6, v3, v4

    .line 1853
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readShort()S

    move-result v6

    if-ne v6, v5, :cond_4e

    const/4 v5, 0x2

    .line 1858
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 1856
    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported media rate."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1860
    :cond_56
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static parseEsdsFromParent(Lio/bidmachine/media3/common/util/ParsableByteArray;I)Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;
    .registers 12

    add-int/lit8 p1, p1, 0xc

    .line 2241
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 p1, 0x1

    .line 2243
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2244
    invoke-static {p0}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseExpandableClassSize(Lio/bidmachine/media3/common/util/ParsableByteArray;)I

    const/4 v0, 0x2

    .line 2245
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2247
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1b

    .line 2249
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_1b
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_26

    .line 2252
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_26
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2d

    .line 2255
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2259
    :cond_2d
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2260
    invoke-static {p0}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseExpandableClassSize(Lio/bidmachine/media3/common/util/ParsableByteArray;)I

    .line 2263
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 2264
    invoke-static {v0}, Lio/bidmachine/media3/common/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v2

    .line 2265
    const-string v0, "audio/mpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    const-string v0, "audio/vnd.dts"

    .line 2266
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    const-string v0, "audio/vnd.dts.hd"

    .line 2267
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    goto :goto_86

    :cond_54
    const/4 v0, 0x4

    .line 2275
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2276
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    .line 2277
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    .line 2280
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2281
    invoke-static {p0}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseExpandableClassSize(Lio/bidmachine/media3/common/util/ParsableByteArray;)I

    move-result p1

    move-wide v4, v3

    .line 2282
    new-array v3, p1, [B

    const/4 v6, 0x0

    .line 2283
    invoke-virtual {p0, v3, v6, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    move-wide p0, v0

    .line 2286
    new-instance v1, Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    const-wide/16 v8, -0x1

    if-lez v0, :cond_7a

    goto :goto_7b

    :cond_7a
    move-wide v4, v8

    :goto_7b
    cmp-long v0, p0, v6

    if-lez v0, :cond_81

    move-wide v6, p0

    goto :goto_82

    :cond_81
    move-wide v6, v8

    .line 2290
    :goto_82
    invoke-direct/range {v1 .. v7}, Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;-><init>(Ljava/lang/String;[BJJ)V

    return-object v1

    .line 2268
    :cond_86
    :goto_86
    new-instance v1, Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v7}, Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;-><init>(Ljava/lang/String;[BJJ)V

    return-object v1
.end method

.method public static parseExpandableClassSize(Lio/bidmachine/media3/common/util/ParsableByteArray;)I
    .registers 4

    .line 2487
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_6
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_15

    .line 2490
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_6

    :cond_15
    return v1
.end method

.method public static parseFullBoxFlags(I)I
    .registers 2

    .line 0
    const v0, 0xffffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static parseFullBoxVersion(I)I
    .registers 1

    .line 0
    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static parseHdlr(Lio/bidmachine/media3/common/util/ParsableByteArray;)I
    .registers 2

    const/16 v0, 0x10

    .line 984
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 985
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result p0

    return p0
.end method

.method public static parseIlst(Lio/bidmachine/media3/common/util/ParsableByteArray;I)Lio/bidmachine/media3/common/Metadata;
    .registers 4

    const/16 v0, 0x8

    .line 883
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 884
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 885
    :cond_a
    :goto_a
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    if-ge v1, p1, :cond_1a

    .line 886
    invoke-static {p0}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->parseIlstElement(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/common/Metadata$Entry;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 888
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 891
    :cond_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x0

    return-object p0

    :cond_22
    new-instance p0, Lio/bidmachine/media3/common/Metadata;

    invoke-direct {p0, v0}, Lio/bidmachine/media3/common/Metadata;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static parseMdhd(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/mp4/BoxParser$MdhdData;
    .registers 11

    const/16 v0, 0x8

    .line 1010
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1011
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1012
    invoke-static {v1}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v1

    if-nez v1, :cond_11

    move v2, v0

    goto :goto_13

    :cond_11
    const/16 v2, 0x10

    .line 1013
    :goto_13
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1014
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    .line 1016
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v2

    if-nez v1, :cond_21

    const/4 v0, 0x4

    :cond_21
    const/4 v3, 0x0

    :goto_22
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v3, v0, :cond_55

    .line 1019
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v8

    add-int v9, v2, v3

    aget-byte v8, v8, v9

    const/4 v9, -0x1

    if-eq v8, v9, :cond_52

    if-nez v1, :cond_3b

    .line 1029
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    goto :goto_3f

    :cond_3b
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    :goto_3f
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_46

    goto :goto_58

    :cond_46
    move-wide v7, v4

    const-wide/32 v5, 0xf4240

    move-wide v3, v0

    .line 1035
    invoke-static/range {v3 .. v8}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    move-wide v4, v7

    move-wide v6, v0

    goto :goto_58

    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 1026
    :cond_55
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1039
    :goto_58
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p0

    invoke-static {p0}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->getLanguageFromCode(I)Ljava/lang/String;

    move-result-object v8

    .line 1040
    new-instance v3, Lio/bidmachine/media3/extractor/mp4/BoxParser$MdhdData;

    invoke-direct/range {v3 .. v8}, Lio/bidmachine/media3/extractor/mp4/BoxParser$MdhdData;-><init>(JJLjava/lang/String;)V

    return-object v3
.end method

.method public static parseMdtaFromMeta(Lio/bidmachine/media3/container/Mp4Box$ContainerBox;)Lio/bidmachine/media3/common/Metadata;
    .registers 11

    const v0, 0x68646c72    # 4.3148E24f

    .line 242
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    move-result-object v0

    const v1, 0x6b657973

    .line 243
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    move-result-object v1

    const v2, 0x696c7374

    .line 244
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz v0, :cond_a5

    if-eqz v1, :cond_a5

    if-eqz p0, :cond_a5

    .line 245
    iget-object v0, v0, Lio/bidmachine/media3/container/Mp4Box$LeafBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 248
    invoke-static {v0}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseHdlr(Lio/bidmachine/media3/common/util/ParsableByteArray;)I

    move-result v0

    const v3, 0x6d647461

    if-eq v0, v3, :cond_29

    goto/16 :goto_a5

    .line 254
    :cond_29
    iget-object v0, v1, Lio/bidmachine/media3/container/Mp4Box$LeafBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/16 v1, 0xc

    .line 255
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 256
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 257
    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_37
    const/16 v5, 0x8

    if-ge v4, v1, :cond_4d

    .line 259
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    const/4 v7, 0x4

    .line 260
    invoke-virtual {v0, v7}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    sub-int/2addr v6, v5

    .line 262
    invoke-virtual {v0, v6}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 266
    :cond_4d
    iget-object p0, p0, Lio/bidmachine/media3/container/Mp4Box$LeafBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 267
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 269
    :goto_57
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-le v4, v5, :cond_98

    .line 270
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v4

    .line 271
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 272
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_7d

    if-ge v7, v1, :cond_7d

    .line 274
    aget-object v7, v3, v7

    add-int v8, v4, v6

    .line 277
    invoke-static {p0, v8, v7}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->parseMdtaMetadataEntryFromIlst(Lio/bidmachine/media3/common/util/ParsableByteArray;ILjava/lang/String;)Lio/bidmachine/media3/container/MdtaMetadataEntry;

    move-result-object v7

    if-eqz v7, :cond_93

    .line 279
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_93

    .line 282
    :cond_7d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipped metadata with unknown key index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "BoxParsers"

    invoke-static {v8, v7}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_93
    :goto_93
    add-int/2addr v4, v6

    .line 284
    invoke-virtual {p0, v4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_57

    .line 286
    :cond_98
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9f

    return-object v2

    :cond_9f
    new-instance p0, Lio/bidmachine/media3/common/Metadata;

    invoke-direct {p0, v0}, Lio/bidmachine/media3/common/Metadata;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_a5
    :goto_a5
    return-object v2
.end method

.method public static parseMetaDataSampleEntry(Lio/bidmachine/media3/common/util/ParsableByteArray;IIILio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;)V
    .registers 5

    add-int/lit8 p2, p2, 0x10

    .line 1819
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    const p2, 0x6d657474

    if-ne p1, p2, :cond_26

    .line 1821
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    .line 1822
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 1824
    new-instance p1, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {p1}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    invoke-virtual {p1, p3}, Lio/bidmachine/media3/common/Format$Builder;->setId(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p0

    iput-object p0, p4, Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;->format:Lio/bidmachine/media3/common/Format;

    :cond_26
    return-void
.end method

.method public static parseMvhd(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/container/Mp4TimestampData;
    .registers 12

    const/16 v0, 0x8

    .line 217
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 218
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 219
    invoke-static {v0}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v0

    if-nez v0, :cond_1a

    .line 223
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    .line 224
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    :goto_17
    move-wide v5, v0

    move-wide v7, v2

    goto :goto_23

    .line 226
    :cond_1a
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    .line 227
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v2

    goto :goto_17

    .line 230
    :goto_23
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    .line 231
    new-instance v4, Lio/bidmachine/media3/container/Mp4TimestampData;

    invoke-direct/range {v4 .. v10}, Lio/bidmachine/media3/container/Mp4TimestampData;-><init>(JJJ)V

    return-object v4
.end method

.method public static parsePaspFromParent(Lio/bidmachine/media3/common/util/ParsableByteArray;I)F
    .registers 2

    add-int/lit8 p1, p1, 0x8

    .line 1864
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1865
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p1

    .line 1866
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p0

    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method public static parseProjFromParent(Lio/bidmachine/media3/common/util/ParsableByteArray;II)[B
    .registers 7

    add-int/lit8 v0, p1, 0x8

    :goto_2
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_22

    .line 2474
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2475
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 2476
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    const v3, 0x70726f6a

    if-ne v2, v3, :cond_20

    .line 2478
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p0

    add-int/2addr v1, v0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :cond_20
    add-int/2addr v0, v1

    goto :goto_2

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseSampleEntryEncryptionData(Lio/bidmachine/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 2362
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    :goto_4
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2b

    .line 2364
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2365
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    if-lez v1, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    .line 2366
    :goto_14
    const-string v3, "childAtomSize must be positive"

    invoke-static {v2, v3}, Lio/bidmachine/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2367
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    const v3, 0x73696e66

    if-ne v2, v3, :cond_29

    .line 2371
    invoke-static {p0, v0, v1}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseCommonEncryptionSinfFromParent(Lio/bidmachine/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_29

    return-object v2

    :cond_29
    add-int/2addr v0, v1

    goto :goto_4

    :cond_2b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseSchiFromParent(Lio/bidmachine/media3/common/util/ParsableByteArray;IILjava/lang/String;)Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;
    .registers 15

    add-int/lit8 v0, p1, 0x8

    :goto_2
    sub-int v1, v0, p1

    const/4 v2, 0x0

    if-ge v1, p2, :cond_64

    .line 2429
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2430
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 2431
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    const v4, 0x74656e63

    if-ne v3, v4, :cond_61

    .line 2433
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result p1

    .line 2434
    invoke-static {p1}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result p1

    const/4 p2, 0x1

    .line 2435
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_2c

    .line 2439
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    move v8, v0

    move v9, v8

    goto :goto_38

    .line 2441
    :cond_2c
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    and-int/lit16 v1, p1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 p1, p1, 0xf

    move v9, p1

    move v8, v1

    .line 2445
    :goto_38
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    if-ne p1, p2, :cond_40

    move v4, p2

    goto :goto_41

    :cond_40
    move v4, v0

    .line 2446
    :goto_41
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    const/16 p1, 0x10

    .line 2447
    new-array v7, p1, [B

    .line 2448
    invoke-virtual {p0, v7, v0, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    if-eqz v4, :cond_59

    if-nez v6, :cond_59

    .line 2451
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    .line 2452
    new-array v2, p1, [B

    .line 2453
    invoke-virtual {p0, v2, v0, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    :cond_59
    move-object v10, v2

    .line 2455
    new-instance v3, Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;

    move-object v5, p3

    invoke-direct/range {v3 .. v10}, Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    return-object v3

    :cond_61
    move-object v5, p3

    add-int/2addr v0, v1

    goto :goto_2

    :cond_64
    return-object v2
.end method

.method public static parseStbl(Lio/bidmachine/media3/extractor/mp4/Track;Lio/bidmachine/media3/container/Mp4Box$ContainerBox;Lio/bidmachine/media3/extractor/GaplessInfoHolder;)Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;
    .registers 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const v3, 0x7374737a

    .line 432
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 434
    new-instance v5, Lio/bidmachine/media3/extractor/mp4/BoxParser$StszSampleSizeBox;

    iget-object v6, v1, Lio/bidmachine/media3/extractor/mp4/Track;->format:Lio/bidmachine/media3/common/Format;

    invoke-direct {v5, v3, v6}, Lio/bidmachine/media3/extractor/mp4/BoxParser$StszSampleSizeBox;-><init>(Lio/bidmachine/media3/container/Mp4Box$LeafBox;Lio/bidmachine/media3/common/Format;)V

    goto :goto_23

    :cond_15
    const v3, 0x73747a32

    .line 436
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    move-result-object v3

    if-eqz v3, :cond_56e

    .line 441
    new-instance v5, Lio/bidmachine/media3/extractor/mp4/BoxParser$Stz2SampleSizeBox;

    invoke-direct {v5, v3}, Lio/bidmachine/media3/extractor/mp4/BoxParser$Stz2SampleSizeBox;-><init>(Lio/bidmachine/media3/container/Mp4Box$LeafBox;)V

    .line 444
    :goto_23
    invoke-interface {v5}, Lio/bidmachine/media3/extractor/mp4/BoxParser$SampleSizeBox;->getSampleCount()I

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_3b

    .line 446
    new-instance v0, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    new-array v2, v6, [J

    new-array v3, v6, [I

    new-array v5, v6, [J

    new-array v6, v6, [I

    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v8}, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;-><init>(Lio/bidmachine/media3/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v0

    .line 456
    :cond_3b
    iget v7, v1, Lio/bidmachine/media3/extractor/mp4/Track;->type:I

    const/4 v8, 0x2

    const-wide/16 v9, 0x0

    if-ne v7, v8, :cond_61

    iget-wide v11, v1, Lio/bidmachine/media3/extractor/mp4/Track;->mediaDurationUs:J

    cmp-long v7, v11, v9

    if-lez v7, :cond_61

    int-to-float v7, v3

    long-to-float v11, v11

    const v12, 0x49742400    # 1000000.0f

    div-float/2addr v11, v12

    div-float/2addr v7, v11

    .line 458
    iget-object v11, v1, Lio/bidmachine/media3/extractor/mp4/Track;->format:Lio/bidmachine/media3/common/Format;

    invoke-virtual {v11}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v11

    invoke-virtual {v11, v7}, Lio/bidmachine/media3/common/Format$Builder;->setFrameRate(F)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v7

    .line 459
    invoke-virtual {v1, v7}, Lio/bidmachine/media3/extractor/mp4/Track;->copyWithFormat(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/extractor/mp4/Track;

    move-result-object v1

    :cond_61
    const v7, 0x7374636f

    .line 464
    invoke-virtual {v0, v7}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    move-result-object v7

    const/4 v11, 0x1

    if-nez v7, :cond_7a

    const v7, 0x636f3634

    .line 467
    invoke-virtual {v0, v7}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    move-result-object v7

    invoke-static {v7}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    move v12, v11

    goto :goto_7b

    :cond_7a
    move v12, v6

    .line 469
    :goto_7b
    iget-object v7, v7, Lio/bidmachine/media3/container/Mp4Box$LeafBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const v13, 0x73747363

    .line 471
    invoke-virtual {v0, v13}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    move-result-object v13

    invoke-static {v13}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    iget-object v13, v13, Lio/bidmachine/media3/container/Mp4Box$LeafBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const v14, 0x73747473

    .line 473
    invoke-virtual {v0, v14}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    move-result-object v14

    invoke-static {v14}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    iget-object v14, v14, Lio/bidmachine/media3/container/Mp4Box$LeafBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const v15, 0x73747373

    .line 475
    invoke-virtual {v0, v15}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    move-result-object v15

    if-eqz v15, :cond_a9

    .line 476
    iget-object v15, v15, Lio/bidmachine/media3/container/Mp4Box$LeafBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    :goto_a6
    move-wide/from16 v16, v9

    goto :goto_ab

    :cond_a9
    const/4 v15, 0x0

    goto :goto_a6

    :goto_ab
    const v9, 0x63747473

    .line 478
    invoke-virtual {v0, v9}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    move-result-object v0

    if-eqz v0, :cond_b7

    .line 479
    iget-object v0, v0, Lio/bidmachine/media3/container/Mp4Box$LeafBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    goto :goto_b8

    :cond_b7
    const/4 v0, 0x0

    .line 482
    :goto_b8
    new-instance v9, Lio/bidmachine/media3/extractor/mp4/BoxParser$ChunkIterator;

    invoke-direct {v9, v13, v7, v12}, Lio/bidmachine/media3/extractor/mp4/BoxParser$ChunkIterator;-><init>(Lio/bidmachine/media3/common/util/ParsableByteArray;Lio/bidmachine/media3/common/util/ParsableByteArray;Z)V

    const/16 v7, 0xc

    .line 485
    invoke-virtual {v14, v7}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 486
    invoke-virtual {v14}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v10

    sub-int/2addr v10, v11

    .line 487
    invoke-virtual {v14}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v12

    .line 488
    invoke-virtual {v14}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v13

    if-eqz v0, :cond_d9

    .line 495
    invoke-virtual {v0, v7}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 496
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v18

    goto :goto_db

    :cond_d9
    move/from16 v18, v6

    :goto_db
    const/4 v4, -0x1

    if-eqz v15, :cond_f6

    .line 502
    invoke-virtual {v15, v7}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 503
    invoke-virtual {v15}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    if-lez v7, :cond_f0

    .line 505
    invoke-virtual {v15}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v20, v6

    goto :goto_fb

    :cond_f0
    move/from16 v19, v4

    move/from16 v20, v6

    const/4 v15, 0x0

    goto :goto_fb

    :cond_f6
    move/from16 v19, v4

    move v7, v6

    move/from16 v20, v7

    .line 513
    :goto_fb
    invoke-interface {v5}, Lio/bidmachine/media3/extractor/mp4/BoxParser$SampleSizeBox;->getFixedSampleSize()I

    move-result v6

    .line 514
    iget-object v8, v1, Lio/bidmachine/media3/extractor/mp4/Track;->format:Lio/bidmachine/media3/common/Format;

    iget-object v8, v8, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eq v6, v4, :cond_125

    .line 515
    const-string v4, "audio/raw"

    .line 517
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11d

    const-string v4, "audio/g711-mlaw"

    .line 518
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11d

    const-string v4, "audio/g711-alaw"

    .line 519
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_125

    :cond_11d
    if-nez v10, :cond_125

    if-nez v18, :cond_125

    if-nez v7, :cond_125

    move v4, v11

    goto :goto_127

    :cond_125
    move/from16 v4, v20

    :goto_127
    if-eqz v4, :cond_15e

    .line 534
    iget v0, v9, Lio/bidmachine/media3/extractor/mp4/BoxParser$ChunkIterator;->length:I

    new-array v4, v0, [J

    .line 535
    new-array v0, v0, [I

    .line 536
    :goto_12f
    invoke-virtual {v9}, Lio/bidmachine/media3/extractor/mp4/BoxParser$ChunkIterator;->moveNext()Z

    move-result v5

    if-eqz v5, :cond_140

    .line 537
    iget v5, v9, Lio/bidmachine/media3/extractor/mp4/BoxParser$ChunkIterator;->index:I

    iget-wide v7, v9, Lio/bidmachine/media3/extractor/mp4/BoxParser$ChunkIterator;->offset:J

    aput-wide v7, v4, v5

    .line 538
    iget v7, v9, Lio/bidmachine/media3/extractor/mp4/BoxParser$ChunkIterator;->numSamples:I

    aput v7, v0, v5

    goto :goto_12f

    :cond_140
    int-to-long v7, v13

    .line 541
    invoke-static {v6, v4, v0, v7, v8}, Lio/bidmachine/media3/extractor/mp4/FixedSampleSizeRechunker;->rechunk(I[J[IJ)Lio/bidmachine/media3/extractor/mp4/FixedSampleSizeRechunker$Results;

    move-result-object v0

    .line 543
    iget-object v4, v0, Lio/bidmachine/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    .line 544
    iget-object v5, v0, Lio/bidmachine/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    .line 545
    iget v6, v0, Lio/bidmachine/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    .line 546
    iget-object v7, v0, Lio/bidmachine/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    .line 547
    iget-object v8, v0, Lio/bidmachine/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    .line 548
    iget-wide v9, v0, Lio/bidmachine/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->duration:J

    .line 549
    iget-wide v12, v0, Lio/bidmachine/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->totalSize:J

    move-wide/from16 v22, v9

    move/from16 p0, v11

    move-object v9, v7

    move-object v10, v8

    move v8, v6

    move-object v7, v5

    move-object v6, v4

    goto/16 :goto_2c7

    .line 551
    :cond_15e
    new-array v4, v3, [J

    .line 552
    new-array v6, v3, [I

    .line 553
    new-array v8, v3, [J

    move/from16 p0, v11

    .line 554
    new-array v11, v3, [I

    move-object/from16 p1, v0

    move-object/from16 v23, v5

    move v0, v13

    move-object/from16 v24, v14

    move-object/from16 v27, v15

    move-wide/from16 v25, v16

    move-wide/from16 v29, v25

    move/from16 v22, v18

    move/from16 v5, v19

    move/from16 v14, v20

    move v15, v14

    move/from16 v28, v15

    move/from16 v31, v28

    move v13, v12

    move-wide/from16 v18, v29

    move v12, v10

    move v10, v7

    move/from16 v7, v31

    .line 558
    :goto_187
    const-string v2, "BoxParsers"

    if-ge v14, v3, :cond_243

    move-wide/from16 v32, v29

    move/from16 v29, v28

    move/from16 v28, p0

    :goto_191
    if-nez v29, :cond_1ae

    .line 561
    invoke-virtual {v9}, Lio/bidmachine/media3/extractor/mp4/BoxParser$ChunkIterator;->moveNext()Z

    move-result v28

    if-eqz v28, :cond_1ae

    move/from16 v30, v12

    move/from16 v34, v13

    .line 562
    iget-wide v12, v9, Lio/bidmachine/media3/extractor/mp4/BoxParser$ChunkIterator;->offset:J

    move/from16 v35, v3

    .line 563
    iget v3, v9, Lio/bidmachine/media3/extractor/mp4/BoxParser$ChunkIterator;->numSamples:I

    move/from16 v29, v3

    move-wide/from16 v32, v12

    move/from16 v12, v30

    move/from16 v13, v34

    move/from16 v3, v35

    goto :goto_191

    :cond_1ae
    move/from16 v35, v3

    move/from16 v30, v12

    move/from16 v34, v13

    if-nez v28, :cond_1d4

    .line 566
    const-string v0, "Unexpected end of chunk data"

    invoke-static {v2, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-static {v4, v14}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    .line 569
    invoke-static {v6, v14}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    .line 570
    invoke-static {v8, v14}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    .line 571
    invoke-static {v11, v14}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    move-object v8, v4

    move-object v11, v5

    move-object v4, v0

    move-object v5, v3

    move v3, v14

    move/from16 v0, v29

    goto/16 :goto_24c

    :cond_1d4
    if-eqz p1, :cond_1eb

    move/from16 v2, v31

    :goto_1d8
    if-nez v2, :cond_1e7

    if-lez v22, :cond_1e7

    .line 578
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 584
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v15

    add-int/lit8 v22, v22, -0x1

    goto :goto_1d8

    :cond_1e7
    add-int/lit8 v2, v2, -0x1

    move/from16 v31, v2

    .line 590
    :cond_1eb
    aput-wide v32, v4, v14

    .line 591
    invoke-interface/range {v23 .. v23}, Lio/bidmachine/media3/extractor/mp4/BoxParser$SampleSizeBox;->readNextSampleSize()I

    move-result v2

    aput v2, v6, v14

    int-to-long v12, v2

    add-long v18, v18, v12

    if-le v2, v7, :cond_1f9

    move v7, v2

    :cond_1f9
    int-to-long v2, v15

    add-long v2, v25, v2

    .line 596
    aput-wide v2, v8, v14

    if-nez v27, :cond_203

    move/from16 v2, p0

    goto :goto_205

    :cond_203
    move/from16 v2, v20

    .line 599
    :goto_205
    aput v2, v11, v14

    if-ne v14, v5, :cond_21c

    .line 601
    aput p0, v11, v14

    add-int/lit8 v10, v10, -0x1

    if-lez v10, :cond_21c

    .line 604
    invoke-static/range {v27 .. v27}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v5, v2

    :cond_21c
    int-to-long v2, v0

    add-long v25, v25, v2

    add-int/lit8 v13, v34, -0x1

    if-nez v13, :cond_232

    if-lez v30, :cond_232

    .line 612
    invoke-virtual/range {v24 .. v24}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 619
    invoke-virtual/range {v24 .. v24}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    add-int/lit8 v12, v30, -0x1

    move v13, v0

    move v0, v2

    goto :goto_234

    :cond_232
    move/from16 v12, v30

    .line 623
    :goto_234
    aget v2, v6, v14

    int-to-long v2, v2

    add-long v2, v32, v2

    add-int/lit8 v28, v29, -0x1

    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v29, v2

    move/from16 v3, v35

    goto/16 :goto_187

    :cond_243
    move/from16 v35, v3

    move/from16 v30, v12

    move/from16 v34, v13

    move-object v5, v6

    move/from16 v0, v28

    :goto_24c
    int-to-long v12, v15

    add-long v12, v25, v12

    if-eqz p1, :cond_262

    :goto_251
    if-lez v22, :cond_262

    .line 633
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    if-eqz v6, :cond_25c

    move/from16 v6, v20

    goto :goto_264

    .line 637
    :cond_25c
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    add-int/lit8 v22, v22, -0x1

    goto :goto_251

    :cond_262
    move/from16 v6, p0

    :goto_264
    if-nez v10, :cond_270

    if-nez v34, :cond_270

    if-nez v0, :cond_270

    if-nez v30, :cond_270

    if-nez v31, :cond_270

    if-nez v6, :cond_2be

    .line 647
    :cond_270
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Inconsistent stbl box for track "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lio/bidmachine/media3/extractor/mp4/Track;->id:I

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ": remainingSynchronizationSamples "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v34

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", remainingSamplesInChunk "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingTimestampDeltaChanges "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v30

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v6, :cond_2b2

    .line 661
    const-string v0, ", ctts invalid"

    goto :goto_2b4

    :cond_2b2
    const-string v0, ""

    :goto_2b4
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 647
    invoke-static {v2, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2be
    move-object v9, v8

    move-object v10, v11

    move-wide/from16 v22, v12

    move-wide/from16 v12, v18

    move v8, v7

    move-object v6, v4

    move-object v7, v5

    .line 665
    :goto_2c7
    iget-wide v4, v1, Lio/bidmachine/media3/extractor/mp4/Track;->mediaDurationUs:J

    cmp-long v0, v4, v16

    const-wide/32 v18, 0x7fffffff

    if-lez v0, :cond_2fa

    const-wide/16 v14, 0x8

    mul-long v24, v12, v14

    const-wide/32 v26, 0xf4240

    .line 666
    sget-object v30, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v28, v4

    .line 667
    invoke-static/range {v24 .. v30}, Lio/bidmachine/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v4

    cmp-long v0, v4, v16

    if-lez v0, :cond_2fa

    cmp-long v0, v4, v18

    if-gez v0, :cond_2fa

    .line 673
    iget-object v0, v1, Lio/bidmachine/media3/extractor/mp4/Track;->format:Lio/bidmachine/media3/common/Format;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    long-to-int v2, v4

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/Format$Builder;->setAverageBitrate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v0

    .line 674
    invoke-virtual {v1, v0}, Lio/bidmachine/media3/extractor/mp4/Track;->copyWithFormat(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/extractor/mp4/Track;

    move-result-object v1

    :cond_2fa
    move-object v5, v1

    .line 678
    iget-wide v0, v5, Lio/bidmachine/media3/extractor/mp4/Track;->timescale:J

    const-wide/32 v24, 0xf4240

    move-wide/from16 v26, v0

    invoke-static/range {v22 .. v27}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v11

    .line 680
    iget-object v0, v5, Lio/bidmachine/media3/extractor/mp4/Track;->editListDurations:[J

    const-wide/32 v1, 0xf4240

    if-nez v0, :cond_318

    .line 681
    iget-wide v3, v5, Lio/bidmachine/media3/extractor/mp4/Track;->timescale:J

    invoke-static {v9, v1, v2, v3, v4}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 682
    new-instance v4, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    invoke-direct/range {v4 .. v12}, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;-><init>(Lio/bidmachine/media3/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v4

    :cond_318
    move-object v4, v10

    .line 693
    array-length v0, v0

    move/from16 v10, p0

    if-ne v0, v10, :cond_377

    iget v0, v5, Lio/bidmachine/media3/extractor/mp4/Track;->type:I

    if-ne v0, v10, :cond_377

    array-length v0, v9

    const/4 v10, 0x2

    if-lt v0, v10, :cond_377

    .line 696
    iget-object v0, v5, Lio/bidmachine/media3/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    aget-wide v12, v0, v20

    .line 697
    iget-object v0, v5, Lio/bidmachine/media3/extractor/mp4/Track;->editListDurations:[J

    aget-wide v24, v0, v20

    iget-wide v10, v5, Lio/bidmachine/media3/extractor/mp4/Track;->timescale:J

    iget-wide v14, v5, Lio/bidmachine/media3/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v26, v10

    move-wide/from16 v28, v14

    .line 699
    invoke-static/range {v24 .. v29}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    add-long v14, v12, v10

    move-wide/from16 v10, v22

    .line 701
    invoke-static/range {v9 .. v15}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->canApplyEditWithGaplessInfo([JJJJ)Z

    move-result v0

    if-eqz v0, :cond_377

    sub-long v24, v22, v14

    .line 703
    aget-wide v10, v9, v20

    sub-long v26, v12, v10

    iget-object v0, v5, Lio/bidmachine/media3/extractor/mp4/Track;->format:Lio/bidmachine/media3/common/Format;

    iget v0, v0, Lio/bidmachine/media3/common/Format;->sampleRate:I

    int-to-long v10, v0

    iget-wide v12, v5, Lio/bidmachine/media3/extractor/mp4/Track;->timescale:J

    move-wide/from16 v28, v10

    move-wide/from16 v30, v12

    .line 704
    invoke-static/range {v26 .. v31}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    .line 706
    iget-object v0, v5, Lio/bidmachine/media3/extractor/mp4/Track;->format:Lio/bidmachine/media3/common/Format;

    iget v0, v0, Lio/bidmachine/media3/common/Format;->sampleRate:I

    int-to-long v12, v0

    iget-wide v14, v5, Lio/bidmachine/media3/extractor/mp4/Track;->timescale:J

    move-wide/from16 v26, v12

    move-wide/from16 v28, v14

    .line 707
    invoke-static/range {v24 .. v29}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    cmp-long v0, v10, v16

    if-nez v0, :cond_379

    cmp-long v0, v12, v16

    if-eqz v0, :cond_377

    goto :goto_379

    :cond_377
    move-object v10, v4

    goto :goto_3a2

    :cond_379
    :goto_379
    cmp-long v0, v10, v18

    if-gtz v0, :cond_377

    cmp-long v0, v12, v18

    if-gtz v0, :cond_377

    long-to-int v0, v10

    move-object/from16 v3, p2

    .line 711
    iput v0, v3, Lio/bidmachine/media3/extractor/GaplessInfoHolder;->encoderDelay:I

    long-to-int v0, v12

    .line 712
    iput v0, v3, Lio/bidmachine/media3/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 713
    iget-wide v10, v5, Lio/bidmachine/media3/extractor/mp4/Track;->timescale:J

    invoke-static {v9, v1, v2, v10, v11}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 714
    iget-object v0, v5, Lio/bidmachine/media3/extractor/mp4/Track;->editListDurations:[J

    aget-wide v10, v0, v20

    const-wide/32 v12, 0xf4240

    iget-wide v14, v5, Lio/bidmachine/media3/extractor/mp4/Track;->movieTimescale:J

    .line 715
    invoke-static/range {v10 .. v15}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v11

    move-object v10, v4

    .line 717
    new-instance v4, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    invoke-direct/range {v4 .. v12}, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;-><init>(Lio/bidmachine/media3/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v4

    .line 723
    :goto_3a2
    iget-object v0, v5, Lio/bidmachine/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3e2

    aget-wide v1, v0, v20

    cmp-long v1, v1, v16

    if-nez v1, :cond_3e2

    .line 727
    iget-object v0, v5, Lio/bidmachine/media3/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    aget-wide v1, v0, v20

    move/from16 v0, v20

    .line 728
    :goto_3ba
    array-length v3, v9

    if-ge v0, v3, :cond_3d0

    .line 729
    aget-wide v3, v9, v0

    sub-long v11, v3, v1

    const-wide/32 v13, 0xf4240

    iget-wide v3, v5, Lio/bidmachine/media3/extractor/mp4/Track;->timescale:J

    move-wide v15, v3

    .line 730
    invoke-static/range {v11 .. v16}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v3

    aput-wide v3, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3ba

    :cond_3d0
    sub-long v11, v22, v1

    const-wide/32 v13, 0xf4240

    .line 733
    iget-wide v0, v5, Lio/bidmachine/media3/extractor/mp4/Track;->timescale:J

    move-wide v15, v0

    .line 734
    invoke-static/range {v11 .. v16}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v11

    .line 735
    new-instance v4, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    invoke-direct/range {v4 .. v12}, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;-><init>(Lio/bidmachine/media3/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v4

    .line 743
    :cond_3e2
    iget v1, v5, Lio/bidmachine/media3/extractor/mp4/Track;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3e9

    const/4 v1, 0x1

    goto :goto_3eb

    :cond_3e9
    move/from16 v1, v20

    .line 749
    :goto_3eb
    array-length v2, v0

    new-array v2, v2, [I

    .line 750
    array-length v0, v0

    new-array v0, v0, [I

    .line 751
    iget-object v4, v5, Lio/bidmachine/media3/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v4}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    move/from16 v11, v20

    move v12, v11

    move v13, v12

    move v14, v13

    .line 752
    :goto_3fe
    iget-object v15, v5, Lio/bidmachine/media3/extractor/mp4/Track;->editListDurations:[J

    move-object/from16 v18, v0

    array-length v0, v15

    if-ge v11, v0, :cond_4a1

    move v0, v11

    move/from16 p1, v12

    .line 753
    aget-wide v11, v4, v0

    const-wide/16 v22, -0x1

    cmp-long v19, v11, v22

    if-eqz v19, :cond_48d

    .line 755
    aget-wide v22, v15, v0

    move-object v15, v7

    move/from16 p2, v8

    iget-wide v7, v5, Lio/bidmachine/media3/extractor/mp4/Track;->timescale:J

    move-wide/from16 v24, v7

    iget-wide v7, v5, Lio/bidmachine/media3/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v26, v7

    .line 756
    invoke-static/range {v22 .. v27}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    move/from16 v19, v0

    const/4 v0, 0x1

    .line 769
    invoke-static {v9, v11, v12, v0, v0}, Lio/bidmachine/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result v22

    aput v22, v2, v19

    add-long/2addr v11, v7

    move/from16 v8, v20

    .line 777
    invoke-static {v9, v11, v12, v1, v8}, Lio/bidmachine/media3/common/util/Util;->binarySearchCeil([JJZZ)I

    move-result v7

    aput v7, v18, v19

    .line 783
    aget v7, v2, v19

    .line 784
    :goto_435
    aget v20, v2, v19

    if-ltz v20, :cond_445

    aget v22, v10, v20

    and-int/lit8 v22, v22, 0x1

    if-nez v22, :cond_445

    add-int/lit8 v20, v20, -0x1

    .line 785
    aput v20, v2, v19

    const/4 v0, 0x1

    goto :goto_435

    :cond_445
    if-gez v20, :cond_45c

    .line 789
    aput v7, v2, v19

    .line 790
    :goto_449
    aget v0, v2, v19

    aget v7, v18, v19

    if-ge v0, v7, :cond_45c

    aget v7, v10, v0

    const/16 v20, 0x1

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_45c

    add-int/lit8 v0, v0, 0x1

    .line 792
    aput v0, v2, v19

    goto :goto_449

    .line 796
    :cond_45c
    iget v0, v5, Lio/bidmachine/media3/extractor/mp4/Track;->type:I

    const/4 v7, 0x2

    if-ne v0, v7, :cond_47d

    aget v0, v2, v19

    aget v7, v18, v19

    if-eq v0, v7, :cond_47d

    .line 801
    :goto_467
    aget v0, v18, v19

    array-length v7, v9

    const/16 v20, 0x1

    add-int/lit8 v7, v7, -0x1

    if-ge v0, v7, :cond_47d

    add-int/lit8 v7, v0, 0x1

    aget-wide v22, v9, v7

    cmp-long v7, v22, v11

    if-gtz v7, :cond_47d

    add-int/lit8 v0, v0, 0x1

    .line 803
    aput v0, v18, v19

    goto :goto_467

    .line 806
    :cond_47d
    aget v0, v18, v19

    aget v7, v2, v19

    sub-int v11, v0, v7

    add-int/2addr v13, v11

    if-eq v14, v7, :cond_488

    const/4 v7, 0x1

    goto :goto_489

    :cond_488
    move v7, v8

    :goto_489
    or-int v12, p1, v7

    move v14, v0

    goto :goto_496

    :cond_48d
    move/from16 v19, v0

    move-object v15, v7

    move/from16 p2, v8

    move/from16 v8, v20

    move/from16 v12, p1

    :goto_496
    add-int/lit8 v11, v19, 0x1

    move/from16 v20, v8

    move-object v7, v15

    move-object/from16 v0, v18

    move/from16 v8, p2

    goto/16 :goto_3fe

    :cond_4a1
    move-object v15, v7

    move/from16 p2, v8

    move/from16 p1, v12

    move/from16 v8, v20

    if-eq v13, v3, :cond_4ac

    const/4 v0, 0x1

    goto :goto_4ad

    :cond_4ac
    move v0, v8

    :goto_4ad
    or-int v0, p1, v0

    if-eqz v0, :cond_4b4

    .line 814
    new-array v1, v13, [J

    goto :goto_4b5

    :cond_4b4
    move-object v1, v6

    :goto_4b5
    if-eqz v0, :cond_4ba

    .line 815
    new-array v7, v13, [I

    goto :goto_4bb

    :cond_4ba
    move-object v7, v15

    :goto_4bb
    if-eqz v0, :cond_4bf

    move v3, v8

    goto :goto_4c1

    :cond_4bf
    move/from16 v3, p2

    :goto_4c1
    if-eqz v0, :cond_4c6

    .line 817
    new-array v4, v13, [I

    goto :goto_4c7

    :cond_4c6
    move-object v4, v10

    .line 818
    :goto_4c7
    new-array v11, v13, [J

    move/from16 v23, v3

    move v3, v8

    move v12, v3

    move-wide/from16 v24, v16

    .line 822
    :goto_4cf
    iget-object v13, v5, Lio/bidmachine/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v13, v13

    if-ge v8, v13, :cond_53c

    .line 823
    iget-object v13, v5, Lio/bidmachine/media3/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v19, v13, v8

    .line 824
    aget v13, v2, v8

    .line 825
    aget v14, v18, v8

    move/from16 p1, v0

    if-eqz v0, :cond_4eb

    sub-int v0, v14, v13

    .line 828
    invoke-static {v6, v13, v1, v12, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 829
    invoke-static {v15, v13, v7, v12, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 830
    invoke-static {v10, v13, v4, v12, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4eb
    move/from16 v0, v23

    :goto_4ed
    if-ge v13, v14, :cond_529

    const-wide/32 v26, 0xf4240

    move-object/from16 v22, v1

    move-object/from16 v21, v2

    .line 833
    iget-wide v1, v5, Lio/bidmachine/media3/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v28, v1

    invoke-static/range {v24 .. v29}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v1

    .line 834
    aget-wide v26, v9, v13

    sub-long v28, v26, v19

    const-wide/32 v30, 0xf4240

    move-wide/from16 v26, v1

    iget-wide v1, v5, Lio/bidmachine/media3/extractor/mp4/Track;->timescale:J

    move-wide/from16 v32, v1

    .line 835
    invoke-static/range {v28 .. v33}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v1

    cmp-long v23, v1, v16

    if-gez v23, :cond_514

    const/4 v3, 0x1

    :cond_514
    add-long v1, v26, v1

    .line 840
    aput-wide v1, v11, v12

    if-eqz p1, :cond_520

    .line 841
    aget v1, v7, v12

    if-le v1, v0, :cond_520

    .line 842
    aget v0, v15, v13

    :cond_520
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v21

    move-object/from16 v1, v22

    goto :goto_4ed

    :cond_529
    move-object/from16 v22, v1

    move-object/from16 v21, v2

    .line 846
    iget-object v1, v5, Lio/bidmachine/media3/extractor/mp4/Track;->editListDurations:[J

    aget-wide v13, v1, v8

    add-long v24, v24, v13

    add-int/lit8 v8, v8, 0x1

    move/from16 v23, v0

    move-object/from16 v1, v22

    move/from16 v0, p1

    goto :goto_4cf

    :cond_53c
    move-object/from16 v22, v1

    const-wide/32 v26, 0xf4240

    .line 848
    iget-wide v0, v5, Lio/bidmachine/media3/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v28, v0

    .line 849
    invoke-static/range {v24 .. v29}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v26

    if-eqz v3, :cond_55e

    .line 851
    iget-object v0, v5, Lio/bidmachine/media3/extractor/mp4/Track;->format:Lio/bidmachine/media3/common/Format;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/Format$Builder;->setHasPrerollSamples(Z)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v0

    .line 852
    invoke-virtual {v5, v0}, Lio/bidmachine/media3/extractor/mp4/Track;->copyWithFormat(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/extractor/mp4/Track;

    move-result-object v5

    :cond_55e
    move-object/from16 v20, v5

    .line 854
    new-instance v19, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    move-object/from16 v25, v4

    move-object/from16 v24, v11

    move-object/from16 v21, v22

    move-object/from16 v22, v7

    invoke-direct/range {v19 .. v27}, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;-><init>(Lio/bidmachine/media3/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v19

    .line 438
    :cond_56e
    const-string v0, "Track has no sample table size information"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method public static parseStereoViewBox(Lio/bidmachine/media3/common/util/ParsableByteArray;II)Lio/bidmachine/media3/extractor/mp4/BoxParser$EyesData;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x8

    .line 2333
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2334
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    :goto_9
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_53

    .line 2336
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2337
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_1a

    move v4, v3

    goto :goto_1b

    :cond_1a
    move v4, v2

    .line 2338
    :goto_1b
    const-string v5, "childAtomSize must be positive"

    invoke-static {v4, v5}, Lio/bidmachine/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2339
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    const v5, 0x73747269

    if-ne v4, v5, :cond_51

    const/4 p1, 0x4

    .line 2341
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2342
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    .line 2343
    new-instance p1, Lio/bidmachine/media3/extractor/mp4/BoxParser$EyesData;

    new-instance p2, Lio/bidmachine/media3/extractor/mp4/BoxParser$StriData;

    and-int/lit8 v0, p0, 0x1

    if-ne v0, v3, :cond_3b

    move v0, v3

    goto :goto_3c

    :cond_3b
    move v0, v2

    :goto_3c
    and-int/lit8 v1, p0, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_43

    move v1, v3

    goto :goto_44

    :cond_43
    move v1, v2

    :goto_44
    const/16 v4, 0x8

    and-int/2addr p0, v4

    if-ne p0, v4, :cond_4a

    move v2, v3

    :cond_4a
    invoke-direct {p2, v0, v1, v2}, Lio/bidmachine/media3/extractor/mp4/BoxParser$StriData;-><init>(ZZZ)V

    invoke-direct {p1, p2}, Lio/bidmachine/media3/extractor/mp4/BoxParser$EyesData;-><init>(Lio/bidmachine/media3/extractor/mp4/BoxParser$StriData;)V

    return-object p1

    :cond_51
    add-int/2addr v0, v1

    goto :goto_9

    :cond_53
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseStsd(Lio/bidmachine/media3/common/util/ParsableByteArray;IILjava/lang/String;Lio/bidmachine/media3/common/DrmInitData;Z)Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    const/16 v0, 0xc

    .line 1078
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1079
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1080
    new-instance v9, Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;

    invoke-direct {v9, v0}, Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;-><init>(I)V

    const/4 v11, 0x0

    move v10, v11

    :goto_10
    if-ge v10, v0, :cond_16a

    .line 1082
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 1083
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    if-lez v4, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    move v1, v11

    .line 1084
    :goto_1f
    const-string v2, "childAtomSize must be positive"

    invoke-static {v1, v2}, Lio/bidmachine/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1085
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    const v1, 0x61766331

    if-eq v2, v1, :cond_82

    const v1, 0x61766333

    if-eq v2, v1, :cond_82

    const v1, 0x656e6376

    if-eq v2, v1, :cond_82

    const v1, 0x6d317620

    if-eq v2, v1, :cond_82

    const v1, 0x6d703476

    if-eq v2, v1, :cond_82

    const v1, 0x68766331

    if-eq v2, v1, :cond_82

    const v1, 0x68657631

    if-eq v2, v1, :cond_82

    const v1, 0x73323633

    if-eq v2, v1, :cond_82

    const v1, 0x48323633

    if-eq v2, v1, :cond_82

    const v1, 0x68323633

    if-eq v2, v1, :cond_82

    const v1, 0x76703038

    if-eq v2, v1, :cond_82

    const v1, 0x76703039

    if-eq v2, v1, :cond_82

    const v1, 0x61763031

    if-eq v2, v1, :cond_82

    const v1, 0x64766176

    if-eq v2, v1, :cond_82

    const v1, 0x64766131

    if-eq v2, v1, :cond_82

    const v1, 0x64766865

    if-eq v2, v1, :cond_82

    const v1, 0x64766831

    if-eq v2, v1, :cond_82

    const v1, 0x61707631

    if-ne v2, v1, :cond_8a

    :cond_82
    move-object v1, p0

    move v5, p1

    move v7, p2

    move-object v6, p3

    move-object/from16 v8, p4

    goto/16 :goto_15f

    :cond_8a
    const v1, 0x6d703461

    if-eq v2, v1, :cond_10c

    const v1, 0x656e6361

    if-eq v2, v1, :cond_10c

    const v1, 0x61632d33

    if-eq v2, v1, :cond_10c

    const v1, 0x65632d33

    if-eq v2, v1, :cond_10c

    const v1, 0x61632d34

    if-eq v2, v1, :cond_10c

    const v1, 0x6d6c7061

    if-eq v2, v1, :cond_10c

    const v1, 0x64747363

    if-eq v2, v1, :cond_10c

    const v1, 0x64747365

    if-eq v2, v1, :cond_10c

    const v1, 0x64747368

    if-eq v2, v1, :cond_10c

    const v1, 0x6474736c

    if-eq v2, v1, :cond_10c

    const v1, 0x64747378

    if-eq v2, v1, :cond_10c

    const v1, 0x73616d72

    if-eq v2, v1, :cond_10c

    const v1, 0x73617762

    if-eq v2, v1, :cond_10c

    const v1, 0x6c70636d

    if-eq v2, v1, :cond_10c

    const v1, 0x736f7774

    if-eq v2, v1, :cond_10c

    const v1, 0x74776f73

    if-eq v2, v1, :cond_10c

    const v1, 0x2e6d7032

    if-eq v2, v1, :cond_10c

    const v1, 0x2e6d7033

    if-eq v2, v1, :cond_10c

    const v1, 0x6d686131

    if-eq v2, v1, :cond_10c

    const v1, 0x6d686d31

    if-eq v2, v1, :cond_10c

    const v1, 0x616c6163

    if-eq v2, v1, :cond_10c

    const v1, 0x616c6177

    if-eq v2, v1, :cond_10c

    const v1, 0x756c6177

    if-eq v2, v1, :cond_10c

    const v1, 0x4f707573

    if-eq v2, v1, :cond_10c

    const v1, 0x664c6143

    if-eq v2, v1, :cond_10c

    const v1, 0x69616d66

    if-ne v2, v1, :cond_114

    :cond_10c
    move-object v1, p0

    move v5, p1

    move-object v6, p3

    move-object/from16 v8, p4

    move/from16 v7, p5

    goto :goto_15b

    :cond_114
    const v1, 0x54544d4c

    if-eq v2, v1, :cond_12d

    const v1, 0x74783367

    if-eq v2, v1, :cond_12d

    const v1, 0x77767474

    if-eq v2, v1, :cond_12d

    const v1, 0x73747070

    if-eq v2, v1, :cond_12d

    const v1, 0x63363038

    if-ne v2, v1, :cond_132

    :cond_12d
    move-object v1, p0

    move v5, p1

    move-object v6, p3

    move-object v7, v9

    goto :goto_156

    :cond_132
    const v1, 0x6d657474

    if-ne v2, v1, :cond_13b

    .line 1160
    invoke-static {p0, v2, v3, p1, v9}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseMetaDataSampleEntry(Lio/bidmachine/media3/common/util/ParsableByteArray;IIILio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;)V

    goto :goto_162

    :cond_13b
    const v1, 0x63616d6d

    if-ne v2, v1, :cond_162

    .line 1162
    new-instance v1, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v1}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    .line 1164
    invoke-virtual {v1, p1}, Lio/bidmachine/media3/common/Format$Builder;->setId(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    const-string v2, "application/x-camera-motion"

    .line 1165
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    .line 1166
    invoke-virtual {v1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v1

    iput-object v1, v9, Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;->format:Lio/bidmachine/media3/common/Format;

    goto :goto_162

    .line 1157
    :goto_156
    invoke-static/range {v1 .. v7}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseTextSampleEntry(Lio/bidmachine/media3/common/util/ParsableByteArray;IIIILjava/lang/String;Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;)V

    move-object v9, v7

    goto :goto_162

    .line 1141
    :goto_15b
    invoke-static/range {v1 .. v10}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseAudioSampleEntry(Lio/bidmachine/media3/common/util/ParsableByteArray;IIIILjava/lang/String;ZLio/bidmachine/media3/common/DrmInitData;Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;I)V

    goto :goto_162

    .line 1104
    :goto_15f
    invoke-static/range {v1 .. v10}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseVideoSampleEntry(Lio/bidmachine/media3/common/util/ParsableByteArray;IIIILjava/lang/String;ILio/bidmachine/media3/common/DrmInitData;Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;I)V

    :cond_162
    :goto_162
    add-int/2addr v3, v4

    .line 1168
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_10

    :cond_16a
    return-object v9
.end method

.method public static parseTextSampleEntry(Lio/bidmachine/media3/common/util/ParsableByteArray;IIIILjava/lang/String;Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;)V
    .registers 11

    add-int/lit8 p2, p2, 0x10

    .line 1181
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    const p2, 0x54544d4c

    .line 1188
    const-string v0, "application/ttml+xml"

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    if-ne p1, p2, :cond_13

    goto :goto_41

    :cond_13
    const p2, 0x74783367

    if-ne p1, p2, :cond_27

    add-int/lit8 p3, p3, -0x10

    .line 1193
    new-array p1, p3, [B

    const/4 p2, 0x0

    .line 1194
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1195
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 1196
    const-string v0, "application/x-quicktime-tx3g"

    goto :goto_41

    :cond_27
    const p0, 0x77767474

    if-ne p1, p0, :cond_2f

    .line 1197
    const-string v0, "application/x-mp4-vtt"

    goto :goto_41

    :cond_2f
    const p0, 0x73747070

    if-ne p1, p0, :cond_37

    const-wide/16 v2, 0x0

    goto :goto_41

    :cond_37
    const p0, 0x63363038

    if-ne p1, p0, :cond_61

    const/4 p0, 0x1

    .line 1204
    iput p0, p6, Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;->requiredSampleTransformation:I

    const-string v0, "application/x-mp4-cea-608"

    .line 1210
    :goto_41
    new-instance p0, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {p0}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    .line 1212
    invoke-virtual {p0, p4}, Lio/bidmachine/media3/common/Format$Builder;->setId(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 1213
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 1214
    invoke-virtual {p0, p5}, Lio/bidmachine/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 1215
    invoke-virtual {p0, v2, v3}, Lio/bidmachine/media3/common/Format$Builder;->setSubsampleOffsetUs(J)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 1216
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 1217
    invoke-virtual {p0}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p0

    iput-object p0, p6, Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;->format:Lio/bidmachine/media3/common/Format;

    return-void

    .line 1207
    :cond_61
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static parseTkhd(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/mp4/BoxParser$TkhdData;
    .registers 12

    const/16 v0, 0x8

    .line 922
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 923
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 924
    invoke-static {v1}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v1

    if-nez v1, :cond_11

    move v2, v0

    goto :goto_13

    :cond_11
    const/16 v2, 0x10

    .line 926
    :goto_13
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 927
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    const/4 v2, 0x4

    .line 929
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 931
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v3

    if-nez v1, :cond_25

    move v0, v2

    :cond_25
    const/4 v5, 0x0

    move v6, v5

    :goto_27
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v6, v0, :cond_50

    .line 934
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v9

    add-int v10, v3, v6

    aget-byte v9, v9, v10

    const/4 v10, -0x1

    if-eq v9, v10, :cond_4d

    if-nez v1, :cond_40

    .line 944
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    goto :goto_44

    :cond_40
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    :goto_44
    const-wide/16 v9, 0x0

    cmp-long v3, v0, v9

    if-nez v3, :cond_4b

    goto :goto_53

    :cond_4b
    move-wide v7, v0

    goto :goto_53

    :cond_4d
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    .line 941
    :cond_50
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :goto_53
    const/16 v0, 0xa

    .line 952
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    move v0, v5

    move-wide v5, v7

    .line 953
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    .line 954
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 955
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 956
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 957
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 958
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 959
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result p0

    const/high16 v8, -0x10000

    const/high16 v9, 0x10000

    if-nez v1, :cond_84

    if-ne v3, v9, :cond_84

    if-ne v2, v8, :cond_84

    if-nez p0, :cond_84

    const/16 p0, 0x5a

    :goto_82
    move v8, p0

    goto :goto_9b

    :cond_84
    if-nez v1, :cond_8f

    if-ne v3, v8, :cond_8f

    if-ne v2, v9, :cond_8f

    if-nez p0, :cond_8f

    const/16 p0, 0x10e

    goto :goto_82

    :cond_8f
    if-ne v1, v8, :cond_9a

    if-nez v3, :cond_9a

    if-nez v2, :cond_9a

    if-ne p0, v8, :cond_9a

    const/16 p0, 0xb4

    goto :goto_82

    :cond_9a
    move v8, v0

    .line 974
    :goto_9b
    new-instance v3, Lio/bidmachine/media3/extractor/mp4/BoxParser$TkhdData;

    invoke-direct/range {v3 .. v8}, Lio/bidmachine/media3/extractor/mp4/BoxParser$TkhdData;-><init>(IJII)V

    return-object v3
.end method

.method public static parseTrak(Lio/bidmachine/media3/container/Mp4Box$ContainerBox;Lio/bidmachine/media3/container/Mp4Box$LeafBox;JLio/bidmachine/media3/common/DrmInitData;ZZ)Lio/bidmachine/media3/extractor/mp4/Track;
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x6d646961

    .line 335
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$ContainerBox;

    move-result-object v3

    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;

    const v4, 0x68646c72    # 4.3148E24f

    .line 338
    invoke-virtual {v3, v4}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    move-result-object v4

    invoke-static {v4}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    iget-object v4, v4, Lio/bidmachine/media3/container/Mp4Box$LeafBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-static {v4}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseHdlr(Lio/bidmachine/media3/common/util/ParsableByteArray;)I

    move-result v4

    invoke-static {v4}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->getTrackTypeForHdlr(I)I

    move-result v7

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne v7, v4, :cond_2d

    return-object v5

    :cond_2d
    const v4, 0x746b6864

    .line 343
    invoke-virtual {v0, v4}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    move-result-object v4

    invoke-static {v4}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    iget-object v4, v4, Lio/bidmachine/media3/container/Mp4Box$LeafBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-static {v4}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseTkhd(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/mp4/BoxParser$TkhdData;

    move-result-object v4

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, p2, v8

    if-nez v6, :cond_51

    .line 345
    invoke-static {v4}, Lio/bidmachine/media3/extractor/mp4/BoxParser$TkhdData;->access$000(Lio/bidmachine/media3/extractor/mp4/BoxParser$TkhdData;)J

    move-result-wide v10

    move-wide v12, v10

    :goto_4e
    move-object/from16 v6, p1

    goto :goto_54

    :cond_51
    move-wide/from16 v12, p2

    goto :goto_4e

    .line 347
    :goto_54
    iget-object v6, v6, Lio/bidmachine/media3/container/Mp4Box$LeafBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-static {v6}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseMvhd(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/container/Mp4TimestampData;

    move-result-object v6

    iget-wide v10, v6, Lio/bidmachine/media3/container/Mp4TimestampData;->timescale:J

    cmp-long v6, v12, v8

    if-nez v6, :cond_62

    :goto_60
    move-wide v12, v8

    goto :goto_6c

    :cond_62
    const-wide/32 v14, 0xf4240

    move-wide/from16 v16, v10

    .line 352
    invoke-static/range {v12 .. v17}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    goto :goto_60

    :goto_6c
    const v6, 0x6d696e66

    .line 356
    invoke-virtual {v3, v6}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$ContainerBox;

    move-result-object v6

    invoke-static {v6}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;

    const v8, 0x7374626c

    .line 357
    invoke-virtual {v6, v8}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$ContainerBox;

    move-result-object v6

    .line 355
    invoke-static {v6}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;

    const v8, 0x6d646864

    .line 359
    invoke-virtual {v3, v8}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    move-result-object v3

    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    iget-object v3, v3, Lio/bidmachine/media3/container/Mp4Box$LeafBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-static {v3}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseMdhd(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/mp4/BoxParser$MdhdData;

    move-result-object v3

    const v8, 0x73747364

    .line 360
    invoke-virtual {v6, v8}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    move-result-object v6

    if-eqz v6, :cond_13a

    .line 365
    iget-object v14, v6, Lio/bidmachine/media3/container/Mp4Box$LeafBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 368
    invoke-static {v4}, Lio/bidmachine/media3/extractor/mp4/BoxParser$TkhdData;->access$100(Lio/bidmachine/media3/extractor/mp4/BoxParser$TkhdData;)I

    move-result v15

    .line 369
    invoke-static {v4}, Lio/bidmachine/media3/extractor/mp4/BoxParser$TkhdData;->access$200(Lio/bidmachine/media3/extractor/mp4/BoxParser$TkhdData;)I

    move-result v16

    .line 370
    invoke-static {v3}, Lio/bidmachine/media3/extractor/mp4/BoxParser$MdhdData;->access$300(Lio/bidmachine/media3/extractor/mp4/BoxParser$MdhdData;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, p4

    move/from16 v19, p6

    .line 366
    invoke-static/range {v14 .. v19}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseStsd(Lio/bidmachine/media3/common/util/ParsableByteArray;IILjava/lang/String;Lio/bidmachine/media3/common/DrmInitData;Z)Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;

    move-result-object v6

    if-nez p5, :cond_d6

    const v8, 0x65647473

    .line 376
    invoke-virtual {v0, v8}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$ContainerBox;

    move-result-object v0

    if-eqz v0, :cond_d6

    .line 378
    invoke-static {v0}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseEdts(Lio/bidmachine/media3/container/Mp4Box$ContainerBox;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_d6

    .line 380
    iget-object v8, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, [J

    .line 381
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [J

    move-object/from16 v21, v0

    move-object/from16 v20, v8

    goto :goto_da

    :cond_d6
    move-object/from16 v20, v5

    move-object/from16 v21, v20

    .line 385
    :goto_da
    iget-object v0, v6, Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;->format:Lio/bidmachine/media3/common/Format;

    if-nez v0, :cond_df

    return-object v5

    .line 389
    :cond_df
    invoke-static {v4}, Lio/bidmachine/media3/extractor/mp4/BoxParser$TkhdData;->access$400(Lio/bidmachine/media3/extractor/mp4/BoxParser$TkhdData;)I

    move-result v0

    if-eqz v0, :cond_118

    .line 390
    new-instance v0, Lio/bidmachine/media3/container/Mp4AlternateGroupData;

    .line 391
    invoke-static {v4}, Lio/bidmachine/media3/extractor/mp4/BoxParser$TkhdData;->access$400(Lio/bidmachine/media3/extractor/mp4/BoxParser$TkhdData;)I

    move-result v5

    invoke-direct {v0, v5}, Lio/bidmachine/media3/container/Mp4AlternateGroupData;-><init>(I)V

    .line 392
    iget-object v5, v6, Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;->format:Lio/bidmachine/media3/common/Format;

    .line 395
    invoke-virtual {v5}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v5

    .line 397
    iget-object v8, v6, Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;->format:Lio/bidmachine/media3/common/Format;

    iget-object v8, v8, Lio/bidmachine/media3/common/Format;->metadata:Lio/bidmachine/media3/common/Metadata;

    if-eqz v8, :cond_103

    .line 398
    new-array v2, v2, [Lio/bidmachine/media3/common/Metadata$Entry;

    aput-object v0, v2, v1

    invoke-virtual {v8, v2}, Lio/bidmachine/media3/common/Metadata;->copyWithAppendedEntries([Lio/bidmachine/media3/common/Metadata$Entry;)Lio/bidmachine/media3/common/Metadata;

    move-result-object v0

    goto :goto_10d

    .line 399
    :cond_103
    new-instance v8, Lio/bidmachine/media3/common/Metadata;

    new-array v2, v2, [Lio/bidmachine/media3/common/Metadata$Entry;

    aput-object v0, v2, v1

    invoke-direct {v8, v2}, Lio/bidmachine/media3/common/Metadata;-><init>([Lio/bidmachine/media3/common/Metadata$Entry;)V

    move-object v0, v8

    .line 396
    :goto_10d
    invoke-virtual {v5, v0}, Lio/bidmachine/media3/common/Format$Builder;->setMetadata(Lio/bidmachine/media3/common/Metadata;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v0

    :goto_115
    move-object/from16 v16, v0

    goto :goto_11b

    .line 402
    :cond_118
    iget-object v0, v6, Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;->format:Lio/bidmachine/media3/common/Format;

    goto :goto_115

    .line 404
    :goto_11b
    new-instance v5, Lio/bidmachine/media3/extractor/mp4/Track;

    .line 405
    invoke-static {v4}, Lio/bidmachine/media3/extractor/mp4/BoxParser$TkhdData;->access$100(Lio/bidmachine/media3/extractor/mp4/BoxParser$TkhdData;)I

    move-result v0

    .line 407
    invoke-static {v3}, Lio/bidmachine/media3/extractor/mp4/BoxParser$MdhdData;->access$500(Lio/bidmachine/media3/extractor/mp4/BoxParser$MdhdData;)J

    move-result-wide v8

    .line 410
    invoke-static {v3}, Lio/bidmachine/media3/extractor/mp4/BoxParser$MdhdData;->access$600(Lio/bidmachine/media3/extractor/mp4/BoxParser$MdhdData;)J

    move-result-wide v14

    iget v1, v6, Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;->requiredSampleTransformation:I

    iget-object v2, v6, Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;->trackEncryptionBoxes:[Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;

    iget v3, v6, Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;->nalUnitLengthFieldLength:I

    move v6, v0

    move/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v19, v3

    invoke-direct/range {v5 .. v21}, Lio/bidmachine/media3/extractor/mp4/Track;-><init>(IIJJJJLio/bidmachine/media3/common/Format;I[Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;I[J[J)V

    return-object v5

    .line 362
    :cond_13a
    const-string v0, "Malformed sample table (stbl) missing sample description (stsd)"

    invoke-static {v0, v5}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method public static parseTraks(Lio/bidmachine/media3/container/Mp4Box$ContainerBox;Lio/bidmachine/media3/extractor/GaplessInfoHolder;JLio/bidmachine/media3/common/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/container/Mp4Box$ContainerBox;",
            "Lio/bidmachine/media3/extractor/GaplessInfoHolder;",
            "J",
            "Lio/bidmachine/media3/common/DrmInitData;",
            "ZZ",
            "Lcom/google/common/base/Function<",
            "Lio/bidmachine/media3/extractor/mp4/Track;",
            "Lio/bidmachine/media3/extractor/mp4/Track;",
            ">;)",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 149
    :goto_6
    iget-object v2, p0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->containerChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_75

    .line 150
    iget-object v2, p0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->containerChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;

    .line 151
    iget v2, v3, Lio/bidmachine/media3/container/Mp4Box;->type:I

    const v4, 0x7472616b

    if-eq v2, v4, :cond_21

    move-object/from16 v3, p7

    goto :goto_72

    :cond_21
    const v2, 0x6d766864

    .line 159
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    move-result-object v2

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    move-wide v5, p2

    move-object v7, p4

    move v8, p5

    move/from16 v9, p6

    .line 157
    invoke-static/range {v3 .. v9}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseTrak(Lio/bidmachine/media3/container/Mp4Box$ContainerBox;Lio/bidmachine/media3/container/Mp4Box$LeafBox;JLio/bidmachine/media3/common/DrmInitData;ZZ)Lio/bidmachine/media3/extractor/mp4/Track;

    move-result-object v2

    move-object v4, v3

    move-object/from16 v3, p7

    .line 156
    invoke-interface {v3, v2}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/extractor/mp4/Track;

    if-nez v2, :cond_44

    goto :goto_72

    :cond_44
    const v5, 0x6d646961

    .line 170
    invoke-virtual {v4, v5}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$ContainerBox;

    move-result-object v4

    invoke-static {v4}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;

    const v5, 0x6d696e66

    .line 171
    invoke-virtual {v4, v5}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$ContainerBox;

    move-result-object v4

    .line 169
    invoke-static {v4}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;

    const v5, 0x7374626c

    .line 172
    invoke-virtual {v4, v5}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$ContainerBox;

    move-result-object v4

    .line 168
    invoke-static {v4}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;

    .line 173
    invoke-static {v2, v4, p1}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseStbl(Lio/bidmachine/media3/extractor/mp4/Track;Lio/bidmachine/media3/container/Mp4Box$ContainerBox;Lio/bidmachine/media3/extractor/GaplessInfoHolder;)Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    move-result-object v2

    .line 174
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_72
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_75
    return-object v0
.end method

.method public static parseUdta(Lio/bidmachine/media3/container/Mp4Box$LeafBox;)Lio/bidmachine/media3/common/Metadata;
    .registers 7

    .line 186
    iget-object p0, p0, Lio/bidmachine/media3/container/Mp4Box$LeafBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/16 v0, 0x8

    .line 187
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 188
    new-instance v1, Lio/bidmachine/media3/common/Metadata;

    const/4 v2, 0x0

    new-array v2, v2, [Lio/bidmachine/media3/common/Metadata$Entry;

    invoke-direct {v1, v2}, Lio/bidmachine/media3/common/Metadata;-><init>([Lio/bidmachine/media3/common/Metadata$Entry;)V

    .line 189
    :goto_f
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lt v2, v0, :cond_59

    .line 190
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 191
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 192
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    const v5, 0x6d657461

    if-ne v4, v5, :cond_34

    .line 194
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    add-int v4, v2, v3

    .line 196
    invoke-static {p0, v4}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseUdtaMeta(Lio/bidmachine/media3/common/util/ParsableByteArray;I)Lio/bidmachine/media3/common/Metadata;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/bidmachine/media3/common/Metadata;->copyWithAppendedEntriesFrom(Lio/bidmachine/media3/common/Metadata;)Lio/bidmachine/media3/common/Metadata;

    move-result-object v1

    goto :goto_54

    :cond_34
    const v5, 0x736d7461

    if-ne v4, v5, :cond_47

    .line 198
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    add-int v4, v2, v3

    .line 201
    invoke-static {p0, v4}, Lio/bidmachine/media3/extractor/mp4/SmtaAtomUtil;->parseSmta(Lio/bidmachine/media3/common/util/ParsableByteArray;I)Lio/bidmachine/media3/common/Metadata;

    move-result-object v4

    .line 200
    invoke-virtual {v1, v4}, Lio/bidmachine/media3/common/Metadata;->copyWithAppendedEntriesFrom(Lio/bidmachine/media3/common/Metadata;)Lio/bidmachine/media3/common/Metadata;

    move-result-object v1

    goto :goto_54

    :cond_47
    const v5, -0x56878686

    if-ne v4, v5, :cond_54

    .line 203
    invoke-static {p0}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseXyz(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/common/Metadata;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/bidmachine/media3/common/Metadata;->copyWithAppendedEntriesFrom(Lio/bidmachine/media3/common/Metadata;)Lio/bidmachine/media3/common/Metadata;

    move-result-object v1

    :cond_54
    :goto_54
    add-int/2addr v2, v3

    .line 205
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_f

    :cond_59
    return-object v1
.end method

.method public static parseUdtaMeta(Lio/bidmachine/media3/common/util/ParsableByteArray;I)Lio/bidmachine/media3/common/Metadata;
    .registers 6

    const/16 v0, 0x8

    .line 866
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 867
    invoke-static {p0}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->maybeSkipRemainingMetaBoxHeaderBytes(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    .line 868
    :goto_8
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    if-ge v0, p1, :cond_2d

    .line 869
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 870
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 871
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    const v3, 0x696c7374

    if-ne v2, v3, :cond_28

    .line 873
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    add-int/2addr v0, v1

    .line 874
    invoke-static {p0, v0}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseIlst(Lio/bidmachine/media3/common/util/ParsableByteArray;I)Lio/bidmachine/media3/common/Metadata;

    move-result-object p0

    return-object p0

    :cond_28
    add-int/2addr v0, v1

    .line 876
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_8

    :cond_2d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseVideoExtendedUsageBox(Lio/bidmachine/media3/common/util/ParsableByteArray;II)Lio/bidmachine/media3/extractor/mp4/BoxParser$VexuData;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x8

    .line 2314
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2315
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_b
    sub-int v3, v0, p1

    if-ge v3, p2, :cond_2f

    .line 2318
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2319
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    if-lez v3, :cond_1a

    const/4 v4, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v4, 0x0

    .line 2320
    :goto_1b
    const-string v5, "childAtomSize must be positive"

    invoke-static {v4, v5}, Lio/bidmachine/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2321
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    const v5, 0x65796573

    if-ne v4, v5, :cond_2d

    .line 2323
    invoke-static {p0, v0, v3}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseStereoViewBox(Lio/bidmachine/media3/common/util/ParsableByteArray;II)Lio/bidmachine/media3/extractor/mp4/BoxParser$EyesData;

    move-result-object v2

    :cond_2d
    add-int/2addr v0, v3

    goto :goto_b

    :cond_2f
    if-nez v2, :cond_32

    return-object v1

    .line 2327
    :cond_32
    new-instance p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$VexuData;

    invoke-direct {p0, v2}, Lio/bidmachine/media3/extractor/mp4/BoxParser$VexuData;-><init>(Lio/bidmachine/media3/extractor/mp4/BoxParser$EyesData;)V

    return-object p0
.end method

.method public static parseVideoSampleEntry(Lio/bidmachine/media3/common/util/ParsableByteArray;IIIILjava/lang/String;ILio/bidmachine/media3/common/DrmInitData;Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;I)V
    .registers 51
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    add-int/lit8 v5, v1, 0x10

    .line 1234
    invoke-virtual {v0, v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/16 v5, 0x10

    .line 1236
    invoke-virtual {v0, v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1237
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 1238
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    const/16 v7, 0x32

    .line 1244
    invoke-virtual {v0, v7}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1246
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v7

    const v8, 0x656e6376

    move/from16 v10, p1

    if-ne v10, v8, :cond_53

    .line 1250
    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseSampleEntryEncryptionData(Lio/bidmachine/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_50

    .line 1252
    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-nez v3, :cond_3e

    const/4 v3, 0x0

    goto :goto_48

    .line 1256
    :cond_3e
    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;

    iget-object v11, v11, Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v3, v11}, Lio/bidmachine/media3/common/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lio/bidmachine/media3/common/DrmInitData;

    move-result-object v3

    .line 1257
    :goto_48
    iget-object v11, v4, Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;->trackEncryptionBoxes:[Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;

    aput-object v8, v11, p9

    .line 1259
    :cond_50
    invoke-virtual {v0, v7}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    :cond_53
    const v8, 0x6d317620

    .line 1267
    const-string v11, "video/3gpp"

    if-ne v10, v8, :cond_5d

    .line 1268
    const-string v8, "video/mpeg"

    goto :goto_65

    :cond_5d
    const v8, 0x48323633

    if-ne v10, v8, :cond_64

    move-object v8, v11

    goto :goto_65

    :cond_64
    const/4 v8, 0x0

    :goto_65
    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v15, 0x8

    move v13, v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    :goto_86
    sub-int v12, v7, v1

    if-ge v12, v2, :cond_9f

    .line 1291
    invoke-virtual {v0, v7}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1292
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v12

    .line 1293
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    if-nez v9, :cond_b2

    .line 1294
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v30

    sub-int v1, v30, p2

    if-ne v1, v2, :cond_b2

    :cond_9f
    move-object/from16 v28, v3

    move-object/from16 v35, v16

    move/from16 v40, v19

    move/from16 v1, v22

    move/from16 v33, v23

    move/from16 v3, v24

    const/4 v2, 0x0

    move/from16 v22, v13

    move/from16 v24, v15

    goto/16 :goto_5c7

    :cond_b2
    if-lez v9, :cond_b8

    const/4 v1, 0x1

    :goto_b5
    const/16 p9, 0x1

    goto :goto_ba

    :cond_b8
    const/4 v1, 0x0

    goto :goto_b5

    .line 1298
    :goto_ba
    const-string v2, "childAtomSize must be positive"

    invoke-static {v1, v2}, Lio/bidmachine/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1299
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    const v2, 0x61766343

    if-ne v1, v2, :cond_117

    if-nez v8, :cond_ce

    move/from16 v1, p9

    :goto_cc
    const/4 v2, 0x0

    goto :goto_d0

    :cond_ce
    const/4 v1, 0x0

    goto :goto_cc

    .line 1301
    :goto_d0
    invoke-static {v1, v2}, Lio/bidmachine/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    add-int/lit8 v12, v12, 0x8

    .line 1303
    invoke-virtual {v0, v12}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1304
    invoke-static {v0}, Lio/bidmachine/media3/extractor/AvcConfig;->parse(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/AvcConfig;

    move-result-object v1

    .line 1305
    iget-object v2, v1, Lio/bidmachine/media3/extractor/AvcConfig;->initializationData:Ljava/util/List;

    .line 1306
    iget v8, v1, Lio/bidmachine/media3/extractor/AvcConfig;->nalUnitLengthFieldLength:I

    iput v8, v4, Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;->nalUnitLengthFieldLength:I

    if-nez v29, :cond_e6

    .line 1308
    iget v14, v1, Lio/bidmachine/media3/extractor/AvcConfig;->pixelWidthHeightRatio:F

    .line 1310
    :cond_e6
    iget-object v8, v1, Lio/bidmachine/media3/extractor/AvcConfig;->codecs:Ljava/lang/String;

    .line 1311
    iget v12, v1, Lio/bidmachine/media3/extractor/AvcConfig;->maxNumReorderFrames:I

    .line 1312
    iget v13, v1, Lio/bidmachine/media3/extractor/AvcConfig;->colorSpace:I

    .line 1313
    iget v15, v1, Lio/bidmachine/media3/extractor/AvcConfig;->colorRange:I

    move-object/from16 v16, v2

    .line 1314
    iget v2, v1, Lio/bidmachine/media3/extractor/AvcConfig;->colorTransfer:I

    move/from16 v17, v2

    .line 1315
    iget v2, v1, Lio/bidmachine/media3/extractor/AvcConfig;->bitdepthLuma:I

    .line 1316
    iget v1, v1, Lio/bidmachine/media3/extractor/AvcConfig;->bitdepthChroma:I

    .line 1317
    const-string v20, "video/avc"

    move/from16 v30, v7

    move/from16 v23, v10

    move-object/from16 v31, v11

    move/from16 v22, v13

    move/from16 v33, v15

    move/from16 v24, v17

    const/4 v7, 0x0

    move v13, v1

    move v15, v2

    move-object/from16 v17, v8

    move-object/from16 v8, v20

    move-object/from16 v1, v28

    const/4 v2, 0x0

    move-object/from16 v28, v3

    move/from16 v20, v12

    :goto_114
    const/4 v12, -0x1

    goto/16 :goto_5b2

    :cond_117
    const v2, 0x68766343

    move/from16 v30, v7

    const-string v7, "video/hevc"

    if-ne v1, v2, :cond_17a

    if-nez v8, :cond_126

    move/from16 v1, p9

    :goto_124
    const/4 v2, 0x0

    goto :goto_128

    :cond_126
    const/4 v1, 0x0

    goto :goto_124

    .line 1318
    :goto_128
    invoke-static {v1, v2}, Lio/bidmachine/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    add-int/lit8 v12, v12, 0x8

    .line 1320
    invoke-virtual {v0, v12}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1321
    invoke-static {v0}, Lio/bidmachine/media3/extractor/HevcConfig;->parse(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/HevcConfig;

    move-result-object v1

    .line 1322
    iget-object v2, v1, Lio/bidmachine/media3/extractor/HevcConfig;->initializationData:Ljava/util/List;

    .line 1323
    iget v8, v1, Lio/bidmachine/media3/extractor/HevcConfig;->nalUnitLengthFieldLength:I

    iput v8, v4, Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;->nalUnitLengthFieldLength:I

    if-nez v29, :cond_13e

    .line 1325
    iget v14, v1, Lio/bidmachine/media3/extractor/HevcConfig;->pixelWidthHeightRatio:F

    .line 1327
    :cond_13e
    iget v8, v1, Lio/bidmachine/media3/extractor/HevcConfig;->maxNumReorderPics:I

    .line 1328
    iget v12, v1, Lio/bidmachine/media3/extractor/HevcConfig;->maxSubLayers:I

    .line 1329
    iget-object v13, v1, Lio/bidmachine/media3/extractor/HevcConfig;->codecs:Ljava/lang/String;

    .line 1330
    iget v15, v1, Lio/bidmachine/media3/extractor/HevcConfig;->stereoMode:I

    move-object/from16 v16, v2

    const/4 v2, -0x1

    if-eq v15, v2, :cond_14d

    move/from16 v19, v15

    .line 1334
    :cond_14d
    iget v2, v1, Lio/bidmachine/media3/extractor/HevcConfig;->colorSpace:I

    .line 1335
    iget v15, v1, Lio/bidmachine/media3/extractor/HevcConfig;->colorRange:I

    move/from16 v17, v2

    .line 1336
    iget v2, v1, Lio/bidmachine/media3/extractor/HevcConfig;->colorTransfer:I

    move/from16 v20, v2

    .line 1337
    iget v2, v1, Lio/bidmachine/media3/extractor/HevcConfig;->bitdepthLuma:I

    move/from16 v21, v2

    .line 1338
    iget v2, v1, Lio/bidmachine/media3/extractor/HevcConfig;->bitdepthChroma:I

    .line 1339
    iget-object v1, v1, Lio/bidmachine/media3/extractor/HevcConfig;->vpsData:Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;

    move-object/from16 v28, v3

    move/from16 v23, v10

    move-object/from16 v31, v11

    move/from16 v33, v15

    move/from16 v22, v17

    move/from16 v24, v20

    move/from16 v15, v21

    move/from16 v20, v8

    move/from16 v21, v12

    move-object/from16 v17, v13

    const/4 v12, -0x1

    move v13, v2

    move-object v8, v7

    :goto_176
    const/4 v2, 0x0

    :goto_177
    const/4 v7, 0x0

    goto/16 :goto_5b2

    :cond_17a
    const v2, 0x6c687643

    move-object/from16 v31, v11

    const/4 v11, 0x2

    if-ne v1, v2, :cond_24c

    .line 1343
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "lhvC must follow hvcC atom"

    .line 1342
    invoke-static {v1, v2}, Lio/bidmachine/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    move-object/from16 v2, v28

    if-eqz v2, :cond_19a

    .line 1344
    iget-object v1, v2, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;->layerInfos:Lcom/google/common/collect/ImmutableList;

    .line 1345
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-lt v1, v11, :cond_19a

    move/from16 v1, p9

    goto :goto_19b

    :cond_19a
    const/4 v1, 0x0

    :goto_19b
    const-string v7, "must have at least two layers"

    .line 1344
    invoke-static {v1, v7}, Lio/bidmachine/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    add-int/lit8 v12, v12, 0x8

    .line 1347
    invoke-virtual {v0, v12}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1348
    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;

    invoke-static {v0, v1}, Lio/bidmachine/media3/extractor/HevcConfig;->parseLayered(Lio/bidmachine/media3/common/util/ParsableByteArray;Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;)Lio/bidmachine/media3/extractor/HevcConfig;

    move-result-object v1

    .line 1349
    iget v7, v4, Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;->nalUnitLengthFieldLength:I

    iget v8, v1, Lio/bidmachine/media3/extractor/HevcConfig;->nalUnitLengthFieldLength:I

    if-ne v7, v8, :cond_1b8

    move/from16 v7, p9

    goto :goto_1b9

    :cond_1b8
    const/4 v7, 0x0

    :goto_1b9
    const-string v8, "nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms"

    invoke-static {v7, v8}, Lio/bidmachine/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1355
    iget v7, v1, Lio/bidmachine/media3/extractor/HevcConfig;->colorSpace:I

    const/4 v8, -0x1

    move/from16 v11, v22

    if-eq v7, v8, :cond_1d0

    if-ne v11, v7, :cond_1ca

    move/from16 v7, p9

    goto :goto_1cb

    :cond_1ca
    const/4 v7, 0x0

    .line 1356
    :goto_1cb
    const-string v12, "colorSpace must be the same for both views"

    invoke-static {v7, v12}, Lio/bidmachine/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1359
    :cond_1d0
    iget v7, v1, Lio/bidmachine/media3/extractor/HevcConfig;->colorRange:I

    move/from16 v12, v23

    if-eq v7, v8, :cond_1e1

    if-ne v12, v7, :cond_1db

    move/from16 v7, p9

    goto :goto_1dc

    :cond_1db
    const/4 v7, 0x0

    .line 1360
    :goto_1dc
    const-string v8, "colorRange must be the same for both views"

    invoke-static {v7, v8}, Lio/bidmachine/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1363
    :cond_1e1
    iget v7, v1, Lio/bidmachine/media3/extractor/HevcConfig;->colorTransfer:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1f7

    move/from16 v8, v24

    if-ne v8, v7, :cond_1ef

    move/from16 v7, p9

    :goto_1ec
    move/from16 v17, v8

    goto :goto_1f1

    :cond_1ef
    const/4 v7, 0x0

    goto :goto_1ec

    .line 1364
    :goto_1f1
    const-string v8, "colorTransfer must be the same for both views"

    invoke-static {v7, v8}, Lio/bidmachine/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    goto :goto_1f9

    :cond_1f7
    move/from16 v17, v24

    .line 1368
    :goto_1f9
    iget v7, v1, Lio/bidmachine/media3/extractor/HevcConfig;->bitdepthLuma:I

    if-ne v15, v7, :cond_200

    move/from16 v7, p9

    goto :goto_201

    :cond_200
    const/4 v7, 0x0

    :goto_201
    const-string v8, "bitdepthLuma must be the same for both views"

    invoke-static {v7, v8}, Lio/bidmachine/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1371
    iget v7, v1, Lio/bidmachine/media3/extractor/HevcConfig;->bitdepthChroma:I

    if-ne v13, v7, :cond_20d

    move/from16 v7, p9

    goto :goto_20e

    :cond_20d
    const/4 v7, 0x0

    :goto_20e
    const-string v8, "bitdepthChroma must be the same for both views"

    invoke-static {v7, v8}, Lio/bidmachine/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    move-object/from16 v7, v16

    if-eqz v7, :cond_22e

    .line 1378
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v8

    .line 1379
    invoke-virtual {v8, v7}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v7

    iget-object v8, v1, Lio/bidmachine/media3/extractor/HevcConfig;->initializationData:Ljava/util/List;

    .line 1380
    invoke-virtual {v7, v8}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v7

    .line 1381
    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v16

    move-object/from16 v7, v16

    move/from16 v16, v11

    goto :goto_236

    .line 1383
    :cond_22e
    const-string v8, "initializationData must be already set from hvcC atom"

    move/from16 v16, v11

    const/4 v11, 0x0

    invoke-static {v11, v8}, Lio/bidmachine/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1386
    :goto_236
    iget-object v1, v1, Lio/bidmachine/media3/extractor/HevcConfig;->codecs:Ljava/lang/String;

    .line 1387
    const-string v8, "video/mv-hevc"

    move-object/from16 v28, v3

    move/from16 v23, v10

    move/from16 v33, v12

    move/from16 v22, v16

    move/from16 v24, v17

    const/4 v12, -0x1

    move-object/from16 v17, v1

    move-object v1, v2

    move-object/from16 v16, v7

    goto/16 :goto_176

    :cond_24c
    move-object/from16 v7, v16

    move/from16 v32, v22

    move/from16 v33, v23

    move/from16 v34, v24

    move-object/from16 v2, v28

    const v11, 0x76657875

    if-ne v1, v11, :cond_2bb

    .line 1388
    invoke-static {v0, v12, v9}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseVideoExtendedUsageBox(Lio/bidmachine/media3/common/util/ParsableByteArray;II)Lio/bidmachine/media3/extractor/mp4/BoxParser$VexuData;

    move-result-object v1

    if-eqz v1, :cond_28e

    .line 1389
    invoke-static {v1}, Lio/bidmachine/media3/extractor/mp4/BoxParser$VexuData;->access$700(Lio/bidmachine/media3/extractor/mp4/BoxParser$VexuData;)Lio/bidmachine/media3/extractor/mp4/BoxParser$EyesData;

    move-result-object v11

    if-eqz v11, :cond_28e

    if-eqz v2, :cond_291

    .line 1390
    iget-object v11, v2, Lio/bidmachine/media3/container/NalUnitUtil$H265VpsData;->layerInfos:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v11}, Ljava/util/AbstractCollection;->size()I

    move-result v11

    const/4 v12, 0x2

    if-lt v11, v12, :cond_291

    .line 1393
    invoke-virtual {v1}, Lio/bidmachine/media3/extractor/mp4/BoxParser$VexuData;->hasBothEyeViews()Z

    move-result v11

    const-string v12, "both eye views must be marked as available"

    .line 1392
    invoke-static {v11, v12}, Lio/bidmachine/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1399
    invoke-static {v1}, Lio/bidmachine/media3/extractor/mp4/BoxParser$VexuData;->access$700(Lio/bidmachine/media3/extractor/mp4/BoxParser$VexuData;)Lio/bidmachine/media3/extractor/mp4/BoxParser$EyesData;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/media3/extractor/mp4/BoxParser$EyesData;->access$800(Lio/bidmachine/media3/extractor/mp4/BoxParser$EyesData;)Lio/bidmachine/media3/extractor/mp4/BoxParser$StriData;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/media3/extractor/mp4/BoxParser$StriData;->access$900(Lio/bidmachine/media3/extractor/mp4/BoxParser$StriData;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v11, "for MV-HEVC, eye_views_reversed must be set to false"

    .line 1398
    invoke-static {v1, v11}, Lio/bidmachine/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    :cond_28e
    move/from16 v11, v19

    goto :goto_2aa

    :cond_291
    move/from16 v11, v19

    const/4 v12, -0x1

    if-ne v11, v12, :cond_2aa

    .line 1403
    invoke-static {v1}, Lio/bidmachine/media3/extractor/mp4/BoxParser$VexuData;->access$700(Lio/bidmachine/media3/extractor/mp4/BoxParser$VexuData;)Lio/bidmachine/media3/extractor/mp4/BoxParser$EyesData;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/media3/extractor/mp4/BoxParser$EyesData;->access$800(Lio/bidmachine/media3/extractor/mp4/BoxParser$EyesData;)Lio/bidmachine/media3/extractor/mp4/BoxParser$StriData;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/media3/extractor/mp4/BoxParser$StriData;->access$900(Lio/bidmachine/media3/extractor/mp4/BoxParser$StriData;)Z

    move-result v1

    if-eqz v1, :cond_2a8

    const/4 v1, 0x5

    :goto_2a5
    move/from16 v19, v1

    goto :goto_2ac

    :cond_2a8
    const/4 v1, 0x4

    goto :goto_2a5

    :cond_2aa
    :goto_2aa
    move/from16 v19, v11

    :goto_2ac
    move-object v1, v2

    move-object/from16 v28, v3

    move-object/from16 v16, v7

    move/from16 v23, v10

    move/from16 v22, v32

    move/from16 v24, v34

    :goto_2b7
    const/4 v2, 0x0

    :goto_2b8
    const/4 v7, 0x0

    goto/16 :goto_114

    :cond_2bb
    move/from16 v11, v19

    move-object/from16 v19, v2

    const v2, 0x64766343

    if-eq v1, v2, :cond_2c9

    const v2, 0x64767643

    if-ne v1, v2, :cond_2de

    :cond_2c9
    move-object/from16 v28, v3

    move-object/from16 v35, v7

    move/from16 v23, v10

    move/from16 v40, v11

    move/from16 v22, v13

    move/from16 v24, v15

    move/from16 v1, v32

    move/from16 v3, v34

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v12, -0x1

    goto/16 :goto_5a5

    :cond_2de
    const v2, 0x76706343

    if-ne v1, v2, :cond_350

    if-nez v8, :cond_2e9

    move/from16 v1, p9

    :goto_2e7
    const/4 v2, 0x0

    goto :goto_2eb

    :cond_2e9
    const/4 v1, 0x0

    goto :goto_2e7

    .line 1415
    :goto_2eb
    invoke-static {v1, v2}, Lio/bidmachine/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    const v1, 0x76703038

    .line 1416
    const-string v2, "video/x-vnd.on2.vp9"

    if-ne v10, v1, :cond_2f8

    const-string v1, "video/x-vnd.on2.vp8"

    goto :goto_2f9

    :cond_2f8
    move-object v1, v2

    :goto_2f9
    add-int/lit8 v12, v12, 0xc

    .line 1417
    invoke-virtual {v0, v12}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1419
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    int-to-byte v8, v8

    .line 1420
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    int-to-byte v12, v12

    .line 1421
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v13

    shr-int/lit8 v15, v13, 0x4

    shr-int/lit8 v22, v13, 0x1

    move/from16 v23, v10

    and-int/lit8 v10, v22, 0x7

    int-to-byte v10, v10

    .line 1425
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_321

    int-to-byte v2, v15

    .line 1428
    invoke-static {v8, v12, v2, v10}, Lio/bidmachine/media3/common/util/CodecSpecificDataUtil;->buildVp9CodecPrivateInitializationData(BBBB)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    move-object v7, v2

    :cond_321
    and-int/lit8 v2, v13, 0x1

    if-eqz v2, :cond_328

    move/from16 v2, p9

    goto :goto_329

    :cond_328
    const/4 v2, 0x0

    .line 1432
    :goto_329
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 1433
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    .line 1434
    invoke-static {v8}, Lio/bidmachine/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v22

    if-eqz v2, :cond_33a

    move/from16 v16, p9

    goto :goto_33c

    :cond_33a
    const/16 v16, 0x2

    .line 1437
    :goto_33c
    invoke-static {v10}, Lio/bidmachine/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v24

    move-object v8, v1

    move-object/from16 v28, v3

    move v13, v15

    move/from16 v33, v16

    move-object/from16 v1, v19

    const/4 v2, 0x0

    const/4 v12, -0x1

    move-object/from16 v16, v7

    move/from16 v19, v11

    goto/16 :goto_177

    :cond_350
    move/from16 v23, v10

    const v2, 0x61763143

    if-ne v1, v2, :cond_38c

    add-int/lit8 v1, v9, -0x8

    .line 1442
    new-array v2, v1, [B

    const/4 v7, 0x0

    .line 1443
    invoke-virtual {v0, v2, v7, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1444
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v16

    add-int/lit8 v12, v12, 0x8

    .line 1446
    invoke-virtual {v0, v12}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1447
    invoke-static {v0}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseAv1c(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/common/ColorInfo;

    move-result-object v1

    .line 1449
    iget v2, v1, Lio/bidmachine/media3/common/ColorInfo;->lumaBitdepth:I

    .line 1450
    iget v7, v1, Lio/bidmachine/media3/common/ColorInfo;->chromaBitdepth:I

    .line 1451
    iget v8, v1, Lio/bidmachine/media3/common/ColorInfo;->colorSpace:I

    .line 1452
    iget v10, v1, Lio/bidmachine/media3/common/ColorInfo;->colorRange:I

    .line 1453
    iget v1, v1, Lio/bidmachine/media3/common/ColorInfo;->colorTransfer:I

    .line 1454
    const-string v12, "video/av01"

    move/from16 v24, v1

    move v15, v2

    move-object/from16 v28, v3

    move v13, v7

    move/from16 v22, v8

    move/from16 v33, v10

    move-object v8, v12

    move-object/from16 v1, v19

    :goto_385
    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v12, -0x1

    move/from16 v19, v11

    goto/16 :goto_5b2

    :cond_38c
    const v2, 0x636c6c69

    if-ne v1, v2, :cond_3b9

    if-nez v25, :cond_397

    .line 1456
    invoke-static {}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->allocateHdrStaticInfo()Ljava/nio/ByteBuffer;

    move-result-object v25

    :cond_397
    move-object/from16 v1, v25

    const/16 v2, 0x15

    .line 1460
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1461
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readShort()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1462
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readShort()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v25, v1

    move-object/from16 v28, v3

    move-object/from16 v16, v7

    move-object/from16 v1, v19

    move/from16 v22, v32

    move/from16 v24, v34

    goto :goto_385

    :cond_3b9
    const v2, 0x6d646376

    if-ne v1, v2, :cond_437

    if-nez v25, :cond_3c4

    .line 1465
    invoke-static {}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->allocateHdrStaticInfo()Ljava/nio/ByteBuffer;

    move-result-object v25

    :cond_3c4
    move-object/from16 v1, v25

    .line 1469
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readShort()S

    move-result v2

    .line 1470
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readShort()S

    move-result v10

    .line 1471
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readShort()S

    move-result v12

    .line 1472
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readShort()S

    move-result v4

    move/from16 v22, v13

    .line 1473
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readShort()S

    move-result v13

    move/from16 v24, v15

    .line 1474
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readShort()S

    move-result v15

    move-object/from16 v28, v3

    .line 1475
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readShort()S

    move-result v3

    move-object/from16 v35, v7

    .line 1476
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readShort()S

    move-result v7

    .line 1477
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v36

    .line 1478
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v38

    move/from16 v40, v11

    move/from16 v11, p9

    .line 1480
    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1481
    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1482
    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1483
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1484
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1485
    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1486
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1487
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1488
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x2710

    .line 1489
    div-long v10, v36, v2

    long-to-int v4, v10

    int-to-short v4, v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1490
    div-long v2, v38, v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v25, v1

    move-object/from16 v1, v19

    move/from16 v13, v22

    move/from16 v15, v24

    move/from16 v22, v32

    move/from16 v24, v34

    move-object/from16 v16, v35

    move/from16 v19, v40

    goto/16 :goto_2b7

    :cond_437
    move-object/from16 v28, v3

    move-object/from16 v35, v7

    move/from16 v40, v11

    move/from16 v22, v13

    move/from16 v24, v15

    const v2, 0x64323633

    if-ne v1, v2, :cond_462

    if-nez v8, :cond_44b

    const/4 v1, 0x1

    :goto_449
    const/4 v2, 0x0

    goto :goto_44d

    :cond_44b
    const/4 v1, 0x0

    goto :goto_449

    .line 1492
    :goto_44d
    invoke-static {v1, v2}, Lio/bidmachine/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    move-object/from16 v1, v19

    move/from16 v13, v22

    move/from16 v15, v24

    move-object/from16 v8, v31

    :goto_458
    move/from16 v22, v32

    move/from16 v24, v34

    move-object/from16 v16, v35

    :goto_45e
    move/from16 v19, v40

    goto/16 :goto_2b8

    :cond_462
    const/4 v2, 0x0

    const v3, 0x65736473

    if-ne v1, v3, :cond_491

    if-nez v8, :cond_46c

    const/4 v1, 0x1

    goto :goto_46d

    :cond_46c
    const/4 v1, 0x0

    .line 1495
    :goto_46d
    invoke-static {v1, v2}, Lio/bidmachine/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1496
    invoke-static {v0, v12}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseEsdsFromParent(Lio/bidmachine/media3/common/util/ParsableByteArray;I)Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;

    move-result-object v27

    .line 1497
    invoke-static/range {v27 .. v27}, Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;->access$1000(Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;)Ljava/lang/String;

    move-result-object v1

    .line 1498
    invoke-static/range {v27 .. v27}, Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;->access$1100(Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;)[B

    move-result-object v3

    if-eqz v3, :cond_483

    .line 1500
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v16

    goto :goto_485

    :cond_483
    move-object/from16 v16, v35

    :goto_485
    move-object v8, v1

    move-object/from16 v1, v19

    move/from16 v13, v22

    move/from16 v15, v24

    move/from16 v22, v32

    move/from16 v24, v34

    goto :goto_45e

    :cond_491
    const v3, 0x62747274

    if-ne v1, v3, :cond_4a1

    .line 1503
    invoke-static {v0, v12}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseBtrtFromParent(Lio/bidmachine/media3/common/util/ParsableByteArray;I)Lio/bidmachine/media3/extractor/mp4/BoxParser$BtrtData;

    move-result-object v26

    :cond_49a
    :goto_49a
    move-object/from16 v1, v19

    move/from16 v13, v22

    move/from16 v15, v24

    goto :goto_458

    :cond_4a1
    const v3, 0x70617370

    if-ne v1, v3, :cond_4bf

    .line 1505
    invoke-static {v0, v12}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parsePaspFromParent(Lio/bidmachine/media3/common/util/ParsableByteArray;I)F

    move-result v1

    move v14, v1

    move-object/from16 v1, v19

    move/from16 v13, v22

    move/from16 v15, v24

    move/from16 v22, v32

    move/from16 v24, v34

    move-object/from16 v16, v35

    move/from16 v19, v40

    const/4 v7, 0x0

    const/4 v12, -0x1

    const/16 v29, 0x1

    goto/16 :goto_5b2

    :cond_4bf
    const v3, 0x73763364

    if-ne v1, v3, :cond_4c9

    .line 1508
    invoke-static {v0, v12, v9}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseProjFromParent(Lio/bidmachine/media3/common/util/ParsableByteArray;II)[B

    move-result-object v18

    goto :goto_49a

    :cond_4c9
    const v3, 0x73743364

    if-ne v1, v3, :cond_4f3

    .line 1510
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/4 v3, 0x3

    .line 1511
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    if-nez v1, :cond_49a

    .line 1513
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    if-eqz v1, :cond_4f0

    const/4 v11, 0x1

    if-eq v1, v11, :cond_4ed

    const/4 v12, 0x2

    if-eq v1, v12, :cond_4ea

    if-eq v1, v3, :cond_4e7

    goto :goto_49a

    :cond_4e7
    move/from16 v40, v3

    goto :goto_49a

    :cond_4ea
    const/16 v40, 0x2

    goto :goto_49a

    :cond_4ed
    move/from16 v40, v11

    goto :goto_49a

    :cond_4f0
    const/16 v40, 0x0

    goto :goto_49a

    :cond_4f3
    const/4 v11, 0x1

    const v3, 0x61707643

    if-ne v1, v3, :cond_52e

    add-int/lit8 v1, v9, -0xc

    .line 1535
    new-array v3, v1, [B

    add-int/lit8 v12, v12, 0xc

    .line 1536
    invoke-virtual {v0, v12}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v7, 0x0

    .line 1537
    invoke-virtual {v0, v3, v7, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1538
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v16

    .line 1540
    new-instance v1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {v1, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-static {v1}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseApvc(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/common/ColorInfo;

    move-result-object v1

    .line 1542
    iget v3, v1, Lio/bidmachine/media3/common/ColorInfo;->lumaBitdepth:I

    .line 1543
    iget v4, v1, Lio/bidmachine/media3/common/ColorInfo;->chromaBitdepth:I

    .line 1544
    iget v8, v1, Lio/bidmachine/media3/common/ColorInfo;->colorSpace:I

    .line 1545
    iget v10, v1, Lio/bidmachine/media3/common/ColorInfo;->colorRange:I

    .line 1546
    iget v1, v1, Lio/bidmachine/media3/common/ColorInfo;->colorTransfer:I

    .line 1547
    const-string v11, "video/apv"

    move/from16 v24, v1

    move v15, v3

    move v13, v4

    move/from16 v22, v8

    move/from16 v33, v10

    move-object v8, v11

    move-object/from16 v1, v19

    move/from16 v19, v40

    goto/16 :goto_114

    :cond_52e
    const/4 v7, 0x0

    const v3, 0x636f6c72

    if-ne v1, v3, :cond_59f

    move/from16 v1, v32

    const/4 v12, -0x1

    move/from16 v3, v34

    if-ne v1, v12, :cond_590

    if-ne v3, v12, :cond_590

    .line 1555
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    const v10, 0x6e636c78

    if-eq v4, v10, :cond_567

    const v10, 0x6e636c63

    if-ne v4, v10, :cond_54c

    goto :goto_567

    .line 1574
    :cond_54c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unsupported color type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lio/bidmachine/media3/container/Mp4Box;->getBoxTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v10, "BoxParsers"

    invoke-static {v10, v4}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_590

    .line 1559
    :cond_567
    :goto_567
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 1560
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    const/4 v4, 0x2

    .line 1561
    invoke-virtual {v0, v4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const/16 v10, 0x13

    if-ne v9, v10, :cond_581

    .line 1568
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    and-int/lit16 v10, v10, 0x80

    if-eqz v10, :cond_581

    move v10, v11

    goto :goto_582

    :cond_581
    move v10, v7

    .line 1569
    :goto_582
    invoke-static {v1}, Lio/bidmachine/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v1

    if-eqz v10, :cond_589

    goto :goto_58a

    :cond_589
    move v11, v4

    .line 1572
    :goto_58a
    invoke-static {v3}, Lio/bidmachine/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v3

    move/from16 v33, v11

    :cond_590
    :goto_590
    move/from16 v13, v22

    move/from16 v15, v24

    move-object/from16 v16, v35

    move/from16 v22, v1

    move/from16 v24, v3

    move-object/from16 v1, v19

    move/from16 v19, v40

    goto :goto_5b2

    :cond_59f
    move/from16 v1, v32

    move/from16 v3, v34

    const/4 v12, -0x1

    goto :goto_590

    .line 1409
    :goto_5a5
    invoke-static {v0}, Lio/bidmachine/media3/extractor/DolbyVisionConfig;->parse(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/DolbyVisionConfig;

    move-result-object v4

    if-eqz v4, :cond_590

    .line 1411
    iget-object v4, v4, Lio/bidmachine/media3/extractor/DolbyVisionConfig;->codecs:Ljava/lang/String;

    .line 1412
    const-string v8, "video/dolby-vision"

    move-object/from16 v17, v4

    goto :goto_590

    :goto_5b2
    add-int v3, v30, v9

    move/from16 v2, p3

    move-object/from16 v4, p8

    move v7, v3

    move/from16 v10, v23

    move-object/from16 v3, v28

    move-object/from16 v11, v31

    move/from16 v23, v33

    move-object/from16 v28, v1

    move/from16 v1, p2

    goto/16 :goto_86

    :goto_5c7
    if-nez v8, :cond_5ca

    return-void

    .line 1586
    :cond_5ca
    new-instance v0, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    move/from16 v4, p4

    .line 1588
    invoke-virtual {v0, v4}, Lio/bidmachine/media3/common/Format$Builder;->setId(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 1589
    invoke-virtual {v0, v8}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    move-object/from16 v9, v17

    .line 1590
    invoke-virtual {v0, v9}, Lio/bidmachine/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 1591
    invoke-virtual {v0, v5}, Lio/bidmachine/media3/common/Format$Builder;->setWidth(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 1592
    invoke-virtual {v0, v6}, Lio/bidmachine/media3/common/Format$Builder;->setHeight(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 1593
    invoke-virtual {v0, v14}, Lio/bidmachine/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    move/from16 v4, p6

    .line 1594
    invoke-virtual {v0, v4}, Lio/bidmachine/media3/common/Format$Builder;->setRotationDegrees(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    move-object/from16 v9, v18

    .line 1595
    invoke-virtual {v0, v9}, Lio/bidmachine/media3/common/Format$Builder;->setProjectionData([B)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    move/from16 v11, v40

    .line 1596
    invoke-virtual {v0, v11}, Lio/bidmachine/media3/common/Format$Builder;->setStereoMode(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    move-object/from16 v7, v35

    .line 1597
    invoke-virtual {v0, v7}, Lio/bidmachine/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    move/from16 v12, v20

    .line 1598
    invoke-virtual {v0, v12}, Lio/bidmachine/media3/common/Format$Builder;->setMaxNumReorderSamples(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    move/from16 v12, v21

    .line 1599
    invoke-virtual {v0, v12}, Lio/bidmachine/media3/common/Format$Builder;->setMaxSubLayers(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    move-object/from16 v4, v28

    .line 1600
    invoke-virtual {v0, v4}, Lio/bidmachine/media3/common/Format$Builder;->setDrmInitData(Lio/bidmachine/media3/common/DrmInitData;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    move-object/from16 v4, p5

    .line 1601
    invoke-virtual {v0, v4}, Lio/bidmachine/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    new-instance v4, Lio/bidmachine/media3/common/ColorInfo$Builder;

    invoke-direct {v4}, Lio/bidmachine/media3/common/ColorInfo$Builder;-><init>()V

    .line 1606
    invoke-virtual {v4, v1}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setColorSpace(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    move-result-object v1

    move/from16 v12, v33

    .line 1607
    invoke-virtual {v1, v12}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setColorRange(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    move-result-object v1

    .line 1608
    invoke-virtual {v1, v3}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setColorTransfer(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    move-result-object v1

    if-eqz v25, :cond_635

    .line 1609
    invoke-virtual/range {v25 .. v25}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    goto :goto_636

    :cond_635
    move-object v9, v2

    :goto_636
    invoke-virtual {v1, v9}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setHdrStaticInfo([B)Lio/bidmachine/media3/common/ColorInfo$Builder;

    move-result-object v1

    move/from16 v15, v24

    .line 1610
    invoke-virtual {v1, v15}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    move-result-object v1

    move/from16 v13, v22

    .line 1611
    invoke-virtual {v1, v13}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    move-result-object v1

    .line 1612
    invoke-virtual {v1}, Lio/bidmachine/media3/common/ColorInfo$Builder;->build()Lio/bidmachine/media3/common/ColorInfo;

    move-result-object v1

    .line 1604
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setColorInfo(Lio/bidmachine/media3/common/ColorInfo;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    if-eqz v26, :cond_668

    .line 1617
    invoke-static/range {v26 .. v26}, Lio/bidmachine/media3/extractor/mp4/BoxParser$BtrtData;->access$1300(Lio/bidmachine/media3/extractor/mp4/BoxParser$BtrtData;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setAverageBitrate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    .line 1618
    invoke-static/range {v26 .. v26}, Lio/bidmachine/media3/extractor/mp4/BoxParser$BtrtData;->access$1200(Lio/bidmachine/media3/extractor/mp4/BoxParser$BtrtData;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/Format$Builder;->setPeakBitrate(I)Lio/bidmachine/media3/common/Format$Builder;

    goto :goto_681

    :cond_668
    if-eqz v27, :cond_681

    .line 1621
    invoke-static/range {v27 .. v27}, Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;->access$1500(Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setAverageBitrate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    .line 1622
    invoke-static/range {v27 .. v27}, Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;->access$1400(Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/Format$Builder;->setPeakBitrate(I)Lio/bidmachine/media3/common/Format$Builder;

    .line 1625
    :cond_681
    :goto_681
    invoke-virtual {v0}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v0

    move-object/from16 v4, p8

    iput-object v0, v4, Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;->format:Lio/bidmachine/media3/common/Format;

    return-void
.end method

.method public static parseXyz(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/common/Metadata;
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 897
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readShort()S

    move-result v2

    const/4 v3, 0x2

    .line 898
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 899
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x2b

    .line 901
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/16 v3, 0x2d

    .line 902
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 903
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 905
    :try_start_1e
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 907
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    .line 908
    new-instance v2, Lio/bidmachine/media3/common/Metadata;

    new-instance v4, Lio/bidmachine/media3/container/Mp4LocationData;

    invoke-direct {v4, v3, p0}, Lio/bidmachine/media3/container/Mp4LocationData;-><init>(FF)V

    new-array p0, v0, [Lio/bidmachine/media3/common/Metadata$Entry;

    aput-object v4, p0, v1

    invoke-direct {v2, p0}, Lio/bidmachine/media3/common/Metadata;-><init>([Lio/bidmachine/media3/common/Metadata$Entry;)V
    :try_end_41
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1e .. :try_end_41} :catch_42
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_41} :catch_42

    return-object v2

    :catch_42
    const/4 p0, 0x0

    return-object p0
.end method

###### Class io.bidmachine.media3.extractor.mp4.BoxParser.BtrtData (io.bidmachine.media3.extractor.mp4.BoxParser$BtrtData)
.class public final Lio/bidmachine/media3/extractor/mp4/BoxParser$BtrtData;
.super Ljava/lang/Object;
.source "BoxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/mp4/BoxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BtrtData"
.end annotation


# instance fields
.field public final avgBitrate:J

.field public final maxBitrate:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5

    .line 2619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2620
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$BtrtData;->avgBitrate:J

    .line 2621
    iput-wide p3, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$BtrtData;->maxBitrate:J

    return-void
.end method

.method public static synthetic access$1200(Lio/bidmachine/media3/extractor/mp4/BoxParser$BtrtData;)J
    .registers 3

    .line 2615
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$BtrtData;->maxBitrate:J

    return-wide v0
.end method

.method public static synthetic access$1300(Lio/bidmachine/media3/extractor/mp4/BoxParser$BtrtData;)J
    .registers 3

    .line 2615
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$BtrtData;->avgBitrate:J

    return-wide v0
.end method

###### Class io.bidmachine.media3.extractor.mp4.BoxParser.ChunkIterator (io.bidmachine.media3.extractor.mp4.BoxParser$ChunkIterator)
.class public final Lio/bidmachine/media3/extractor/mp4/BoxParser$ChunkIterator;
.super Ljava/lang/Object;
.source "BoxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/mp4/BoxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChunkIterator"
.end annotation


# instance fields
.field public final chunkOffsets:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public final chunkOffsetsAreLongs:Z

.field public index:I

.field public final length:I

.field public nextSamplesPerChunkChangeIndex:I

.field public numSamples:I

.field public offset:J

.field public remainingSamplesPerChunkChanges:I

.field public final stsc:Lio/bidmachine/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/common/util/ParsableByteArray;Lio/bidmachine/media3/common/util/ParsableByteArray;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 2530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2531
    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$ChunkIterator;->stsc:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 2532
    iput-object p2, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$ChunkIterator;->chunkOffsets:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 2533
    iput-boolean p3, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$ChunkIterator;->chunkOffsetsAreLongs:Z

    const/16 p3, 0xc

    .line 2534
    invoke-virtual {p2, p3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2535
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p2

    iput p2, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$ChunkIterator;->length:I

    .line 2536
    invoke-virtual {p1, p3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2537
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p2

    iput p2, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$ChunkIterator;->remainingSamplesPerChunkChanges:I

    .line 2538
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_25

    goto :goto_26

    :cond_25
    const/4 p2, 0x0

    :goto_26
    const-string p1, "first_chunk must be 1"

    invoke-static {p2, p1}, Lio/bidmachine/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    const/4 p1, -0x1

    .line 2539
    iput p1, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$ChunkIterator;->index:I

    return-void
.end method


# virtual methods
.method public moveNext()Z
    .registers 5

    .line 2543
    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$ChunkIterator;->index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$ChunkIterator;->index:I

    iget v2, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$ChunkIterator;->length:I

    if-ne v0, v2, :cond_c

    const/4 v0, 0x0

    return v0

    .line 2547
    :cond_c
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$ChunkIterator;->chunkOffsetsAreLongs:Z

    if-eqz v0, :cond_17

    .line 2548
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$ChunkIterator;->chunkOffsets:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v2

    goto :goto_1d

    .line 2549
    :cond_17
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$ChunkIterator;->chunkOffsets:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    :goto_1d
    iput-wide v2, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$ChunkIterator;->offset:J

    .line 2550
    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$ChunkIterator;->index:I

    iget v2, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$ChunkIterator;->nextSamplesPerChunkChangeIndex:I

    if-ne v0, v2, :cond_45

    .line 2551
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$ChunkIterator;->stsc:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$ChunkIterator;->numSamples:I

    .line 2552
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$ChunkIterator;->stsc:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2554
    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$ChunkIterator;->remainingSamplesPerChunkChanges:I

    sub-int/2addr v0, v1

    iput v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$ChunkIterator;->remainingSamplesPerChunkChanges:I

    if-lez v0, :cond_42

    .line 2555
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$ChunkIterator;->stsc:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_43

    :cond_42
    const/4 v0, -0x1

    .line 2556
    :goto_43
    iput v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$ChunkIterator;->nextSamplesPerChunkChangeIndex:I

    :cond_45
    return v1
.end method

###### Class io.bidmachine.media3.extractor.mp4.BoxParser.EsdsData (io.bidmachine.media3.extractor.mp4.BoxParser$EsdsData)
.class public final Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;
.super Ljava/lang/Object;
.source "BoxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/mp4/BoxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EsdsData"
.end annotation


# instance fields
.field public final bitrate:J

.field public final initializationData:[B

.field public final mimeType:Ljava/lang/String;

.field public final peakBitrate:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[BJJ)V
    .registers 7

    .line 2606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2607
    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;->mimeType:Ljava/lang/String;

    .line 2608
    iput-object p2, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;->initializationData:[B

    .line 2609
    iput-wide p3, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;->bitrate:J

    .line 2610
    iput-wide p5, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;->peakBitrate:J

    return-void
.end method

.method public static synthetic access$1000(Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;)Ljava/lang/String;
    .registers 1

    .line 2596
    iget-object p0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1100(Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;)[B
    .registers 1

    .line 2596
    iget-object p0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;->initializationData:[B

    return-object p0
.end method

.method public static synthetic access$1400(Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;)J
    .registers 3

    .line 2596
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;->peakBitrate:J

    return-wide v0
.end method

.method public static synthetic access$1500(Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;)J
    .registers 3

    .line 2596
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$EsdsData;->bitrate:J

    return-wide v0
.end method

###### Class io.bidmachine.media3.extractor.mp4.BoxParser.EyesData (io.bidmachine.media3.extractor.mp4.BoxParser$EyesData)
.class public final Lio/bidmachine/media3/extractor/mp4/BoxParser$EyesData;
.super Ljava/lang/Object;
.source "BoxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/mp4/BoxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EyesData"
.end annotation


# instance fields
.field public final striData:Lio/bidmachine/media3/extractor/mp4/BoxParser$StriData;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/mp4/BoxParser$StriData;)V
    .registers 2

    .line 2642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2643
    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$EyesData;->striData:Lio/bidmachine/media3/extractor/mp4/BoxParser$StriData;

    return-void
.end method

.method public static synthetic access$800(Lio/bidmachine/media3/extractor/mp4/BoxParser$EyesData;)Lio/bidmachine/media3/extractor/mp4/BoxParser$StriData;
    .registers 1

    .line 2639
    iget-object p0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$EyesData;->striData:Lio/bidmachine/media3/extractor/mp4/BoxParser$StriData;

    return-object p0
.end method

###### Class io.bidmachine.media3.extractor.mp4.BoxParser.MdhdData (io.bidmachine.media3.extractor.mp4.BoxParser$MdhdData)
.class public final Lio/bidmachine/media3/extractor/mp4/BoxParser$MdhdData;
.super Ljava/lang/Object;
.source "BoxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/mp4/BoxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MdhdData"
.end annotation


# instance fields
.field public final language:Ljava/lang/String;

.field public final mediaDurationUs:J

.field public final timescale:J


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .registers 6

    .line 2653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2654
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$MdhdData;->timescale:J

    .line 2655
    iput-wide p3, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$MdhdData;->mediaDurationUs:J

    .line 2656
    iput-object p5, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$MdhdData;->language:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$300(Lio/bidmachine/media3/extractor/mp4/BoxParser$MdhdData;)Ljava/lang/String;
    .registers 1

    .line 2648
    iget-object p0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$MdhdData;->language:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Lio/bidmachine/media3/extractor/mp4/BoxParser$MdhdData;)J
    .registers 3

    .line 2648
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$MdhdData;->timescale:J

    return-wide v0
.end method

.method public static synthetic access$600(Lio/bidmachine/media3/extractor/mp4/BoxParser$MdhdData;)J
    .registers 3

    .line 2648
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$MdhdData;->mediaDurationUs:J

    return-wide v0
.end method

###### Class io.bidmachine.media3.extractor.mp4.BoxParser.SampleSizeBox (io.bidmachine.media3.extractor.mp4.BoxParser$SampleSizeBox)
.class public interface abstract Lio/bidmachine/media3/extractor/mp4/BoxParser$SampleSizeBox;
.super Ljava/lang/Object;
.source "BoxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/mp4/BoxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SampleSizeBox"
.end annotation


# virtual methods
.method public abstract getFixedSampleSize()I
.end method

.method public abstract getSampleCount()I
.end method

.method public abstract readNextSampleSize()I
.end method

###### Class io.bidmachine.media3.extractor.mp4.BoxParser.StriData (io.bidmachine.media3.extractor.mp4.BoxParser$StriData)
.class public final Lio/bidmachine/media3/extractor/mp4/BoxParser$StriData;
.super Ljava/lang/Object;
.source "BoxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/mp4/BoxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StriData"
.end annotation


# instance fields
.field public final eyeViewsReversed:Z

.field public final hasLeftEyeView:Z

.field public final hasRightEyeView:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .registers 4

    .line 2631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2632
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$StriData;->hasLeftEyeView:Z

    .line 2633
    iput-boolean p2, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$StriData;->hasRightEyeView:Z

    .line 2634
    iput-boolean p3, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$StriData;->eyeViewsReversed:Z

    return-void
.end method

.method public static synthetic access$1600(Lio/bidmachine/media3/extractor/mp4/BoxParser$StriData;)Z
    .registers 1

    .line 2626
    iget-boolean p0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$StriData;->hasLeftEyeView:Z

    return p0
.end method

.method public static synthetic access$1700(Lio/bidmachine/media3/extractor/mp4/BoxParser$StriData;)Z
    .registers 1

    .line 2626
    iget-boolean p0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$StriData;->hasRightEyeView:Z

    return p0
.end method

.method public static synthetic access$900(Lio/bidmachine/media3/extractor/mp4/BoxParser$StriData;)Z
    .registers 1

    .line 2626
    iget-boolean p0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$StriData;->eyeViewsReversed:Z

    return p0
.end method

###### Class io.bidmachine.media3.extractor.mp4.BoxParser.StsdData (io.bidmachine.media3.extractor.mp4.BoxParser$StsdData)
.class public final Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;
.super Ljava/lang/Object;
.source "BoxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/mp4/BoxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StsdData"
.end annotation


# instance fields
.field public format:Lio/bidmachine/media3/common/Format;

.field public nalUnitLengthFieldLength:I

.field public requiredSampleTransformation:I

.field public final trackEncryptionBoxes:[Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 2589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2590
    new-array p1, p1, [Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;->trackEncryptionBoxes:[Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;

    const/4 p1, 0x0

    .line 2591
    iput p1, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$StsdData;->requiredSampleTransformation:I

    return-void
.end method

###### Class io.bidmachine.media3.extractor.mp4.BoxParser.StszSampleSizeBox (io.bidmachine.media3.extractor.mp4.BoxParser$StszSampleSizeBox)
.class public final Lio/bidmachine/media3/extractor/mp4/BoxParser$StszSampleSizeBox;
.super Ljava/lang/Object;
.source "BoxParser.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/mp4/BoxParser$SampleSizeBox;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/mp4/BoxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StszSampleSizeBox"
.end annotation


# instance fields
.field public final data:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public final fixedSampleSize:I

.field public final sampleCount:I


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/container/Mp4Box$LeafBox;Lio/bidmachine/media3/common/Format;)V
    .registers 6

    .line 2695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2696
    iget-object p1, p1, Lio/bidmachine/media3/container/Mp4Box$LeafBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$StszSampleSizeBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/16 v0, 0xc

    .line 2697
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2698
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 2699
    iget-object v1, p2, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v2, "audio/raw"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 2700
    iget v1, p2, Lio/bidmachine/media3/common/Format;->pcmEncoding:I

    iget p2, p2, Lio/bidmachine/media3/common/Format;->channelCount:I

    invoke-static {v1, p2}, Lio/bidmachine/media3/common/util/Util;->getPcmFrameSize(II)I

    move-result p2

    if-eqz v0, :cond_28

    .line 2701
    rem-int v1, v0, p2

    if-eqz v1, :cond_47

    .line 2705
    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio sample size mismatch. stsd sample size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", stsz sample size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BoxParsers"

    invoke-static {v1, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, p2

    :cond_47
    if-nez v0, :cond_4a

    const/4 v0, -0x1

    .line 2714
    :cond_4a
    iput v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$StszSampleSizeBox;->fixedSampleSize:I

    .line 2715
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$StszSampleSizeBox;->sampleCount:I

    return-void
.end method


# virtual methods
.method public getFixedSampleSize()I
    .registers 2

    .line 2725
    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$StszSampleSizeBox;->fixedSampleSize:I

    return v0
.end method

.method public getSampleCount()I
    .registers 2

    .line 2720
    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$StszSampleSizeBox;->sampleCount:I

    return v0
.end method

.method public readNextSampleSize()I
    .registers 3

    .line 2730
    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$StszSampleSizeBox;->fixedSampleSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$StszSampleSizeBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    :cond_b
    return v0
.end method

###### Class io.bidmachine.media3.extractor.mp4.BoxParser.Stz2SampleSizeBox (io.bidmachine.media3.extractor.mp4.BoxParser$Stz2SampleSizeBox)
.class public final Lio/bidmachine/media3/extractor/mp4/BoxParser$Stz2SampleSizeBox;
.super Ljava/lang/Object;
.source "BoxParser.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/mp4/BoxParser$SampleSizeBox;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/mp4/BoxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stz2SampleSizeBox"
.end annotation


# instance fields
.field public currentByte:I

.field public final data:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public final fieldSize:I

.field public final sampleCount:I

.field public sampleIndex:I


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/container/Mp4Box$LeafBox;)V
    .registers 3

    .line 2745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2746
    iget-object p1, p1, Lio/bidmachine/media3/container/Mp4Box$LeafBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$Stz2SampleSizeBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/16 v0, 0xc

    .line 2747
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2748
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$Stz2SampleSizeBox;->fieldSize:I

    .line 2749
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$Stz2SampleSizeBox;->sampleCount:I

    return-void
.end method


# virtual methods
.method public getFixedSampleSize()I
    .registers 2

    .line 0
    const/4 v0, -0x1

    return v0
.end method

.method public getSampleCount()I
    .registers 2

    .line 2754
    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$Stz2SampleSizeBox;->sampleCount:I

    return v0
.end method

.method public readNextSampleSize()I
    .registers 3

    .line 2764
    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$Stz2SampleSizeBox;->fieldSize:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    .line 2765
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$Stz2SampleSizeBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    return v0

    :cond_d
    const/16 v1, 0x10

    if-ne v0, v1, :cond_18

    .line 2767
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$Stz2SampleSizeBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    return v0

    .line 2770
    :cond_18
    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$Stz2SampleSizeBox;->sampleIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$Stz2SampleSizeBox;->sampleIndex:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2f

    .line 2772
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$Stz2SampleSizeBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$Stz2SampleSizeBox;->currentByte:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    return v0

    .line 2777
    :cond_2f
    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$Stz2SampleSizeBox;->currentByte:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

###### Class io.bidmachine.media3.extractor.mp4.BoxParser.TkhdData (io.bidmachine.media3.extractor.mp4.BoxParser$TkhdData)
.class public final Lio/bidmachine/media3/extractor/mp4/BoxParser$TkhdData;
.super Ljava/lang/Object;
.source "BoxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/mp4/BoxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TkhdData"
.end annotation


# instance fields
.field public final alternateGroup:I

.field public final duration:J

.field public final id:I

.field public final rotationDegrees:I


# direct methods
.method public constructor <init>(IJII)V
    .registers 6

    .line 2570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2571
    iput p1, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$TkhdData;->id:I

    .line 2572
    iput-wide p2, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$TkhdData;->duration:J

    .line 2573
    iput p4, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$TkhdData;->alternateGroup:I

    .line 2574
    iput p5, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$TkhdData;->rotationDegrees:I

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/media3/extractor/mp4/BoxParser$TkhdData;)J
    .registers 3

    .line 2563
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$TkhdData;->duration:J

    return-wide v0
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/extractor/mp4/BoxParser$TkhdData;)I
    .registers 1

    .line 2563
    iget p0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$TkhdData;->id:I

    return p0
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/extractor/mp4/BoxParser$TkhdData;)I
    .registers 1

    .line 2563
    iget p0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$TkhdData;->rotationDegrees:I

    return p0
.end method

.method public static synthetic access$400(Lio/bidmachine/media3/extractor/mp4/BoxParser$TkhdData;)I
    .registers 1

    .line 2563
    iget p0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$TkhdData;->alternateGroup:I

    return p0
.end method

###### Class io.bidmachine.media3.extractor.mp4.BoxParser.VexuData (io.bidmachine.media3.extractor.mp4.BoxParser$VexuData)
.class public final Lio/bidmachine/media3/extractor/mp4/BoxParser$VexuData;
.super Ljava/lang/Object;
.source "BoxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/mp4/BoxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VexuData"
.end annotation


# instance fields
.field public final eyesData:Lio/bidmachine/media3/extractor/mp4/BoxParser$EyesData;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/mp4/BoxParser$EyesData;)V
    .registers 2

    .line 2664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2665
    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$VexuData;->eyesData:Lio/bidmachine/media3/extractor/mp4/BoxParser$EyesData;

    return-void
.end method

.method public static synthetic access$700(Lio/bidmachine/media3/extractor/mp4/BoxParser$VexuData;)Lio/bidmachine/media3/extractor/mp4/BoxParser$EyesData;
    .registers 1

    .line 2661
    iget-object p0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$VexuData;->eyesData:Lio/bidmachine/media3/extractor/mp4/BoxParser$EyesData;

    return-object p0
.end method


# virtual methods
.method public hasBothEyeViews()Z
    .registers 2

    .line 2669
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$VexuData;->eyesData:Lio/bidmachine/media3/extractor/mp4/BoxParser$EyesData;

    if-eqz v0, :cond_1c

    .line 2670
    invoke-static {v0}, Lio/bidmachine/media3/extractor/mp4/BoxParser$EyesData;->access$800(Lio/bidmachine/media3/extractor/mp4/BoxParser$EyesData;)Lio/bidmachine/media3/extractor/mp4/BoxParser$StriData;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/extractor/mp4/BoxParser$StriData;->access$1600(Lio/bidmachine/media3/extractor/mp4/BoxParser$StriData;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/BoxParser$VexuData;->eyesData:Lio/bidmachine/media3/extractor/mp4/BoxParser$EyesData;

    .line 2671
    invoke-static {v0}, Lio/bidmachine/media3/extractor/mp4/BoxParser$EyesData;->access$800(Lio/bidmachine/media3/extractor/mp4/BoxParser$EyesData;)Lio/bidmachine/media3/extractor/mp4/BoxParser$StriData;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/extractor/mp4/BoxParser$StriData;->access$1700(Lio/bidmachine/media3/extractor/mp4/BoxParser$StriData;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method
