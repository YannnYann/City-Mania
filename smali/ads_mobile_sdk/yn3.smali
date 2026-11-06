###### Class ads_mobile_sdk.yn3 (ads_mobile_sdk.yn3)
.class public abstract Lads_mobile_sdk/yn3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/google/android/libraries/ads/mobile/sdk/R$string;->test_ad:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_12} :catch_13

    return-object p0

    .line 6
    :catch_13
    const-string p0, "Test Ad"

    return-object p0
.end method
