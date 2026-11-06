###### Class ads_mobile_sdk.yv (ads_mobile_sdk.yv)
.class public final Lads_mobile_sdk/yv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rh3;


# instance fields
.field public final a:Lads_mobile_sdk/j53;

.field public final b:Lads_mobile_sdk/pn;

.field public final c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public final d:Lads_mobile_sdk/o00;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/j53;Lads_mobile_sdk/pn;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/o00;)V
    .registers 6

    .line 1
    const-string v0, "requestType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequest"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configLoader"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lads_mobile_sdk/yv;->a:Lads_mobile_sdk/j53;

    .line 29
    iput-object p2, p0, Lads_mobile_sdk/yv;->b:Lads_mobile_sdk/pn;

    .line 30
    iput-object p3, p0, Lads_mobile_sdk/yv;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 31
    iput-object p4, p0, Lads_mobile_sdk/yv;->d:Lads_mobile_sdk/o00;

    return-void
.end method


# virtual methods
.method public final f()Lads_mobile_sdk/y11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/y11;->s:Lads_mobile_sdk/y11;

    return-object v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/xv;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/xv;

    iget v1, v0, Lads_mobile_sdk/xv;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/xv;->g:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/xv;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/xv;-><init>(Lads_mobile_sdk/yv;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/xv;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 35
    iget v2, v0, Lads_mobile_sdk/xv;->g:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_6d

    if-eq v2, v6, :cond_65

    if-eq v2, v5, :cond_5a

    if-eq v2, v4, :cond_47

    if-ne v2, v3, :cond_3f

    iget-object v1, v0, Lads_mobile_sdk/xv;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/gson/JsonObject;

    iget-object v2, v0, Lads_mobile_sdk/xv;->b:Ljava/lang/String;

    iget-object v0, v0, Lads_mobile_sdk/xv;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v1

    move-object v1, v0

    goto/16 :goto_e1

    :cond_3f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_47
    iget-object v2, v0, Lads_mobile_sdk/xv;->d:Lads_mobile_sdk/ds1;

    iget-object v4, v0, Lads_mobile_sdk/xv;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v0, Lads_mobile_sdk/xv;->b:Ljava/lang/String;

    iget-object v6, v0, Lads_mobile_sdk/xv;->a:Ljava/lang/Object;

    check-cast v6, Lads_mobile_sdk/yv;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v5

    move-object v5, v2

    move-object v2, v8

    goto :goto_b9

    :cond_5a
    iget-object v2, v0, Lads_mobile_sdk/xv;->b:Ljava/lang/String;

    iget-object v5, v0, Lads_mobile_sdk/xv;->a:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/yv;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v5

    goto :goto_9c

    :cond_65
    iget-object v2, v0, Lads_mobile_sdk/xv;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/yv;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_88

    :cond_6d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    iget-object p1, p0, Lads_mobile_sdk/yv;->b:Lads_mobile_sdk/pn;

    iget-object v2, p0, Lads_mobile_sdk/yv;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lads_mobile_sdk/yv;->a:Lads_mobile_sdk/j53;

    .line 39
    iget-object v7, v7, Lads_mobile_sdk/j53;->a:Ljava/lang/String;

    .line 40
    iput-object p0, v0, Lads_mobile_sdk/xv;->a:Ljava/lang/Object;

    iput v6, v0, Lads_mobile_sdk/xv;->g:I

    invoke-virtual {p1, v2, v7, v0}, Lads_mobile_sdk/pn;->b(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_87

    goto :goto_dc

    :cond_87
    move-object v2, p0

    .line 41
    :goto_88
    check-cast p1, Ljava/lang/String;

    .line 45
    iget-object v6, v2, Lads_mobile_sdk/yv;->b:Lads_mobile_sdk/pn;

    iput-object v2, v0, Lads_mobile_sdk/xv;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/xv;->b:Ljava/lang/String;

    iput v5, v0, Lads_mobile_sdk/xv;->g:I

    invoke-virtual {v6, v0}, Lads_mobile_sdk/pn;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_99

    goto :goto_dc

    :cond_99
    move-object v6, v2

    move-object v2, p1

    move-object p1, v5

    .line 46
    :goto_9c
    check-cast p1, Ljava/lang/String;

    .line 51
    sget-object v5, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    iget-object v7, v6, Lads_mobile_sdk/yv;->b:Lads_mobile_sdk/pn;

    iput-object v6, v0, Lads_mobile_sdk/xv;->a:Ljava/lang/Object;

    iput-object v2, v0, Lads_mobile_sdk/xv;->b:Ljava/lang/String;

    iput-object p1, v0, Lads_mobile_sdk/xv;->c:Ljava/lang/Object;

    iput-object v5, v0, Lads_mobile_sdk/xv;->d:Lads_mobile_sdk/ds1;

    iput v4, v0, Lads_mobile_sdk/xv;->g:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    invoke-static {v7, v0}, Lads_mobile_sdk/pn;->b(Lads_mobile_sdk/pn;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_b6

    goto :goto_dc

    :cond_b6
    move-object v8, v4

    move-object v4, p1

    move-object p1, v8

    .line 53
    :goto_b9
    check-cast p1, Lcom/google/gson/JsonObject;

    sget-object v7, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    .line 54
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "common_settings"

    const/4 v7, 0x0

    invoke-static {p1, v5, v7}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 55
    iget-object v5, v6, Lads_mobile_sdk/yv;->d:Lads_mobile_sdk/o00;

    iput-object v2, v0, Lads_mobile_sdk/xv;->a:Ljava/lang/Object;

    iput-object v4, v0, Lads_mobile_sdk/xv;->b:Ljava/lang/String;

    iput-object p1, v0, Lads_mobile_sdk/xv;->c:Ljava/lang/Object;

    iput-object v7, v0, Lads_mobile_sdk/xv;->d:Lads_mobile_sdk/ds1;

    iput v3, v0, Lads_mobile_sdk/xv;->g:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    invoke-static {v5, v0}, Lads_mobile_sdk/o00;->b(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_dd

    :goto_dc
    return-object v1

    :cond_dd
    move-object v3, p1

    move-object p1, v0

    move-object v1, v2

    move-object v2, v4

    .line 57
    :goto_e1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 58
    new-instance v0, Lads_mobile_sdk/wv;

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/wv;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;J)V

    .line 59
    new-instance p1, Lads_mobile_sdk/q01;

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
