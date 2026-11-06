###### Class ads_mobile_sdk.hl1 (ads_mobile_sdk.hl1)
.class public final Lads_mobile_sdk/hl1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/s02;

.field public c:Landroid/graphics/drawable/Drawable;

.field public final d:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;

.field public final e:Z


# direct methods
.method public constructor <init>(Lads_mobile_sdk/s02;)V
    .registers 3

    .line 1
    const-string v0, "nativeAdAssets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lads_mobile_sdk/hl1;->a:Lads_mobile_sdk/s02;

    .line 40
    iget-object p1, p1, Lads_mobile_sdk/s02;->m:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;

    iput-object p1, p0, Lads_mobile_sdk/hl1;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 42
    :goto_13
    iput-boolean p1, p0, Lads_mobile_sdk/hl1;->e:Z

    return-void
.end method
