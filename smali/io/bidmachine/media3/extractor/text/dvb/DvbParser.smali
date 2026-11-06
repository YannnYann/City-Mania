###### Class io.bidmachine.media3.extractor.text.dvb.DvbParser (io.bidmachine.media3.extractor.text.dvb.DvbParser)
.class public final Lio/bidmachine/media3/extractor/text/dvb/DvbParser;
.super Ljava/lang/Object;
.source "DvbParser.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/text/SubtitleParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/text/dvb/DvbParser$DisplayDefinition;,
        Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ClutDefinition;,
        Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;,
        Lio/bidmachine/media3/extractor/text/dvb/DvbParser$PageComposition;,
        Lio/bidmachine/media3/extractor/text/dvb/DvbParser$PageRegion;,
        Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;,
        Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionObject;,
        Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ObjectData;
    }
.end annotation


# static fields
.field public static final defaultMap2To4:[B

.field public static final defaultMap2To8:[B

.field public static final defaultMap4To8:[B


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public final canvas:Landroid/graphics/Canvas;

.field public final defaultClutDefinition:Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ClutDefinition;

.field public final defaultDisplayDefinition:Lio/bidmachine/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

.field public final defaultPaint:Landroid/graphics/Paint;

.field public final fillRegionPaint:Landroid/graphics/Paint;

.field public final subtitleService:Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x4

    .line 89
    new-array v1, v0, [B

    fill-array-data v1, :array_1a

    sput-object v1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->defaultMap2To4:[B

    .line 90
    new-array v0, v0, [B

    fill-array-data v0, :array_20

    sput-object v0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->defaultMap2To8:[B

    const/16 v0, 0x10

    .line 91
    new-array v0, v0, [B

    fill-array-data v0, :array_26

    sput-object v0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->defaultMap4To8:[B

    return-void

    nop

    :array_1a
    .array-data 1
        0x0t
        0x7t
        0x8t
        0xft
    .end array-data

    :array_20
    .array-data 1
        0x0t
        0x77t
        -0x78t
        -0x1t
    .end array-data

    :array_26
    .array-data 1
        0x0t
        0x11t
        0x22t
        0x33t
        0x44t
        0x55t
        0x66t
        0x77t
        -0x78t
        -0x67t
        -0x56t
        -0x45t
        -0x34t
        -0x23t
        -0x12t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 115
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p1

    .line 116
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 117
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    .line 118
    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v3, 0x0

    .line 120
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 121
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    .line 122
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 124
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 125
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iput-object v2, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    .line 126
    new-instance v3, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

    const/4 v8, 0x0

    const/16 v9, 0x23f

    const/16 v4, 0x2cf

    const/16 v5, 0x23f

    const/4 v6, 0x0

    const/16 v7, 0x2cf

    invoke-direct/range {v3 .. v9}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$DisplayDefinition;-><init>(IIIIII)V

    iput-object v3, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->defaultDisplayDefinition:Lio/bidmachine/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

    .line 127
    new-instance v2, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    .line 130
    invoke-static {}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->generateDefault2BitClutEntries()[I

    move-result-object v3

    .line 131
    invoke-static {}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->generateDefault4BitClutEntries()[I

    move-result-object v4

    .line 132
    invoke-static {}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->generateDefault8BitClutEntries()[I

    move-result-object v5

    invoke-direct {v2, v1, v3, v4, v5}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ClutDefinition;-><init>(I[I[I[I)V

    iput-object v2, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->defaultClutDefinition:Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    .line 133
    new-instance v1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;

    invoke-direct {v1, p1, v0}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;-><init>(II)V

    iput-object v1, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->subtitleService:Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;

    return-void
.end method

.method public static buildClutMapTable(IILio/bidmachine/media3/common/util/ParsableBitArray;)[B
    .registers 6

    .line 926
    new-array v0, p0, [B

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p0, :cond_f

    .line 928
    invoke-virtual {p2, p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_f
    return-object v0
.end method

.method public static generateDefault2BitClutEntries()[I
    .registers 4

    const/high16 v0, -0x1000000

    const v1, -0x808081

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 584
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    return-object v0
.end method

.method public static generateDefault4BitClutEntries()[I
    .registers 9

    const/16 v0, 0x10

    .line 589
    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 590
    aput v2, v1, v2

    const/4 v3, 0x1

    :goto_8
    if-ge v3, v0, :cond_4b

    const/16 v4, 0x8

    const/16 v5, 0xff

    if-ge v3, v4, :cond_2c

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_16

    move v4, v5

    goto :goto_17

    :cond_16
    move v4, v2

    :goto_17
    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_1d

    move v6, v5

    goto :goto_1e

    :cond_1d
    move v6, v2

    :goto_1e
    and-int/lit8 v7, v3, 0x4

    if-eqz v7, :cond_24

    move v7, v5

    goto :goto_25

    :cond_24
    move v7, v2

    .line 594
    :goto_25
    invoke-static {v5, v4, v6, v7}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    goto :goto_48

    :cond_2c
    and-int/lit8 v4, v3, 0x1

    const/16 v6, 0x7f

    if-eqz v4, :cond_34

    move v4, v6

    goto :goto_35

    :cond_34
    move v4, v2

    :goto_35
    and-int/lit8 v7, v3, 0x2

    if-eqz v7, :cond_3b

    move v7, v6

    goto :goto_3c

    :cond_3b
    move v7, v2

    :goto_3c
    and-int/lit8 v8, v3, 0x4

    if-eqz v8, :cond_41

    goto :goto_42

    :cond_41
    move v6, v2

    .line 601
    :goto_42
    invoke-static {v5, v4, v7, v6}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    :goto_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_4b
    return-object v1
.end method

.method public static generateDefault8BitClutEntries()[I
    .registers 11

    const/16 v0, 0x100

    .line 612
    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 613
    aput v2, v1, v2

    move v3, v2

    :goto_8
    if-ge v3, v0, :cond_116

    const/16 v4, 0x8

    const/16 v5, 0xff

    if-ge v3, v4, :cond_2e

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_16

    move v4, v5

    goto :goto_17

    :cond_16
    move v4, v2

    :goto_17
    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_1d

    move v6, v5

    goto :goto_1e

    :cond_1d
    move v6, v2

    :goto_1e
    and-int/lit8 v7, v3, 0x4

    if-eqz v7, :cond_23

    goto :goto_24

    :cond_23
    move v5, v2

    :goto_24
    const/16 v7, 0x3f

    .line 617
    invoke-static {v7, v4, v6, v5}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    goto/16 :goto_112

    :cond_2e
    and-int/lit16 v6, v3, 0x88

    const/16 v7, 0xaa

    const/16 v8, 0x55

    if-eqz v6, :cond_e1

    const/16 v9, 0x7f

    if-eq v6, v4, :cond_af

    const/16 v4, 0x80

    const/16 v7, 0x2b

    if-eq v6, v4, :cond_79

    const/16 v4, 0x88

    if-eq v6, v4, :cond_46

    goto/16 :goto_112

    :cond_46
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_4c

    move v4, v7

    goto :goto_4d

    :cond_4c
    move v4, v2

    :goto_4d
    and-int/lit8 v6, v3, 0x10

    if-eqz v6, :cond_53

    move v6, v8

    goto :goto_54

    :cond_53
    move v6, v2

    :goto_54
    add-int/2addr v4, v6

    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_5b

    move v6, v7

    goto :goto_5c

    :cond_5b
    move v6, v2

    :goto_5c
    and-int/lit8 v9, v3, 0x20

    if-eqz v9, :cond_62

    move v9, v8

    goto :goto_63

    :cond_62
    move v9, v2

    :goto_63
    add-int/2addr v6, v9

    and-int/lit8 v9, v3, 0x4

    if-eqz v9, :cond_69

    goto :goto_6a

    :cond_69
    move v7, v2

    :goto_6a
    and-int/lit8 v9, v3, 0x40

    if-eqz v9, :cond_6f

    goto :goto_70

    :cond_6f
    move v8, v2

    :goto_70
    add-int/2addr v7, v8

    .line 650
    invoke-static {v5, v4, v6, v7}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    goto/16 :goto_112

    :cond_79
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_7f

    move v4, v7

    goto :goto_80

    :cond_7f
    move v4, v2

    :goto_80
    add-int/2addr v4, v9

    and-int/lit8 v6, v3, 0x10

    if-eqz v6, :cond_87

    move v6, v8

    goto :goto_88

    :cond_87
    move v6, v2

    :goto_88
    add-int/2addr v4, v6

    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_8f

    move v6, v7

    goto :goto_90

    :cond_8f
    move v6, v2

    :goto_90
    add-int/2addr v6, v9

    and-int/lit8 v10, v3, 0x20

    if-eqz v10, :cond_97

    move v10, v8

    goto :goto_98

    :cond_97
    move v10, v2

    :goto_98
    add-int/2addr v6, v10

    and-int/lit8 v10, v3, 0x4

    if-eqz v10, :cond_9e

    goto :goto_9f

    :cond_9e
    move v7, v2

    :goto_9f
    add-int/2addr v7, v9

    and-int/lit8 v9, v3, 0x40

    if-eqz v9, :cond_a5

    goto :goto_a6

    :cond_a5
    move v8, v2

    :goto_a6
    add-int/2addr v7, v8

    .line 642
    invoke-static {v5, v4, v6, v7}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    goto/16 :goto_112

    :cond_af
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_b5

    move v4, v8

    goto :goto_b6

    :cond_b5
    move v4, v2

    :goto_b6
    and-int/lit8 v5, v3, 0x10

    if-eqz v5, :cond_bc

    move v5, v7

    goto :goto_bd

    :cond_bc
    move v5, v2

    :goto_bd
    add-int/2addr v4, v5

    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_c4

    move v5, v8

    goto :goto_c5

    :cond_c4
    move v5, v2

    :goto_c5
    and-int/lit8 v6, v3, 0x20

    if-eqz v6, :cond_cb

    move v6, v7

    goto :goto_cc

    :cond_cb
    move v6, v2

    :goto_cc
    add-int/2addr v5, v6

    and-int/lit8 v6, v3, 0x4

    if-eqz v6, :cond_d2

    goto :goto_d3

    :cond_d2
    move v8, v2

    :goto_d3
    and-int/lit8 v6, v3, 0x40

    if-eqz v6, :cond_d8

    goto :goto_d9

    :cond_d8
    move v7, v2

    :goto_d9
    add-int/2addr v8, v7

    .line 634
    invoke-static {v9, v4, v5, v8}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    goto :goto_112

    :cond_e1
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_e7

    move v4, v8

    goto :goto_e8

    :cond_e7
    move v4, v2

    :goto_e8
    and-int/lit8 v6, v3, 0x10

    if-eqz v6, :cond_ee

    move v6, v7

    goto :goto_ef

    :cond_ee
    move v6, v2

    :goto_ef
    add-int/2addr v4, v6

    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_f6

    move v6, v8

    goto :goto_f7

    :cond_f6
    move v6, v2

    :goto_f7
    and-int/lit8 v9, v3, 0x20

    if-eqz v9, :cond_fd

    move v9, v7

    goto :goto_fe

    :cond_fd
    move v9, v2

    :goto_fe
    add-int/2addr v6, v9

    and-int/lit8 v9, v3, 0x4

    if-eqz v9, :cond_104

    goto :goto_105

    :cond_104
    move v8, v2

    :goto_105
    and-int/lit8 v9, v3, 0x40

    if-eqz v9, :cond_10a

    goto :goto_10b

    :cond_10a
    move v7, v2

    :goto_10b
    add-int/2addr v8, v7

    .line 626
    invoke-static {v5, v4, v6, v8}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    :goto_112
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    :cond_116
    return-object v1
.end method

.method public static getColor(IIII)I
    .registers 4

    .line 0
    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p3

    return p0
.end method

.method public static paint2BitPixelCodeString(Lio/bidmachine/media3/common/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .registers 16

    const/4 v6, 0x0

    move v0, v6

    :goto_2
    const/4 v1, 0x2

    .line 786
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_d

    move v7, v0

    move v8, v3

    goto :goto_59

    .line 790
    :cond_d
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    const/4 v4, 0x3

    if-eqz v2, :cond_21

    .line 791
    invoke-virtual {p0, v4}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    add-int/2addr v2, v4

    .line 792
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    :goto_1d
    move v7, v0

    move v8, v2

    move v2, v1

    goto :goto_59

    .line 793
    :cond_21
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_2b

    move v7, v0

    move v8, v3

    :goto_29
    move v2, v6

    goto :goto_59

    .line 796
    :cond_2b
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    if-eqz v2, :cond_57

    if-eq v2, v3, :cond_54

    if-eq v2, v1, :cond_48

    if-eq v2, v4, :cond_3b

    move v7, v0

    :goto_38
    move v2, v6

    move v8, v2

    goto :goto_59

    :cond_3b
    const/16 v2, 0x8

    .line 808
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1d

    .line 809
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    goto :goto_1d

    :cond_48
    const/4 v2, 0x4

    .line 804
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    .line 805
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    goto :goto_1d

    :cond_54
    move v7, v0

    move v8, v1

    goto :goto_29

    :cond_57
    move v7, v3

    goto :goto_38

    :goto_59
    if-eqz v8, :cond_73

    if-eqz p5, :cond_73

    if-eqz p2, :cond_61

    .line 815
    aget-byte v2, p2, v2

    :cond_61
    aget v0, p1, v2

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, p3

    int-to-float v2, p4

    add-int v0, p3, v8

    int-to-float v0, v0

    add-int/2addr v3, p4

    int-to-float v4, v3

    move-object v5, p5

    move v3, v0

    move-object v0, p6

    .line 816
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_73
    add-int/2addr p3, v8

    if-eqz v7, :cond_77

    return p3

    :cond_77
    move v0, v7

    goto :goto_2
.end method

.method public static paint4BitPixelCodeString(Lio/bidmachine/media3/common/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .registers 16

    const/4 v6, 0x0

    move v0, v6

    :goto_2
    const/4 v1, 0x4

    .line 838
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_e

    move v7, v0

    move v8, v3

    goto/16 :goto_66

    .line 842
    :cond_e
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    const/4 v4, 0x3

    if-nez v2, :cond_25

    .line 843
    invoke-virtual {p0, v4}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    if-eqz v1, :cond_21

    add-int/lit8 v1, v1, 0x2

    move v7, v0

    move v8, v1

    :goto_1f
    move v2, v6

    goto :goto_66

    :cond_21
    move v7, v3

    :goto_22
    move v2, v6

    move v8, v2

    goto :goto_66

    .line 850
    :cond_25
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    const/4 v7, 0x2

    if-nez v2, :cond_39

    .line 851
    invoke-virtual {p0, v7}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 852
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    :goto_35
    move v7, v0

    move v8, v2

    move v2, v1

    goto :goto_66

    .line 854
    :cond_39
    invoke-virtual {p0, v7}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    if-eqz v2, :cond_63

    if-eq v2, v3, :cond_5f

    if-eq v2, v7, :cond_54

    if-eq v2, v4, :cond_47

    move v7, v0

    goto :goto_22

    :cond_47
    const/16 v2, 0x8

    .line 866
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x19

    .line 867
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    goto :goto_35

    .line 862
    :cond_54
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x9

    .line 863
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    goto :goto_35

    :cond_5f
    move v2, v6

    move v8, v7

    move v7, v0

    goto :goto_66

    :cond_63
    move v7, v0

    move v8, v3

    goto :goto_1f

    :goto_66
    if-eqz v8, :cond_80

    if-eqz p5, :cond_80

    if-eqz p2, :cond_6e

    .line 873
    aget-byte v2, p2, v2

    :cond_6e
    aget v0, p1, v2

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, p3

    int-to-float v2, p4

    add-int v0, p3, v8

    int-to-float v0, v0

    add-int/2addr v3, p4

    int-to-float v4, v3

    move-object v5, p5

    move v3, v0

    move-object v0, p6

    .line 874
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_80
    add-int/2addr p3, v8

    if-eqz v7, :cond_84

    return p3

    :cond_84
    move v0, v7

    goto/16 :goto_2
.end method

.method public static paint8BitPixelCodeString(Lio/bidmachine/media3/common/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .registers 16

    const/4 v6, 0x0

    move v0, v6

    :goto_2
    const/16 v1, 0x8

    .line 896
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_e

    move v7, v0

    move v8, v3

    goto :goto_2e

    .line 901
    :cond_e
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    const/4 v4, 0x7

    if-nez v2, :cond_23

    .line 902
    invoke-virtual {p0, v4}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    if-eqz v1, :cond_1f

    move v7, v0

    move v8, v1

    move v2, v6

    goto :goto_2e

    :cond_1f
    move v7, v3

    move v2, v6

    move v8, v2

    goto :goto_2e

    .line 910
    :cond_23
    invoke-virtual {p0, v4}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 911
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    move v7, v0

    move v8, v2

    move v2, v1

    :goto_2e
    if-eqz v8, :cond_48

    if-eqz p5, :cond_48

    if-eqz p2, :cond_36

    .line 916
    aget-byte v2, p2, v2

    :cond_36
    aget v0, p1, v2

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, p3

    int-to-float v2, p4

    add-int v0, p3, v8

    int-to-float v0, v0

    add-int/2addr v3, p4

    int-to-float v4, v3

    move-object v5, p5

    move v3, v0

    move-object v0, p6

    .line 917
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_48
    add-int/2addr p3, v8

    if-eqz v7, :cond_4c

    return p3

    :cond_4c
    move v0, v7

    goto :goto_2
.end method

.method public static paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .registers 16

    .line 712
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-direct {v0, p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;-><init>([B)V

    const/4 p0, 0x0

    move-object v7, p0

    move-object v8, v7

    move v3, p3

    move v4, p4

    move-object p4, v8

    .line 719
    :goto_b
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v1

    if-eqz v1, :cond_88

    const/16 v1, 0x8

    .line 720
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/16 v5, 0xf0

    if-eq v2, v5, :cond_7e

    const/4 v5, 0x3

    packed-switch v2, :pswitch_data_8a

    const/4 v5, 0x4

    packed-switch v2, :pswitch_data_94

    :goto_23
    move-object v1, p1

    move-object v5, p5

    move-object v6, p6

    goto/16 :goto_84

    :pswitch_28
    const/16 v2, 0x10

    .line 760
    invoke-static {v2, v1, v0}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->buildClutMapTable(IILio/bidmachine/media3/common/util/ParsableBitArray;)[B

    move-result-object v7

    goto :goto_23

    .line 757
    :pswitch_2f
    invoke-static {v5, v1, v0}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->buildClutMapTable(IILio/bidmachine/media3/common/util/ParsableBitArray;)[B

    move-result-object p4

    goto :goto_23

    .line 754
    :pswitch_34
    invoke-static {v5, v5, v0}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->buildClutMapTable(IILio/bidmachine/media3/common/util/ParsableBitArray;)[B

    move-result-object v8

    goto :goto_23

    :pswitch_39
    const/4 v2, 0x0

    move-object v1, p1

    move-object v5, p5

    move-object v6, p6

    .line 750
    invoke-static/range {v0 .. v6}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->paint8BitPixelCodeString(Lio/bidmachine/media3/common/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v3

    goto/16 :goto_84

    :pswitch_43
    move-object v1, p1

    move-object p1, p5

    move-object v6, p6

    if-ne p2, v5, :cond_51

    if-nez v7, :cond_4d

    .line 739
    sget-object p5, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->defaultMap4To8:[B

    goto :goto_4e

    :cond_4d
    move-object p5, v7

    :goto_4e
    move-object v2, p5

    :goto_4f
    move-object v5, p1

    goto :goto_53

    :cond_51
    move-object v2, p0

    goto :goto_4f

    .line 744
    :goto_53
    invoke-static/range {v0 .. v6}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->paint4BitPixelCodeString(Lio/bidmachine/media3/common/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v3

    move-object p1, v5

    .line 746
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->byteAlign()V

    goto :goto_84

    :pswitch_5c
    move-object v1, p1

    move-object p1, p5

    move-object v6, p6

    if-ne p2, v5, :cond_6a

    if-nez p4, :cond_66

    .line 725
    sget-object p5, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->defaultMap2To8:[B

    goto :goto_67

    :cond_66
    move-object p5, p4

    :goto_67
    move-object v5, p1

    move-object v2, p5

    goto :goto_76

    :cond_6a
    const/4 p5, 0x2

    if-ne p2, p5, :cond_74

    if-nez v8, :cond_72

    .line 727
    sget-object p5, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->defaultMap2To4:[B

    goto :goto_67

    :cond_72
    move-object p5, v8

    goto :goto_67

    :cond_74
    move-object v2, p0

    move-object v5, p1

    .line 732
    :goto_76
    invoke-static/range {v0 .. v6}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->paint2BitPixelCodeString(Lio/bidmachine/media3/common/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v3

    .line 734
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->byteAlign()V

    goto :goto_84

    :cond_7e
    move-object v1, p1

    move-object v5, p5

    move-object v6, p6

    add-int/lit8 v4, v4, 0x2

    move v3, p3

    :goto_84
    move-object p1, v1

    move-object p5, v5

    move-object p6, v6

    goto :goto_b

    :cond_88
    return-void

    nop

    :pswitch_data_8a
    .packed-switch 0x10
        :pswitch_5c
        :pswitch_43
        :pswitch_39
    .end packed-switch

    :pswitch_data_94
    .packed-switch 0x20
        :pswitch_34
        :pswitch_2f
        :pswitch_28
    .end packed-switch
.end method

.method public static paintPixelDataSubBlocks(Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ObjectData;Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ClutDefinition;IIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .registers 14

    const/4 v0, 0x3

    if-ne p2, v0, :cond_7

    .line 679
    iget-object p1, p1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ClutDefinition;->clutEntries8Bit:[I

    :goto_5
    move-object v1, p1

    goto :goto_10

    :cond_7
    const/4 v0, 0x2

    if-ne p2, v0, :cond_d

    .line 681
    iget-object p1, p1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ClutDefinition;->clutEntries4Bit:[I

    goto :goto_5

    .line 683
    :cond_d
    iget-object p1, p1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ClutDefinition;->clutEntries2Bit:[I

    goto :goto_5

    .line 685
    :goto_10
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ObjectData;->topFieldData:[B

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 693
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ObjectData;->bottomFieldData:[B

    add-int/lit8 v4, v4, 0x1

    invoke-static/range {v0 .. v6}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public static parseClutDefinition(Lio/bidmachine/media3/common/util/ParsableBitArray;I)Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ClutDefinition;
    .registers 26

    move-object/from16 v0, p0

    const/16 v1, 0x8

    .line 481
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 482
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/4 v3, 0x2

    add-int/lit8 v4, p1, -0x2

    .line 485
    invoke-static {}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->generateDefault2BitClutEntries()[I

    move-result-object v5

    .line 486
    invoke-static {}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->generateDefault4BitClutEntries()[I

    move-result-object v6

    .line 487
    invoke-static {}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->generateDefault8BitClutEntries()[I

    move-result-object v7

    :goto_1a
    if-lez v4, :cond_c3

    .line 490
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 491
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    and-int/lit16 v10, v9, 0x80

    if-eqz v10, :cond_2a

    move-object v10, v5

    goto :goto_31

    :cond_2a
    and-int/lit8 v10, v9, 0x40

    if-eqz v10, :cond_30

    move-object v10, v6

    goto :goto_31

    :cond_30
    move-object v10, v7

    :goto_31
    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_48

    .line 508
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 509
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 510
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 511
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v13

    add-int/lit8 v4, v4, -0x6

    goto :goto_68

    :cond_48
    const/4 v9, 0x6

    .line 514
    invoke-virtual {v0, v9}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    shl-int/2addr v11, v3

    const/4 v12, 0x4

    .line 515
    invoke-virtual {v0, v12}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v13

    shl-int/2addr v13, v12

    .line 516
    invoke-virtual {v0, v12}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v14

    shl-int/lit8 v12, v14, 0x4

    .line 517
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v14

    shl-int/lit8 v9, v14, 0x6

    add-int/lit8 v4, v4, -0x4

    move/from16 v23, v13

    move v13, v9

    move v9, v11

    move/from16 v11, v23

    :goto_68
    const/16 v15, 0xff

    if-nez v9, :cond_6f

    move v13, v15

    const/4 v11, 0x0

    const/4 v12, 0x0

    :cond_6f
    and-int/2addr v13, v15

    rsub-int v13, v13, 0xff

    int-to-byte v13, v13

    move/from16 p1, v4

    int-to-double v3, v9

    add-int/lit8 v11, v11, -0x80

    move/from16 v16, v2

    int-to-double v1, v11

    const-wide v17, 0x3ff66e978d4fdf3bL    # 1.402

    mul-double v17, v17, v1

    move-object v11, v10

    add-double v9, v3, v17

    double-to-int v9, v9

    add-int/lit8 v12, v12, -0x80

    int-to-double v14, v12

    const-wide v19, 0x3fd60663c74fb54aL    # 0.34414

    mul-double v19, v19, v14

    sub-double v19, v3, v19

    const-wide v21, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double v1, v1, v21

    sub-double v1, v19, v1

    double-to-int v1, v1

    const-wide v19, 0x3ffc5a1cac083127L    # 1.772

    mul-double v14, v14, v19

    add-double/2addr v3, v14

    double-to-int v2, v3

    const/16 v3, 0xff

    const/4 v10, 0x0

    .line 534
    invoke-static {v9, v10, v3}, Lio/bidmachine/media3/common/util/Util;->constrainValue(III)I

    move-result v4

    .line 535
    invoke-static {v1, v10, v3}, Lio/bidmachine/media3/common/util/Util;->constrainValue(III)I

    move-result v1

    .line 536
    invoke-static {v2, v10, v3}, Lio/bidmachine/media3/common/util/Util;->constrainValue(III)I

    move-result v2

    .line 532
    invoke-static {v13, v4, v1, v2}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v1

    aput v1, v11, v8

    move/from16 v4, p1

    move/from16 v2, v16

    const/16 v1, 0x8

    const/4 v3, 0x2

    goto/16 :goto_1a

    :cond_c3
    move/from16 v16, v2

    .line 539
    new-instance v0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    move/from16 v1, v16

    invoke-direct {v0, v1, v5, v6, v7}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ClutDefinition;-><init>(I[I[I[I)V

    return-object v0
.end method

.method public static parseDisplayDefinition(Lio/bidmachine/media3/common/util/ParsableBitArray;)Lio/bidmachine/media3/extractor/text/dvb/DvbParser$DisplayDefinition;
    .registers 10

    const/4 v0, 0x4

    .line 366
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 367
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    const/4 v1, 0x3

    .line 368
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/16 v1, 0x10

    .line 369
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 370
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    if-eqz v0, :cond_2d

    .line 377
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 378
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 379
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 380
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p0

    move v8, p0

    move v6, v2

    move v7, v5

    move v5, v0

    goto :goto_32

    :cond_2d
    const/4 v0, 0x0

    move v5, v0

    move v7, v5

    move v6, v3

    move v8, v4

    .line 388
    :goto_32
    new-instance v2, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

    invoke-direct/range {v2 .. v8}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$DisplayDefinition;-><init>(IIIIII)V

    return-object v2
.end method

.method public static parseObjectData(Lio/bidmachine/media3/common/util/ParsableBitArray;)Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ObjectData;
    .registers 7

    const/16 v0, 0x10

    .line 548
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x4

    .line 549
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/4 v2, 0x2

    .line 550
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 551
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    const/4 v4, 0x1

    .line 552
    invoke-virtual {p0, v4}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 554
    sget-object v5, Lio/bidmachine/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    if-ne v2, v4, :cond_26

    const/16 v2, 0x8

    .line 558
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    mul-int/2addr v2, v0

    .line 560
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_40

    :cond_26
    if-nez v2, :cond_40

    .line 562
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 563
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/4 v4, 0x0

    if-lez v2, :cond_38

    .line 565
    new-array v5, v2, [B

    .line 566
    invoke-virtual {p0, v5, v4, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBytes([BII)V

    :cond_38
    if-lez v0, :cond_40

    .line 569
    new-array v2, v0, [B

    .line 570
    invoke-virtual {p0, v2, v4, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBytes([BII)V

    goto :goto_41

    :cond_40
    :goto_40
    move-object v2, v5

    .line 576
    :goto_41
    new-instance p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ObjectData;

    invoke-direct {p0, v1, v3, v5, v2}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ObjectData;-><init>(IZ[B[B)V

    return-object p0
.end method

.method public static parsePageComposition(Lio/bidmachine/media3/common/util/ParsableBitArray;I)Lio/bidmachine/media3/extractor/text/dvb/DvbParser$PageComposition;
    .registers 11

    const/16 v0, 0x8

    .line 399
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x4

    .line 400
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/4 v3, 0x2

    .line 401
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 402
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    sub-int/2addr p1, v3

    .line 405
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    :goto_19
    if-lez p1, :cond_37

    .line 407
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 408
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/16 v6, 0x10

    .line 409
    invoke-virtual {p0, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 410
    invoke-virtual {p0, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    add-int/lit8 p1, p1, -0x6

    .line 412
    new-instance v8, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$PageRegion;

    invoke-direct {v8, v7, v6}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$PageRegion;-><init>(II)V

    invoke-virtual {v3, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_19

    .line 415
    :cond_37
    new-instance p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$PageComposition;

    invoke-direct {p0, v1, v2, v4, v3}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$PageComposition;-><init>(IIILandroid/util/SparseArray;)V

    return-object p0
.end method

.method public static parseRegionComposition(Lio/bidmachine/media3/common/util/ParsableBitArray;I)Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;
    .registers 27

    move-object/from16 v0, p0

    const/16 v1, 0x8

    .line 420
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/4 v2, 0x4

    .line 421
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 422
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    const/4 v5, 0x3

    .line 423
    invoke-virtual {v0, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/16 v6, 0x10

    .line 424
    invoke-virtual {v0, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 425
    invoke-virtual {v0, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    move v9, v7

    .line 426
    invoke-virtual {v0, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 427
    invoke-virtual {v0, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    const/4 v10, 0x2

    .line 428
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    move v11, v8

    move v8, v5

    move v5, v9

    .line 429
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 430
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v12

    move v13, v11

    .line 431
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    move v14, v12

    .line 432
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 433
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    add-int/lit8 v15, p1, -0xa

    move/from16 v16, v13

    .line 436
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    :goto_4c
    if-lez v15, :cond_9d

    .line 438
    invoke-virtual {v0, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 439
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 440
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v20

    const/16 v10, 0xc

    .line 441
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v21

    .line 442
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 443
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v22

    add-int/lit8 v10, v15, -0x6

    const/4 v2, 0x1

    if-eq v6, v2, :cond_7b

    const/4 v2, 0x2

    if-ne v6, v2, :cond_72

    :goto_6f
    const/16 v10, 0x8

    goto :goto_7d

    :cond_72
    const/4 v15, 0x0

    move/from16 v23, v15

    move/from16 v24, v23

    move v15, v10

    const/16 v10, 0x8

    goto :goto_8b

    :cond_7b
    const/4 v2, 0x2

    goto :goto_6f

    .line 449
    :goto_7d
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v17

    .line 450
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v18

    add-int/lit8 v15, v15, -0x8

    move/from16 v23, v17

    move/from16 v24, v18

    .line 454
    :goto_8b
    new-instance v18, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionObject;

    move/from16 v19, v6

    invoke-direct/range {v18 .. v24}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionObject;-><init>(IIIIII)V

    move-object/from16 v6, v18

    invoke-virtual {v13, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v1, v10

    const/16 v6, 0x10

    move v10, v2

    const/4 v2, 0x4

    goto :goto_4c

    .line 465
    :cond_9d
    new-instance v2, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;

    move v10, v14

    move/from16 v6, v16

    invoke-direct/range {v2 .. v13}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;-><init>(IZIIIIIIIILandroid/util/SparseArray;)V

    return-object v2
.end method

.method public static parseSubtitlingSegment(Lio/bidmachine/media3/common/util/ParsableBitArray;Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;)V
    .registers 8

    const/16 v0, 0x8

    .line 291
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/16 v1, 0x10

    .line 292
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 293
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 294
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->getBytePosition()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/lit8 v4, v1, 0x8

    .line 296
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v5

    if-le v4, v5, :cond_2c

    .line 297
    const-string p1, "DvbParser"

    const-string v0, "Data field length exceeds limit"

    invoke-static {p1, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    return-void

    :cond_2c
    packed-switch v0, :pswitch_data_da

    goto/16 :goto_d0

    .line 305
    :pswitch_31
    iget v0, p1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v0, :cond_d0

    .line 306
    invoke-static {p0}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->parseDisplayDefinition(Lio/bidmachine/media3/common/util/ParsableBitArray;)Lio/bidmachine/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

    move-result-object v0

    iput-object v0, p1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->displayDefinition:Lio/bidmachine/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

    goto/16 :goto_d0

    .line 347
    :pswitch_3d
    iget v0, p1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v0, :cond_4e

    .line 348
    invoke-static {p0}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->parseObjectData(Lio/bidmachine/media3/common/util/ParsableBitArray;)Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ObjectData;

    move-result-object v0

    .line 349
    iget-object p1, p1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    iget v1, v0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ObjectData;->id:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_d0

    .line 350
    :cond_4e
    iget v0, p1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryPageId:I

    if-ne v2, v0, :cond_d0

    .line 351
    invoke-static {p0}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->parseObjectData(Lio/bidmachine/media3/common/util/ParsableBitArray;)Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ObjectData;

    move-result-object v0

    .line 352
    iget-object p1, p1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    iget v1, v0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ObjectData;->id:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_d0

    .line 338
    :pswitch_5f
    iget v0, p1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v0, :cond_6f

    .line 339
    invoke-static {p0, v1}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->parseClutDefinition(Lio/bidmachine/media3/common/util/ParsableBitArray;I)Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    move-result-object v0

    .line 340
    iget-object p1, p1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    iget v1, v0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ClutDefinition;->id:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_d0

    .line 341
    :cond_6f
    iget v0, p1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryPageId:I

    if-ne v2, v0, :cond_d0

    .line 342
    invoke-static {p0, v1}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->parseClutDefinition(Lio/bidmachine/media3/common/util/ParsableBitArray;I)Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    move-result-object v0

    .line 343
    iget-object p1, p1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    iget v1, v0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ClutDefinition;->id:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_d0

    .line 324
    :pswitch_7f
    iget-object v0, p1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->pageComposition:Lio/bidmachine/media3/extractor/text/dvb/DvbParser$PageComposition;

    .line 325
    iget v4, p1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v4, :cond_d0

    if-eqz v0, :cond_d0

    .line 326
    invoke-static {p0, v1}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->parseRegionComposition(Lio/bidmachine/media3/common/util/ParsableBitArray;I)Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;

    move-result-object v1

    .line 327
    iget v0, v0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$PageComposition;->state:I

    if-nez v0, :cond_9e

    .line 329
    iget-object v0, p1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    iget v2, v1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;->id:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;

    if-eqz v0, :cond_9e

    .line 331
    invoke-virtual {v1, v0}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;->mergeFrom(Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;)V

    .line 334
    :cond_9e
    iget-object p1, p1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    iget v0, v1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;->id:I

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_d0

    .line 310
    :pswitch_a6
    iget v0, p1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v0, :cond_d0

    .line 311
    iget-object v0, p1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->pageComposition:Lio/bidmachine/media3/extractor/text/dvb/DvbParser$PageComposition;

    .line 312
    invoke-static {p0, v1}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->parsePageComposition(Lio/bidmachine/media3/common/util/ParsableBitArray;I)Lio/bidmachine/media3/extractor/text/dvb/DvbParser$PageComposition;

    move-result-object v1

    .line 313
    iget v2, v1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$PageComposition;->state:I

    if-eqz v2, :cond_c6

    .line 314
    iput-object v1, p1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->pageComposition:Lio/bidmachine/media3/extractor/text/dvb/DvbParser$PageComposition;

    .line 315
    iget-object v0, p1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 316
    iget-object v0, p1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 317
    iget-object p1, p1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    goto :goto_d0

    :cond_c6
    if-eqz v0, :cond_d0

    .line 318
    iget v0, v0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$PageComposition;->version:I

    iget v2, v1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$PageComposition;->version:I

    if-eq v0, v2, :cond_d0

    .line 319
    iput-object v1, p1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->pageComposition:Lio/bidmachine/media3/extractor/text/dvb/DvbParser$PageComposition;

    .line 361
    :cond_d0
    :goto_d0
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->getBytePosition()I

    move-result p1

    sub-int/2addr v3, p1

    invoke-virtual {p0, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBytes(I)V

    return-void

    nop

    :pswitch_data_da
    .packed-switch 0x10
        :pswitch_a6
        :pswitch_7f
        :pswitch_5f
        :pswitch_3d
        :pswitch_31
    .end packed-switch
.end method


# virtual methods
.method public getCueReplacementBehavior()I
    .registers 2

    .line 0
    const/4 v0, 0x2

    return v0
.end method

.method public final parse(Lio/bidmachine/media3/common/util/ParsableBitArray;)Lio/bidmachine/media3/extractor/text/CuesWithTiming;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 160
    :goto_4
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1c

    const/16 v2, 0x8

    .line 161
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_1c

    .line 162
    iget-object v2, v0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->subtitleService:Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;

    invoke-static {v1, v2}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->parseSubtitlingSegment(Lio/bidmachine/media3/common/util/ParsableBitArray;Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;)V

    goto :goto_4

    .line 165
    :cond_1c
    iget-object v1, v0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->subtitleService:Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;

    iget-object v2, v1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->pageComposition:Lio/bidmachine/media3/extractor/text/dvb/DvbParser$PageComposition;

    if-nez v2, :cond_36

    .line 167
    new-instance v3, Lio/bidmachine/media3/extractor/text/CuesWithTiming;

    .line 168
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v3 .. v8}, Lio/bidmachine/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    return-object v3

    .line 173
    :cond_36
    iget-object v1, v1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->displayDefinition:Lio/bidmachine/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

    if-eqz v1, :cond_3b

    goto :goto_3d

    .line 175
    :cond_3b
    iget-object v1, v0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->defaultDisplayDefinition:Lio/bidmachine/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

    .line 176
    :goto_3d
    iget-object v3, v0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_57

    iget v4, v1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->width:I

    add-int/lit8 v4, v4, 0x1

    .line 177
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v4, v3, :cond_57

    iget v3, v1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->height:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, v0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    .line 178
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_6c

    .line 179
    :cond_57
    iget v3, v1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->width:I

    add-int/lit8 v3, v3, 0x1

    iget v4, v1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->height:I

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 180
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    .line 182
    iget-object v4, v0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 186
    :cond_6c
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 187
    iget-object v2, v2, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$PageComposition;->regions:Landroid/util/SparseArray;

    const/4 v4, 0x0

    .line 188
    :goto_74
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1c0

    .line 190
    iget-object v5, v0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 191
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$PageRegion;

    .line 192
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 193
    iget-object v8, v0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->subtitleService:Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;

    iget-object v8, v8, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;

    .line 196
    iget v8, v5, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$PageRegion;->horizontalAddress:I

    iget v9, v1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->horizontalPositionMinimum:I

    add-int/2addr v8, v9

    .line 198
    iget v5, v5, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$PageRegion;->verticalAddress:I

    iget v9, v1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->verticalPositionMinimum:I

    add-int/2addr v5, v9

    .line 200
    iget v9, v7, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;->width:I

    add-int/2addr v9, v8

    iget v10, v1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->horizontalPositionMaximum:I

    .line 201
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 204
    iget v10, v7, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;->height:I

    add-int/2addr v10, v5

    iget v11, v1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->verticalPositionMaximum:I

    .line 205
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 208
    iget-object v11, v0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v11, v8, v5, v9, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 209
    iget-object v9, v0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->subtitleService:Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;

    iget-object v9, v9, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    iget v10, v7, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;->clutId:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    if-nez v9, :cond_d2

    .line 211
    iget-object v9, v0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->subtitleService:Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;

    iget-object v9, v9, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    iget v10, v7, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;->clutId:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    if-nez v9, :cond_d2

    .line 213
    iget-object v9, v0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->defaultClutDefinition:Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    :cond_d2
    move-object v11, v9

    .line 217
    iget-object v9, v7, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;->regionObjects:Landroid/util/SparseArray;

    const/4 v10, 0x0

    .line 218
    :goto_d6
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v10, v12, :cond_12a

    .line 219
    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 220
    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionObject;

    .line 221
    iget-object v14, v0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->subtitleService:Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;

    iget-object v14, v14, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ObjectData;

    if-nez v14, :cond_fd

    .line 223
    iget-object v14, v0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->subtitleService:Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;

    iget-object v14, v14, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v14, v12

    check-cast v14, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ObjectData;

    :cond_fd
    if-eqz v14, :cond_122

    .line 226
    iget-boolean v12, v14, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ObjectData;->nonModifyingColorFlag:Z

    if-eqz v12, :cond_106

    const/4 v12, 0x0

    :goto_104
    move-object v15, v12

    goto :goto_109

    :cond_106
    iget-object v12, v0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    goto :goto_104

    .line 227
    :goto_109
    iget v12, v7, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;->depth:I

    iget v3, v13, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionObject;->horizontalPosition:I

    add-int/2addr v3, v8

    iget v13, v13, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionObject;->verticalPosition:I

    add-int/2addr v13, v5

    move-object/from16 v17, v2

    iget-object v2, v0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    move/from16 v16, v13

    move v13, v3

    move v3, v10

    move-object v10, v14

    move/from16 v14, v16

    move-object/from16 v16, v2

    invoke-static/range {v10 .. v16}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->paintPixelDataSubBlocks(Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ObjectData;Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ClutDefinition;IIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_125

    :cond_122
    move-object/from16 v17, v2

    move v3, v10

    :goto_125
    add-int/lit8 v10, v3, 0x1

    move-object/from16 v2, v17

    goto :goto_d6

    :cond_12a
    move-object/from16 v17, v2

    .line 238
    iget-boolean v2, v7, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;->fillFlag:Z

    if-eqz v2, :cond_162

    .line 240
    iget v2, v7, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;->depth:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_13c

    .line 241
    iget-object v2, v11, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ClutDefinition;->clutEntries8Bit:[I

    iget v3, v7, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;->pixelCode8Bit:I

    aget v2, v2, v3

    goto :goto_14c

    :cond_13c
    const/4 v3, 0x2

    if-ne v2, v3, :cond_146

    .line 243
    iget-object v2, v11, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ClutDefinition;->clutEntries4Bit:[I

    iget v3, v7, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;->pixelCode4Bit:I

    aget v2, v2, v3

    goto :goto_14c

    .line 245
    :cond_146
    iget-object v2, v11, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ClutDefinition;->clutEntries2Bit:[I

    iget v3, v7, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;->pixelCode2Bit:I

    aget v2, v2, v3

    .line 247
    :goto_14c
    iget-object v3, v0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 248
    iget-object v9, v0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    int-to-float v10, v8

    int-to-float v11, v5

    iget v2, v7, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;->width:I

    add-int/2addr v2, v8

    int-to-float v12, v2

    iget v2, v7, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;->height:I

    add-int/2addr v2, v5

    int-to-float v13, v2

    iget-object v14, v0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 256
    :cond_162
    new-instance v2, Lio/bidmachine/media3/common/text/Cue$Builder;

    invoke-direct {v2}, Lio/bidmachine/media3/common/text/Cue$Builder;-><init>()V

    iget-object v3, v0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    iget v9, v7, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;->width:I

    iget v10, v7, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;->height:I

    .line 259
    invoke-static {v3, v8, v5, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 258
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/text/Cue$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v2

    int-to-float v3, v8

    iget v8, v1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->width:I

    int-to-float v8, v8

    div-float/2addr v3, v8

    .line 265
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/text/Cue$Builder;->setPosition(F)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 266
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/text/Cue$Builder;->setPositionAnchor(I)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v2

    int-to-float v5, v5

    iget v8, v1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->height:I

    int-to-float v8, v8

    div-float/2addr v5, v8

    .line 267
    invoke-virtual {v2, v5, v3}, Lio/bidmachine/media3/common/text/Cue$Builder;->setLine(FI)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v2

    .line 269
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/text/Cue$Builder;->setLineAnchor(I)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v2

    iget v3, v7, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;->width:I

    int-to-float v3, v3

    iget v5, v1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->width:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 270
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/text/Cue$Builder;->setSize(F)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v2

    iget v3, v7, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;->height:I

    int-to-float v3, v3

    iget v5, v1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->height:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 271
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/text/Cue$Builder;->setBitmapHeight(F)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v2

    .line 272
    invoke-virtual {v2}, Lio/bidmachine/media3/common/text/Cue$Builder;->build()Lio/bidmachine/media3/common/text/Cue;

    move-result-object v2

    .line 256
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v2, v0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 276
    iget-object v2, v0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v17

    goto/16 :goto_74

    .line 279
    :cond_1c0
    new-instance v5, Lio/bidmachine/media3/extractor/text/CuesWithTiming;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v5 .. v10}, Lio/bidmachine/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    return-object v5
.end method

.method public parse([BIILio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;Lio/bidmachine/media3/common/util/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;",
            "Lio/bidmachine/media3/common/util/Consumer<",
            "Lio/bidmachine/media3/extractor/text/CuesWithTiming;",
            ">;)V"
        }
    .end annotation

    .line 153
    new-instance p4, Lio/bidmachine/media3/common/util/ParsableBitArray;

    add-int/2addr p3, p2

    invoke-direct {p4, p1, p3}, Lio/bidmachine/media3/common/util/ParsableBitArray;-><init>([BI)V

    .line 154
    invoke-virtual {p4, p2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 155
    invoke-virtual {p0, p4}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->parse(Lio/bidmachine/media3/common/util/ParsableBitArray;)Lio/bidmachine/media3/extractor/text/CuesWithTiming;

    move-result-object p1

    invoke-interface {p5, p1}, Lio/bidmachine/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public reset()V
    .registers 2

    .line 138
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser;->subtitleService:Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->reset()V

    return-void
.end method

###### Class io.bidmachine.media3.extractor.text.dvb.DvbParser.ClutDefinition (io.bidmachine.media3.extractor.text.dvb.DvbParser$ClutDefinition)
.class public final Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ClutDefinition;
.super Ljava/lang/Object;
.source "DvbParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/text/dvb/DvbParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClutDefinition"
.end annotation


# instance fields
.field public final clutEntries2Bit:[I

.field public final clutEntries4Bit:[I

.field public final clutEntries8Bit:[I

.field public final id:I


# direct methods
.method public constructor <init>(I[I[I[I)V
    .registers 5

    .line 1134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1135
    iput p1, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ClutDefinition;->id:I

    .line 1136
    iput-object p2, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ClutDefinition;->clutEntries2Bit:[I

    .line 1137
    iput-object p3, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ClutDefinition;->clutEntries4Bit:[I

    .line 1138
    iput-object p4, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ClutDefinition;->clutEntries8Bit:[I

    return-void
.end method

###### Class io.bidmachine.media3.extractor.text.dvb.DvbParser.DisplayDefinition (io.bidmachine.media3.extractor.text.dvb.DvbParser$DisplayDefinition)
.class public final Lio/bidmachine/media3/extractor/text/dvb/DvbParser$DisplayDefinition;
.super Ljava/lang/Object;
.source "DvbParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/text/dvb/DvbParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayDefinition"
.end annotation


# instance fields
.field public final height:I

.field public final horizontalPositionMaximum:I

.field public final horizontalPositionMinimum:I

.field public final verticalPositionMaximum:I

.field public final verticalPositionMinimum:I

.field public final width:I


# direct methods
.method public constructor <init>(IIIIII)V
    .registers 7

    .line 992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 993
    iput p1, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->width:I

    .line 994
    iput p2, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->height:I

    .line 995
    iput p3, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->horizontalPositionMinimum:I

    .line 996
    iput p4, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->horizontalPositionMaximum:I

    .line 997
    iput p5, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->verticalPositionMinimum:I

    .line 998
    iput p6, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->verticalPositionMaximum:I

    return-void
.end method

###### Class io.bidmachine.media3.extractor.text.dvb.DvbParser.ObjectData (io.bidmachine.media3.extractor.text.dvb.DvbParser$ObjectData)
.class public final Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ObjectData;
.super Ljava/lang/Object;
.source "DvbParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/text/dvb/DvbParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObjectData"
.end annotation


# instance fields
.field public final bottomFieldData:[B

.field public final id:I

.field public final nonModifyingColorFlag:Z

.field public final topFieldData:[B


# direct methods
.method public constructor <init>(IZ[B[B)V
    .registers 5

    .line 1155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1156
    iput p1, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ObjectData;->id:I

    .line 1157
    iput-boolean p2, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ObjectData;->nonModifyingColorFlag:Z

    .line 1158
    iput-object p3, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ObjectData;->topFieldData:[B

    .line 1159
    iput-object p4, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ObjectData;->bottomFieldData:[B

    return-void
.end method

###### Class io.bidmachine.media3.extractor.text.dvb.DvbParser.PageComposition (io.bidmachine.media3.extractor.text.dvb.DvbParser$PageComposition)
.class public final Lio/bidmachine/media3/extractor/text/dvb/DvbParser$PageComposition;
.super Ljava/lang/Object;
.source "DvbParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/text/dvb/DvbParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PageComposition"
.end annotation


# instance fields
.field public final regions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/bidmachine/media3/extractor/text/dvb/DvbParser$PageRegion;",
            ">;"
        }
    .end annotation
.end field

.field public final state:I

.field public final timeOutSecs:I

.field public final version:I


# direct methods
.method public constructor <init>(IIILandroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Landroid/util/SparseArray<",
            "Lio/bidmachine/media3/extractor/text/dvb/DvbParser$PageRegion;",
            ">;)V"
        }
    .end annotation

    .line 1015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1016
    iput p1, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$PageComposition;->timeOutSecs:I

    .line 1017
    iput p2, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$PageComposition;->version:I

    .line 1018
    iput p3, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$PageComposition;->state:I

    .line 1019
    iput-object p4, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$PageComposition;->regions:Landroid/util/SparseArray;

    return-void
.end method

###### Class io.bidmachine.media3.extractor.text.dvb.DvbParser.PageRegion (io.bidmachine.media3.extractor.text.dvb.DvbParser$PageRegion)
.class public final Lio/bidmachine/media3/extractor/text/dvb/DvbParser$PageRegion;
.super Ljava/lang/Object;
.source "DvbParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/text/dvb/DvbParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PageRegion"
.end annotation


# instance fields
.field public final horizontalAddress:I

.field public final verticalAddress:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 1033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1034
    iput p1, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$PageRegion;->horizontalAddress:I

    .line 1035
    iput p2, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$PageRegion;->verticalAddress:I

    return-void
.end method

###### Class io.bidmachine.media3.extractor.text.dvb.DvbParser.RegionComposition (io.bidmachine.media3.extractor.text.dvb.DvbParser$RegionComposition)
.class public final Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;
.super Ljava/lang/Object;
.source "DvbParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/text/dvb/DvbParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RegionComposition"
.end annotation


# instance fields
.field public final clutId:I

.field public final depth:I

.field public final fillFlag:Z

.field public final height:I

.field public final id:I

.field public final levelOfCompatibility:I

.field public final pixelCode2Bit:I

.field public final pixelCode4Bit:I

.field public final pixelCode8Bit:I

.field public final regionObjects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionObject;",
            ">;"
        }
    .end annotation
.end field

.field public final width:I


# direct methods
.method public constructor <init>(IZIIIIIIIILandroid/util/SparseArray;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZIIIIIIII",
            "Landroid/util/SparseArray<",
            "Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionObject;",
            ">;)V"
        }
    .end annotation

    .line 1069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1070
    iput p1, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;->id:I

    .line 1071
    iput-boolean p2, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;->fillFlag:Z

    .line 1072
    iput p3, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;->width:I

    .line 1073
    iput p4, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;->height:I

    .line 1074
    iput p5, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;->levelOfCompatibility:I

    .line 1075
    iput p6, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;->depth:I

    .line 1076
    iput p7, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;->clutId:I

    .line 1077
    iput p8, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;->pixelCode8Bit:I

    .line 1078
    iput p9, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;->pixelCode4Bit:I

    .line 1079
    iput p10, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;->pixelCode2Bit:I

    .line 1080
    iput-object p11, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;->regionObjects:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public mergeFrom(Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;)V
    .registers 6

    .line 1084
    iget-object p1, p1, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;->regionObjects:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 1085
    :goto_3
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 1086
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;->regionObjects:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionObject;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1b
    return-void
.end method

###### Class io.bidmachine.media3.extractor.text.dvb.DvbParser.RegionObject (io.bidmachine.media3.extractor.text.dvb.DvbParser$RegionObject)
.class public final Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionObject;
.super Ljava/lang/Object;
.source "DvbParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/text/dvb/DvbParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RegionObject"
.end annotation


# instance fields
.field public final backgroundPixelCode:I

.field public final foregroundPixelCode:I

.field public final horizontalPosition:I

.field public final provider:I

.field public final type:I

.field public final verticalPosition:I


# direct methods
.method public constructor <init>(IIIIII)V
    .registers 7

    .line 1111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1112
    iput p1, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionObject;->type:I

    .line 1113
    iput p2, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionObject;->provider:I

    .line 1114
    iput p3, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionObject;->horizontalPosition:I

    .line 1115
    iput p4, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionObject;->verticalPosition:I

    .line 1116
    iput p5, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionObject;->foregroundPixelCode:I

    .line 1117
    iput p6, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionObject;->backgroundPixelCode:I

    return-void
.end method

###### Class io.bidmachine.media3.extractor.text.dvb.DvbParser.SubtitleService (io.bidmachine.media3.extractor.text.dvb.DvbParser$SubtitleService)
.class public final Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;
.super Ljava/lang/Object;
.source "DvbParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/text/dvb/DvbParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubtitleService"
.end annotation


# instance fields
.field public final ancillaryCluts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ClutDefinition;",
            ">;"
        }
    .end annotation
.end field

.field public final ancillaryObjects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ObjectData;",
            ">;"
        }
    .end annotation
.end field

.field public final ancillaryPageId:I

.field public final cluts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ClutDefinition;",
            ">;"
        }
    .end annotation
.end field

.field public displayDefinition:Lio/bidmachine/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

.field public final objects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/bidmachine/media3/extractor/text/dvb/DvbParser$ObjectData;",
            ">;"
        }
    .end annotation
.end field

.field public pageComposition:Lio/bidmachine/media3/extractor/text/dvb/DvbParser$PageComposition;

.field public final regions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/bidmachine/media3/extractor/text/dvb/DvbParser$RegionComposition;",
            ">;"
        }
    .end annotation
.end field

.field public final subtitlePageId:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 951
    iput p1, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    .line 952
    iput p2, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryPageId:I

    .line 953
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    .line 954
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    .line 955
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    .line 956
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    .line 957
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 2

    .line 961
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 962
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 963
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 964
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 965
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    .line 966
    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->displayDefinition:Lio/bidmachine/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

    .line 967
    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/dvb/DvbParser$SubtitleService;->pageComposition:Lio/bidmachine/media3/extractor/text/dvb/DvbParser$PageComposition;

    return-void
.end method
