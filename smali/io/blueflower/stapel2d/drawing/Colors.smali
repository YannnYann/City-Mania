###### Class io.blueflower.stapel2d.drawing.Colors (io.blueflower.stapel2d.drawing.Colors)
.class public final Lio/blueflower/stapel2d/drawing/Colors;
.super Ljava/lang/Object;
.source "Colors.java"


# static fields
.field public static final BLACK:Lio/blueflower/stapel2d/drawing/Color;

.field public static final BLUE:Lio/blueflower/stapel2d/drawing/Color;

.field public static final CYAN:Lio/blueflower/stapel2d/drawing/Color;

.field public static final DARK_BLUE:Lio/blueflower/stapel2d/drawing/Color;

.field public static final DARK_GRAY:Lio/blueflower/stapel2d/drawing/Color;

.field public static final DARK_GREEN:Lio/blueflower/stapel2d/drawing/Color;

.field public static final DARK_ORANGE:Lio/blueflower/stapel2d/drawing/Color;

.field public static final DARK_RED:Lio/blueflower/stapel2d/drawing/Color;

.field public static final DARK_YELLOW:Lio/blueflower/stapel2d/drawing/Color;

.field public static final GRAY:Lio/blueflower/stapel2d/drawing/Color;

.field public static final GREEN:Lio/blueflower/stapel2d/drawing/Color;

.field public static final LIGHT_BLUE:Lio/blueflower/stapel2d/drawing/Color;

.field public static final LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

.field public static final LIGHT_GREEN:Lio/blueflower/stapel2d/drawing/Color;

.field public static final LIGHT_LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

.field public static final LIGHT_ORANGE:Lio/blueflower/stapel2d/drawing/Color;

.field public static final LIGHT_RED:Lio/blueflower/stapel2d/drawing/Color;

.field public static final LIGHT_YELLOW:Lio/blueflower/stapel2d/drawing/Color;

.field public static final MAGENTA:Lio/blueflower/stapel2d/drawing/Color;

.field public static final MARINE_BLUE:Lio/blueflower/stapel2d/drawing/Color;

.field public static final MARINE_BLUE_LIGHT:Lio/blueflower/stapel2d/drawing/Color;

.field public static final MARINE_BLUE_ULTRA_LIGHT:Lio/blueflower/stapel2d/drawing/Color;

.field public static final ORANGE:Lio/blueflower/stapel2d/drawing/Color;

.field public static final PURPLE:Lio/blueflower/stapel2d/drawing/Color;

.field public static final RED:Lio/blueflower/stapel2d/drawing/Color;

.field public static final TEMP:Lio/blueflower/stapel2d/drawing/Color;

.field public static final TRANSPARENT:Lio/blueflower/stapel2d/drawing/Color;

.field public static final TURQUOISE:Lio/blueflower/stapel2d/drawing/Color;

.field public static final WHITE:Lio/blueflower/stapel2d/drawing/Color;

.field public static final YELLOW:Lio/blueflower/stapel2d/drawing/Color;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 8
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    sput-object v0, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    .line 9
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v2, 0xff

    invoke-direct {v0, v2, v2, v2}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    sput-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    .line 10
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v0, v2, v1, v1}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    sput-object v0, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    .line 11
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v0, v1, v2, v1}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    sput-object v0, Lio/blueflower/stapel2d/drawing/Colors;->GREEN:Lio/blueflower/stapel2d/drawing/Color;

    .line 12
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v0, v1, v1, v2}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    sput-object v0, Lio/blueflower/stapel2d/drawing/Colors;->BLUE:Lio/blueflower/stapel2d/drawing/Color;

    .line 13
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v0, v2, v2, v1}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    sput-object v0, Lio/blueflower/stapel2d/drawing/Colors;->YELLOW:Lio/blueflower/stapel2d/drawing/Color;

    .line 14
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v0, v2, v1, v2}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    sput-object v0, Lio/blueflower/stapel2d/drawing/Colors;->MAGENTA:Lio/blueflower/stapel2d/drawing/Color;

    .line 15
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v0, v1, v2, v2}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    sput-object v0, Lio/blueflower/stapel2d/drawing/Colors;->CYAN:Lio/blueflower/stapel2d/drawing/Color;

    .line 16
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v3, 0x8c

    invoke-direct {v0, v3, v3, v3}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    sput-object v0, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    .line 17
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v4, 0xc8

    invoke-direct {v0, v2, v4, v1}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    sput-object v0, Lio/blueflower/stapel2d/drawing/Colors;->ORANGE:Lio/blueflower/stapel2d/drawing/Color;

    .line 19
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v5, 0x46

    invoke-direct {v0, v5, v5, v5}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    sput-object v0, Lio/blueflower/stapel2d/drawing/Colors;->DARK_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    .line 20
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v0, v4, v4, v4}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    sput-object v0, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    .line 21
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v5, 0xe6

    invoke-direct {v0, v5, v5, v5}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    sput-object v0, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    .line 22
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v0, v3, v1, v1}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    sput-object v0, Lio/blueflower/stapel2d/drawing/Colors;->DARK_RED:Lio/blueflower/stapel2d/drawing/Color;

    .line 23
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v0, v1, v3, v1}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    sput-object v0, Lio/blueflower/stapel2d/drawing/Colors;->DARK_GREEN:Lio/blueflower/stapel2d/drawing/Color;

    .line 24
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v0, v1, v1, v3}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    sput-object v0, Lio/blueflower/stapel2d/drawing/Colors;->DARK_BLUE:Lio/blueflower/stapel2d/drawing/Color;

    .line 25
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v0, v3, v3, v1}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    sput-object v0, Lio/blueflower/stapel2d/drawing/Colors;->DARK_YELLOW:Lio/blueflower/stapel2d/drawing/Color;

    .line 26
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v5, 0x64

    invoke-direct {v0, v3, v5, v1}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    sput-object v0, Lio/blueflower/stapel2d/drawing/Colors;->DARK_ORANGE:Lio/blueflower/stapel2d/drawing/Color;

    .line 28
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v3, 0x83

    const/16 v5, 0xb7

    invoke-direct {v0, v1, v3, v5}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    sput-object v0, Lio/blueflower/stapel2d/drawing/Colors;->MARINE_BLUE:Lio/blueflower/stapel2d/drawing/Color;

    .line 29
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v3, 0xb5

    const/16 v5, 0xdf

    const/16 v6, 0x50

    invoke-direct {v0, v6, v3, v5}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    sput-object v0, Lio/blueflower/stapel2d/drawing/Colors;->MARINE_BLUE_LIGHT:Lio/blueflower/stapel2d/drawing/Color;

    .line 30
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v3, 0xf5

    const/16 v5, 0xfa

    const/16 v7, 0xeb

    invoke-direct {v0, v7, v3, v5}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    sput-object v0, Lio/blueflower/stapel2d/drawing/Colors;->MARINE_BLUE_ULTRA_LIGHT:Lio/blueflower/stapel2d/drawing/Color;

    .line 31
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v0, v4, v6, v4}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    sput-object v0, Lio/blueflower/stapel2d/drawing/Colors;->PURPLE:Lio/blueflower/stapel2d/drawing/Color;

    .line 32
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v3, 0xe0

    const/16 v4, 0xd0

    const/16 v5, 0x40

    invoke-direct {v0, v5, v3, v4}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    sput-object v0, Lio/blueflower/stapel2d/drawing/Colors;->TURQUOISE:Lio/blueflower/stapel2d/drawing/Color;

    .line 33
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v3, 0x9a

    const/16 v4, 0x94

    invoke-direct {v0, v2, v3, v4}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    sput-object v0, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_RED:Lio/blueflower/stapel2d/drawing/Color;

    .line 34
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v3, 0xa4

    const/16 v5, 0x8a

    invoke-direct {v0, v5, v2, v3}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    sput-object v0, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_GREEN:Lio/blueflower/stapel2d/drawing/Color;

    .line 35
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v3, 0xc2

    invoke-direct {v0, v5, v3, v2}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    sput-object v0, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_BLUE:Lio/blueflower/stapel2d/drawing/Color;

    .line 36
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v3, 0xae

    invoke-direct {v0, v2, v2, v3}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    sput-object v0, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_YELLOW:Lio/blueflower/stapel2d/drawing/Color;

    .line 37
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v3, 0xcc

    invoke-direct {v0, v2, v3, v4}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    sput-object v0, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_ORANGE:Lio/blueflower/stapel2d/drawing/Color;

    .line 39
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lio/blueflower/stapel2d/drawing/Color;-><init>(IIII)V

    sput-object v0, Lio/blueflower/stapel2d/drawing/Colors;->TRANSPARENT:Lio/blueflower/stapel2d/drawing/Color;

    .line 41
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v0, v1, v1, v1}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    sput-object v0, Lio/blueflower/stapel2d/drawing/Colors;->TEMP:Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method

.method public static getRepr(IIII)Lio/blueflower/stapel2d/drawing/Color;
    .registers 5

    const/16 v0, 0xff

    if-ne p0, v0, :cond_d

    if-ne p1, v0, :cond_d

    if-ne p2, v0, :cond_d

    if-ne p3, v0, :cond_d

    .line 78
    sget-object p0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    return-object p0

    :cond_d
    if-nez p0, :cond_18

    if-nez p1, :cond_18

    if-nez p2, :cond_18

    if-ne p3, v0, :cond_18

    .line 80
    sget-object p0, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    return-object p0

    .line 82
    :cond_18
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/blueflower/stapel2d/drawing/Color;-><init>(IIII)V

    return-object v0
.end method

.method public static interpolate(FLio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 4

    .line 46
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->TEMP:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v0, p0, p1, p2}, Lio/blueflower/stapel2d/drawing/Colors;->interpolate(Lio/blueflower/stapel2d/drawing/Color;FLio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p0

    return-object p0
.end method

.method public static interpolate(Lio/blueflower/stapel2d/drawing/Color;FLio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 9

    const/4 v0, 0x0

    .line 50
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    sub-float/2addr v0, p1

    .line 52
    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-virtual {p3}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 53
    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {p3}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 54
    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-virtual {p3}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 55
    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Color;->getAlpha()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr v0, p2

    invoke-virtual {p3}, Lio/blueflower/stapel2d/drawing/Color;->getAlpha()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 51
    invoke-virtual {p0, v1, v2, v3, p1}, Lio/blueflower/stapel2d/drawing/Color;->setTo(IIII)Lio/blueflower/stapel2d/drawing/Color;

    return-object p0
.end method

.method public static interpolateLight(FLio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 4

    .line 61
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->TEMP:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v0, p0, p1, p2}, Lio/blueflower/stapel2d/drawing/Colors;->interpolateLight(Lio/blueflower/stapel2d/drawing/Color;FLio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p0

    return-object p0
.end method

.method public static interpolateLight(Lio/blueflower/stapel2d/drawing/Color;FLio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 9

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    sub-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 65
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 66
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 68
    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-virtual {p3}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 69
    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {p3}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 70
    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-virtual {p3}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 71
    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Color;->getAlpha()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr v0, p2

    invoke-virtual {p3}, Lio/blueflower/stapel2d/drawing/Color;->getAlpha()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 67
    invoke-virtual {p0, v1, v2, v3, p1}, Lio/blueflower/stapel2d/drawing/Color;->setTo(IIII)Lio/blueflower/stapel2d/drawing/Color;

    return-object p0
.end method
