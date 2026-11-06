###### Class io.bidmachine.media3.extractor.text.cea.Cea608Decoder (io.bidmachine.media3.extractor.text.cea.Cea608Decoder)
.class public final Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;
.super Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;
.source "Cea608Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;
    }
.end annotation


# static fields
.field public static final BASIC_CHARACTER_SET:[I

.field public static final COLUMN_INDICES:[I

.field public static final ODD_PARITY_BYTE_TABLE:[Z

.field public static final ROW_INDICES:[I

.field public static final SPECIAL_CHARACTER_SET:[I

.field public static final SPECIAL_ES_FR_CHARACTER_SET:[I

.field public static final SPECIAL_PT_DE_CHARACTER_SET:[I

.field public static final STYLE_COLORS:[I


# instance fields
.field public captionMode:I

.field public captionRowCount:I

.field public final ccData:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public final cueBuilders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;",
            ">;"
        }
    .end annotation
.end field

.field public cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field public currentChannel:I

.field public currentCueBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

.field public isCaptionValid:Z

.field public isInCaptionService:Z

.field public lastCueUpdateUs:J

.field public lastCues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field public final packetLength:I

.field public repeatableControlCc1:B

.field public repeatableControlCc2:B

.field public repeatableControlSet:Z

.field public final selectedChannel:I

.field public final selectedField:I

.field public final validDataChannelTimeoutUs:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x7

    const/16 v1, 0x8

    .line 76
    new-array v2, v1, [I

    fill-array-data v2, :array_44

    sput-object v2, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->ROW_INDICES:[I

    const/16 v2, 0x10

    .line 77
    new-array v1, v1, [I

    fill-array-data v1, :array_58

    sput-object v1, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->COLUMN_INDICES:[I

    .line 79
    new-array v0, v0, [I

    fill-array-data v0, :array_6c

    sput-object v0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->STYLE_COLORS:[I

    const/16 v0, 0x20

    const/16 v1, 0x60

    .line 149
    new-array v1, v1, [I

    fill-array-data v1, :array_7e

    sput-object v1, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->BASIC_CHARACTER_SET:[I

    .line 250
    new-array v1, v2, [I

    fill-array-data v1, :array_142

    sput-object v1, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->SPECIAL_CHARACTER_SET:[I

    .line 271
    new-array v1, v0, [I

    fill-array-data v1, :array_166

    sput-object v1, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->SPECIAL_ES_FR_CHARACTER_SET:[I

    .line 282
    new-array v0, v0, [I

    fill-array-data v0, :array_1aa

    sput-object v0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->SPECIAL_PT_DE_CHARACTER_SET:[I

    const/16 v0, 0x100

    .line 292
    new-array v0, v0, [Z

    fill-array-data v0, :array_1ee

    sput-object v0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->ODD_PARITY_BYTE_TABLE:[Z

    return-void

    :array_44
    .array-data 4
        0xb
        0x1
        0x3
        0xc
        0xe
        0x5
        0x7
        0x9
    .end array-data

    :array_58
    .array-data 4
        0x0
        0x4
        0x8
        0xc
        0x10
        0x14
        0x18
        0x1c
    .end array-data

    :array_6c
    .array-data 4
        -0x1
        -0xff0100
        -0xffff01
        -0xff0001
        -0x10000
        -0x100
        -0xff01
    .end array-data

    :array_7e
    .array-data 4
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0xe1
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x50
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x57
        0x58
        0x59
        0x5a
        0x5b
        0xe9
        0x5d
        0xed
        0xf3
        0xfa
        0x61
        0x62
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6d
        0x6e
        0x6f
        0x70
        0x71
        0x72
        0x73
        0x74
        0x75
        0x76
        0x77
        0x78
        0x79
        0x7a
        0xe7
        0xf7
        0xd1
        0xf1
        0x25a0
    .end array-data

    :array_142
    .array-data 4
        0xae
        0xb0
        0xbd
        0xbf
        0x2122
        0xa2
        0xa3
        0x266a
        0xe0
        0x20
        0xe8
        0xe2
        0xea
        0xee
        0xf4
        0xfb
    .end array-data

    :array_166
    .array-data 4
        0xc1
        0xc9
        0xd3
        0xda
        0xdc
        0xfc
        0x2018
        0xa1
        0x2a
        0x27
        0x2014
        0xa9
        0x2120
        0x2022
        0x201c
        0x201d
        0xc0
        0xc2
        0xc7
        0xc8
        0xca
        0xcb
        0xeb
        0xce
        0xcf
        0xef
        0xd4
        0xd9
        0xf9
        0xdb
        0xab
        0xbb
    .end array-data

    :array_1aa
    .array-data 4
        0xc3
        0xe3
        0xcd
        0xcc
        0xec
        0xd2
        0xf2
        0xd5
        0xf5
        0x7b
        0x7d
        0x5c
        0x5e
        0x5f
        0x7c
        0x7e
        0xc4
        0xe4
        0xd6
        0xf6
        0xdf
        0xa5
        0xa4
        0x2502
        0xc5
        0xe5
        0xd8
        0xf8
        0x250c
        0x2510
        0x2514
        0x2518
    .end array-data

    :array_1ee
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .registers 13

    .line 364
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;-><init>()V

    .line 365
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->ccData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    .line 367
    new-instance v0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;-><init>(II)V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    .line 368
    iput v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->currentChannel:I

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, v3

    const/4 v5, 0x1

    if-eqz v0, :cond_38

    const-wide/16 v6, 0x3e80

    cmp-long v0, p3, v6

    if-ltz v0, :cond_2e

    move v0, v5

    goto :goto_2f

    :cond_2e
    move v0, v1

    .line 370
    :goto_2f
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    const-wide/16 v6, 0x3e8

    mul-long/2addr p3, v6

    .line 371
    iput-wide p3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->validDataChannelTimeoutUs:J

    goto :goto_3a

    .line 373
    :cond_38
    iput-wide v3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->validDataChannelTimeoutUs:J

    .line 375
    :goto_3a
    const-string p3, "application/x-mp4-cea-608"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x3

    const/4 p4, 0x2

    if-eqz p1, :cond_46

    move p1, p4

    goto :goto_47

    :cond_46
    move p1, p3

    :goto_47
    iput p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->packetLength:I

    if-eq p2, v5, :cond_6c

    if-eq p2, p4, :cond_67

    if-eq p2, p3, :cond_62

    if-eq p2, v2, :cond_5d

    .line 394
    const-string p1, "Cea608Decoder"

    const-string p2, "Invalid channel. Defaulting to CC1."

    invoke-static {p1, p2}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iput v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->selectedChannel:I

    .line 396
    iput v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->selectedField:I

    goto :goto_70

    .line 390
    :cond_5d
    iput v5, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->selectedChannel:I

    .line 391
    iput v5, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->selectedField:I

    goto :goto_70

    .line 386
    :cond_62
    iput v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->selectedChannel:I

    .line 387
    iput v5, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->selectedField:I

    goto :goto_70

    .line 382
    :cond_67
    iput v5, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->selectedChannel:I

    .line 383
    iput v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->selectedField:I

    goto :goto_70

    .line 378
    :cond_6c
    iput v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->selectedChannel:I

    .line 379
    iput v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->selectedField:I

    .line 399
    :goto_70
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->setCaptionMode(I)V

    .line 400
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->resetCueBuilders()V

    .line 401
    iput-boolean v5, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->isInCaptionService:Z

    .line 402
    iput-wide v3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->lastCueUpdateUs:J

    return-void
.end method

.method public static synthetic access$300()[I
    .registers 1

    .line 52
    sget-object v0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->STYLE_COLORS:[I

    return-object v0
.end method

.method public static getBasicChar(B)C
    .registers 2

    and-int/lit8 p0, p0, 0x7f

    add-int/lit8 p0, p0, -0x20

    .line 800
    sget-object v0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->BASIC_CHARACTER_SET:[I

    aget p0, v0, p0

    int-to-char p0, p0

    return p0
.end method

.method public static getChannel(B)I
    .registers 1

    .line 0
    shr-int/lit8 p0, p0, 0x3

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static getExtendedEsFrChar(B)C
    .registers 2

    and-int/lit8 p0, p0, 0x1f

    .line 832
    sget-object v0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->SPECIAL_ES_FR_CHARACTER_SET:[I

    aget p0, v0, p0

    int-to-char p0, p0

    return p0
.end method

.method public static getExtendedPtDeChar(B)C
    .registers 2

    and-int/lit8 p0, p0, 0x1f

    .line 837
    sget-object v0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->SPECIAL_PT_DE_CHARACTER_SET:[I

    aget p0, v0, p0

    int-to-char p0, p0

    return p0
.end method

.method public static getExtendedWestEuropeanChar(BB)C
    .registers 2

    and-int/lit8 p0, p0, 0x1

    if-nez p0, :cond_9

    .line 823
    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->getExtendedEsFrChar(B)C

    move-result p0

    return p0

    .line 826
    :cond_9
    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->getExtendedPtDeChar(B)C

    move-result p0

    return p0
.end method

.method public static getSpecialNorthAmericanChar(B)C
    .registers 2

    and-int/lit8 p0, p0, 0xf

    .line 811
    sget-object v0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->SPECIAL_CHARACTER_SET:[I

    aget p0, v0, p0

    int-to-char p0, p0

    return p0
.end method

.method public static isCtrlCode(B)Z
    .registers 1

    .line 0
    and-int/lit16 p0, p0, 0xe0

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static isExtendedWestEuropeanChar(BB)Z
    .registers 3

    .line 0
    and-int/lit16 p0, p0, 0xf6

    const/16 v0, 0x12

    if-ne p0, v0, :cond_e

    and-int/lit16 p0, p1, 0xe0

    const/16 p1, 0x20

    if-ne p0, p1, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static isMidrowCtrlCode(BB)Z
    .registers 3

    .line 0
    and-int/lit16 p0, p0, 0xf7

    const/16 v0, 0x11

    if-ne p0, v0, :cond_e

    and-int/lit16 p0, p1, 0xf0

    const/16 p1, 0x20

    if-ne p0, p1, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static isMiscCode(BB)Z
    .registers 3

    .line 0
    and-int/lit16 p0, p0, 0xf6

    const/16 v0, 0x14

    if-ne p0, v0, :cond_e

    and-int/lit16 p0, p1, 0xf0

    const/16 p1, 0x20

    if-ne p0, p1, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static isPreambleAddressCode(BB)Z
    .registers 3

    .line 0
    and-int/lit16 p0, p0, 0xf0

    const/16 v0, 0x10

    if-ne p0, v0, :cond_e

    and-int/lit16 p0, p1, 0xc0

    const/16 p1, 0x40

    if-ne p0, p1, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static isRepeatable(B)Z
    .registers 2

    .line 0
    and-int/lit16 p0, p0, 0xf0

    const/16 v0, 0x10

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static isServiceSwitchCommand(B)Z
    .registers 2

    .line 0
    and-int/lit16 p0, p0, 0xf6

    const/16 v0, 0x14

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static isSpecialNorthAmericanChar(BB)Z
    .registers 3

    .line 0
    and-int/lit16 p0, p0, 0xf7

    const/16 v0, 0x11

    if-ne p0, v0, :cond_e

    and-int/lit16 p0, p1, 0xf0

    const/16 p1, 0x30

    if-ne p0, p1, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static isTabCtrlCode(BB)Z
    .registers 3

    .line 0
    and-int/lit16 p0, p0, 0xf7

    const/16 v0, 0x17

    if-ne p0, v0, :cond_10

    const/16 p0, 0x21

    if-lt p1, p0, :cond_10

    const/16 p0, 0x23

    if-gt p1, p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static isXdsControlCode(B)Z
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-gt v0, p0, :cond_8

    const/16 v1, 0xf

    if-gt p0, v1, :cond_8

    return v0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public createSubtitle()Lio/bidmachine/media3/extractor/text/Subtitle;
    .registers 3

    .line 459
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->lastCues:Ljava/util/List;

    .line 460
    new-instance v1, Lio/bidmachine/media3/extractor/text/cea/CeaSubtitle;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v1, v0}, Lio/bidmachine/media3/extractor/text/cea/CeaSubtitle;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public decode(Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;)V
    .registers 11

    .line 466
    iget-object p1, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 467
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->ccData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset([BI)V

    const/4 p1, 0x0

    move v0, p1

    .line 469
    :cond_17
    :goto_17
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->ccData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    iget v2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->packetLength:I

    const/4 v3, 0x1

    if-lt v1, v2, :cond_f5

    const/4 v1, 0x2

    if-ne v2, v1, :cond_27

    const/4 v1, -0x4

    goto :goto_2d

    .line 470
    :cond_27
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->ccData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 472
    :goto_2d
    iget-object v2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->ccData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 473
    iget-object v4, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->ccData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_3e

    goto :goto_17

    :cond_3e
    and-int/lit8 v5, v1, 0x1

    .line 484
    iget v6, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->selectedField:I

    if-eq v5, v6, :cond_45

    goto :goto_17

    :cond_45
    and-int/lit8 v5, v2, 0x7f

    int-to-byte v5, v5

    and-int/lit8 v6, v4, 0x7f

    int-to-byte v6, v6

    if-nez v5, :cond_50

    if-nez v6, :cond_50

    goto :goto_17

    .line 498
    :cond_50
    iget-boolean v7, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->isCaptionValid:Z

    and-int/lit8 v1, v1, 0x4

    const/4 v8, 0x4

    if-ne v1, v8, :cond_63

    .line 499
    sget-object v1, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->ODD_PARITY_BYTE_TABLE:[Z

    aget-boolean v2, v1, v2

    if-eqz v2, :cond_63

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_63

    move v1, v3

    goto :goto_64

    :cond_63
    move v1, p1

    :goto_64
    iput-boolean v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->isCaptionValid:Z

    .line 504
    invoke-virtual {p0, v1, v5, v6}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->isRepeatedCommand(ZBB)Z

    move-result v1

    if-eqz v1, :cond_6d

    goto :goto_17

    .line 509
    :cond_6d
    iget-boolean v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->isCaptionValid:Z

    if-nez v1, :cond_78

    if-eqz v7, :cond_17

    .line 512
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->resetCueBuilders()V

    :cond_76
    :goto_76
    move v0, v3

    goto :goto_17

    .line 518
    :cond_78
    invoke-virtual {p0, v5, v6}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->maybeUpdateIsInCaptionService(BB)V

    .line 519
    iget-boolean v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->isInCaptionService:Z

    if-nez v1, :cond_80

    goto :goto_17

    .line 524
    :cond_80
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->updateAndVerifyCurrentChannel(B)Z

    move-result v1

    if-nez v1, :cond_87

    goto :goto_17

    .line 529
    :cond_87
    invoke-static {v5}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->isCtrlCode(B)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 530
    invoke-static {v5, v6}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->isSpecialNorthAmericanChar(BB)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 531
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    invoke-static {v6}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->getSpecialNorthAmericanChar(B)C

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    goto :goto_76

    .line 532
    :cond_9d
    invoke-static {v5, v6}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->isExtendedWestEuropeanChar(BB)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 534
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->backspace()V

    .line 535
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    invoke-static {v5, v6}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->getExtendedWestEuropeanChar(BB)C

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    goto :goto_76

    .line 536
    :cond_b2
    invoke-static {v5, v6}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->isMidrowCtrlCode(BB)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 537
    invoke-virtual {p0, v6}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->handleMidrowCtrl(B)V

    goto :goto_76

    .line 538
    :cond_bc
    invoke-static {v5, v6}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->isPreambleAddressCode(BB)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 539
    invoke-virtual {p0, v5, v6}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->handlePreambleAddressCode(BB)V

    goto :goto_76

    .line 540
    :cond_c6
    invoke-static {v5, v6}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->isTabCtrlCode(BB)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 541
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    add-int/lit8 v6, v6, -0x20

    invoke-static {v0, v6}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->access$002(Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;I)I

    goto :goto_76

    .line 542
    :cond_d4
    invoke-static {v5, v6}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->isMiscCode(BB)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 543
    invoke-virtual {p0, v6}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->handleMiscCode(B)V

    goto :goto_76

    .line 547
    :cond_de
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    invoke-static {v5}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->getBasicChar(B)C

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    and-int/lit16 v0, v6, 0xe0

    if-eqz v0, :cond_76

    .line 549
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    invoke-static {v6}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->getBasicChar(B)C

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    goto :goto_76

    :cond_f5
    if-eqz v0, :cond_10a

    .line 556
    iget p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->captionMode:I

    if-eq p1, v3, :cond_fe

    const/4 v0, 0x3

    if-ne p1, v0, :cond_10a

    .line 557
    :cond_fe
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    .line 558
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->getPositionUs()J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->lastCueUpdateUs:J

    :cond_10a
    return-void
.end method

.method public bridge synthetic dequeueInputBuffer()Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    .line 51
    invoke-super {p0}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->dequeueInputBuffer()Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public dequeueOutputBuffer()Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    .line 435
    invoke-super {p0}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->dequeueOutputBuffer()Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 439
    :cond_7
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->shouldClearStuckCaptions()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 440
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->getAvailableOutputBuffer()Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 442
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 443
    iput-wide v2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->lastCueUpdateUs:J

    .line 444
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->createSubtitle()Lio/bidmachine/media3/extractor/text/Subtitle;

    move-result-object v4

    .line 445
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->getPositionUs()J

    move-result-wide v2

    const-wide v5, 0x7fffffffffffffffL

    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;->setContent(JLio/bidmachine/media3/extractor/text/Subtitle;J)V

    return-object v1

    :cond_2f
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/decoder/DecoderException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->dequeueOutputBuffer()Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .registers 3

    .line 412
    invoke-super {p0}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->flush()V

    const/4 v0, 0x0

    .line 413
    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    .line 414
    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->lastCues:Ljava/util/List;

    const/4 v0, 0x0

    .line 415
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->setCaptionMode(I)V

    const/4 v1, 0x4

    .line 416
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->setCaptionRowCount(I)V

    .line 417
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->resetCueBuilders()V

    .line 418
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->isCaptionValid:Z

    .line 419
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->repeatableControlSet:Z

    .line 420
    iput-byte v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->repeatableControlCc1:B

    .line 421
    iput-byte v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->repeatableControlCc2:B

    .line 422
    iput v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->currentChannel:I

    const/4 v0, 0x1

    .line 423
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->isInCaptionService:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 424
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->lastCueUpdateUs:J

    return-void
.end method

.method public final getDisplayCues()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/text/Cue;",
            ">;"
        }
    .end annotation

    .line 712
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 713
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    if-ge v4, v0, :cond_2c

    .line 715
    iget-object v5, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    const/high16 v6, -0x80000000

    invoke-virtual {v5, v6}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->build(I)Lio/bidmachine/media3/common/text/Cue;

    move-result-object v5

    .line 716
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_29

    .line 718
    iget v5, v5, Lio/bidmachine/media3/common/text/Cue;->positionAnchor:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 723
    :cond_2c
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_31
    if-ge v3, v0, :cond_57

    .line 725
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/bidmachine/media3/common/text/Cue;

    if-eqz v5, :cond_54

    .line 727
    iget v6, v5, Lio/bidmachine/media3/common/text/Cue;->positionAnchor:I

    if-eq v6, v2, :cond_51

    .line 729
    iget-object v5, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v5, v2}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->build(I)Lio/bidmachine/media3/common/text/Cue;

    move-result-object v5

    invoke-static {v5}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/bidmachine/media3/common/text/Cue;

    .line 731
    :cond_51
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_57
    return-object v4
.end method

.method public final handleMidrowCtrl(B)V
    .registers 4

    .line 598
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    shr-int/2addr p1, v1

    and-int/lit8 p1, p1, 0x7

    .line 603
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v1, p1, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->setStyle(IZ)V

    return-void
.end method

.method public final handleMiscCode(B)V
    .registers 6

    const/16 v0, 0x20

    const/4 v1, 0x2

    if-eq p1, v0, :cond_67

    const/16 v0, 0x29

    const/4 v2, 0x3

    if-eq p1, v0, :cond_63

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_6c

    .line 668
    iget v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->captionMode:I

    if-nez v1, :cond_13

    goto :goto_42

    :cond_13
    const/16 v3, 0x21

    if-eq p1, v3, :cond_47

    packed-switch p1, :pswitch_data_76

    goto :goto_42

    .line 683
    :pswitch_1b
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    .line 684
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->resetCueBuilders()V

    return-void

    .line 680
    :pswitch_25
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->resetCueBuilders()V

    return-void

    :pswitch_29
    if-ne v1, v0, :cond_42

    .line 689
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_42

    .line 690
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->rollUp()V

    return-void

    .line 674
    :pswitch_39
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    if-eq v1, v0, :cond_43

    if-ne v1, v2, :cond_42

    goto :goto_43

    :cond_42
    :goto_42
    return-void

    .line 676
    :cond_43
    :goto_43
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->resetCueBuilders()V

    return-void

    .line 694
    :cond_47
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->backspace()V

    return-void

    .line 654
    :pswitch_4d
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->setCaptionMode(I)V

    const/4 p1, 0x4

    .line 655
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->setCaptionRowCount(I)V

    return-void

    .line 650
    :pswitch_55
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->setCaptionMode(I)V

    .line 651
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->setCaptionRowCount(I)V

    return-void

    .line 646
    :pswitch_5c
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->setCaptionMode(I)V

    .line 647
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->setCaptionRowCount(I)V

    return-void

    .line 661
    :cond_63
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->setCaptionMode(I)V

    return-void

    .line 658
    :cond_67
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->setCaptionMode(I)V

    return-void

    nop

    :pswitch_data_6c
    .packed-switch 0x25
        :pswitch_5c
        :pswitch_55
        :pswitch_4d
    .end packed-switch

    :pswitch_data_76
    .packed-switch 0x2c
        :pswitch_39
        :pswitch_29
        :pswitch_25
        :pswitch_1b
    .end packed-switch
.end method

.method public final handlePreambleAddressCode(BB)V
    .registers 7

    .line 609
    sget-object v0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->ROW_INDICES:[I

    and-int/lit8 p1, p1, 0x7

    aget p1, v0, p1

    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_c

    add-int/lit8 p1, p1, 0x1

    .line 620
    :cond_c
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    invoke-static {v0}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->access$100(Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;)I

    move-result v0

    const/4 v1, 0x1

    if-eq p1, v0, :cond_36

    .line 621
    iget v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->captionMode:I

    if-eq v0, v1, :cond_31

    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    .line 622
    new-instance v0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    iget v2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->captionMode:I

    iget v3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->captionRowCount:I

    invoke-direct {v0, v2, v3}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;-><init>(II)V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    .line 623
    iget-object v2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    :cond_31
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    invoke-static {v0, p1}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->access$102(Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;I)I

    :cond_36
    and-int/lit8 p1, p2, 0x10

    const/4 v0, 0x0

    const/16 v2, 0x10

    if-ne p1, v2, :cond_3f

    move p1, v1

    goto :goto_40

    :cond_3f
    move p1, v0

    :goto_40
    and-int/lit8 v2, p2, 0x1

    if-ne v2, v1, :cond_45

    move v0, v1

    :cond_45
    shr-int/2addr p2, v1

    and-int/lit8 p2, p2, 0x7

    .line 636
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    if-eqz p1, :cond_4f

    const/16 v2, 0x8

    goto :goto_50

    :cond_4f
    move v2, p2

    :goto_50
    invoke-virtual {v1, v2, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->setStyle(IZ)V

    if-eqz p1, :cond_5e

    .line 639
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    sget-object v0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->COLUMN_INDICES:[I

    aget p2, v0, p2

    invoke-static {p1, p2}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->access$202(Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;I)I

    :cond_5e
    return-void
.end method

.method public isNewSubtitleDataAvailable()Z
    .registers 3

    .line 454
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->lastCues:Ljava/util/List;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final isRepeatedCommand(ZBB)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_20

    .line 574
    invoke-static {p2}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->isRepeatable(B)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 575
    iget-boolean p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->repeatableControlSet:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_19

    iget-byte p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->repeatableControlCc1:B

    if-ne p1, p2, :cond_19

    iget-byte p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->repeatableControlCc2:B

    if-ne p1, p3, :cond_19

    .line 577
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->repeatableControlSet:Z

    return v1

    .line 583
    :cond_19
    iput-boolean v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->repeatableControlSet:Z

    .line 584
    iput-byte p2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->repeatableControlCc1:B

    .line 585
    iput-byte p3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->repeatableControlCc2:B

    goto :goto_22

    .line 589
    :cond_20
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->repeatableControlSet:Z

    :goto_22
    return v0
.end method

.method public final maybeUpdateIsInCaptionService(BB)V
    .registers 5

    .line 776
    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->isXdsControlCode(B)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 777
    iput-boolean v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->isInCaptionService:Z

    return-void

    .line 778
    :cond_a
    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->isServiceSwitchCommand(B)Z

    move-result p1

    if-eqz p1, :cond_25

    const/16 p1, 0x20

    if-eq p2, p1, :cond_22

    const/16 p1, 0x2f

    if-eq p2, p1, :cond_22

    packed-switch p2, :pswitch_data_26

    packed-switch p2, :pswitch_data_30

    goto :goto_25

    .line 782
    :pswitch_1f
    iput-boolean v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->isInCaptionService:Z

    return-void

    :cond_22
    :pswitch_22
    const/4 p1, 0x1

    .line 790
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->isInCaptionService:Z

    :cond_25
    :goto_25
    return-void

    :pswitch_data_26
    .packed-switch 0x25
        :pswitch_22
        :pswitch_22
        :pswitch_22
    .end packed-switch

    :pswitch_data_30
    .packed-switch 0x29
        :pswitch_22
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
.end method

.method public bridge synthetic queueInputBuffer(Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    .line 51
    invoke-super {p0, p1}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->queueInputBuffer(Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;)V

    return-void
.end method

.method public release()V
    .registers 1

    .line 0
    return-void
.end method

.method public final resetCueBuilders()V
    .registers 3

    .line 770
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    iget v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->captionMode:I

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->reset(I)V

    .line 771
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 772
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setCaptionMode(I)V
    .registers 4

    .line 739
    iget v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->captionMode:I

    if-ne v0, p1, :cond_5

    goto :goto_2c

    .line 744
    :cond_5
    iput p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->captionMode:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_21

    const/4 v0, 0x0

    .line 748
    :goto_b
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 749
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v1, p1}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->setCaptionMode(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 755
    :cond_21
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->resetCueBuilders()V

    if-eq v0, v1, :cond_2d

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2d

    if-nez p1, :cond_2c

    goto :goto_2d

    :cond_2c
    :goto_2c
    return-void

    .line 760
    :cond_2d
    :goto_2d
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    return-void
.end method

.method public final setCaptionRowCount(I)V
    .registers 3

    .line 765
    iput p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->captionRowCount:I

    .line 766
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->currentCueBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->setCaptionRowCount(I)V

    return-void
.end method

.method public bridge synthetic setPositionUs(J)V
    .registers 3

    .line 51
    invoke-super {p0, p1, p2}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->setPositionUs(J)V

    return-void
.end method

.method public final shouldClearStuckCaptions()Z
    .registers 7

    .line 1156
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->validDataChannelTimeoutUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    iget-wide v4, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->lastCueUpdateUs:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_13

    goto :goto_22

    .line 1159
    :cond_13
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->getPositionUs()J

    move-result-wide v2

    iget-wide v4, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->lastCueUpdateUs:J

    sub-long/2addr v2, v4

    .line 1160
    iget-wide v4, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->validDataChannelTimeoutUs:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_22

    const/4 v0, 0x1

    return v0

    :cond_22
    :goto_22
    return v1
.end method

.method public final updateAndVerifyCurrentChannel(B)Z
    .registers 3

    .line 564
    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->isCtrlCode(B)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 565
    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->getChannel(B)I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->currentChannel:I

    .line 567
    :cond_c
    iget p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->currentChannel:I

    iget v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->selectedChannel:I

    if-ne p1, v0, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

###### Class io.bidmachine.media3.extractor.text.cea.Cea608Decoder.CueBuilder (io.bidmachine.media3.extractor.text.cea.Cea608Decoder$CueBuilder)
.class public final Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;
.super Ljava/lang/Object;
.source "Cea608Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CueBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;
    }
.end annotation


# instance fields
.field public captionMode:I

.field public captionRowCount:I

.field public final captionStringBuilder:Ljava/lang/StringBuilder;

.field public final cueStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;",
            ">;"
        }
    .end annotation
.end field

.field public indent:I

.field public final rolledUpCaptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field

.field public row:I

.field public tabOffset:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 906
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    .line 907
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    .line 909
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->reset(I)V

    .line 910
    iput p2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionRowCount:I

    return-void
.end method

.method public static synthetic access$002(Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;I)I
    .registers 2

    .line 888
    iput p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->tabOffset:I

    return p1
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;)I
    .registers 1

    .line 888
    iget p0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->row:I

    return p0
.end method

.method public static synthetic access$102(Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;I)I
    .registers 2

    .line 888
    iput p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->row:I

    return p1
.end method

.method public static synthetic access$202(Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;I)I
    .registers 2

    .line 888
    iput p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->indent:I

    return p1
.end method

.method public static setColorSpan(Landroid/text/SpannableStringBuilder;III)V
    .registers 5

    const/4 v0, -0x1

    if-ne p3, v0, :cond_4

    return-void

    .line 1136
    :cond_4
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 p3, 0x21

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public static setItalicSpan(Landroid/text/SpannableStringBuilder;II)V
    .registers 5

    .line 1127
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v1, 0x21

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public static setUnderlineSpan(Landroid/text/SpannableStringBuilder;II)V
    .registers 5

    .line 1123
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/16 v1, 0x21

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method


# virtual methods
.method public append(C)V
    .registers 4

    .line 960
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_f

    .line 961
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_f
    return-void
.end method

.method public backspace()V
    .registers 5

    .line 942
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2c

    .line 944
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 946
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_17
    if-ltz v1, :cond_2c

    .line 947
    iget-object v2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;

    .line 948
    iget v3, v2, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;->start:I

    if-ne v3, v0, :cond_2c

    add-int/lit8 v3, v3, -0x1

    .line 949
    iput v3, v2, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;->start:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_2c
    return-void
.end method

.method public build(I)Lio/bidmachine/media3/common/text/Cue;
    .registers 10

    .line 977
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 979
    :goto_7
    iget-object v3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 980
    iget-object v3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v3, 0xa

    .line 981
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 984
    :cond_22
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->buildCurrentLine()Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 986
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_31

    const/4 p1, 0x0

    return-object p1

    .line 993
    :cond_31
    iget v2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->indent:I

    iget v3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->tabOffset:I

    add-int/2addr v2, v3

    rsub-int/lit8 v3, v2, 0x20

    .line 995
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v4, v2, v3

    const/high16 v5, -0x80000000

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq p1, v5, :cond_46

    goto :goto_5e

    .line 999
    :cond_46
    iget p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionMode:I

    if-ne p1, v6, :cond_55

    .line 1000
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 v5, 0x3

    if-lt p1, v5, :cond_53

    if-gez v3, :cond_55

    :cond_53
    move p1, v7

    goto :goto_5e

    .line 1005
    :cond_55
    iget p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionMode:I

    if-ne p1, v6, :cond_5d

    if-lez v4, :cond_5d

    move p1, v6

    goto :goto_5e

    :cond_5d
    move p1, v1

    :goto_5e
    if-eq p1, v7, :cond_72

    const v1, 0x3dcccccd    # 0.1f

    const v4, 0x3f4ccccd    # 0.8f

    const/high16 v5, 0x42000000    # 32.0f

    if-eq p1, v6, :cond_6f

    :goto_6a
    int-to-float v2, v2

    div-float/2addr v2, v5

    mul-float/2addr v2, v4

    add-float/2addr v2, v1

    goto :goto_74

    :cond_6f
    rsub-int/lit8 v2, v3, 0x20

    goto :goto_6a

    :cond_72
    const/high16 v2, 0x3f000000    # 0.5f

    .line 1033
    :goto_74
    iget v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->row:I

    const/4 v3, 0x7

    if-le v1, v3, :cond_7c

    add-int/lit8 v1, v1, -0x11

    goto :goto_84

    .line 1044
    :cond_7c
    iget v3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionMode:I

    if-ne v3, v7, :cond_84

    iget v3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionRowCount:I

    sub-int/2addr v3, v7

    sub-int/2addr v1, v3

    .line 1047
    :cond_84
    :goto_84
    new-instance v3, Lio/bidmachine/media3/common/text/Cue$Builder;

    invoke-direct {v3}, Lio/bidmachine/media3/common/text/Cue$Builder;-><init>()V

    .line 1048
    invoke-virtual {v3, v0}, Lio/bidmachine/media3/common/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v0

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 1049
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/text/Cue$Builder;->setTextAlignment(Landroid/text/Layout$Alignment;)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v0

    int-to-float v1, v1

    .line 1050
    invoke-virtual {v0, v1, v7}, Lio/bidmachine/media3/common/text/Cue$Builder;->setLine(FI)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v0

    .line 1051
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/text/Cue$Builder;->setPosition(F)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v0

    .line 1052
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setPositionAnchor(I)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object p1

    .line 1053
    invoke-virtual {p1}, Lio/bidmachine/media3/common/text/Cue$Builder;->build()Lio/bidmachine/media3/common/text/Cue;

    move-result-object p1

    return-object p1
.end method

.method public final buildCurrentLine()Landroid/text/SpannableString;
    .registers 16

    .line 1057
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1058
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v5, v2

    move v6, v5

    move v8, v6

    move v9, v8

    move v4, v3

    move v7, v4

    move v10, v7

    .line 1068
    :cond_14
    :goto_14
    iget-object v11, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_7b

    .line 1069
    iget-object v11, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;

    .line 1070
    iget-boolean v12, v11, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;->underline:Z

    .line 1071
    iget v13, v11, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;->style:I

    const/16 v14, 0x8

    if-eq v13, v14, :cond_3c

    const/4 v10, 0x7

    if-ne v13, v10, :cond_31

    const/4 v14, 0x1

    goto :goto_32

    :cond_31
    move v14, v3

    :goto_32
    if-ne v13, v10, :cond_35

    goto :goto_3b

    .line 1076
    :cond_35
    invoke-static {}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder;->access$300()[I

    move-result-object v9

    aget v9, v9, v13

    :goto_3b
    move v10, v14

    .line 1079
    :cond_3c
    iget v11, v11, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;->start:I

    add-int/lit8 v4, v4, 0x1

    .line 1080
    iget-object v13, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v4, v13, :cond_53

    iget-object v13, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;

    iget v13, v13, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;->start:I

    goto :goto_54

    :cond_53
    move v13, v1

    :goto_54
    if-ne v11, v13, :cond_57

    goto :goto_14

    :cond_57
    if-eq v5, v2, :cond_60

    if-nez v12, :cond_60

    .line 1088
    invoke-static {v0, v5, v11}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->setUnderlineSpan(Landroid/text/SpannableStringBuilder;II)V

    move v5, v2

    goto :goto_65

    :cond_60
    if-ne v5, v2, :cond_65

    if-eqz v12, :cond_65

    move v5, v11

    :cond_65
    :goto_65
    if-eq v6, v2, :cond_6e

    if-nez v10, :cond_6e

    .line 1095
    invoke-static {v0, v6, v11}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->setItalicSpan(Landroid/text/SpannableStringBuilder;II)V

    move v6, v2

    goto :goto_73

    :cond_6e
    if-ne v6, v2, :cond_73

    if-eqz v10, :cond_73

    move v6, v11

    :cond_73
    :goto_73
    if-eq v9, v8, :cond_14

    .line 1102
    invoke-static {v0, v7, v11, v8}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->setColorSpan(Landroid/text/SpannableStringBuilder;III)V

    move v8, v9

    move v7, v11

    goto :goto_14

    :cond_7b
    if-eq v5, v2, :cond_82

    if-eq v5, v1, :cond_82

    .line 1110
    invoke-static {v0, v5, v1}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->setUnderlineSpan(Landroid/text/SpannableStringBuilder;II)V

    :cond_82
    if-eq v6, v2, :cond_89

    if-eq v6, v1, :cond_89

    .line 1113
    invoke-static {v0, v6, v1}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->setItalicSpan(Landroid/text/SpannableStringBuilder;II)V

    :cond_89
    if-eq v7, v1, :cond_8e

    .line 1116
    invoke-static {v0, v7, v1, v8}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->setColorSpan(Landroid/text/SpannableStringBuilder;III)V

    .line 1119
    :cond_8e
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method public isEmpty()Z
    .registers 2

    .line 924
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 925
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    .line 926
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public reset(I)V
    .registers 3

    .line 914
    iput p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionMode:I

    .line 915
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 916
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 917
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 p1, 0xf

    .line 918
    iput p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->row:I

    .line 919
    iput v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->indent:I

    .line 920
    iput v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->tabOffset:I

    return-void
.end method

.method public rollUp()V
    .registers 4

    .line 966
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->buildCurrentLine()Landroid/text/SpannableString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 967
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 968
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 969
    iget v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionRowCount:I

    iget v2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->row:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 970
    :goto_1c
    iget-object v2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v0, :cond_2a

    .line 971
    iget-object v2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1c

    :cond_2a
    return-void
.end method

.method public setCaptionMode(I)V
    .registers 2

    .line 930
    iput p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionMode:I

    return-void
.end method

.method public setCaptionRowCount(I)V
    .registers 2

    .line 934
    iput p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionRowCount:I

    return-void
.end method

.method public setStyle(IZ)V
    .registers 6

    .line 938
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    new-instance v1, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;

    iget-object v2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-direct {v1, p1, p2, v2}, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;-><init>(IZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

###### Class io.bidmachine.media3.extractor.text.cea.Cea608Decoder.CueBuilder.CueStyle (io.bidmachine.media3.extractor.text.cea.Cea608Decoder$CueBuilder$CueStyle)
.class public Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;
.super Ljava/lang/Object;
.source "Cea608Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CueStyle"
.end annotation


# instance fields
.field public start:I

.field public final style:I

.field public final underline:Z


# direct methods
.method public constructor <init>(IZI)V
    .registers 4

    .line 1146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1147
    iput p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;->style:I

    .line 1148
    iput-boolean p2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;->underline:Z

    .line 1149
    iput p3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea608Decoder$CueBuilder$CueStyle;->start:I

    return-void
.end method
