###### Class io.bidmachine.media3.common.ColorInfo (io.bidmachine.media3.common.ColorInfo)
.class public final Lio/bidmachine/media3/common/ColorInfo;
.super Ljava/lang/Object;
.source "ColorInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/ColorInfo$Builder;
    }
.end annotation


# static fields
.field public static final FIELD_CHROMA_BITDEPTH:Ljava/lang/String;

.field public static final FIELD_COLOR_RANGE:Ljava/lang/String;

.field public static final FIELD_COLOR_SPACE:Ljava/lang/String;

.field public static final FIELD_COLOR_TRANSFER:Ljava/lang/String;

.field public static final FIELD_HDR_STATIC_INFO:Ljava/lang/String;

.field public static final FIELD_LUMA_BITDEPTH:Ljava/lang/String;

.field public static final SDR_BT709_LIMITED:Lio/bidmachine/media3/common/ColorInfo;

.field public static final SRGB_BT709_FULL:Lio/bidmachine/media3/common/ColorInfo;


# instance fields
.field public final chromaBitdepth:I

.field public final colorRange:I

.field public final colorSpace:I

.field public final colorTransfer:I

.field public hashCode:I

.field public final hdrStaticInfo:[B

.field public final lumaBitdepth:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 158
    new-instance v0, Lio/bidmachine/media3/common/ColorInfo$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/ColorInfo$Builder;-><init>()V

    const/4 v1, 0x1

    .line 160
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setColorSpace(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    move-result-object v0

    const/4 v2, 0x2

    .line 161
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setColorRange(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    move-result-object v0

    const/4 v3, 0x3

    .line 162
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setColorTransfer(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lio/bidmachine/media3/common/ColorInfo$Builder;->build()Lio/bidmachine/media3/common/ColorInfo;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/ColorInfo;->SDR_BT709_LIMITED:Lio/bidmachine/media3/common/ColorInfo;

    .line 169
    new-instance v0, Lio/bidmachine/media3/common/ColorInfo$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/ColorInfo$Builder;-><init>()V

    .line 171
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setColorSpace(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    move-result-object v0

    .line 172
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setColorRange(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    move-result-object v0

    .line 173
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setColorTransfer(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lio/bidmachine/media3/common/ColorInfo$Builder;->build()Lio/bidmachine/media3/common/ColorInfo;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/ColorInfo;->SRGB_BT709_FULL:Lio/bidmachine/media3/common/ColorInfo;

    const/4 v0, 0x0

    .line 531
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/ColorInfo;->FIELD_COLOR_SPACE:Ljava/lang/String;

    .line 532
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/ColorInfo;->FIELD_COLOR_RANGE:Ljava/lang/String;

    .line 533
    invoke-static {v2}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/ColorInfo;->FIELD_COLOR_TRANSFER:Ljava/lang/String;

    .line 534
    invoke-static {v3}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/ColorInfo;->FIELD_HDR_STATIC_INFO:Ljava/lang/String;

    const/4 v0, 0x4

    .line 535
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/ColorInfo;->FIELD_LUMA_BITDEPTH:Ljava/lang/String;

    const/4 v0, 0x5

    .line 536
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/ColorInfo;->FIELD_CHROMA_BITDEPTH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(III[BII)V
    .registers 7

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput p1, p0, Lio/bidmachine/media3/common/ColorInfo;->colorSpace:I

    .line 360
    iput p2, p0, Lio/bidmachine/media3/common/ColorInfo;->colorRange:I

    .line 361
    iput p3, p0, Lio/bidmachine/media3/common/ColorInfo;->colorTransfer:I

    .line 362
    iput-object p4, p0, Lio/bidmachine/media3/common/ColorInfo;->hdrStaticInfo:[B

    .line 363
    iput p5, p0, Lio/bidmachine/media3/common/ColorInfo;->lumaBitdepth:I

    .line 364
    iput p6, p0, Lio/bidmachine/media3/common/ColorInfo;->chromaBitdepth:I

    return-void
.end method

.method public synthetic constructor <init>(III[BIILio/bidmachine/media3/common/ColorInfo$1;)V
    .registers 8

    .line 34
    invoke-direct/range {p0 .. p6}, Lio/bidmachine/media3/common/ColorInfo;-><init>(III[BII)V

    return-void
.end method

.method public static chromaBitdepthToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_15

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "bit Chroma"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    const-string p0, "NA"

    return-object p0
.end method

.method public static colorRangeToString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_21

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1b

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Undefined color range "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 522
    :cond_1b
    const-string p0, "Limited range"

    return-object p0

    .line 524
    :cond_1e
    const-string p0, "Full range"

    return-object p0

    .line 520
    :cond_21
    const-string p0, "Unset color range"

    return-object p0
.end method

.method public static colorSpaceToString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_27

    const/4 v0, 0x6

    if-eq p0, v0, :cond_24

    const/4 v0, 0x1

    if-eq p0, v0, :cond_21

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1e

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Undefined color space "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 482
    :cond_1e
    const-string p0, "BT601"

    return-object p0

    .line 484
    :cond_21
    const-string p0, "BT709"

    return-object p0

    .line 486
    :cond_24
    const-string p0, "BT2020"

    return-object p0

    .line 480
    :cond_27
    const-string p0, "Unset color space"

    return-object p0
.end method

.method public static colorTransferToString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_3a

    const/16 v0, 0xa

    if-eq p0, v0, :cond_37

    const/4 v0, 0x1

    if-eq p0, v0, :cond_34

    const/4 v0, 0x2

    if-eq p0, v0, :cond_31

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2e

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2b

    const/4 v0, 0x7

    if-eq p0, v0, :cond_28

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Undefined color transfer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 509
    :cond_28
    const-string p0, "HLG"

    return-object p0

    .line 507
    :cond_2b
    const-string p0, "ST2084 PQ"

    return-object p0

    .line 501
    :cond_2e
    const-string p0, "SDR SMPTE 170M"

    return-object p0

    .line 503
    :cond_31
    const-string p0, "sRGB"

    return-object p0

    .line 499
    :cond_34
    const-string p0, "Linear"

    return-object p0

    .line 505
    :cond_37
    const-string p0, "Gamma 2.2"

    return-object p0

    .line 497
    :cond_3a
    const-string p0, "Unset color transfer"

    return-object p0
.end method

.method public static isEquivalentToAssumedSdrDefault(Lio/bidmachine/media3/common/ColorInfo;)Z
    .registers 5

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 192
    :cond_4
    iget v1, p0, Lio/bidmachine/media3/common/ColorInfo;->colorSpace:I

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_e

    if-eq v1, v0, :cond_e

    if-ne v1, v2, :cond_2e

    :cond_e
    iget v1, p0, Lio/bidmachine/media3/common/ColorInfo;->colorRange:I

    if-eq v1, v3, :cond_14

    if-ne v1, v2, :cond_2e

    :cond_14
    iget v1, p0, Lio/bidmachine/media3/common/ColorInfo;->colorTransfer:I

    if-eq v1, v3, :cond_1b

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2e

    :cond_1b
    iget-object v1, p0, Lio/bidmachine/media3/common/ColorInfo;->hdrStaticInfo:[B

    if-nez v1, :cond_2e

    iget v1, p0, Lio/bidmachine/media3/common/ColorInfo;->chromaBitdepth:I

    const/16 v2, 0x8

    if-eq v1, v3, :cond_27

    if-ne v1, v2, :cond_2e

    :cond_27
    iget p0, p0, Lio/bidmachine/media3/common/ColorInfo;->lumaBitdepth:I

    if-eq p0, v3, :cond_2d

    if-ne p0, v2, :cond_2e

    :cond_2d
    return v0

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public static isoColorPrimariesToColorSpace(I)I
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_18

    const/16 v0, 0x9

    const/4 v1, 0x6

    if-eq p0, v0, :cond_17

    const/4 v0, 0x4

    if-eq p0, v0, :cond_15

    const/4 v0, 0x5

    if-eq p0, v0, :cond_15

    if-eq p0, v1, :cond_15

    const/4 v0, 0x7

    if-eq p0, v0, :cond_15

    const/4 p0, -0x1

    return p0

    :cond_15
    const/4 p0, 0x2

    return p0

    :cond_17
    return v1

    :cond_18
    return v0
.end method

.method public static isoTransferCharacteristicsToColorTransfer(I)I
    .registers 4

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_21

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1e

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1c

    const/16 v0, 0x10

    const/4 v1, 0x6

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x12

    const/4 v2, 0x7

    if-eq p0, v0, :cond_1a

    if-eq p0, v1, :cond_21

    if-eq p0, v2, :cond_21

    const/4 p0, -0x1

    return p0

    :cond_1a
    return v2

    :cond_1b
    return v1

    :cond_1c
    const/4 p0, 0x2

    return p0

    :cond_1e
    const/16 p0, 0xa

    return p0

    :cond_21
    const/4 p0, 0x3

    return p0
.end method

.method public static lumaBitdepthToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_15

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "bit Luma"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    const-string p0, "NA"

    return-object p0
.end method


# virtual methods
.method public buildUpon()Lio/bidmachine/media3/common/ColorInfo$Builder;
    .registers 3

    .line 369
    new-instance v0, Lio/bidmachine/media3/common/ColorInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/common/ColorInfo$Builder;-><init>(Lio/bidmachine/media3/common/ColorInfo;Lio/bidmachine/media3/common/ColorInfo$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3b

    .line 424
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/common/ColorInfo;

    if-eq v3, v2, :cond_10

    goto :goto_3b

    .line 427
    :cond_10
    check-cast p1, Lio/bidmachine/media3/common/ColorInfo;

    .line 428
    iget v2, p0, Lio/bidmachine/media3/common/ColorInfo;->colorSpace:I

    iget v3, p1, Lio/bidmachine/media3/common/ColorInfo;->colorSpace:I

    if-ne v2, v3, :cond_3b

    iget v2, p0, Lio/bidmachine/media3/common/ColorInfo;->colorRange:I

    iget v3, p1, Lio/bidmachine/media3/common/ColorInfo;->colorRange:I

    if-ne v2, v3, :cond_3b

    iget v2, p0, Lio/bidmachine/media3/common/ColorInfo;->colorTransfer:I

    iget v3, p1, Lio/bidmachine/media3/common/ColorInfo;->colorTransfer:I

    if-ne v2, v3, :cond_3b

    iget-object v2, p0, Lio/bidmachine/media3/common/ColorInfo;->hdrStaticInfo:[B

    iget-object v3, p1, Lio/bidmachine/media3/common/ColorInfo;->hdrStaticInfo:[B

    .line 431
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget v2, p0, Lio/bidmachine/media3/common/ColorInfo;->lumaBitdepth:I

    iget v3, p1, Lio/bidmachine/media3/common/ColorInfo;->lumaBitdepth:I

    if-ne v2, v3, :cond_3b

    iget v2, p0, Lio/bidmachine/media3/common/ColorInfo;->chromaBitdepth:I

    iget p1, p1, Lio/bidmachine/media3/common/ColorInfo;->chromaBitdepth:I

    if-ne v2, p1, :cond_3b

    return v0

    :cond_3b
    :goto_3b
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 438
    iget v0, p0, Lio/bidmachine/media3/common/ColorInfo;->hashCode:I

    if-nez v0, :cond_28

    const/16 v0, 0x20f

    .line 440
    iget v1, p0, Lio/bidmachine/media3/common/ColorInfo;->colorSpace:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 441
    iget v1, p0, Lio/bidmachine/media3/common/ColorInfo;->colorRange:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 442
    iget v1, p0, Lio/bidmachine/media3/common/ColorInfo;->colorTransfer:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 443
    iget-object v1, p0, Lio/bidmachine/media3/common/ColorInfo;->hdrStaticInfo:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 444
    iget v1, p0, Lio/bidmachine/media3/common/ColorInfo;->lumaBitdepth:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 445
    iget v1, p0, Lio/bidmachine/media3/common/ColorInfo;->chromaBitdepth:I

    add-int/2addr v0, v1

    .line 446
    iput v0, p0, Lio/bidmachine/media3/common/ColorInfo;->hashCode:I

    .line 448
    :cond_28
    iget v0, p0, Lio/bidmachine/media3/common/ColorInfo;->hashCode:I

    return v0
.end method

.method public isBitdepthValid()Z
    .registers 3

    .line 387
    iget v0, p0, Lio/bidmachine/media3/common/ColorInfo;->lumaBitdepth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    iget v0, p0, Lio/bidmachine/media3/common/ColorInfo;->chromaBitdepth:I

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isDataSpaceValid()Z
    .registers 3

    .line 396
    iget v0, p0, Lio/bidmachine/media3/common/ColorInfo;->colorSpace:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    iget v0, p0, Lio/bidmachine/media3/common/ColorInfo;->colorRange:I

    if-eq v0, v1, :cond_f

    iget v0, p0, Lio/bidmachine/media3/common/ColorInfo;->colorTransfer:I

    if-eq v0, v1, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 378
    invoke-virtual {p0}, Lio/bidmachine/media3/common/ColorInfo;->isBitdepthValid()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lio/bidmachine/media3/common/ColorInfo;->isDataSpaceValid()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method public toLogString()Ljava/lang/String;
    .registers 5

    .line 408
    invoke-virtual {p0}, Lio/bidmachine/media3/common/ColorInfo;->isDataSpaceValid()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 409
    iget v0, p0, Lio/bidmachine/media3/common/ColorInfo;->colorSpace:I

    .line 411
    invoke-static {v0}, Lio/bidmachine/media3/common/ColorInfo;->colorSpaceToString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lio/bidmachine/media3/common/ColorInfo;->colorRange:I

    .line 412
    invoke-static {v1}, Lio/bidmachine/media3/common/ColorInfo;->colorRangeToString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lio/bidmachine/media3/common/ColorInfo;->colorTransfer:I

    .line 413
    invoke-static {v2}, Lio/bidmachine/media3/common/ColorInfo;->colorTransferToString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 409
    const-string v1, "%s/%s/%s"

    invoke-static {v1, v0}, Lio/bidmachine/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    .line 414
    :cond_23
    const-string v0, "NA/NA/NA"

    .line 415
    :goto_25
    invoke-virtual {p0}, Lio/bidmachine/media3/common/ColorInfo;->isBitdepthValid()Z

    move-result v1

    const-string v2, "/"

    if-eqz v1, :cond_44

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lio/bidmachine/media3/common/ColorInfo;->lumaBitdepth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lio/bidmachine/media3/common/ColorInfo;->chromaBitdepth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_46

    :cond_44
    const-string v1, "NA/NA"

    .line 416
    :goto_46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/media3/common/ColorInfo;->colorSpace:I

    .line 454
    invoke-static {v1}, Lio/bidmachine/media3/common/ColorInfo;->colorSpaceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/bidmachine/media3/common/ColorInfo;->colorRange:I

    .line 456
    invoke-static {v2}, Lio/bidmachine/media3/common/ColorInfo;->colorRangeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/bidmachine/media3/common/ColorInfo;->colorTransfer:I

    .line 458
    invoke-static {v2}, Lio/bidmachine/media3/common/ColorInfo;->colorTransferToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bidmachine/media3/common/ColorInfo;->hdrStaticInfo:[B

    if-eqz v2, :cond_36

    const/4 v2, 0x1

    goto :goto_37

    :cond_36
    const/4 v2, 0x0

    :goto_37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/bidmachine/media3/common/ColorInfo;->lumaBitdepth:I

    .line 462
    invoke-static {v2}, Lio/bidmachine/media3/common/ColorInfo;->lumaBitdepthToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/media3/common/ColorInfo;->chromaBitdepth:I

    .line 464
    invoke-static {v1}, Lio/bidmachine/media3/common/ColorInfo;->chromaBitdepthToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.media3.common.ColorInfo.AnonymousClass1 (io.bidmachine.media3.common.ColorInfo$1)
.class public synthetic Lio/bidmachine/media3/common/ColorInfo$1;
.super Ljava/lang/Object;
.source "ColorInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/ColorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.common.ColorInfo.Builder (io.bidmachine.media3.common.ColorInfo$Builder)
.class public final Lio/bidmachine/media3/common/ColorInfo$Builder;
.super Ljava/lang/Object;
.source "ColorInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/ColorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public chromaBitdepth:I

.field public colorRange:I

.field public colorSpace:I

.field public colorTransfer:I

.field public hdrStaticInfo:[B

.field public lumaBitdepth:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lio/bidmachine/media3/common/ColorInfo$Builder;->colorSpace:I

    .line 53
    iput v0, p0, Lio/bidmachine/media3/common/ColorInfo$Builder;->colorRange:I

    .line 54
    iput v0, p0, Lio/bidmachine/media3/common/ColorInfo$Builder;->colorTransfer:I

    .line 55
    iput v0, p0, Lio/bidmachine/media3/common/ColorInfo$Builder;->lumaBitdepth:I

    .line 56
    iput v0, p0, Lio/bidmachine/media3/common/ColorInfo$Builder;->chromaBitdepth:I

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/ColorInfo;)V
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iget v0, p1, Lio/bidmachine/media3/common/ColorInfo;->colorSpace:I

    iput v0, p0, Lio/bidmachine/media3/common/ColorInfo$Builder;->colorSpace:I

    .line 62
    iget v0, p1, Lio/bidmachine/media3/common/ColorInfo;->colorRange:I

    iput v0, p0, Lio/bidmachine/media3/common/ColorInfo$Builder;->colorRange:I

    .line 63
    iget v0, p1, Lio/bidmachine/media3/common/ColorInfo;->colorTransfer:I

    iput v0, p0, Lio/bidmachine/media3/common/ColorInfo$Builder;->colorTransfer:I

    .line 64
    iget-object v0, p1, Lio/bidmachine/media3/common/ColorInfo;->hdrStaticInfo:[B

    iput-object v0, p0, Lio/bidmachine/media3/common/ColorInfo$Builder;->hdrStaticInfo:[B

    .line 65
    iget v0, p1, Lio/bidmachine/media3/common/ColorInfo;->lumaBitdepth:I

    iput v0, p0, Lio/bidmachine/media3/common/ColorInfo$Builder;->lumaBitdepth:I

    .line 66
    iget p1, p1, Lio/bidmachine/media3/common/ColorInfo;->chromaBitdepth:I

    iput p1, p0, Lio/bidmachine/media3/common/ColorInfo$Builder;->chromaBitdepth:I

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/common/ColorInfo;Lio/bidmachine/media3/common/ColorInfo$1;)V
    .registers 3

    .line 42
    invoke-direct {p0, p1}, Lio/bidmachine/media3/common/ColorInfo$Builder;-><init>(Lio/bidmachine/media3/common/ColorInfo;)V

    return-void
.end method


# virtual methods
.method public build()Lio/bidmachine/media3/common/ColorInfo;
    .registers 9

    .line 152
    new-instance v0, Lio/bidmachine/media3/common/ColorInfo;

    iget v1, p0, Lio/bidmachine/media3/common/ColorInfo$Builder;->colorSpace:I

    iget v2, p0, Lio/bidmachine/media3/common/ColorInfo$Builder;->colorRange:I

    iget v3, p0, Lio/bidmachine/media3/common/ColorInfo$Builder;->colorTransfer:I

    iget-object v4, p0, Lio/bidmachine/media3/common/ColorInfo$Builder;->hdrStaticInfo:[B

    iget v5, p0, Lio/bidmachine/media3/common/ColorInfo$Builder;->lumaBitdepth:I

    iget v6, p0, Lio/bidmachine/media3/common/ColorInfo$Builder;->chromaBitdepth:I

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lio/bidmachine/media3/common/ColorInfo;-><init>(III[BIILio/bidmachine/media3/common/ColorInfo$1;)V

    return-object v0
.end method

.method public setChromaBitdepth(I)Lio/bidmachine/media3/common/ColorInfo$Builder;
    .registers 2

    .line 146
    iput p1, p0, Lio/bidmachine/media3/common/ColorInfo$Builder;->chromaBitdepth:I

    return-object p0
.end method

.method public setColorRange(I)Lio/bidmachine/media3/common/ColorInfo$Builder;
    .registers 2

    .line 95
    iput p1, p0, Lio/bidmachine/media3/common/ColorInfo$Builder;->colorRange:I

    return-object p0
.end method

.method public setColorSpace(I)Lio/bidmachine/media3/common/ColorInfo$Builder;
    .registers 2

    .line 80
    iput p1, p0, Lio/bidmachine/media3/common/ColorInfo$Builder;->colorSpace:I

    return-object p0
.end method

.method public setColorTransfer(I)Lio/bidmachine/media3/common/ColorInfo$Builder;
    .registers 2

    .line 110
    iput p1, p0, Lio/bidmachine/media3/common/ColorInfo$Builder;->colorTransfer:I

    return-object p0
.end method

.method public setHdrStaticInfo([B)Lio/bidmachine/media3/common/ColorInfo$Builder;
    .registers 2

    .line 122
    iput-object p1, p0, Lio/bidmachine/media3/common/ColorInfo$Builder;->hdrStaticInfo:[B

    return-object p0
.end method

.method public setLumaBitdepth(I)Lio/bidmachine/media3/common/ColorInfo$Builder;
    .registers 2

    .line 134
    iput p1, p0, Lio/bidmachine/media3/common/ColorInfo$Builder;->lumaBitdepth:I

    return-object p0
.end method
