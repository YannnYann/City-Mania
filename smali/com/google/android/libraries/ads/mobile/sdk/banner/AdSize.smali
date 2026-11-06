###### Class com.google.android.libraries.ads.mobile.sdk.banner.AdSize (com.google.android.libraries.ads.mobile.sdk.banner.AdSize)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;
    }
.end annotation


# static fields
.field public static final BANNER:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

.field public static final Companion:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;

.field public static final FLUID:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

.field public static final FULL_BANNER:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

.field public static final LARGE_BANNER:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

.field public static final LEADERBOARD:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

.field public static final MEDIUM_RECTANGLE:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;-><init>(I)V

    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;

    .line 1
    new-instance v2, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    const/4 v8, 0x0

    const/16 v9, 0x38

    const/16 v3, 0x140

    const/16 v4, 0x32

    const-string v5, "320x50_mb"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;-><init>(IILjava/lang/String;ZZZI)V

    sput-object v2, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->BANNER:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    .line 6
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    const/16 v1, 0x1d4

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;-><init>(II)V

    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->FULL_BANNER:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    .line 9
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    const/16 v1, 0x140

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;-><init>(II)V

    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->LARGE_BANNER:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    .line 14
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    const/16 v1, 0x2d8

    const/16 v2, 0x5a

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;-><init>(II)V

    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->LEADERBOARD:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    .line 20
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    const/16 v1, 0x12c

    const/16 v2, 0xfa

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;-><init>(II)V

    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    .line 26
    new-instance v3, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    const/4 v9, 0x0

    const/16 v10, 0x38

    const/4 v4, -0x3

    const/4 v5, -0x4

    const-string v6, "320x50_mb"

    invoke-direct/range {v3 .. v10}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;-><init>(IILjava/lang/String;ZZZI)V

    sput-object v3, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->FLUID:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 11

    const/4 v6, 0x0

    const/16 v7, 0x38

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 21
    invoke-direct/range {v0 .. v7}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;-><init>(IILjava/lang/String;ZZZI)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;ZZZ)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->a:I

    .line 3
    iput p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->b:I

    .line 4
    iput-boolean p4, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->c:Z

    .line 5
    iput-boolean p5, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->d:Z

    .line 6
    iput-boolean p6, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->e:Z

    if-nez p3, :cond_28

    .line 7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_as"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_28
    iput-object p3, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->f:Ljava/lang/String;

    if-gez p1, :cond_4b

    const/4 p3, -0x3

    if-ne p1, p3, :cond_30

    goto :goto_4b

    .line 8
    :cond_30
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid width for AdSize: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4b
    :goto_4b
    if-gez p2, :cond_6c

    const/4 p1, -0x4

    if-ne p2, p1, :cond_51

    goto :goto_6c

    .line 9
    :cond_51
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid height for AdSize: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6c
    :goto_6c
    if-eqz p5, :cond_79

    if-nez p4, :cond_71

    goto :goto_79

    .line 10
    :cond_71
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "AdSize cannot be both inline and anchored adaptive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_79
    :goto_79
    if-eqz p5, :cond_86

    if-nez p6, :cond_7e

    goto :goto_86

    .line 13
    :cond_7e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "AdSize cannot be both inline and large anchored adaptive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_86
    :goto_86
    if-eqz p4, :cond_93

    if-nez p6, :cond_8b

    goto :goto_93

    .line 16
    :cond_8b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "AdSize cannot be both anchored and large anchored adaptive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_93
    :goto_93
    if-eqz p5, :cond_a1

    const/4 p1, 0x1

    if-lt p2, p1, :cond_99

    goto :goto_a1

    .line 19
    :cond_99
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An inline AdSize must have a positive height"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a1
    :goto_a1
    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;ZZZI)V
    .registers 15

    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_5

    const/4 p3, 0x0

    :cond_5
    move-object v3, p3

    and-int/lit8 p3, p7, 0x8

    const/4 v0, 0x0

    if-eqz p3, :cond_d

    move v4, v0

    goto :goto_e

    :cond_d
    move v4, p4

    :goto_e
    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_14

    move v5, v0

    goto :goto_15

    :cond_14
    move v5, p5

    :goto_15
    and-int/lit8 p3, p7, 0x20

    if-eqz p3, :cond_1e

    move v6, v0

    move v1, p1

    move v2, p2

    move-object v0, p0

    goto :goto_22

    :cond_1e
    move v6, p6

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 20
    :goto_22
    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;-><init>(IILjava/lang/String;ZZZ)V

    return-void
.end method

.method public static a(Landroid/content/Context;I)I
    .registers 3

    const/4 v0, -0x4

    if-eq p1, v0, :cond_29

    const/4 v0, -0x3

    if-eq p1, v0, :cond_29

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float p1, p1

    .line 2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const-string v0, "getDisplayMetrics(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 107
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-float p0, p0

    float-to-int p0, p0

    return p0

    :cond_29
    const/4 p0, -0x1

    return p0
.end method

.method public static final getLargeAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;
    .registers 3

    .line 0
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;->getLargeAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    instance-of v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    if-eqz v0, :cond_1e

    .line 2
    iget v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->a:I

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    iget v1, p1, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->a:I

    if-ne v0, v1, :cond_1e

    .line 3
    iget v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->b:I

    iget v1, p1, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->b:I

    if-ne v0, v1, :cond_1e

    .line 4
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->f:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    return p1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method public final getFormatString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->b:I

    return v0
.end method

.method public final getHeightInPixels(Landroid/content/Context;)I
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->b:I

    invoke-static {p1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->a(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public final getWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->a:I

    return v0
.end method

.method public final getWidthInPixels(Landroid/content/Context;)I
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->a:I

    invoke-static {p1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->a(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->isFluid()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isAnchoredAdaptiveBanner()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->c:Z

    return v0
.end method

.method public final isFluid()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->a:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_c

    iget v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->b:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final isInlineAdaptiveBanner()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->d:Z

    return v0
.end method

.method public final isLargeAnchoredAdaptiveBanner()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->e:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->f:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->isFluid()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3
    const-string v1, "fluid"

    goto :goto_d

    .line 5
    :cond_b
    const-string v1, ""

    .line 6
    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.libraries.ads.mobile.sdk.banner.AdSize.Companion (com.google.android.libraries.ads.mobile.sdk.banner.AdSize$Companion)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)I
    .registers 3

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 27
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 29
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    if-eq p1, p0, :cond_22

    if-nez p1, :cond_17

    goto :goto_22

    .line 40
    :cond_17
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p0, p0

    iget p1, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p0, p1

    invoke-static {p0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p0

    return p0

    .line 41
    :cond_22
    :goto_22
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p0, p0

    iget p1, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p0, p1

    invoke-static {p0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;II)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;
    .registers 13

    .line 1
    invoke-static {p0, p2}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;->a(Landroid/content/Context;I)I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v0, v2

    .line 6
    invoke-static {v0, v1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(D)I

    move-result p0

    const/16 p2, 0x5a

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/16 v0, 0x28f

    const/16 v1, 0x32

    if-le p1, v0, :cond_26

    int-to-float v0, p1

    const/high16 v2, 0x44360000    # 728.0f

    div-float/2addr v0, v2

    int-to-float p2, p2

    mul-float/2addr v0, p2

    .line 12
    invoke-static {v0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p2

    goto :goto_4f

    :cond_26
    const/16 p2, 0x278

    if-le p1, p2, :cond_2d

    const/16 p2, 0x51

    goto :goto_4f

    :cond_2d
    const/16 p2, 0x20e

    if-le p1, p2, :cond_3e

    int-to-float p2, p1

    const/high16 v0, 0x43ea0000    # 468.0f

    div-float/2addr p2, v0

    const/16 v0, 0x3c

    int-to-float v0, v0

    mul-float/2addr p2, v0

    .line 16
    invoke-static {p2}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p2

    goto :goto_4f

    :cond_3e
    const/16 p2, 0x1b0

    if-le p1, p2, :cond_45

    const/16 p2, 0x44

    goto :goto_4f

    :cond_45
    int-to-float p2, p1

    const/high16 v0, 0x43a00000    # 320.0f

    div-float/2addr p2, v0

    int-to-float v0, v1

    mul-float/2addr p2, v0

    .line 20
    invoke-static {p2}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p2

    .line 23
    :goto_4f
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 24
    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 25
    new-instance v2, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    const/4 v8, 0x0

    const/16 v9, 0x34

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;-><init>(IILjava/lang/String;ZZZI)V

    return-object v2
.end method

.method public static b(Landroid/content/Context;II)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;
    .registers 11

    .line 1
    invoke-static {p0, p2}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;->a(Landroid/content/Context;I)I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v0, v2

    .line 6
    invoke-static {v0, v1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(D)I

    move-result p0

    const/16 p2, 0x96

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p2, p1

    const/high16 v0, 0x43a00000    # 320.0f

    div-float/2addr p2, v0

    const/16 v0, 0x64

    int-to-float v1, v0

    mul-float/2addr p2, v1

    .line 11
    invoke-static {p2}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 14
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/16 p2, 0x32

    .line 15
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 16
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    const/4 v6, 0x1

    const/16 v7, 0x1c

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;-><init>(IILjava/lang/String;ZZZI)V

    return-object v0
.end method


# virtual methods
.method public final getCurrentOrientationAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p2, v0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;->a(Landroid/content/Context;II)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object p1

    return-object p1
.end method

.method public final getCurrentOrientationInlineAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;->a(Landroid/content/Context;I)I

    move-result p1

    .line 2
    invoke-virtual {p0, p2, p1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;->getInlineAdaptiveBannerAdSize(II)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object p1

    return-object p1
.end method

.method public final getInlineAdaptiveBannerAdSize(II)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;
    .registers 12

    const/16 v0, 0x32

    if-ge p2, v0, :cond_1f

    .line 1
    sget-object v0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The maximum height set for the inline adaptive ad size was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dp, which is below the minimum recommended value of 50 dp."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    :cond_1f
    const/4 v0, 0x1

    if-lt p2, v0, :cond_30

    .line 8
    new-instance v1, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    const/4 v7, 0x0

    const/16 v8, 0x2c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;-><init>(IILjava/lang/String;ZZZI)V

    return-object v1

    :cond_30
    move v3, p2

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid maxHeight for inline adaptive banner: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final getLandscapeAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 1
    invoke-static {p1, p2, v0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;->a(Landroid/content/Context;II)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object p1

    return-object p1
.end method

.method public final getLandscapeInlineAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;->a(Landroid/content/Context;I)I

    move-result p1

    .line 2
    invoke-virtual {p0, p2, p1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;->getInlineAdaptiveBannerAdSize(II)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object p1

    return-object p1
.end method

.method public final getLargeAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p2, v0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;->b(Landroid/content/Context;II)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object p1

    return-object p1
.end method

.method public final getLargeLandscapeAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 1
    invoke-static {p1, p2, v0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;->b(Landroid/content/Context;II)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object p1

    return-object p1
.end method

.method public final getLargePortraitAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, p2, v0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;->b(Landroid/content/Context;II)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object p1

    return-object p1
.end method

.method public final getPortraitAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, p2, v0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;->a(Landroid/content/Context;II)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object p1

    return-object p1
.end method

.method public final getPortraitInlineAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;->a(Landroid/content/Context;I)I

    move-result p1

    .line 2
    invoke-virtual {p0, p2, p1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;->getInlineAdaptiveBannerAdSize(II)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object p1

    return-object p1
.end method
