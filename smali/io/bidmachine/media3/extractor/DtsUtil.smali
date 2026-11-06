###### Class io.bidmachine.media3.extractor.DtsUtil (io.bidmachine.media3.extractor.DtsUtil)
.class public final Lio/bidmachine/media3/extractor/DtsUtil;
.super Ljava/lang/Object;
.source "DtsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/DtsUtil$DtsHeader;
    }
.end annotation


# static fields
.field public static final CHANNELS_BY_AMODE:[I

.field public static final SAMPLE_RATE_BY_INDEX:[I

.field public static final SAMPLE_RATE_BY_SFREQ:[I

.field public static final TWICE_BITRATE_KBPS_BY_RATE:[I

.field public static final UHD_AUDIO_CHUNK_ID_LENGTH_TABLE:[I

.field public static final UHD_AUDIO_CHUNK_SIZE_LENGTH_TABLE:[I

.field public static final UHD_FTOC_PAYLOAD_LENGTH_TABLE:[I

.field public static final UHD_HEADER_SIZE_LENGTH_TABLE:[I

.field public static final UHD_METADATA_CHUNK_SIZE_LENGTH_TABLE:[I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/16 v0, 0x8

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x6

    const/16 v5, 0x10

    .line 192
    new-array v6, v5, [I

    fill-array-data v6, :array_52

    sput-object v6, Lio/bidmachine/media3/extractor/DtsUtil;->CHANNELS_BY_AMODE:[I

    .line 196
    new-array v6, v5, [I

    fill-array-data v6, :array_76

    sput-object v6, Lio/bidmachine/media3/extractor/DtsUtil;->SAMPLE_RATE_BY_SFREQ:[I

    const/16 v6, 0x1d

    .line 203
    new-array v6, v6, [I

    fill-array-data v6, :array_9a

    sput-object v6, Lio/bidmachine/media3/extractor/DtsUtil;->TWICE_BITRATE_KBPS_BY_RATE:[I

    .line 213
    new-array v6, v5, [I

    fill-array-data v6, :array_d8

    sput-object v6, Lio/bidmachine/media3/extractor/DtsUtil;->SAMPLE_RATE_BY_INDEX:[I

    const/16 v6, 0xa

    const/16 v7, 0xc

    .line 223
    filled-new-array {v3, v0, v6, v7}, [I

    move-result-object v8

    sput-object v8, Lio/bidmachine/media3/extractor/DtsUtil;->UHD_FTOC_PAYLOAD_LENGTH_TABLE:[I

    const/16 v8, 0xf

    const/16 v9, 0x9

    .line 226
    filled-new-array {v4, v9, v7, v8}, [I

    move-result-object v8

    sput-object v8, Lio/bidmachine/media3/extractor/DtsUtil;->UHD_METADATA_CHUNK_SIZE_LENGTH_TABLE:[I

    .line 229
    filled-new-array {v1, v2, v4, v0}, [I

    move-result-object v1

    sput-object v1, Lio/bidmachine/media3/extractor/DtsUtil;->UHD_AUDIO_CHUNK_ID_LENGTH_TABLE:[I

    const/16 v1, 0xd

    const/16 v2, 0xb

    .line 232
    filled-new-array {v9, v2, v1, v5}, [I

    move-result-object v1

    sput-object v1, Lio/bidmachine/media3/extractor/DtsUtil;->UHD_AUDIO_CHUNK_SIZE_LENGTH_TABLE:[I

    .line 235
    filled-new-array {v3, v0, v6, v7}, [I

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/extractor/DtsUtil;->UHD_HEADER_SIZE_LENGTH_TABLE:[I

    return-void

    nop

    :array_52
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x6
        0x6
        0x6
        0x7
        0x8
        0x8
    .end array-data

    :array_76
    .array-data 4
        -0x1
        0x1f40
        0x3e80
        0x7d00
        -0x1
        -0x1
        0x2b11
        0x5622
        0xac44
        -0x1
        -0x1
        0x2ee0
        0x5dc0
        0xbb80
        -0x1
        -0x1
    .end array-data

    :array_9a
    .array-data 4
        0x40
        0x70
        0x80
        0xc0
        0xe0
        0x100
        0x180
        0x1c0
        0x200
        0x280
        0x300
        0x380
        0x400
        0x480
        0x500
        0x600
        0x780
        0x800
        0x900
        0xa00
        0xa80
        0xb00
        0xb07
        0xb80
        0xc00
        0xf00
        0x1000
        0x1800
        0x1e00
    .end array-data

    :array_d8
    .array-data 4
        0x1f40
        0x3e80
        0x7d00
        0xfa00
        0x1f400
        0x5622
        0xac44
        0x15888
        0x2b110
        0x56220
        0x2ee0
        0x5dc0
        0xbb80
        0x17700
        0x2ee00
        0x5dc00
    .end array-data
.end method

.method public static checkCrc([BI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    add-int/lit8 v0, p1, -0x2

    .line 689
    aget-byte v1, p0, v0

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xffff

    and-int/2addr v1, v2

    add-int/lit8 p1, p1, -0x1

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    const/4 v1, 0x0

    .line 691
    invoke-static {p0, v1, v0, v2}, Lio/bidmachine/media3/common/util/Util;->crc16([BIII)I

    move-result p0

    if-ne p1, p0, :cond_19

    return-void

    .line 693
    :cond_19
    const-string p0, "CRC check failed"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static getDtsFrameSize([B)I
    .registers 8

    const/4 v0, 0x0

    .line 375
    aget-byte v1, p0, v0

    const/4 v2, -0x2

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x1

    const/4 v6, 0x4

    if-eq v1, v2, :cond_4f

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3e

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_26

    const/4 v1, 0x5

    .line 389
    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0xc

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v6

    or-int/2addr v1, v2

    aget-byte p0, p0, v3

    :goto_20
    and-int/lit16 p0, p0, 0xf0

    shr-int/2addr p0, v6

    or-int/2addr p0, v1

    add-int/2addr p0, v5

    goto :goto_5e

    .line 377
    :cond_26
    aget-byte v0, p0, v4

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0xc

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v6

    or-int/2addr v0, v1

    const/16 v1, 0x8

    aget-byte p0, p0, v1

    :goto_36
    and-int/lit8 p0, p0, 0x3c

    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v0

    add-int/2addr p0, v5

    move v0, v5

    goto :goto_5e

    .line 384
    :cond_3e
    aget-byte v0, p0, v3

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0xc

    aget-byte v1, p0, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v6

    or-int/2addr v0, v1

    const/16 v1, 0x9

    aget-byte p0, p0, v1

    goto :goto_36

    .line 381
    :cond_4f
    aget-byte v1, p0, v6

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0xc

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v6

    or-int/2addr v1, v2

    aget-byte p0, p0, v4

    goto :goto_20

    :goto_5e
    if-eqz v0, :cond_64

    mul-int/lit8 p0, p0, 0x10

    .line 393
    div-int/lit8 p0, p0, 0xe

    :cond_64
    return p0
.end method

.method public static getFrameType(I)I
    .registers 2

    .line 0
    const v0, 0x7ffe8001

    if-eq p0, v0, :cond_3e

    const v0, -0x180fe80

    if-eq p0, v0, :cond_3e

    const v0, 0x1fffe800

    if-eq p0, v0, :cond_3e

    const v0, -0xe0ff18

    if-ne p0, v0, :cond_15

    goto :goto_3e

    :cond_15
    const v0, 0x64582025

    if-eq p0, v0, :cond_3c

    const v0, 0x25205864

    if-ne p0, v0, :cond_20

    goto :goto_3c

    :cond_20
    const v0, 0x40411bf2

    if-eq p0, v0, :cond_3a

    const v0, -0xde4bec0

    if-ne p0, v0, :cond_2b

    goto :goto_3a

    :cond_2b
    const v0, 0x71c442e8

    if-eq p0, v0, :cond_38

    const v0, -0x17bd3b8f

    if-ne p0, v0, :cond_36

    goto :goto_38

    :cond_36
    const/4 p0, 0x0

    return p0

    :cond_38
    :goto_38
    const/4 p0, 0x4

    return p0

    :cond_3a
    :goto_3a
    const/4 p0, 0x3

    return p0

    :cond_3c
    :goto_3c
    const/4 p0, 0x2

    return p0

    :cond_3e
    :goto_3e
    const/4 p0, 0x1

    return p0
.end method

.method public static getNormalizedFrame([B)Lio/bidmachine/media3/common/util/ParsableBitArray;
    .registers 6

    const/4 v0, 0x0

    .line 723
    aget-byte v1, p0, v0

    const/16 v2, 0x7f

    if-eq v1, v2, :cond_5c

    const/16 v2, 0x64

    if-eq v1, v2, :cond_5c

    const/16 v2, 0x40

    if-eq v1, v2, :cond_5c

    const/16 v2, 0x71

    if-ne v1, v2, :cond_14

    goto :goto_5c

    .line 731
    :cond_14
    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 732
    invoke-static {p0}, Lio/bidmachine/media3/extractor/DtsUtil;->isLittleEndianFrameHeader([B)Z

    move-result v1

    if-eqz v1, :cond_32

    move v1, v0

    .line 734
    :goto_20
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_32

    .line 735
    aget-byte v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    .line 736
    aget-byte v4, p0, v3

    aput-byte v4, p0, v1

    .line 737
    aput-byte v2, p0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_20

    .line 740
    :cond_32
    new-instance v1, Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-direct {v1, p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 741
    aget-byte v0, p0, v0

    const/16 v2, 0x1f

    if-ne v0, v2, :cond_58

    .line 743
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-direct {v0, p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 744
    :goto_42
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_58

    const/4 v2, 0x2

    .line 745
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/16 v2, 0xe

    .line 746
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->putInt(II)V

    goto :goto_42

    .line 749
    :cond_58
    invoke-virtual {v1, p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->reset([B)V

    return-object v1

    .line 728
    :cond_5c
    :goto_5c
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-direct {v0, p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;-><init>([B)V

    return-object v0
.end method

.method public static isLittleEndianFrameHeader([B)Z
    .registers 3

    const/4 v0, 0x0

    .line 754
    aget-byte p0, p0, v0

    const/4 v1, -0x2

    if-eq p0, v1, :cond_17

    const/4 v1, -0x1

    if-eq p0, v1, :cond_17

    const/16 v1, 0x25

    if-eq p0, v1, :cond_17

    const/16 v1, -0xe

    if-eq p0, v1, :cond_17

    const/16 v1, -0x18

    if-ne p0, v1, :cond_16

    goto :goto_17

    :cond_16
    return v0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method public static parseDtsAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .registers 4

    const/4 v0, 0x0

    .line 335
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    const v2, -0xde4bec0

    if-eq v1, v2, :cond_82

    .line 336
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    const v2, -0x17bd3b8f

    if-ne v1, v2, :cond_14

    goto :goto_82

    .line 340
    :cond_14
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    const v1, 0x25205864

    if-ne v0, v1, :cond_20

    const/16 p0, 0x1000

    return p0

    .line 347
    :cond_20
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 349
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_6c

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5b

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_48

    add-int/lit8 v1, v0, 0x4

    .line 361
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    :goto_42
    and-int/lit16 p0, p0, 0xfc

    :goto_44
    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v1

    goto :goto_7d

    :cond_48
    add-int/lit8 v1, v0, 0x5

    .line 357
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    :goto_58
    and-int/lit8 p0, p0, 0x3c

    goto :goto_44

    :cond_5b
    add-int/lit8 v1, v0, 0x4

    .line 354
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    goto :goto_58

    :cond_6c
    add-int/lit8 v1, v0, 0x5

    .line 351
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    goto :goto_42

    :goto_7d
    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0x20

    return p0

    :cond_82
    :goto_82
    const/16 p0, 0x400

    return p0
.end method

.method public static parseDtsAudioSampleCount([B)I
    .registers 7

    const/4 v0, 0x0

    .line 310
    aget-byte v0, p0, v0

    const/4 v1, -0x2

    const/4 v2, 0x5

    const/4 v3, 0x6

    const/4 v4, 0x4

    if-eq v0, v1, :cond_2e

    const/4 v1, -0x1

    const/4 v5, 0x7

    if-eq v0, v1, :cond_27

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_1e

    .line 322
    aget-byte v0, p0, v4

    and-int/lit8 v0, v0, 0x1

    shl-int/2addr v0, v3

    aget-byte p0, p0, v2

    :goto_18
    and-int/lit16 p0, p0, 0xfc

    :goto_1a
    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v0

    goto :goto_36

    .line 318
    :cond_1e
    aget-byte v0, p0, v2

    and-int/2addr v0, v5

    shl-int/2addr v0, v4

    aget-byte p0, p0, v3

    :goto_24
    and-int/lit8 p0, p0, 0x3c

    goto :goto_1a

    .line 315
    :cond_27
    aget-byte v0, p0, v4

    and-int/2addr v0, v5

    shl-int/2addr v0, v4

    aget-byte p0, p0, v5

    goto :goto_24

    .line 312
    :cond_2e
    aget-byte v0, p0, v2

    and-int/lit8 v0, v0, 0x1

    shl-int/2addr v0, v3

    aget-byte p0, p0, v4

    goto :goto_18

    :goto_36
    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0x20

    return p0
.end method

.method public static parseDtsFormat([BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/media3/common/DrmInitData;)Lio/bidmachine/media3/common/Format;
    .registers 12

    .line 276
    invoke-static {p0}, Lio/bidmachine/media3/extractor/DtsUtil;->getNormalizedFrame([B)Lio/bidmachine/media3/common/util/ParsableBitArray;

    move-result-object p0

    const/16 v0, 0x3c

    .line 277
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/4 v0, 0x6

    .line 278
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 279
    sget-object v1, Lio/bidmachine/media3/extractor/DtsUtil;->CHANNELS_BY_AMODE:[I

    aget v0, v1, v0

    const/4 v1, 0x4

    .line 280
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 281
    sget-object v2, Lio/bidmachine/media3/extractor/DtsUtil;->SAMPLE_RATE_BY_SFREQ:[I

    aget v1, v2, v1

    const/4 v2, 0x5

    .line 282
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 284
    sget-object v3, Lio/bidmachine/media3/extractor/DtsUtil;->TWICE_BITRATE_KBPS_BY_RATE:[I

    array-length v4, v3

    const/4 v5, 0x2

    if-lt v2, v4, :cond_28

    const/4 v2, -0x1

    goto :goto_2d

    .line 286
    :cond_28
    aget v2, v3, v2

    mul-int/lit16 v2, v2, 0x3e8

    div-int/2addr v2, v5

    :goto_2d
    const/16 v3, 0xa

    .line 287
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 288
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p0

    if-lez p0, :cond_3a

    const/4 p0, 0x1

    goto :goto_3b

    :cond_3a
    const/4 p0, 0x0

    :goto_3b
    add-int/2addr v0, p0

    .line 289
    new-instance p0, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {p0}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    .line 290
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 291
    invoke-virtual {p0, p4}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    const-string p1, "audio/vnd.dts"

    .line 292
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 293
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/Format$Builder;->setAverageBitrate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 294
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/Format$Builder;->setChannelCount(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 295
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setSampleRate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 296
    invoke-virtual {p0, p5}, Lio/bidmachine/media3/common/Format$Builder;->setDrmInitData(Lio/bidmachine/media3/common/DrmInitData;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 297
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 298
    invoke-virtual {p0, p3}, Lio/bidmachine/media3/common/Format$Builder;->setRoleFlags(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 299
    invoke-virtual {p0}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p0

    return-object p0
.end method

.method public static parseDtsHdHeader([B)Lio/bidmachine/media3/extractor/DtsUtil$DtsHeader;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 404
    invoke-static/range {p0 .. p0}, Lio/bidmachine/media3/extractor/DtsUtil;->getNormalizedFrame([B)Lio/bidmachine/media3/common/util/ParsableBitArray;

    move-result-object v0

    const/16 v1, 0x28

    .line 405
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/4 v1, 0x2

    .line 407
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 410
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    const/16 v4, 0xc

    const/16 v5, 0x8

    if-nez v3, :cond_1c

    const/16 v3, 0x10

    move v6, v5

    goto :goto_1f

    :cond_1c
    const/16 v3, 0x14

    move v6, v4

    .line 417
    :goto_1f
    invoke-virtual {v0, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 419
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v12, v6, 0x1

    .line 425
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    const/4 v8, -0x1

    const/4 v9, 0x0

    if-eqz v6, :cond_8e

    .line 427
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v10

    const/4 v11, 0x3

    .line 428
    invoke-virtual {v0, v11}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v13

    add-int/2addr v13, v7

    mul-int/lit16 v13, v13, 0x200

    .line 430
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v14

    if-eqz v14, :cond_48

    const/16 v14, 0x24

    .line 431
    invoke-virtual {v0, v14}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 434
    :cond_48
    invoke-virtual {v0, v11}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v14

    add-int/2addr v14, v7

    .line 435
    invoke-virtual {v0, v11}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    add-int/2addr v11, v7

    if-ne v14, v7, :cond_87

    if-ne v11, v7, :cond_87

    add-int/2addr v2, v7

    .line 443
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    move v14, v9

    :goto_5c
    if-ge v14, v2, :cond_69

    shr-int v15, v11, v14

    and-int/2addr v15, v7

    if-ne v15, v7, :cond_66

    .line 447
    invoke-virtual {v0, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_66
    add-int/lit8 v14, v14, 0x1

    goto :goto_5c

    .line 451
    :cond_69
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_85

    .line 452
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 453
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    add-int/2addr v2, v7

    shl-int/2addr v2, v1

    .line 454
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    add-int/2addr v11, v7

    :goto_7d
    if-ge v9, v11, :cond_85

    .line 457
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_7d

    :cond_85
    move v9, v13

    goto :goto_8f

    .line 437
    :cond_87
    const-string v0, "Multiple audio presentations or assets not supported"

    invoke-static {v0}, Lio/bidmachine/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_8e
    move v10, v8

    .line 468
    :goto_8f
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 473
    invoke-virtual {v0, v4}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    if-eqz v6, :cond_d0

    .line 475
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_a1

    .line 476
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 478
    :cond_a1
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_ac

    const/16 v2, 0x18

    .line 479
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 481
    :cond_ac
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_bc

    const/16 v2, 0xa

    .line 482
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    add-int/2addr v2, v7

    .line 483
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBytes(I)V

    :cond_bc
    const/4 v2, 0x5

    .line 485
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 486
    sget-object v2, Lio/bidmachine/media3/extractor/DtsUtil;->SAMPLE_RATE_BY_INDEX:[I

    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    aget v2, v2, v3

    .line 487
    invoke-virtual {v0, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v8, v0, 0x1

    :goto_ce
    move v11, v2

    goto :goto_d4

    :cond_d0
    const v2, -0x7fffffff

    goto :goto_ce

    :goto_d4
    if-eqz v6, :cond_109

    if-eqz v10, :cond_fb

    if-eq v10, v7, :cond_f7

    if-ne v10, v1, :cond_e0

    const v0, 0xbb80

    goto :goto_fd

    .line 506
    :cond_e0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported reference clock code in DTS HD header: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_f7
    const v0, 0xac44

    goto :goto_fd

    :cond_fb
    const/16 v0, 0x7d00

    :goto_fd
    int-to-long v1, v9

    const-wide/32 v3, 0xf4240

    int-to-long v5, v0

    .line 512
    invoke-static/range {v1 .. v6}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    :goto_106
    move-wide v13, v0

    move v10, v8

    goto :goto_10f

    :cond_109
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_106

    .line 515
    :goto_10f
    new-instance v8, Lio/bidmachine/media3/extractor/DtsUtil$DtsHeader;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v9, "audio/vnd.dts.hd;profile=lbr"

    invoke-direct/range {v8 .. v16}, Lio/bidmachine/media3/extractor/DtsUtil$DtsHeader;-><init>(Ljava/lang/String;IIIJILio/bidmachine/media3/extractor/DtsUtil$1;)V

    return-object v8
.end method

.method public static parseDtsHdHeaderSize([B)I
    .registers 2

    .line 532
    invoke-static {p0}, Lio/bidmachine/media3/extractor/DtsUtil;->getNormalizedFrame([B)Lio/bidmachine/media3/common/util/ParsableBitArray;

    move-result-object p0

    const/16 v0, 0x2a

    .line 533
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 535
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xc

    goto :goto_14

    :cond_12
    const/16 v0, 0x8

    .line 537
    :goto_14
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static parseDtsUhdHeader([BLjava/util/concurrent/atomic/AtomicInteger;)Lio/bidmachine/media3/extractor/DtsUtil$DtsHeader;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 554
    invoke-static/range {p0 .. p0}, Lio/bidmachine/media3/extractor/DtsUtil;->getNormalizedFrame([B)Lio/bidmachine/media3/common/util/ParsableBitArray;

    move-result-object v0

    const/16 v1, 0x20

    .line 555
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    const v2, 0x40411bf2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_13

    move v1, v4

    goto :goto_14

    :cond_13
    move v1, v3

    .line 558
    :goto_14
    sget-object v2, Lio/bidmachine/media3/extractor/DtsUtil;->UHD_FTOC_PAYLOAD_LENGTH_TABLE:[I

    .line 559
    invoke-static {v0, v2, v4}, Lio/bidmachine/media3/extractor/DtsUtil;->parseUnsignedVarInt(Lio/bidmachine/media3/common/util/ParsableBitArray;[IZ)I

    move-result v2

    add-int/2addr v2, v4

    if-eqz v1, :cond_a8

    .line 568
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_a1

    move-object/from16 v5, p0

    .line 574
    invoke-static {v5, v2}, Lio/bidmachine/media3/extractor/DtsUtil;->checkCrc([BI)V

    const/4 v5, 0x2

    .line 576
    invoke-virtual {v0, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_50

    if-eq v6, v4, :cond_4d

    if-ne v6, v5, :cond_37

    const/16 v6, 0x180

    goto :goto_52

    .line 590
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported base duration index in DTS UHD header: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_4d
    const/16 v6, 0x1e0

    goto :goto_52

    :cond_50
    const/16 v6, 0x200

    :goto_52
    const/4 v8, 0x3

    .line 596
    invoke-virtual {v0, v8}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    add-int/2addr v8, v4

    mul-int/2addr v6, v8

    .line 597
    invoke-virtual {v0, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    if-eqz v8, :cond_81

    if-eq v8, v4, :cond_7d

    if-ne v8, v5, :cond_67

    const v7, 0xbb80

    goto :goto_83

    .line 610
    :cond_67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported clock rate index in DTS UHD header: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_7d
    const v7, 0xac44

    goto :goto_83

    :cond_81
    const/16 v7, 0x7d00

    .line 615
    :goto_83
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v8

    if-eqz v8, :cond_8e

    const/16 v8, 0x24

    .line 617
    invoke-virtual {v0, v8}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 619
    :cond_8e
    invoke-virtual {v0, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    shl-int v5, v4, v5

    mul-int/2addr v5, v7

    int-to-long v8, v6

    const-wide/32 v10, 0xf4240

    int-to-long v12, v7

    .line 622
    invoke-static/range {v8 .. v13}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    :goto_9e
    move v11, v5

    move-wide v13, v6

    goto :goto_b1

    .line 569
    :cond_a1
    const-string v0, "Only supports full channel mask-based audio presentation"

    invoke-static {v0}, Lio/bidmachine/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_a8
    const v5, -0x7fffffff

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_9e

    :goto_b1
    move v5, v3

    move v6, v5

    :goto_b3
    if-ge v5, v1, :cond_bf

    .line 631
    sget-object v7, Lio/bidmachine/media3/extractor/DtsUtil;->UHD_METADATA_CHUNK_SIZE_LENGTH_TABLE:[I

    .line 632
    invoke-static {v0, v7, v4}, Lio/bidmachine/media3/extractor/DtsUtil;->parseUnsignedVarInt(Lio/bidmachine/media3/common/util/ParsableBitArray;[IZ)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_b3

    :cond_bf
    if-eqz v1, :cond_cd

    .line 643
    sget-object v1, Lio/bidmachine/media3/extractor/DtsUtil;->UHD_AUDIO_CHUNK_ID_LENGTH_TABLE:[I

    .line 644
    invoke-static {v0, v1, v4}, Lio/bidmachine/media3/extractor/DtsUtil;->parseUnsignedVarInt(Lio/bidmachine/media3/common/util/ParsableBitArray;[IZ)I

    move-result v1

    move-object/from16 v5, p1

    .line 643
    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_cf

    :cond_cd
    move-object/from16 v5, p1

    .line 648
    :goto_cf
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eqz v1, :cond_db

    .line 649
    sget-object v1, Lio/bidmachine/media3/extractor/DtsUtil;->UHD_AUDIO_CHUNK_SIZE_LENGTH_TABLE:[I

    invoke-static {v0, v1, v4}, Lio/bidmachine/media3/extractor/DtsUtil;->parseUnsignedVarInt(Lio/bidmachine/media3/common/util/ParsableBitArray;[IZ)I

    move-result v3

    :cond_db
    add-int/2addr v6, v3

    add-int v12, v2, v6

    .line 656
    new-instance v8, Lio/bidmachine/media3/extractor/DtsUtil$DtsHeader;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v9, "audio/vnd.dts.uhd;profile=p2"

    const/4 v10, 0x2

    invoke-direct/range {v8 .. v16}, Lio/bidmachine/media3/extractor/DtsUtil$DtsHeader;-><init>(Ljava/lang/String;IIIJILio/bidmachine/media3/extractor/DtsUtil$1;)V

    return-object v8
.end method

.method public static parseDtsUhdHeaderSize([B)I
    .registers 3

    .line 677
    invoke-static {p0}, Lio/bidmachine/media3/extractor/DtsUtil;->getNormalizedFrame([B)Lio/bidmachine/media3/common/util/ParsableBitArray;

    move-result-object p0

    const/16 v0, 0x20

    .line 678
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 679
    sget-object v0, Lio/bidmachine/media3/extractor/DtsUtil;->UHD_HEADER_SIZE_LENGTH_TABLE:[I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lio/bidmachine/media3/extractor/DtsUtil;->parseUnsignedVarInt(Lio/bidmachine/media3/common/util/ParsableBitArray;[IZ)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public static parseUnsignedVarInt(Lio/bidmachine/media3/common/util/ParsableBitArray;[IZ)I
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    const/4 v3, 0x3

    if-ge v1, v3, :cond_11

    .line 706
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_11

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_11
    if-eqz p2, :cond_20

    move p2, v0

    :goto_14
    if-ge v0, v2, :cond_1f

    .line 716
    aget v1, p1, v0

    const/4 v3, 0x1

    shl-int v1, v3, v1

    add-int/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_1f
    move v0, p2

    .line 719
    :cond_20
    aget p1, p1, v2

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

###### Class io.bidmachine.media3.extractor.DtsUtil.AnonymousClass1 (io.bidmachine.media3.extractor.DtsUtil$1)
.class public synthetic Lio/bidmachine/media3/extractor/DtsUtil$1;
.super Ljava/lang/Object;
.source "DtsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/DtsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.extractor.DtsUtil.DtsHeader (io.bidmachine.media3.extractor.DtsUtil$DtsHeader)
.class public final Lio/bidmachine/media3/extractor/DtsUtil$DtsHeader;
.super Ljava/lang/Object;
.source "DtsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/DtsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DtsHeader"
.end annotation


# instance fields
.field public final bitrate:I

.field public final channelCount:I

.field public final frameDurationUs:J

.field public final frameSize:I

.field public final mimeType:Ljava/lang/String;

.field public final sampleRate:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIJI)V
    .registers 8

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lio/bidmachine/media3/extractor/DtsUtil$DtsHeader;->mimeType:Ljava/lang/String;

    .line 71
    iput p2, p0, Lio/bidmachine/media3/extractor/DtsUtil$DtsHeader;->channelCount:I

    .line 72
    iput p3, p0, Lio/bidmachine/media3/extractor/DtsUtil$DtsHeader;->sampleRate:I

    .line 73
    iput p4, p0, Lio/bidmachine/media3/extractor/DtsUtil$DtsHeader;->frameSize:I

    .line 74
    iput-wide p5, p0, Lio/bidmachine/media3/extractor/DtsUtil$DtsHeader;->frameDurationUs:J

    .line 75
    iput p7, p0, Lio/bidmachine/media3/extractor/DtsUtil$DtsHeader;->bitrate:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIIJILio/bidmachine/media3/extractor/DtsUtil$1;)V
    .registers 9

    .line 44
    invoke-direct/range {p0 .. p7}, Lio/bidmachine/media3/extractor/DtsUtil$DtsHeader;-><init>(Ljava/lang/String;IIIJI)V

    return-void
.end method
