###### Class com.badlogic.gdx.utils.NumberUtils (com.badlogic.gdx.utils.NumberUtils)
.class public final Lcom/badlogic/gdx/utils/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# direct methods
.method public static floatToIntBits(F)I
    .registers 1

    .line 21
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    return p0
.end method

.method public static floatToRawIntBits(F)I
    .registers 1

    .line 25
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    return p0
.end method

.method public static intToFloatColor(I)F
    .registers 2

    const v0, -0x1000001

    and-int/2addr p0, v0

    .line 41
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method
