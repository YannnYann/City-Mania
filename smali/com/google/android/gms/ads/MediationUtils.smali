###### Class com.google.android.gms.ads.MediationUtils (com.google.android.gms.ads.MediationUtils)
.class public final Lcom/google/android/gms/ads/MediationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/google/android/gms/ads/MediationUtils;

.field private static a:Lads_mobile_sdk/ex0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/google/android/gms/ads/MediationUtils;

    invoke-direct {v0}, Lcom/google/android/gms/ads/MediationUtils;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/MediationUtils;->INSTANCE:Lcom/google/android/gms/ads/MediationUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lads_mobile_sdk/ex0;)V
    .registers 2

    .line 1
    const-string v0, "flags"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sput-object p0, Lcom/google/android/gms/ads/MediationUtils;->a:Lads_mobile_sdk/ex0;

    return-void
.end method

.method public static final findClosestSize(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;Ljava/util/List;)Lcom/google/android/gms/ads/AdSize;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/AdSize;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/AdSize;",
            ">;)",
            "Lcom/google/android/gms/ads/AdSize;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_dd

    if-nez p1, :cond_c

    goto/16 :goto_dd

    .line 1
    :cond_c
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->isInlineAdaptiveBanner()Z

    move-result v1

    if-nez v1, :cond_35

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 3
    invoke-virtual {p1, p0}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {v2}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v2

    .line 4
    invoke-virtual {p1, p0}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    invoke-static {p0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p0

    .line 5
    new-instance p1, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {p1, v2, p0}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    .line 8
    :cond_35
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_39
    :goto_39
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_dd

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/ads/AdSize;

    .line 9
    sget-object v1, Lcom/google/android/gms/ads/MediationUtils;->INSTANCE:Lcom/google/android/gms/ads/MediationUtils;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_4d

    goto :goto_39

    .line 10
    :cond_4d
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v1

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v2

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v3

    .line 13
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v4

    int-to-double v5, v1

    .line 14
    sget-object v7, Lcom/google/android/gms/ads/MediationUtils;->a:Lads_mobile_sdk/ex0;

    const-string v8, "key"

    if-eqz v7, :cond_7e

    .line 16
    const-string v9, "gads:mediation_min_width_ratio"

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v10, 0x3e4ccccd    # 0.2f

    .line 38
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    sget-object v11, Lads_mobile_sdk/yr;->e:Lads_mobile_sdk/mr;

    invoke-virtual {v7, v9, v10, v11}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    float-to-double v9, v7

    goto :goto_80

    :cond_7e
    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    :goto_80
    mul-double/2addr v5, v9

    int-to-double v9, v2

    cmpl-double v5, v5, v9

    if-gtz v5, :cond_39

    if-ge v1, v2, :cond_89

    goto :goto_39

    .line 39
    :cond_89
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->isInlineAdaptiveBanner()Z

    move-result v1

    if-eqz v1, :cond_96

    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->getInlineMaxHeight()I

    move-result v1

    if-lt v1, v4, :cond_39

    goto :goto_c2

    :cond_96
    int-to-double v1, v3

    .line 41
    sget-object v5, Lcom/google/android/gms/ads/MediationUtils;->a:Lads_mobile_sdk/ex0;

    if-eqz v5, :cond_b5

    .line 43
    const-string v6, "gads:mediation_min_height_ratio"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v7, 0x3e99999a    # 0.3f

    .line 65
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    sget-object v8, Lads_mobile_sdk/yr;->e:Lads_mobile_sdk/mr;

    invoke-virtual {v5, v6, v7, v8}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    float-to-double v5, v5

    goto :goto_ba

    :cond_b5
    const-wide v5, 0x3fe6666666666666L    # 0.7

    :goto_ba
    mul-double/2addr v1, v5

    int-to-double v5, v4

    cmpl-double v1, v1, v5

    if-gtz v1, :cond_39

    if-lt v3, v4, :cond_39

    :goto_c2
    if-eqz v0, :cond_da

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v2

    mul-int/2addr v2, v1

    .line 67
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v3

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_da

    goto/16 :goto_39

    :cond_da
    move-object v0, p2

    goto/16 :goto_39

    :cond_dd
    :goto_dd
    return-object v0
.end method
