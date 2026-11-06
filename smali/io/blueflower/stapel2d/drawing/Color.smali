###### Class io.blueflower.stapel2d.drawing.Color (io.blueflower.stapel2d.drawing.Color)
.class public final Lio/blueflower/stapel2d/drawing/Color;
.super Ljava/lang/Object;
.source "Color.java"


# instance fields
.field public a:I

.field public b:I

.field public g:I

.field public r:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    .line 14
    iput v0, p0, Lio/blueflower/stapel2d/drawing/Color;->a:I

    return-void
.end method

.method public constructor <init>(FFF)V
    .registers 5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 22
    invoke-direct {p0, p1, p2, p3, v0}, Lio/blueflower/stapel2d/drawing/Color;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .registers 6

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    mul-float/2addr p3, v0

    float-to-int p3, p3

    mul-float/2addr p4, v0

    float-to-int p4, p4

    .line 30
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/blueflower/stapel2d/drawing/Color;->setTo(IIII)Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 5

    const/16 v0, 0xff

    .line 18
    invoke-direct {p0, p1, p2, p3, v0}, Lio/blueflower/stapel2d/drawing/Color;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/blueflower/stapel2d/drawing/Color;->setTo(IIII)Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method

.method public static fromHSV(FFF)Lio/blueflower/stapel2d/drawing/Color;
    .registers 8

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p0, v0

    const v0, 0x40490fdb    # (float)Math.PI

    div-float/2addr p0, v0

    float-to-int v0, p0

    int-to-float v1, v0

    sub-float/2addr p0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, p1

    mul-float/2addr v2, p2

    mul-float v3, p1, p0

    sub-float v3, v1, v3

    mul-float/2addr v3, p2

    sub-float p0, v1, p0

    mul-float/2addr p1, p0

    sub-float/2addr v1, p1

    mul-float/2addr v1, p2

    const/4 p0, 0x1

    if-eq v0, p0, :cond_39

    const/4 p0, 0x2

    if-eq v0, p0, :cond_36

    const/4 p0, 0x3

    if-eq v0, p0, :cond_32

    const/4 p0, 0x4

    if-eq v0, p0, :cond_2e

    const/4 p0, 0x5

    if-eq v0, p0, :cond_2c

    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_3c

    :cond_2c
    move v1, v3

    goto :goto_3c

    :cond_2e
    move v4, v1

    move v1, p2

    :goto_30
    move p2, v4

    goto :goto_3c

    :cond_32
    move v1, p2

    move p2, v2

    move v2, v3

    goto :goto_3c

    :cond_36
    move v4, v2

    move v2, p2

    goto :goto_30

    :cond_39
    move v1, v2

    move v2, p2

    move p2, v3

    .line 312
    :goto_3c
    new-instance p0, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {p0, p2, v2, v1}, Lio/blueflower/stapel2d/drawing/Color;-><init>(FFF)V

    return-object p0
.end method

.method public static fromHex(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 5

    .line 264
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_c

    .line 265
    invoke-static {p0, p1, p2}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p0

    return-object p0

    .line 267
    :cond_c
    invoke-static {p0, p1, p2}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGBA(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p0

    return-object p0
.end method

.method public static fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 3

    .line 238
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    new-instance v1, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v1}, Lio/blueflower/stapel2d/drawing/Color;-><init>()V

    invoke-static {p0, v0, v1}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p0

    return-object p0
.end method

.method public static fromHexRGB(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 4

    const/16 v0, 0x10

    .line 243
    :try_start_2
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0, p2}, Lio/blueflower/stapel2d/drawing/Color;->fromRGB(ILio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    if-eqz p1, :cond_10

    .line 246
    invoke-virtual {p2, p1}, Lio/blueflower/stapel2d/drawing/Color;->setTo(Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    :cond_10
    return-object p2
.end method

.method public static fromHexRGBA(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 5

    const/16 v0, 0x10

    .line 254
    :try_start_2
    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    long-to-int p0, v0

    invoke-static {p0, p2}, Lio/blueflower/stapel2d/drawing/Color;->fromRGBA(ILio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    if-eqz p1, :cond_11

    .line 257
    invoke-virtual {p2, p1}, Lio/blueflower/stapel2d/drawing/Color;->setTo(Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    :cond_11
    return-object p2
.end method

.method public static fromRGB(ILio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 5

    shr-int/lit8 v0, p0, 0x10

    const/16 v1, 0xff

    and-int/2addr v0, v1

    shr-int/lit8 v2, p0, 0x8

    and-int/2addr v2, v1

    and-int/2addr p0, v1

    .line 233
    invoke-virtual {p1, v0, v2, p0, v1}, Lio/blueflower/stapel2d/drawing/Color;->setTo(IIII)Lio/blueflower/stapel2d/drawing/Color;

    return-object p1
.end method

.method public static fromRGBA(ILio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 5

    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p0, p0, 0xff

    .line 216
    invoke-virtual {p1, v0, v1, v2, p0}, Lio/blueflower/stapel2d/drawing/Color;->setTo(IIII)Lio/blueflower/stapel2d/drawing/Color;

    return-object p1
.end method


# virtual methods
.method public copy()Lio/blueflower/stapel2d/drawing/Color;
    .registers 6

    .line 118
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Color;->r:I

    iget v2, p0, Lio/blueflower/stapel2d/drawing/Color;->g:I

    iget v3, p0, Lio/blueflower/stapel2d/drawing/Color;->b:I

    iget v4, p0, Lio/blueflower/stapel2d/drawing/Color;->a:I

    invoke-direct {v0, v1, v2, v3, v4}, Lio/blueflower/stapel2d/drawing/Color;-><init>(IIII)V

    return-object v0
.end method

.method public enlighted(I)Lio/blueflower/stapel2d/drawing/Color;
    .registers 7

    .line 38
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Color;->r:I

    add-int/2addr v1, p1

    const/16 v2, 0xff

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v3, p0, Lio/blueflower/stapel2d/drawing/Color;->g:I

    add-int/2addr v3, p1

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p0, Lio/blueflower/stapel2d/drawing/Color;->b:I

    add-int/2addr v4, p1

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {v0, v1, v3, p1}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 317
    instance-of v0, p1, Lio/blueflower/stapel2d/drawing/Color;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 318
    check-cast p1, Lio/blueflower/stapel2d/drawing/Color;

    .line 319
    iget v0, p1, Lio/blueflower/stapel2d/drawing/Color;->a:I

    iget v2, p0, Lio/blueflower/stapel2d/drawing/Color;->a:I

    if-ne v0, v2, :cond_21

    iget v0, p1, Lio/blueflower/stapel2d/drawing/Color;->r:I

    iget v2, p0, Lio/blueflower/stapel2d/drawing/Color;->r:I

    if-ne v0, v2, :cond_21

    iget v0, p1, Lio/blueflower/stapel2d/drawing/Color;->g:I

    iget v2, p0, Lio/blueflower/stapel2d/drawing/Color;->g:I

    if-ne v0, v2, :cond_21

    iget p1, p1, Lio/blueflower/stapel2d/drawing/Color;->b:I

    iget v0, p0, Lio/blueflower/stapel2d/drawing/Color;->b:I

    if-ne p1, v0, :cond_21

    const/4 p1, 0x1

    return p1

    :cond_21
    return v1
.end method

.method public getAlpha()I
    .registers 2

    .line 62
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Color;->a:I

    return v0
.end method

.method public getBlue()I
    .registers 2

    .line 58
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Color;->b:I

    return v0
.end method

.method public getGreen()I
    .registers 2

    .line 54
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Color;->g:I

    return v0
.end method

.method public getHue()F
    .registers 6

    .line 122
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Color;->getNormalizedMax()F

    move-result v0

    .line 123
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Color;->getNormalizedMin()F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_f

    return v1

    .line 127
    :cond_f
    iget v1, p0, Lio/blueflower/stapel2d/drawing/Color;->r:I

    iget v2, p0, Lio/blueflower/stapel2d/drawing/Color;->g:I

    const v3, 0x3f860a92

    if-lt v1, v2, :cond_28

    iget v4, p0, Lio/blueflower/stapel2d/drawing/Color;->b:I

    if-lt v1, v4, :cond_28

    .line 128
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Color;->getNormalizedG()F

    move-result v1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Color;->getNormalizedB()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    :goto_26
    mul-float/2addr v1, v3

    return v1

    :cond_28
    if-lt v2, v1, :cond_3c

    .line 129
    iget v1, p0, Lio/blueflower/stapel2d/drawing/Color;->b:I

    if-lt v2, v1, :cond_3c

    .line 130
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Color;->getNormalizedB()F

    move-result v1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Color;->getNormalizedR()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    :goto_3a
    add-float/2addr v1, v0

    goto :goto_26

    .line 132
    :cond_3c
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Color;->getNormalizedR()F

    move-result v1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Color;->getNormalizedG()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    const/high16 v0, 0x40800000    # 4.0f

    goto :goto_3a
.end method

.method public getMax()I
    .registers 3

    .line 149
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Color;->r:I

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Color;->g:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Color;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getMin()I
    .registers 3

    .line 153
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Color;->r:I

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Color;->g:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Color;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getNormalizedA()F
    .registers 3

    .line 78
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Color;->a:I

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getNormalizedB()F
    .registers 3

    .line 74
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Color;->b:I

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getNormalizedG()F
    .registers 3

    .line 70
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Color;->g:I

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getNormalizedMax()F
    .registers 3

    .line 157
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Color;->getMax()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getNormalizedMin()F
    .registers 3

    .line 161
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Color;->getMin()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getNormalizedR()F
    .registers 3

    .line 66
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Color;->r:I

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getRed()I
    .registers 2

    .line 50
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Color;->r:I

    return v0
.end method

.method public getSaturation()F
    .registers 3

    .line 137
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Color;->r:I

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Color;->g:I

    if-ne v0, v1, :cond_c

    iget v0, p0, Lio/blueflower/stapel2d/drawing/Color;->b:I

    if-ne v1, v0, :cond_c

    const/4 v0, 0x0

    return v0

    .line 140
    :cond_c
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Color;->getNormalizedMax()F

    move-result v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Color;->getNormalizedMin()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Color;->getNormalizedMax()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getValue()F
    .registers 2

    .line 145
    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Color;->getNormalizedMax()F

    move-result v0

    return v0
.end method

.method public lerp(Lio/blueflower/stapel2d/drawing/Color;F)Lio/blueflower/stapel2d/drawing/Color;
    .registers 6

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 43
    iget v1, p0, Lio/blueflower/stapel2d/drawing/Color;->r:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p1, Lio/blueflower/stapel2d/drawing/Color;->r:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lio/blueflower/stapel2d/drawing/Color;->r:I

    .line 44
    iget v1, p0, Lio/blueflower/stapel2d/drawing/Color;->g:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p1, Lio/blueflower/stapel2d/drawing/Color;->g:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lio/blueflower/stapel2d/drawing/Color;->g:I

    .line 45
    iget v1, p0, Lio/blueflower/stapel2d/drawing/Color;->b:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget p1, p1, Lio/blueflower/stapel2d/drawing/Color;->b:I

    int-to-float p1, p1

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    float-to-int p1, v0

    iput p1, p0, Lio/blueflower/stapel2d/drawing/Color;->b:I

    return-object p0
.end method

.method public setAlpha(I)V
    .registers 3

    const/4 v0, 0x0

    .line 106
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0xff

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lio/blueflower/stapel2d/drawing/Color;->a:I

    return-void
.end method

.method public setBlue(I)V
    .registers 3

    const/4 v0, 0x0

    .line 102
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0xff

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lio/blueflower/stapel2d/drawing/Color;->b:I

    return-void
.end method

.method public setGreen(I)V
    .registers 3

    const/4 v0, 0x0

    .line 98
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0xff

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lio/blueflower/stapel2d/drawing/Color;->g:I

    return-void
.end method

.method public setRed(I)V
    .registers 3

    const/4 v0, 0x0

    .line 94
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0xff

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lio/blueflower/stapel2d/drawing/Color;->r:I

    return-void
.end method

.method public setTo(III)Lio/blueflower/stapel2d/drawing/Color;
    .registers 5

    .line 82
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Color;->a:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/blueflower/stapel2d/drawing/Color;->setTo(IIII)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    return-object p1
.end method

.method public setTo(IIII)Lio/blueflower/stapel2d/drawing/Color;
    .registers 7

    const/4 v0, 0x0

    .line 86
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v1, 0xff

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lio/blueflower/stapel2d/drawing/Color;->r:I

    .line 87
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lio/blueflower/stapel2d/drawing/Color;->g:I

    .line 88
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lio/blueflower/stapel2d/drawing/Color;->b:I

    .line 89
    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lio/blueflower/stapel2d/drawing/Color;->a:I

    return-object p0
.end method

.method public setTo(Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 5

    .line 110
    iget v0, p1, Lio/blueflower/stapel2d/drawing/Color;->r:I

    iget v1, p1, Lio/blueflower/stapel2d/drawing/Color;->g:I

    iget v2, p1, Lio/blueflower/stapel2d/drawing/Color;->b:I

    iget p1, p1, Lio/blueflower/stapel2d/drawing/Color;->a:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lio/blueflower/stapel2d/drawing/Color;->setTo(IIII)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    return-object p1
.end method

.method public toABGR()I
    .registers 3

    .line 165
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Color;->a:I

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Color;->b:I

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Color;->g:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Color;->r:I

    or-int/2addr v0, v1

    return v0
.end method

.method public toARGB()I
    .registers 3

    .line 173
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Color;->a:I

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Color;->r:I

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Color;->g:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Color;->b:I

    or-int/2addr v0, v1

    return v0
.end method

.method public toHexRGB()Ljava/lang/String;
    .registers 4

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Color;->toRGB()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    :goto_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_1b

    const/4 v1, 0x0

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 183
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toRGB()I
    .registers 3

    .line 177
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Color;->r:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Color;->g:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Color;->b:I

    or-int/2addr v0, v1

    return v0
.end method

.method public toRGBA()I
    .registers 3

    .line 169
    iget v0, p0, Lio/blueflower/stapel2d/drawing/Color;->r:I

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Color;->g:I

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Color;->b:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Color;->a:I

    or-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Color { r: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Color;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", g: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Color;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", b: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Color;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", a: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Color;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
