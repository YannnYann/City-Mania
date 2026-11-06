###### Class com.unity3d.ads.core.domain.WebViewScreenCaptureKt (com.unity3d.ads.core.domain.WebViewScreenCaptureKt)
.class public final Lcom/unity3d/ads/core/domain/WebViewScreenCaptureKt;
.super Ljava/lang/Object;
.source "WebViewScreenCapture.kt"


# direct methods
.method public static final countBlackPixelRatio([II)D
    .registers 8

    const-string v0, "pixels"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    array-length v0, p0

    if-nez v0, :cond_b

    const-wide/16 p0, 0x0

    return-wide p0

    .line 158
    :cond_b
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    if-ge v1, v0, :cond_27

    aget v3, p0, v1

    shr-int/lit8 v4, v3, 0x10

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 v3, v3, 0xff

    if-ge v4, p1, :cond_24

    if-ge v5, p1, :cond_24

    if-ge v3, p1, :cond_24

    add-int/lit8 v2, v2, 0x1

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_27
    int-to-double v0, v2

    .line 164
    array-length p0, p0

    int-to-double p0, p0

    div-double/2addr v0, p0

    return-wide v0
.end method
