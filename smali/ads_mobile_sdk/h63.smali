###### Class ads_mobile_sdk.h63 (ads_mobile_sdk.h63)
.class public final Lads_mobile_sdk/h63;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/r41;


# instance fields
.field public final a:Lads_mobile_sdk/f73;

.field public final b:Lads_mobile_sdk/i2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/f73;Lads_mobile_sdk/i2;)V
    .registers 4

    .line 1
    const-string v0, "rewardedEventEmitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lads_mobile_sdk/h63;->a:Lads_mobile_sdk/f73;

    .line 21
    iput-object p2, p0, Lads_mobile_sdk/h63;->b:Lads_mobile_sdk/i2;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 51
    const-string p1, "action"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_66

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x5e0c11c

    if-eq v0, v1, :cond_50

    const p2, 0x5296b39e

    if-eq v0, p2, :cond_37

    const p2, 0x7d1a287d

    if-eq v0, p2, :cond_1e

    goto :goto_66

    :cond_1e
    const-string p2, "video_complete"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    goto :goto_66

    .line 56
    :cond_27
    iget-object p1, p0, Lads_mobile_sdk/h63;->a:Lads_mobile_sdk/f73;

    invoke-virtual {p1, p3}, Lads_mobile_sdk/f73;->g(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_34

    return-object p1

    :cond_34
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 57
    :cond_37
    const-string p2, "video_start"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_40

    goto :goto_66

    .line 65
    :cond_40
    iget-object p1, p0, Lads_mobile_sdk/h63;->a:Lads_mobile_sdk/f73;

    invoke-virtual {p1, p3}, Lads_mobile_sdk/f73;->l(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_4d

    return-object p1

    :cond_4d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 66
    :cond_50
    const-string v0, "grant"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_66

    .line 68
    invoke-virtual {p0, p2, p3}, Lads_mobile_sdk/h63;->a(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Lkotlin/Unit;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_63

    return-object p1

    :cond_63
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 77
    :cond_66
    :goto_66
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Lkotlin/Unit;
    .registers 7

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/h63;->b:Lads_mobile_sdk/i2;

    iget-object v0, v0, Lads_mobile_sdk/i2;->l0:Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardItem;

    if-eqz v0, :cond_18

    .line 4
    iget-object p1, p0, Lads_mobile_sdk/h63;->a:Lads_mobile_sdk/f73;

    invoke-virtual {p1, v0, p2}, Lads_mobile_sdk/f73;->a(Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardItem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_15

    check-cast p1, Lkotlin/Unit;

    return-object p1

    .line 5
    :cond_15
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_18
    const/4 v0, 0x1

    .line 10
    :try_start_19
    const-string v1, "amount"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2a

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_4b

    :catch_28
    move-exception v1

    goto :goto_30

    :cond_2a
    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardItem;->Companion:Lads_mobile_sdk/k63;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_2f} :catch_28

    goto :goto_4b

    .line 12
    :goto_30
    sget-object v2, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse reward amount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    .line 13
    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardItem;->Companion:Lads_mobile_sdk/k63;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    :goto_4b
    const-string v1, "type"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_5c

    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardItem;->Companion:Lads_mobile_sdk/k63;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, ""

    .line 18
    :cond_5c
    new-instance v1, Lads_mobile_sdk/g63;

    invoke-direct {v1, v0, p1}, Lads_mobile_sdk/g63;-><init>(ILjava/lang/String;)V

    .line 22
    iget-object p1, p0, Lads_mobile_sdk/h63;->a:Lads_mobile_sdk/f73;

    invoke-virtual {p1, v1, p2}, Lads_mobile_sdk/f73;->a(Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardItem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_70

    check-cast p1, Lkotlin/Unit;

    return-object p1

    :cond_70
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final g()Lads_mobile_sdk/u11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/u11;->s:Lads_mobile_sdk/u11;

    return-object v0
.end method

.method public final i()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method
