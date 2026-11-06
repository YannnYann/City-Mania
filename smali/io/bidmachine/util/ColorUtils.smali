###### Class io.bidmachine.util.ColorUtils (io.bidmachine.util.ColorUtils)
.class public final Lio/bidmachine/util/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColorUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorUtils.kt\nio/bidmachine/util/ColorUtils\n+ 2 Utils.kt\nio/bidmachine/util/UtilsKt\n*L\n1#1,303:1\n846#2,4:304\n846#2,4:308\n*S KotlinDebug\n*F\n+ 1 ColorUtils.kt\nio/bidmachine/util/ColorUtils\n*L\n178#1:304,4\n188#1:308,4\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lio/bidmachine/util/ColorUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/util/ColorUtils;

    invoke-direct {v0}, Lio/bidmachine/util/ColorUtils;-><init>()V

    sput-object v0, Lio/bidmachine/util/ColorUtils;->INSTANCE:Lio/bidmachine/util/ColorUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final alpha(I)I
    .registers 1

    .line 200
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    return p0
.end method

.method public static final alphaToRatio(IF)F
    .registers 3

    .line 204
    invoke-static {p0}, Lio/bidmachine/util/ColorUtils;->alpha(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/high16 v0, 0x437f0000    # 255.0f

    invoke-static {p0, v0, p1}, Lio/bidmachine/util/UtilsKt;->toRatio(Ljava/lang/Number;FF)F

    move-result p0

    return p0
.end method

.method public static final blue(I)I
    .registers 1

    .line 221
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    return p0
.end method

.method public static final blueToRatio(I)F
    .registers 5

    .line 225
    invoke-static {p0}, Lio/bidmachine/util/ColorUtils;->blue(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/high16 v2, 0x437f0000    # 255.0f

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lio/bidmachine/util/UtilsKt;->toRatio$default(Ljava/lang/Number;FFILjava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public static final green(I)I
    .registers 1

    .line 214
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result p0

    return p0
.end method

.method public static final greenToRatio(I)F
    .registers 5

    .line 218
    invoke-static {p0}, Lio/bidmachine/util/ColorUtils;->green(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/high16 v2, 0x437f0000    # 255.0f

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lio/bidmachine/util/UtilsKt;->toRatio$default(Ljava/lang/Number;FFILjava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public static final parseColorARGBSafely(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_13

    .line 175
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_13

    .line 179
    :cond_a
    :try_start_a
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_13

    return-object p0

    :catchall_13
    :cond_13
    :goto_13
    return-object v0
.end method

.method public static final parseColorRGBASafely(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 6

    .line 185
    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    const/4 v1, 0x0

    if-eqz p0, :cond_48

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_c

    goto :goto_48

    :cond_c
    const/4 v2, 0x0

    .line 189
    :try_start_d
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_3f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x9

    if-ne v2, v4, :cond_3f

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 195
    :cond_3f
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_47
    .catchall {:try_start_d .. :try_end_47} :catchall_48

    return-object p0

    :catchall_48
    :cond_48
    :goto_48
    return-object v1
.end method

.method public static final red(I)I
    .registers 1

    .line 207
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result p0

    return p0
.end method

.method public static final redToRatio(I)F
    .registers 5

    .line 211
    invoke-static {p0}, Lio/bidmachine/util/ColorUtils;->red(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/high16 v2, 0x437f0000    # 255.0f

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lio/bidmachine/util/UtilsKt;->toRatio$default(Ljava/lang/Number;FFILjava/lang/Object;)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final argb(FFFF)I
    .registers 7

    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 149
    invoke-static {p1, p2, p3, p4}, Lio/bidmachine/util/ColorUtils$$ExternalSyntheticApiModelOutline0;->m(FFFF)I

    move-result p1

    return p1

    .line 151
    :cond_b
    invoke-static {p1}, Lio/bidmachine/util/ColorUtilsKt;->toColorInt(F)I

    move-result p1

    shl-int/lit8 p1, p1, 0x18

    invoke-static {p2}, Lio/bidmachine/util/ColorUtilsKt;->toColorInt(F)I

    move-result p2

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    invoke-static {p3}, Lio/bidmachine/util/ColorUtilsKt;->toColorInt(F)I

    move-result p2

    shl-int/lit8 p2, p2, 0x8

    invoke-static {p4}, Lio/bidmachine/util/ColorUtilsKt;->toColorInt(F)I

    move-result p3

    or-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1
.end method

.method public final avg([IZI)I
    .registers 20

    move-object/from16 v0, p1

    move/from16 v1, p3

    const-string v2, "pixels"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x3

    if-eqz p2, :cond_e

    const/4 v3, 0x4

    goto :goto_f

    :cond_e
    move v3, v2

    .line 89
    :goto_f
    new-array v4, v3, [F

    .line 92
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    if-lez v1, :cond_73

    const/4 v6, 0x0

    invoke-static {v6, v5, v1}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    if-ltz v5, :cond_53

    move v12, v6

    .line 93
    :goto_23
    aget v13, v0, v12

    .line 94
    aget v14, v4, v6

    invoke-static {v13}, Lio/bidmachine/util/ColorUtilsKt;->redToRatio(I)F

    move-result v15

    add-float/2addr v14, v15

    aput v14, v4, v6

    .line 95
    aget v14, v4, v9

    invoke-static {v13}, Lio/bidmachine/util/ColorUtilsKt;->greenToRatio(I)F

    move-result v15

    add-float/2addr v14, v15

    aput v14, v4, v9

    .line 96
    aget v14, v4, v8

    invoke-static {v13}, Lio/bidmachine/util/ColorUtilsKt;->blueToRatio(I)F

    move-result v15

    add-float/2addr v14, v15

    aput v14, v4, v8

    if-le v3, v2, :cond_4c

    .line 98
    aget v14, v4, v2

    const/4 v15, 0x0

    invoke-static {v13, v15, v9, v7}, Lio/bidmachine/util/ColorUtilsKt;->alphaToRatio$default(IFILjava/lang/Object;)F

    move-result v13

    add-float/2addr v14, v13

    aput v14, v4, v2

    :cond_4c
    const-wide/16 v13, 0x1

    add-long/2addr v10, v13

    if-eq v12, v5, :cond_53

    add-int/2addr v12, v1

    goto :goto_23

    .line 105
    :cond_53
    aget v0, v4, v6

    long-to-float v1, v10

    div-float/2addr v0, v1

    .line 106
    aget v3, v4, v9

    div-float/2addr v3, v1

    .line 107
    aget v5, v4, v8

    div-float/2addr v5, v1

    .line 108
    invoke-static {v4, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->getOrNull([FI)Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_6c

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    :cond_6c
    move-object/from16 v2, p0

    .line 104
    invoke-virtual {v2, v0, v3, v5, v7}, Lio/bidmachine/util/ColorUtils;->rgba(FFFLjava/lang/Float;)I

    move-result v0

    return v0

    :cond_73
    move-object/from16 v2, p0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Step must be positive, was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blerp(IIIIFFZ)I
    .registers 8

    .line 33
    invoke-virtual {p0, p1, p2, p5, p7}, Lio/bidmachine/util/ColorUtils;->lerp(IIFZ)I

    move-result p1

    invoke-virtual {p0, p3, p4, p5, p7}, Lio/bidmachine/util/ColorUtils;->lerp(IIFZ)I

    move-result p2

    invoke-virtual {p0, p1, p2, p6, p7}, Lio/bidmachine/util/ColorUtils;->lerp(IIFZ)I

    move-result p1

    return p1
.end method

.method public final dist(II)F
    .registers 6

    .line 69
    invoke-static {p1}, Lio/bidmachine/util/ColorUtilsKt;->redToRatio(I)F

    move-result v0

    invoke-static {p2}, Lio/bidmachine/util/ColorUtilsKt;->redToRatio(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 70
    invoke-static {p1}, Lio/bidmachine/util/ColorUtilsKt;->greenToRatio(I)F

    move-result v1

    invoke-static {p2}, Lio/bidmachine/util/ColorUtilsKt;->greenToRatio(I)F

    move-result v2

    sub-float/2addr v1, v2

    .line 71
    invoke-static {p1}, Lio/bidmachine/util/ColorUtilsKt;->blueToRatio(I)F

    move-result p1

    invoke-static {p2}, Lio/bidmachine/util/ColorUtilsKt;->blueToRatio(I)F

    move-result p2

    sub-float/2addr p1, p2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    float-to-double p1, v0

    .line 72
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public final lerp(IIFZ)I
    .registers 10

    .line 51
    invoke-static {p1}, Lio/bidmachine/util/ColorUtilsKt;->redToRatio(I)F

    move-result v0

    invoke-static {p2}, Lio/bidmachine/util/ColorUtilsKt;->redToRatio(I)F

    move-result v1

    invoke-static {v0, v1, p3}, Lio/bidmachine/util/MathUtils;->lerp(FFF)F

    move-result v0

    .line 52
    invoke-static {p1}, Lio/bidmachine/util/ColorUtilsKt;->greenToRatio(I)F

    move-result v1

    invoke-static {p2}, Lio/bidmachine/util/ColorUtilsKt;->greenToRatio(I)F

    move-result v2

    invoke-static {v1, v2, p3}, Lio/bidmachine/util/MathUtils;->lerp(FFF)F

    move-result v1

    .line 53
    invoke-static {p1}, Lio/bidmachine/util/ColorUtilsKt;->blueToRatio(I)F

    move-result v2

    invoke-static {p2}, Lio/bidmachine/util/ColorUtilsKt;->blueToRatio(I)F

    move-result v3

    invoke-static {v2, v3, p3}, Lio/bidmachine/util/MathUtils;->lerp(FFF)F

    move-result v2

    const/4 v3, 0x0

    if-eqz p4, :cond_39

    const/4 p4, 0x0

    const/4 v4, 0x1

    .line 54
    invoke-static {p1, p4, v4, v3}, Lio/bidmachine/util/ColorUtilsKt;->alphaToRatio$default(IFILjava/lang/Object;)F

    move-result p1

    invoke-static {p2, p4, v4, v3}, Lio/bidmachine/util/ColorUtilsKt;->alphaToRatio$default(IFILjava/lang/Object;)F

    move-result p2

    invoke-static {p1, p2, p3}, Lio/bidmachine/util/MathUtils;->lerp(FFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 50
    :cond_39
    invoke-virtual {p0, v0, v1, v2, v3}, Lio/bidmachine/util/ColorUtils;->rgba(FFFLjava/lang/Float;)I

    move-result p1

    return p1
.end method

.method public final rgb(FFF)I
    .registers 6

    .line 167
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 168
    invoke-static {p1, p2, p3}, Lio/bidmachine/util/ColorUtils$$ExternalSyntheticApiModelOutline1;->m(FFF)I

    move-result p1

    return p1

    .line 170
    :cond_b
    invoke-static {p1}, Lio/bidmachine/util/ColorUtilsKt;->toColorInt(F)I

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    invoke-static {p2}, Lio/bidmachine/util/ColorUtilsKt;->toColorInt(F)I

    move-result p2

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    invoke-static {p3}, Lio/bidmachine/util/ColorUtilsKt;->toColorInt(F)I

    move-result p2

    or-int/2addr p1, p2

    return p1
.end method

.method public final rgba(FFFLjava/lang/Float;)I
    .registers 5

    if-eqz p4, :cond_b

    .line 128
    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    invoke-virtual {p0, p4, p1, p2, p3}, Lio/bidmachine/util/ColorUtils;->argb(FFFF)I

    move-result p1

    return p1

    .line 130
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/util/ColorUtils;->rgb(FFF)I

    move-result p1

    return p1
.end method
