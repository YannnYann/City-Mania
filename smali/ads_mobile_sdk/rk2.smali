###### Class ads_mobile_sdk.rk2 (ads_mobile_sdk.rk2)
.class public final Lads_mobile_sdk/rk2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public c:J

.field public d:I


# direct methods
.method public constructor <init>(ILcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;J)V
    .registers 6

    .line 1
    const-string v0, "adRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    iput p1, p0, Lads_mobile_sdk/rk2;->a:I

    .line 539
    iput-object p2, p0, Lads_mobile_sdk/rk2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 540
    iput-wide p3, p0, Lads_mobile_sdk/rk2;->c:J

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;
    .registers 2

    .line 539
    iget-object v0, p0, Lads_mobile_sdk/rk2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    return-object v0
.end method

.method public final b()I
    .registers 2

    .line 542
    iget v0, p0, Lads_mobile_sdk/rk2;->d:I

    return v0
.end method

.method public final c()I
    .registers 2

    .line 538
    iget v0, p0, Lads_mobile_sdk/rk2;->a:I

    return v0
.end method
