###### Class androidx.core.util.TypedValueCompat (androidx.core.util.TypedValueCompat)
.class public Landroidx/core/util/TypedValueCompat;
.super Ljava/lang/Object;
.source "TypedValueCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/util/TypedValueCompat$Api34Impl;
    }
.end annotation


# direct methods
.method public static deriveDimension(IFLandroid/util/DisplayMetrics;)F
    .registers 5

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_b

    .line 96
    invoke-static {p0, p1, p2}, Landroidx/core/util/TypedValueCompat$Api34Impl;->deriveDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0

    :cond_b
    if-eqz p0, :cond_67

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_5f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_56

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4a

    const/4 v0, 0x4

    if-eq p0, v0, :cond_41

    const/4 v0, 0x5

    if-ne p0, v0, :cond_2a

    .line 128
    iget p0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    cmpl-float p2, p0, v1

    if-nez p2, :cond_24

    return v1

    :cond_24
    div-float/2addr p1, p0

    const p0, 0x3d214285

    :goto_28
    div-float/2addr p1, p0

    return p1

    .line 134
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid unitToConvertTo "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_41
    iget p0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    cmpl-float p2, p0, v1

    if-nez p2, :cond_48

    return v1

    :cond_48
    div-float/2addr p1, p0

    return p1

    .line 116
    :cond_4a
    iget p0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    cmpl-float p2, p0, v1

    if-nez p2, :cond_51

    return v1

    :cond_51
    div-float/2addr p1, p0

    const p0, 0x3c638e39

    goto :goto_28

    .line 111
    :cond_56
    iget p0, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    cmpl-float p2, p0, v1

    if-nez p2, :cond_5d

    return v1

    :cond_5d
    div-float/2addr p1, p0

    return p1

    .line 104
    :cond_5f
    iget p0, p2, Landroid/util/DisplayMetrics;->density:F

    cmpl-float p2, p0, v1

    if-nez p2, :cond_66

    return v1

    :cond_66
    div-float/2addr p1, p0

    :cond_67
    return p1
.end method

.method public static getUnitFromComplexDimension(I)I
    .registers 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 0
    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method public static pxToDp(FLandroid/util/DisplayMetrics;)F
    .registers 3

    const/4 v0, 0x1

    .line 166
    invoke-static {v0, p0, p1}, Landroidx/core/util/TypedValueCompat;->deriveDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

###### Class androidx.core.util.TypedValueCompat.Api34Impl (androidx.core.util.TypedValueCompat$Api34Impl)
.class public Landroidx/core/util/TypedValueCompat$Api34Impl;
.super Ljava/lang/Object;
.source "TypedValueCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/util/TypedValueCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api34Impl"
.end annotation


# direct methods
.method public static deriveDimension(IFLandroid/util/DisplayMetrics;)F
    .registers 3

    .line 207
    invoke-static {p0, p1, p2}, Landroid/util/TypedValue;->deriveDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method
