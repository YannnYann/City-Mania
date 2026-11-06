###### Class ads_mobile_sdk.bd3 (ads_mobile_sdk.bd3)
.class public final Lads_mobile_sdk/bd3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/hardware/SensorEvent;)F
    .registers 4

    .line 2
    iget-object p0, p0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    .line 3
    aget v1, p0, v1

    const/4 v2, 0x2

    .line 4
    aget p0, p0, v2

    const v2, 0x411ce80a

    div-float/2addr v0, v2

    div-float/2addr v1, v2

    div-float/2addr p0, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v1, v0

    mul-float/2addr p0, p0

    add-float/2addr p0, v1

    float-to-double v0, p0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method
