###### Class ads_mobile_sdk.yd (ads_mobile_sdk.yd)
.class public final Lads_mobile_sdk/yd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;

.field public final b:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;

.field public final c:J


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ke;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;J)V
    .registers 6

    .line 1
    const-string v0, "adapterStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/yd;->a:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;

    .line 4
    iput-object p2, p0, Lads_mobile_sdk/yd;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;

    .line 5
    iput-wide p3, p0, Lads_mobile_sdk/yd;->c:J

    return-void
.end method
