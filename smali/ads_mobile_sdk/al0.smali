###### Class ads_mobile_sdk.al0 (ads_mobile_sdk.al0)
.class public final Lads_mobile_sdk/al0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/li1;


# instance fields
.field public final a:Lads_mobile_sdk/ex0;

.field public final b:Lads_mobile_sdk/qn;

.field public final c:Lads_mobile_sdk/e01;

.field public final d:Lads_mobile_sdk/ok0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ex0;Lads_mobile_sdk/qn;Lads_mobile_sdk/e01;Lads_mobile_sdk/ok0;)V
    .registers 6

    .line 1
    const-string v0, "flags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClient"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugDialogManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lads_mobile_sdk/al0;->a:Lads_mobile_sdk/ex0;

    .line 20
    iput-object p2, p0, Lads_mobile_sdk/al0;->b:Lads_mobile_sdk/qn;

    .line 21
    iput-object p3, p0, Lads_mobile_sdk/al0;->c:Lads_mobile_sdk/e01;

    .line 22
    iput-object p4, p0, Lads_mobile_sdk/al0;->d:Lads_mobile_sdk/ok0;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12

    .line 1
    instance-of p3, p4, Lads_mobile_sdk/zk0;

    if-eqz p3, :cond_13

    move-object p3, p4

    check-cast p3, Lads_mobile_sdk/zk0;

    iget v0, p3, Lads_mobile_sdk/zk0;->d:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_13

    sub-int/2addr v0, v1

    iput v0, p3, Lads_mobile_sdk/zk0;->d:I

    goto :goto_18

    :cond_13
    new-instance p3, Lads_mobile_sdk/zk0;

    invoke-direct {p3, p0, p4}, Lads_mobile_sdk/zk0;-><init>(Lads_mobile_sdk/al0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p4, p3, Lads_mobile_sdk/zk0;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 24
    iget v1, p3, Lads_mobile_sdk/zk0;->d:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3b

    if-eq v1, v3, :cond_35

    if-ne v1, v2, :cond_2d

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a9

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    iget-object p1, p3, Lads_mobile_sdk/zk0;->a:Lads_mobile_sdk/al0;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_89

    :cond_3b
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    iget-object p4, p0, Lads_mobile_sdk/al0;->b:Lads_mobile_sdk/qn;

    .line 30
    iget-object p4, p4, Lads_mobile_sdk/qn;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p4

    if-eqz p4, :cond_ac

    iget-object p4, p2, Lads_mobile_sdk/i2;->A:Lcom/google/gson/JsonObject;

    invoke-virtual {p4}, Lcom/google/gson/JsonObject;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_51

    goto :goto_ac

    .line 33
    :cond_51
    iget-object p4, p0, Lads_mobile_sdk/al0;->d:Lads_mobile_sdk/ok0;

    .line 35
    iget-object v1, p0, Lads_mobile_sdk/al0;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    const-string v4, "key"

    const-string v5, "gads:drx_debug:send_debug_data_url"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "defaultValue"

    const-string v6, "https://www.google.com/dfp/sendDebugData"

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sget-object v4, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {v1, v5, v6, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 80
    iget-object p1, p1, Lads_mobile_sdk/ec3;->a:Lads_mobile_sdk/wb3;

    iget-object p1, p1, Lads_mobile_sdk/wb3;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    .line 81
    iget-object p2, p2, Lads_mobile_sdk/i2;->A:Lcom/google/gson/JsonObject;

    .line 82
    iput-object p0, p3, Lads_mobile_sdk/zk0;->a:Lads_mobile_sdk/al0;

    iput v3, p3, Lads_mobile_sdk/zk0;->d:I

    .line 83
    iget-object p4, p4, Lads_mobile_sdk/ok0;->j:Lads_mobile_sdk/if1;

    .line 84
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    invoke-static {p4, v1, p1, p2, p3}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v0, :cond_88

    goto :goto_a8

    :cond_88
    move-object p1, p0

    .line 86
    :goto_89
    check-cast p4, Landroid/net/Uri;

    .line 99
    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "toString(...)"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object p1, p1, Lads_mobile_sdk/al0;->c:Lads_mobile_sdk/e01;

    new-instance p4, Ljava/net/URL;

    invoke-direct {p4, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    iput-object p2, p3, Lads_mobile_sdk/zk0;->a:Lads_mobile_sdk/al0;

    iput v2, p3, Lads_mobile_sdk/zk0;->d:I

    const/16 v1, 0x1e

    invoke-static {p1, p4, p2, p3, v1}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/e01;Ljava/net/URL;Ljava/util/Map;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a9

    :goto_a8
    return-object v0

    .line 101
    :cond_a9
    :goto_a9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 102
    :cond_ac
    :goto_ac
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
