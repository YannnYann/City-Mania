###### Class ads_mobile_sdk.ja1 (ads_mobile_sdk.ja1)
.class public final Lads_mobile_sdk/ja1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile a:Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;
    .registers 6

    .line 22
    iget-object v0, p0, Lads_mobile_sdk/ja1;->a:Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    if-nez v0, :cond_30

    .line 26
    const-string v1, "message"

    const-string v2, "InitializationConfig is requested but null. MobileAds.initialize() must be called first."

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 101
    invoke-static {v2, v1}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    sget-object v3, Lads_mobile_sdk/au;->a:Lads_mobile_sdk/bu;

    .line 105
    sget-object v4, Lads_mobile_sdk/bu;->b:Lads_mobile_sdk/bu;

    if-eq v3, v4, :cond_2f

    .line 106
    sget-object v4, Lads_mobile_sdk/bu;->c:Lads_mobile_sdk/bu;

    if-eq v3, v4, :cond_2f

    .line 111
    sget-object v4, Lads_mobile_sdk/bu;->a:Lads_mobile_sdk/bu;

    if-ne v3, v4, :cond_30

    .line 112
    sget-object v3, Lads_mobile_sdk/sr3;->a:Lads_mobile_sdk/ur3;

    if-eqz v3, :cond_30

    check-cast v3, Lads_mobile_sdk/as3;

    invoke-virtual {v3, v2, v1}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 113
    :cond_2f
    throw v1

    :cond_30
    return-object v0
.end method
