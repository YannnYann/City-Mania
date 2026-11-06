###### Class io.bidmachine.media3.extractor.Ac4Util (io.bidmachine.media3.extractor.Ac4Util)
.class public final Lio/bidmachine/media3/extractor/Ac4Util;
.super Ljava/lang/Object;
.source "Ac4Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;,
        Lio/bidmachine/media3/extractor/Ac4Util$SyncFrameInfo;
    }
.end annotation


# static fields
.field public static final SAMPLE_COUNT:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xe

    .line 141
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lio/bidmachine/media3/extractor/Ac4Util;->SAMPLE_COUNT:[I

    return-void

    :array_a
    .array-data 4
        0x7d2
        0x7d0
        0x780
        0x641
        0x640
        0x3e9
        0x3e8
        0x3c0
        0x320
        0x320
        0x1e0
        0x190
        0x190
        0x800
    .end array-data
.end method

.method public static getAc4SampleHeader(ILio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 4

    const/4 v0, 0x7

    .line 739
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    .line 740
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, -0x54

    .line 741
    aput-byte v1, p1, v0

    const/4 v0, 0x1

    const/16 v1, 0x40

    .line 742
    aput-byte v1, p1, v0

    const/4 v0, 0x2

    const/4 v1, -0x1

    .line 743
    aput-byte v1, p1, v0

    const/4 v0, 0x3

    .line 744
    aput-byte v1, p1, v0

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x4

    .line 745
    aput-byte v0, p1, v1

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x5

    .line 746
    aput-byte v0, p1, v1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v0, 0x6

    .line 747
    aput-byte p0, p1, v0

    return-void
.end method

.method public static getAdjustedChannelCount(IZI)I
    .registers 5

    .line 575
    invoke-static {p0}, Lio/bidmachine/media3/extractor/Ac4Util;->getChannelCountFromChannelMode(I)I

    move-result v0

    const/16 v1, 0xb

    if-eq p0, v1, :cond_16

    const/16 v1, 0xc

    if-eq p0, v1, :cond_16

    const/16 v1, 0xd

    if-eq p0, v1, :cond_16

    const/16 v1, 0xe

    if-ne p0, v1, :cond_15

    goto :goto_16

    :cond_15
    return v0

    :cond_16
    :goto_16
    if-nez p1, :cond_1a

    add-int/lit8 v0, v0, -0x2

    :cond_1a
    if-eqz p2, :cond_23

    const/4 p0, 0x1

    if-eq p2, p0, :cond_20

    return v0

    :cond_20
    add-int/lit8 v0, v0, -0x2

    return v0

    :cond_23
    add-int/lit8 v0, v0, -0x4

    return v0
.end method

.method public static getChannelCountFromChannelMode(I)I
    .registers 1

    .line 0
    packed-switch p0, :pswitch_data_24

    const/4 p0, -0x1

    return p0

    :pswitch_5
    const/16 p0, 0x18

    return p0

    :pswitch_8
    const/16 p0, 0xe

    return p0

    :pswitch_b
    const/16 p0, 0xd

    return p0

    :pswitch_e
    const/16 p0, 0xc

    return p0

    :pswitch_11
    const/16 p0, 0xb

    return p0

    :pswitch_14
    const/16 p0, 0x8

    return p0

    :pswitch_17
    const/4 p0, 0x7

    return p0

    :pswitch_19
    const/4 p0, 0x6

    return p0

    :pswitch_1b
    const/4 p0, 0x5

    return p0

    :pswitch_1d
    const/4 p0, 0x3

    return p0

    :pswitch_1f
    const/4 p0, 0x2

    return p0

    :pswitch_21
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_21
        :pswitch_1f
        :pswitch_1d
        :pswitch_1b
        :pswitch_19
        :pswitch_17
        :pswitch_14
        :pswitch_17
        :pswitch_14
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static parseAc4AnnexEFormat(Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lio/bidmachine/media3/common/DrmInitData;)Lio/bidmachine/media3/common/Format;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 178
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-direct {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;-><init>()V

    move-object/from16 v1, p0

    .line 179
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->reset(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    .line 181
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v1

    const/4 v2, 0x3

    .line 182
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_2b5

    const/4 v5, 0x7

    .line 188
    invoke-virtual {v0, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 189
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v7

    if-eqz v7, :cond_25

    const v7, 0xbb80

    goto :goto_28

    :cond_25
    const v7, 0xac44

    :goto_28
    const/4 v8, 0x4

    .line 190
    invoke-virtual {v0, v8}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/16 v9, 0x9

    .line 191
    invoke-virtual {v0, v9}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    const/16 v10, 0x10

    if-le v6, v4, :cond_63

    if-eqz v3, :cond_4d

    .line 198
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_63

    .line 199
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 200
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_63

    const/16 v6, 0x80

    .line 201
    invoke-virtual {v0, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_63

    .line 195
    :cond_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid AC-4 DSI version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_63
    :goto_63
    if-ne v3, v4, :cond_76

    .line 207
    invoke-static {v0}, Lio/bidmachine/media3/extractor/Ac4Util;->skipDsiBitrate(Lio/bidmachine/media3/common/util/ParsableBitArray;)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 210
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->byteAlign()V

    goto :goto_76

    .line 208
    :cond_6f
    const-string v0, "Invalid AC-4 DSI bitrate."

    invoke-static {v0}, Lio/bidmachine/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 213
    :cond_76
    :goto_76
    new-instance v6, Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;

    const/4 v11, 0x0

    invoke-direct {v6, v11}, Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;-><init>(Lio/bidmachine/media3/extractor/Ac4Util$1;)V

    const/4 v12, 0x0

    :goto_7d
    if-ge v12, v9, :cond_262

    const/4 v13, 0x5

    const/16 v14, 0x8

    const/4 v15, 0x2

    if-nez v3, :cond_99

    .line 223
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v9

    .line 224
    invoke-virtual {v0, v13}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v16

    .line 225
    invoke-virtual {v0, v13}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v17

    move/from16 v11, v16

    move/from16 v14, v17

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    goto :goto_cb

    .line 227
    :cond_99
    invoke-virtual {v0, v14}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 228
    invoke-virtual {v0, v14}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    const/16 v8, 0xff

    if-ne v5, v8, :cond_aa

    .line 230
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    add-int/2addr v5, v8

    :cond_aa
    if-le v11, v15, :cond_b6

    mul-int/lit8 v5, v5, 0x8

    .line 233
    invoke-virtual {v0, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x7

    const/4 v8, 0x4

    goto :goto_7d

    .line 237
    :cond_b6
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v8

    sub-int v8, v1, v8

    div-int/2addr v8, v14

    .line 240
    invoke-virtual {v0, v13}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    const/16 v10, 0x1f

    if-ne v9, v10, :cond_c7

    move v10, v4

    goto :goto_c8

    :cond_c7
    const/4 v10, 0x0

    :goto_c8
    move v14, v11

    move v11, v9

    const/4 v9, 0x0

    :goto_cb
    if-nez v9, :cond_d5

    if-nez v10, :cond_d5

    const/4 v4, 0x6

    if-ne v11, v4, :cond_d5

    const/4 v2, 0x1

    goto/16 :goto_1d7

    .line 248
    :cond_d5
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    iput v4, v6, Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;->level:I

    .line 250
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_e4

    .line 251
    invoke-virtual {v0, v13}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 254
    :cond_e4
    invoke-virtual {v0, v15}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f1

    if-eq v14, v4, :cond_ee

    if-ne v14, v15, :cond_f1

    .line 256
    :cond_ee
    invoke-virtual {v0, v15}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 258
    :cond_f1
    invoke-virtual {v0, v13}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/16 v2, 0xa

    .line 259
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    if-ne v3, v4, :cond_15e

    if-lez v14, :cond_103

    .line 263
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    iput-boolean v2, v6, Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;->isChannelCoded:Z

    .line 266
    :cond_103
    iget-boolean v2, v6, Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;->isChannelCoded:Z

    if-eqz v2, :cond_131

    if-eq v14, v4, :cond_10b

    if-ne v14, v15, :cond_12b

    .line 268
    :cond_10b
    invoke-virtual {v0, v13}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    if-ltz v2, :cond_117

    const/16 v4, 0xf

    if-gt v2, v4, :cond_117

    .line 270
    iput v2, v6, Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;->channelMode:I

    :cond_117
    const/16 v4, 0xb

    if-lt v2, v4, :cond_12b

    const/16 v4, 0xe

    if-gt v2, v4, :cond_12b

    .line 275
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    iput-boolean v2, v6, Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;->hasBackChannels:Z

    .line 277
    invoke-virtual {v0, v15}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    iput v2, v6, Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;->topChannelPairs:I

    :cond_12b
    const/16 v2, 0x18

    .line 281
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/4 v4, 0x1

    :cond_131
    if-eq v14, v4, :cond_135

    if-ne v14, v15, :cond_15e

    .line 285
    :cond_135
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_144

    .line 286
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_144

    .line 287
    invoke-virtual {v0, v15}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 290
    :cond_144
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_15e

    .line 293
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBit()V

    const/16 v2, 0x8

    .line 294
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    const/4 v13, 0x0

    :goto_154
    if-ge v13, v4, :cond_15e

    .line 296
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    add-int/lit8 v13, v13, 0x1

    const/16 v2, 0x8

    goto :goto_154

    :cond_15e
    if-nez v9, :cond_1c7

    if-eqz v10, :cond_164

    goto/16 :goto_1c7

    .line 310
    :cond_164
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBit()V

    if-eqz v11, :cond_1b3

    const/4 v4, 0x1

    if-eq v11, v4, :cond_1b3

    if-eq v11, v15, :cond_1b3

    const/4 v2, 0x3

    if-eq v11, v2, :cond_19d

    const/4 v2, 0x4

    if-eq v11, v2, :cond_19d

    const/4 v2, 0x5

    if-eq v11, v2, :cond_187

    const/4 v2, 0x7

    .line 350
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    const/4 v2, 0x0

    :goto_17d
    if-ge v2, v4, :cond_1d0

    const/16 v9, 0x8

    .line 352
    invoke-virtual {v0, v9}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17d

    :cond_187
    if-nez v14, :cond_18d

    .line 339
    invoke-static {v0, v6}, Lio/bidmachine/media3/extractor/Ac4Util;->parseDsiSubstream(Lio/bidmachine/media3/common/util/ParsableBitArray;Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;)V

    goto :goto_1d0

    :cond_18d
    const/4 v2, 0x3

    .line 341
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    const/4 v2, 0x0

    :goto_193
    add-int/lit8 v9, v4, 0x2

    if-ge v2, v9, :cond_1d0

    .line 345
    invoke-static {v0, v6}, Lio/bidmachine/media3/extractor/Ac4Util;->parseDsiSubstreamGroup(Lio/bidmachine/media3/common/util/ParsableBitArray;Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_193

    :cond_19d
    if-nez v14, :cond_1a9

    const/4 v2, 0x3

    const/4 v4, 0x0

    :goto_1a1
    if-ge v4, v2, :cond_1d0

    .line 329
    invoke-static {v0, v6}, Lio/bidmachine/media3/extractor/Ac4Util;->parseDsiSubstream(Lio/bidmachine/media3/common/util/ParsableBitArray;Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a1

    :cond_1a9
    const/4 v4, 0x0

    :goto_1aa
    const/4 v2, 0x3

    if-ge v4, v2, :cond_1d0

    .line 333
    invoke-static {v0, v6}, Lio/bidmachine/media3/extractor/Ac4Util;->parseDsiSubstreamGroup(Lio/bidmachine/media3/common/util/ParsableBitArray;Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1aa

    :cond_1b3
    if-nez v14, :cond_1be

    const/4 v2, 0x0

    :goto_1b6
    if-ge v2, v15, :cond_1d0

    .line 317
    invoke-static {v0, v6}, Lio/bidmachine/media3/extractor/Ac4Util;->parseDsiSubstream(Lio/bidmachine/media3/common/util/ParsableBitArray;Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b6

    :cond_1be
    const/4 v2, 0x0

    :goto_1bf
    if-ge v2, v15, :cond_1d0

    .line 321
    invoke-static {v0, v6}, Lio/bidmachine/media3/extractor/Ac4Util;->parseDsiSubstreamGroup(Lio/bidmachine/media3/common/util/ParsableBitArray;Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1bf

    :cond_1c7
    :goto_1c7
    if-nez v14, :cond_1cd

    .line 304
    invoke-static {v0, v6}, Lio/bidmachine/media3/extractor/Ac4Util;->parseDsiSubstream(Lio/bidmachine/media3/common/util/ParsableBitArray;Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;)V

    goto :goto_1d0

    .line 306
    :cond_1cd
    invoke-static {v0, v6}, Lio/bidmachine/media3/extractor/Ac4Util;->parseDsiSubstreamGroup(Lio/bidmachine/media3/common/util/ParsableBitArray;Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;)V

    .line 357
    :cond_1d0
    :goto_1d0
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBit()V

    .line 358
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    :goto_1d7
    if-eqz v2, :cond_1e9

    const/4 v2, 0x7

    .line 361
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/4 v4, 0x0

    :goto_1df
    if-ge v4, v2, :cond_1e9

    const/16 v9, 0xf

    .line 363
    invoke-virtual {v0, v9}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1df

    :cond_1e9
    if-lez v14, :cond_225

    .line 368
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_1ff

    .line 369
    invoke-static {v0}, Lio/bidmachine/media3/extractor/Ac4Util;->skipDsiBitrate(Lio/bidmachine/media3/common/util/ParsableBitArray;)Z

    move-result v2

    if-eqz v2, :cond_1f8

    goto :goto_1ff

    .line 370
    :cond_1f8
    const-string v0, "Can\'t parse bitrate DSI."

    invoke-static {v0}, Lio/bidmachine/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 374
    :cond_1ff
    :goto_1ff
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_225

    .line 375
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->byteAlign()V

    const/16 v2, 0x10

    .line 376
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 377
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBytes(I)V

    const/4 v2, 0x5

    .line 379
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/4 v11, 0x0

    :goto_217
    if-ge v11, v2, :cond_225

    const/4 v4, 0x3

    .line 381
    invoke-virtual {v0, v4}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/16 v9, 0x8

    .line 382
    invoke-virtual {v0, v9}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_217

    :cond_225
    const/16 v9, 0x8

    .line 387
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->byteAlign()V

    const/4 v4, 0x1

    if-ne v3, v4, :cond_242

    .line 390
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/2addr v1, v9

    sub-int/2addr v1, v8

    if-lt v5, v1, :cond_23b

    sub-int/2addr v5, v1

    .line 397
    invoke-virtual {v0, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBytes(I)V

    goto :goto_242

    .line 393
    :cond_23b
    const-string v0, "pres_bytes is smaller than presentation bytes read."

    invoke-static {v0}, Lio/bidmachine/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 401
    :cond_242
    :goto_242
    iget-boolean v0, v6, Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;->isChannelCoded:Z

    if-eqz v0, :cond_262

    iget v0, v6, Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;->channelMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_24c

    goto :goto_262

    .line 402
    :cond_24c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t determine channel mode of presentation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 409
    :cond_262
    :goto_262
    iget-boolean v0, v6, Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;->isChannelCoded:Z

    if-eqz v0, :cond_271

    .line 410
    iget v0, v6, Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;->channelMode:I

    iget-boolean v1, v6, Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;->hasBackChannels:Z

    iget v2, v6, Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;->topChannelPairs:I

    .line 411
    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/extractor/Ac4Util;->getAdjustedChannelCount(IZI)I

    move-result v0

    goto :goto_282

    .line 425
    :cond_271
    iget v0, v6, Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;->numOfUmxObjects:I

    const/16 v18, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 430
    iget v1, v6, Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;->level:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_282

    const/16 v1, 0x11

    if-ne v0, v1, :cond_282

    const/16 v0, 0x15

    :cond_282
    :goto_282
    if-lez v0, :cond_2ae

    .line 440
    new-instance v1, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v1}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    move-object/from16 v2, p1

    .line 441
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    const-string v2, "audio/ac4"

    .line 442
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    .line 443
    invoke-virtual {v1, v0}, Lio/bidmachine/media3/common/Format$Builder;->setChannelCount(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 444
    invoke-virtual {v0, v7}, Lio/bidmachine/media3/common/Format$Builder;->setSampleRate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    move-object/from16 v1, p3

    .line 445
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setDrmInitData(Lio/bidmachine/media3/common/DrmInitData;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    move-object/from16 v1, p2

    .line 446
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 447
    invoke-virtual {v0}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v0

    return-object v0

    .line 436
    :cond_2ae
    const-string v0, "Can\'t determine channel count of presentation."

    invoke-static {v0}, Lio/bidmachine/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 184
    :cond_2b5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported AC-4 DSI version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method public static parseAc4SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .registers 3

    const/16 v0, 0x10

    .line 729
    new-array v0, v0, [B

    .line 730
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    .line 731
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 732
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 733
    new-instance p0, Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-direct {p0, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;-><init>([B)V

    invoke-static {p0}, Lio/bidmachine/media3/extractor/Ac4Util;->parseAc4SyncframeInfo(Lio/bidmachine/media3/common/util/ParsableBitArray;)Lio/bidmachine/media3/extractor/Ac4Util$SyncFrameInfo;

    move-result-object p0

    iget p0, p0, Lio/bidmachine/media3/extractor/Ac4Util$SyncFrameInfo;->sampleCount:I

    return p0
.end method

.method public static parseAc4SyncframeInfo(Lio/bidmachine/media3/common/util/ParsableBitArray;)Lio/bidmachine/media3/extractor/Ac4Util$SyncFrameInfo;
    .registers 12

    const/16 v0, 0x10

    .line 643
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 645
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const v2, 0xffff

    const/4 v3, 0x4

    if-ne v0, v2, :cond_18

    const/16 v0, 0x18

    .line 648
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/4 v2, 0x7

    goto :goto_19

    :cond_18
    move v2, v3

    :goto_19
    add-int/2addr v0, v2

    const v2, 0xac41

    if-ne v1, v2, :cond_21

    add-int/lit8 v0, v0, 0x2

    :cond_21
    move v8, v0

    const/4 v0, 0x2

    .line 655
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2f

    .line 657
    invoke-static {p0, v0}, Lio/bidmachine/media3/extractor/Ac4Util;->readVariableBits(Lio/bidmachine/media3/common/util/ParsableBitArray;I)I

    move-result v4

    add-int/2addr v1, v4

    :cond_2f
    move v5, v1

    const/16 v1, 0xa

    .line 659
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 660
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 661
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    if-lez v4, :cond_45

    .line 662
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 665
    :cond_45
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    const v6, 0xac44

    const v7, 0xbb80

    if-eqz v4, :cond_53

    move v4, v7

    goto :goto_55

    :cond_53
    move v4, v7

    move v7, v6

    .line 666
    :goto_55
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p0

    if-ne v7, v6, :cond_65

    const/16 v6, 0xd

    if-ne p0, v6, :cond_65

    .line 669
    sget-object v0, Lio/bidmachine/media3/extractor/Ac4Util;->SAMPLE_COUNT:[I

    aget p0, v0, p0

    :goto_63
    move v9, p0

    goto :goto_95

    :cond_65
    if-ne v7, v4, :cond_93

    .line 670
    sget-object v4, Lio/bidmachine/media3/extractor/Ac4Util;->SAMPLE_COUNT:[I

    array-length v6, v4

    if-ge p0, v6, :cond_93

    .line 671
    aget v4, v4, p0

    .line 672
    rem-int/lit8 v1, v1, 0x5

    const/16 v6, 0x8

    const/4 v9, 0x1

    if-eq v1, v9, :cond_8c

    const/16 v9, 0xb

    if-eq v1, v0, :cond_87

    if-eq v1, v2, :cond_8c

    if-eq v1, v3, :cond_7e

    goto :goto_91

    :cond_7e
    if-eq p0, v2, :cond_84

    if-eq p0, v6, :cond_84

    if-ne p0, v9, :cond_91

    :cond_84
    :goto_84
    add-int/lit8 p0, v4, 0x1

    goto :goto_63

    :cond_87
    if-eq p0, v6, :cond_84

    if-ne p0, v9, :cond_91

    goto :goto_84

    :cond_8c
    if-eq p0, v2, :cond_84

    if-ne p0, v6, :cond_91

    goto :goto_84

    :cond_91
    :goto_91
    move v9, v4

    goto :goto_95

    :cond_93
    const/4 p0, 0x0

    goto :goto_63

    .line 693
    :goto_95
    new-instance v4, Lio/bidmachine/media3/extractor/Ac4Util$SyncFrameInfo;

    const/4 v6, 0x2

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lio/bidmachine/media3/extractor/Ac4Util$SyncFrameInfo;-><init>(IIIIILio/bidmachine/media3/extractor/Ac4Util$1;)V

    return-object v4
.end method

.method public static parseAc4SyncframeSize([BI)I
    .registers 6

    .line 704
    array-length v0, p0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    const/4 v0, 0x2

    .line 708
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    const v2, 0xffff

    const/4 v3, 0x4

    if-ne v0, v2, :cond_2e

    .line 711
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    const/4 v2, 0x6

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr v0, p0

    goto :goto_2f

    :cond_2e
    move v1, v3

    :goto_2f
    const p0, 0xac41

    if-ne p1, p0, :cond_36

    add-int/lit8 v1, v1, 0x2

    :cond_36
    add-int/2addr v0, v1

    return v0
.end method

.method public static parseDsiSubstream(Lio/bidmachine/media3/common/util/ParsableBitArray;Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 463
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x2

    .line 464
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 466
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 467
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_12
    const/4 v0, 0x7

    if-lt v1, v0, :cond_1c

    const/16 v0, 0xa

    if-gt v1, v0, :cond_1c

    .line 470
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBit()V

    .line 473
    :cond_1c
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_42

    const/4 v0, 0x3

    .line 474
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 478
    iget v2, p1, Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;->channelMode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_39

    if-ltz v1, :cond_39

    const/16 v2, 0xf

    if-gt v1, v2, :cond_39

    if-eqz v0, :cond_37

    const/4 v2, 0x1

    if-ne v0, v2, :cond_39

    .line 481
    :cond_37
    iput v1, p1, Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;->channelMode:I

    .line 484
    :cond_39
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 485
    invoke-static {p0}, Lio/bidmachine/media3/extractor/Ac4Util;->skipDsiLanguage(Lio/bidmachine/media3/common/util/ParsableBitArray;)V

    :cond_42
    return-void
.end method

.method public static parseDsiSubstreamGroup(Lio/bidmachine/media3/common/util/ParsableBitArray;Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 503
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 504
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v1

    const/16 v2, 0x8

    .line 505
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_45

    .line 508
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 509
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v4, 0x5

    .line 510
    invoke-virtual {p0, v4}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_1e
    if-eqz v1, :cond_26

    const/16 v4, 0x18

    .line 513
    invoke-virtual {p0, v4}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_42

    .line 515
    :cond_26
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_3f

    .line 516
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-nez v4, :cond_36

    .line 517
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_36
    const/4 v4, 0x6

    .line 519
    invoke-virtual {p0, v4}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;->numOfUmxObjects:I

    .line 521
    :cond_3f
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    :goto_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 525
    :cond_45
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_58

    const/4 p1, 0x3

    .line 526
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 528
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_58

    .line 529
    invoke-static {p0}, Lio/bidmachine/media3/extractor/Ac4Util;->skipDsiLanguage(Lio/bidmachine/media3/common/util/ParsableBitArray;)V

    :cond_58
    return-void
.end method

.method public static readVariableBits(Lio/bidmachine/media3/common/util/ParsableBitArray;I)I
    .registers 4

    const/4 v0, 0x0

    .line 753
    :goto_1
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 754
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-nez v1, :cond_d

    return v0

    :cond_d
    add-int/lit8 v0, v0, 0x1

    shl-int/2addr v0, p1

    goto :goto_1
.end method

.method public static skipDsiBitrate(Lio/bidmachine/media3/common/util/ParsableBitArray;)Z
    .registers 3

    .line 566
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v0

    const/16 v1, 0x42

    if-ge v0, v1, :cond_a

    const/4 p0, 0x0

    return p0

    .line 569
    :cond_a
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public static skipDsiLanguage(Lio/bidmachine/media3/common/util/ParsableBitArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 544
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_12

    const/16 v1, 0x2a

    if-gt v0, v1, :cond_12

    mul-int/lit8 v0, v0, 0x8

    .line 552
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    return-void

    .line 549
    :cond_12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 547
    const-string v0, "Invalid language tag bytes number: %d. Must be between 2 and 42."

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 546
    invoke-static {p0}, Lio/bidmachine/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

###### Class io.bidmachine.media3.extractor.Ac4Util.AnonymousClass1 (io.bidmachine.media3.extractor.Ac4Util$1)
.class public synthetic Lio/bidmachine/media3/extractor/Ac4Util$1;
.super Ljava/lang/Object;
.source "Ac4Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/Ac4Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.extractor.Ac4Util.Ac4Presentation (io.bidmachine.media3.extractor.Ac4Util$Ac4Presentation)
.class public final Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;
.super Ljava/lang/Object;
.source "Ac4Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/Ac4Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ac4Presentation"
.end annotation


# instance fields
.field public channelMode:I

.field public hasBackChannels:Z

.field public isChannelCoded:Z

.field public level:I

.field public numOfUmxObjects:I

.field public topChannelPairs:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 773
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;->isChannelCoded:Z

    const/4 v1, -0x1

    .line 774
    iput v1, p0, Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;->channelMode:I

    .line 775
    iput v1, p0, Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;->numOfUmxObjects:I

    .line 776
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;->hasBackChannels:Z

    const/4 v0, 0x2

    .line 777
    iput v0, p0, Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;->topChannelPairs:I

    const/4 v0, 0x0

    .line 778
    iput v0, p0, Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;->level:I

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/extractor/Ac4Util$1;)V
    .registers 2

    .line 764
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/Ac4Util$Ac4Presentation;-><init>()V

    return-void
.end method

###### Class io.bidmachine.media3.extractor.Ac4Util.SyncFrameInfo (io.bidmachine.media3.extractor.Ac4Util$SyncFrameInfo)
.class public final Lio/bidmachine/media3/extractor/Ac4Util$SyncFrameInfo;
.super Ljava/lang/Object;
.source "Ac4Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/Ac4Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncFrameInfo"
.end annotation


# instance fields
.field public final bitstreamVersion:I

.field public final channelCount:I

.field public final frameSize:I

.field public final sampleCount:I

.field public final sampleRate:I


# direct methods
.method public constructor <init>(IIIII)V
    .registers 6

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lio/bidmachine/media3/extractor/Ac4Util$SyncFrameInfo;->bitstreamVersion:I

    .line 61
    iput p2, p0, Lio/bidmachine/media3/extractor/Ac4Util$SyncFrameInfo;->channelCount:I

    .line 62
    iput p3, p0, Lio/bidmachine/media3/extractor/Ac4Util$SyncFrameInfo;->sampleRate:I

    .line 63
    iput p4, p0, Lio/bidmachine/media3/extractor/Ac4Util$SyncFrameInfo;->frameSize:I

    .line 64
    iput p5, p0, Lio/bidmachine/media3/extractor/Ac4Util$SyncFrameInfo;->sampleCount:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIILio/bidmachine/media3/extractor/Ac4Util$1;)V
    .registers 7

    .line 41
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/media3/extractor/Ac4Util$SyncFrameInfo;-><init>(IIIII)V

    return-void
.end method
