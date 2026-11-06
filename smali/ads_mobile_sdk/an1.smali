###### Class ads_mobile_sdk.an1 (ads_mobile_sdk.an1)
.class public final Lads_mobile_sdk/an1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/jr0;


# instance fields
.field public final a:Lads_mobile_sdk/dw2;

.field public final b:Lads_mobile_sdk/dw2;

.field public final c:Lads_mobile_sdk/dw2;

.field public final d:Lads_mobile_sdk/dw2;

.field public final e:Lads_mobile_sdk/dw2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/vh1;Lads_mobile_sdk/vh1;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/ol0;)V
    .registers 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/an1;->a:Lads_mobile_sdk/dw2;

    .line 4
    iput-object p2, p0, Lads_mobile_sdk/an1;->b:Lads_mobile_sdk/dw2;

    .line 5
    iput-object p3, p0, Lads_mobile_sdk/an1;->c:Lads_mobile_sdk/dw2;

    .line 6
    iput-object p4, p0, Lads_mobile_sdk/an1;->d:Lads_mobile_sdk/dw2;

    .line 7
    iput-object p5, p0, Lads_mobile_sdk/an1;->e:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 9

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/an1;->a:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iget-object v1, p0, Lads_mobile_sdk/an1;->b:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/j53;

    iget-object v2, p0, Lads_mobile_sdk/an1;->c:Lads_mobile_sdk/dw2;

    iget-object v3, p0, Lads_mobile_sdk/an1;->d:Lads_mobile_sdk/dw2;

    iget-object v4, p0, Lads_mobile_sdk/an1;->e:Lads_mobile_sdk/dw2;

    invoke-interface {v4}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lads_mobile_sdk/im2;

    .line 3
    const-string v5, "baseRequest"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "requestType"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "network"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "cache"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "persistentCacheManager"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    instance-of v6, v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    if-eqz v6, :cond_3c

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    const-string v6, "get(...)"

    if-eqz v0, :cond_78

    .line 61
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    const-string v7, "adRequest"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v4, v0, v1}, Lads_mobile_sdk/im2;->b(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lads_mobile_sdk/j53;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 247
    invoke-virtual {v4, v0, v1}, Lads_mobile_sdk/im2;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lads_mobile_sdk/j53;)Lads_mobile_sdk/ik2;

    move-result-object v0

    if-eqz v0, :cond_59

    goto :goto_61

    .line 252
    :cond_59
    new-instance v0, Lads_mobile_sdk/q01;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {v0, v1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    goto :goto_6a

    .line 253
    :cond_61
    :goto_61
    new-instance v0, Lads_mobile_sdk/m01;

    const-string v1, "Persistent cache is disabled."

    .line 254
    sget-object v4, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 255
    invoke-direct {v0, v1, v4}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    .line 256
    :goto_6a
    instance-of v0, v0, Lads_mobile_sdk/q01;

    if-eqz v0, :cond_78

    .line 259
    invoke-interface {v3}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/nt3;

    goto :goto_81

    .line 261
    :cond_78
    invoke-interface {v2}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/nt3;

    .line 262
    :goto_81
    invoke-static {v0}, Lads_mobile_sdk/kq2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/nt3;

    return-object v0
.end method
