###### Class ads_mobile_sdk.uc0 (ads_mobile_sdk.uc0)
.class public final Lads_mobile_sdk/uc0;
.super Landroidx/browser/customtabs/CustomTabsCallback;
.source "SourceFile"


# instance fields
.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Lads_mobile_sdk/tx;

.field public final c:Lads_mobile_sdk/ex0;

.field public final d:Lads_mobile_sdk/xe3;

.field public final e:Ljava/lang/Object;

.field public f:Z

.field public g:Lkotlinx/coroutines/Job;

.field public h:J

.field public i:J

.field public j:Ljava/lang/String;

.field public k:Landroidx/browser/customtabs/CustomTabsSession;

.field public l:Landroidx/browser/customtabs/CustomTabsCallback;

.field public final m:Lcom/google/gson/JsonArray;

.field public final n:Ljava/util/List;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/tx;Lads_mobile_sdk/ex0;Lads_mobile_sdk/xe3;)V
    .registers 7

    .line 1
    const-string v0, "backgroundScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signalCache"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsCallback;-><init>()V

    .line 49
    iput-object p1, p0, Lads_mobile_sdk/uc0;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 50
    iput-object p2, p0, Lads_mobile_sdk/uc0;->b:Lads_mobile_sdk/tx;

    .line 51
    iput-object p3, p0, Lads_mobile_sdk/uc0;->c:Lads_mobile_sdk/ex0;

    .line 52
    iput-object p4, p0, Lads_mobile_sdk/uc0;->d:Lads_mobile_sdk/xe3;

    .line 55
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/uc0;->e:Ljava/lang/Object;

    .line 58
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v0

    iput-wide v0, p0, Lads_mobile_sdk/uc0;->h:J

    .line 59
    invoke-virtual {p1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide p1

    iput-wide p1, p0, Lads_mobile_sdk/uc0;->i:J

    .line 66
    sget-object p1, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    :try_start_36
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p3}, Lads_mobile_sdk/ex0;->l0()Ljava/lang/String;

    move-result-object p2

    const-class p3, Lcom/google/gson/JsonArray;

    invoke-virtual {p1, p2, p3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonArray;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_47} :catch_48

    goto :goto_4d

    :catch_48
    move-exception p1

    .line 241
    invoke-static {p1}, Lads_mobile_sdk/xs3;->a(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    :goto_4d
    if-nez p1, :cond_54

    .line 242
    new-instance p1, Lcom/google/gson/JsonArray;

    invoke-direct {p1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 243
    :cond_54
    iput-object p1, p0, Lads_mobile_sdk/uc0;->m:Lcom/google/gson/JsonArray;

    .line 245
    iget-object p1, p0, Lads_mobile_sdk/uc0;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Lads_mobile_sdk/ex0;->A()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/uc0;->n:Ljava/util/List;

    return-void
.end method

.method public static final a(Lads_mobile_sdk/uc0;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 471
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 472
    instance-of v0, p2, Lads_mobile_sdk/qc0;

    if-eqz v0, :cond_16

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/qc0;

    iget v1, v0, Lads_mobile_sdk/qc0;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/qc0;->e:I

    goto :goto_1b

    :cond_16
    new-instance v0, Lads_mobile_sdk/qc0;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/qc0;-><init>(Lads_mobile_sdk/uc0;Lkotlin/coroutines/Continuation;)V

    :goto_1b
    iget-object p2, v0, Lads_mobile_sdk/qc0;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 625
    iget v2, v0, Lads_mobile_sdk/qc0;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p1, v0, Lads_mobile_sdk/qc0;->b:Ljava/lang/String;

    iget-object p0, v0, Lads_mobile_sdk/qc0;->a:Lads_mobile_sdk/uc0;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4e

    :cond_30
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 628
    iget-object p2, p0, Lads_mobile_sdk/uc0;->d:Lads_mobile_sdk/xe3;

    iput-object p0, v0, Lads_mobile_sdk/qc0;->a:Lads_mobile_sdk/uc0;

    iput-object p1, v0, Lads_mobile_sdk/qc0;->b:Ljava/lang/String;

    iput v3, v0, Lads_mobile_sdk/qc0;->e:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    .line 629
    invoke-static {p2, v2, v0}, Lads_mobile_sdk/xe3;->b(Lads_mobile_sdk/xe3;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4e

    return-object v1

    .line 630
    :cond_4e
    :goto_4e
    check-cast p2, Lads_mobile_sdk/v01;

    .line 634
    instance-of v0, p2, Lads_mobile_sdk/q01;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_ad

    .line 636
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 637
    iget-object v4, p0, Lads_mobile_sdk/uc0;->m:Lcom/google/gson/JsonArray;

    const-string v5, "eids"

    invoke-virtual {v0, v5, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 638
    const-string v4, "paw_id"

    invoke-virtual {v0, v4, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const-string p1, "sdk_ttl_ms"

    .line 641
    iget-object v4, p0, Lads_mobile_sdk/uc0;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v4}, Lads_mobile_sdk/ex0;->E0()Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 642
    iget-object v1, p0, Lads_mobile_sdk/uc0;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Lads_mobile_sdk/ex0;->F0()J

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v1

    .line 644
    :cond_7c
    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v1

    .line 645
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 653
    const-string p1, "signal"

    check-cast p2, Lads_mobile_sdk/q01;

    .line 654
    iget-object p2, p2, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 655
    check-cast p2, Lcom/google/android/libraries/ads/mobile/sdk/signal/Signal;

    invoke-virtual {p2}, Lcom/google/android/libraries/ads/mobile/sdk/signal/Signal;->getSignalString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object p1, p0, Lads_mobile_sdk/uc0;->e:Ljava/lang/Object;

    monitor-enter p1

    :try_start_95
    iget-object p0, p0, Lads_mobile_sdk/uc0;->k:Landroidx/browser/customtabs/CustomTabsSession;

    if-nez p0, :cond_a2

    const-string p0, "session"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v3

    goto :goto_a2

    :catchall_a0
    move-exception p0

    goto :goto_ab

    :cond_a2
    :goto_a2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v3}, Landroidx/browser/customtabs/CustomTabsSession;->postMessage(Ljava/lang/String;Landroid/os/Bundle;)I
    :try_end_a9
    .catchall {:try_start_95 .. :try_end_a9} :catchall_a0

    monitor-exit p1

    goto :goto_101

    :goto_ab
    monitor-exit p1

    throw p0

    .line 659
    :cond_ad
    instance-of v0, p2, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_101

    .line 661
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 662
    iget-object v4, p0, Lads_mobile_sdk/uc0;->m:Lcom/google/gson/JsonArray;

    const-string v5, "eids"

    invoke-virtual {v0, v5, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 663
    const-string v4, "paw_id"

    invoke-virtual {v0, v4, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string p1, "sdk_ttl_ms"

    .line 666
    iget-object v4, p0, Lads_mobile_sdk/uc0;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v4}, Lads_mobile_sdk/ex0;->E0()Z

    move-result v4

    if-eqz v4, :cond_d6

    .line 667
    iget-object v1, p0, Lads_mobile_sdk/uc0;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Lads_mobile_sdk/ex0;->F0()J

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v1

    .line 669
    :cond_d6
    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v1

    .line 670
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 678
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "error"

    invoke-virtual {v0, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    iget-object p1, p0, Lads_mobile_sdk/uc0;->e:Ljava/lang/Object;

    monitor-enter p1

    :try_start_e9
    iget-object p0, p0, Lads_mobile_sdk/uc0;->k:Landroidx/browser/customtabs/CustomTabsSession;

    if-nez p0, :cond_f6

    const-string p0, "session"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v3

    goto :goto_f6

    :catchall_f4
    move-exception p0

    goto :goto_ff

    :cond_f6
    :goto_f6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v3}, Landroidx/browser/customtabs/CustomTabsSession;->postMessage(Ljava/lang/String;Landroid/os/Bundle;)I
    :try_end_fd
    .catchall {:try_start_e9 .. :try_end_fd} :catchall_f4

    monitor-exit p1

    goto :goto_101

    :goto_ff
    monitor-exit p1

    throw p0

    .line 683
    :cond_101
    :goto_101
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final a(Lads_mobile_sdk/uc0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    instance-of v0, p1, Lads_mobile_sdk/oc0;

    if-eqz v0, :cond_16

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/oc0;

    iget v1, v0, Lads_mobile_sdk/oc0;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/oc0;->d:I

    goto :goto_1b

    :cond_16
    new-instance v0, Lads_mobile_sdk/oc0;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/oc0;-><init>(Lads_mobile_sdk/uc0;Lkotlin/coroutines/Continuation;)V

    :goto_1b
    iget-object p1, v0, Lads_mobile_sdk/oc0;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 151
    iget v2, v0, Lads_mobile_sdk/oc0;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p0, v0, Lads_mobile_sdk/oc0;->a:Lads_mobile_sdk/uc0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_aa

    :cond_30
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 152
    iget-object p1, p0, Lads_mobile_sdk/uc0;->e:Ljava/lang/Object;

    monitor-enter p1

    .line 153
    :try_start_3e
    iget-boolean v2, p0, Lads_mobile_sdk/uc0;->f:Z

    if-nez v2, :cond_d0

    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v2, p0, Lads_mobile_sdk/uc0;->b:Lads_mobile_sdk/tx;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 155
    sget-object v2, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v5, v6, v2}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v5

    iget-wide v7, p0, Lads_mobile_sdk/uc0;->i:J

    invoke-static {v5, v6, v7, v8}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v5

    if-lez v5, :cond_5d

    goto/16 :goto_d0

    .line 157
    :cond_5d
    iget-object v5, p0, Lads_mobile_sdk/uc0;->k:Landroidx/browser/customtabs/CustomTabsSession;

    if-nez v5, :cond_6b

    const-string v5, "session"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v4

    goto :goto_6b

    :catchall_68
    move-exception v0

    move-object p0, v0

    goto :goto_d4

    :cond_6b
    :goto_6b
    iget-object v6, p0, Lads_mobile_sdk/uc0;->j:Ljava/lang/String;

    if-nez v6, :cond_75

    const-string v6, "origin"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v4

    :cond_75
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/browser/customtabs/CustomTabsSession;->requestPostMessageChannel(Landroid/net/Uri;)Z
    :try_end_7c
    .catchall {:try_start_3e .. :try_end_7c} :catchall_68

    .line 158
    monitor-exit p1

    .line 164
    iget-object p1, p0, Lads_mobile_sdk/uc0;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    const-string v5, "gads:pact_polling_interval_ms"

    const/16 v6, 0x64

    invoke-static {v6, v2}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v6

    const-string v2, "key"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-static {v6, v7}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v2

    sget-object v6, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {p1, v5, v2, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/time/Duration;

    invoke-virtual {p1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v5

    .line 167
    iput-object p0, v0, Lads_mobile_sdk/oc0;->a:Lads_mobile_sdk/uc0;

    iput v3, v0, Lads_mobile_sdk/oc0;->d:I

    invoke-static {v5, v6, v0}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_aa

    return-object v1

    .line 168
    :cond_aa
    :goto_aa
    iget-object v5, p0, Lads_mobile_sdk/uc0;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lads_mobile_sdk/pc0;

    invoke-direct {p1, p0, v4}, Lads_mobile_sdk/pc0;-><init>(Lads_mobile_sdk/uc0;Lkotlin/coroutines/Continuation;)V

    .line 169
    sget-object v6, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 170
    const-string p0, "<this>"

    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {v6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "block"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    new-instance v8, Lads_mobile_sdk/ws3;

    invoke-direct {v8, p1, v4}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 429
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 430
    :cond_d0
    :goto_d0
    :try_start_d0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_d2
    .catchall {:try_start_d0 .. :try_end_d2} :catchall_68

    monitor-exit p1

    return-object p0

    .line 431
    :goto_d4
    monitor-exit p1

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 12

    .line 825
    iget-object v1, p0, Lads_mobile_sdk/uc0;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 827
    :try_start_3
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 828
    const-string v2, "eids"

    iget-object v3, p0, Lads_mobile_sdk/uc0;->m:Lcom/google/gson/JsonArray;

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 829
    const-string v2, "gsppack"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 830
    const-string v2, "fpt"

    iget-wide v3, p0, Lads_mobile_sdk/uc0;->h:J

    invoke-static {v3, v4}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    iget-object v2, p0, Lads_mobile_sdk/uc0;->k:Landroidx/browser/customtabs/CustomTabsSession;

    const/4 v3, 0x0

    if-nez v2, :cond_34

    const-string v2, "session"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_34

    :catchall_31
    move-exception v0

    move-object p1, v0

    goto :goto_62

    .line 833
    :cond_34
    :goto_34
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Landroidx/browser/customtabs/CustomTabsSession;->postMessage(Ljava/lang/String;Landroid/os/Bundle;)I

    .line 835
    iget-object v4, p0, Lads_mobile_sdk/uc0;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/tc0;

    invoke-direct {v0, p0, p1, v3}, Lads_mobile_sdk/tc0;-><init>(Lads_mobile_sdk/uc0;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 836
    sget-object v5, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 837
    const-string p1, "<this>"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "block"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1095
    new-instance v7, Lads_mobile_sdk/ws3;

    invoke-direct {v7, v0, v3}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1096
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_31

    .line 1097
    monitor-exit v1

    return-void

    .line 1098
    :goto_62
    monitor-exit v1

    throw p1
.end method

.method public final extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 1
    const-string v0, "callbackName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lads_mobile_sdk/uc0;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lads_mobile_sdk/uc0;->l:Landroidx/browser/customtabs/CustomTabsCallback;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_11

    monitor-exit v0

    if-eqz v1, :cond_10

    invoke-virtual {v1, p1, p2}, Landroidx/browser/customtabs/CustomTabsCallback;->extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_10
    return-void

    :catchall_11
    move-exception p1

    .line 207
    monitor-exit v0

    throw p1
.end method

.method public final extraCallbackWithResult(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5

    .line 1
    const-string v0, "callbackName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lads_mobile_sdk/uc0;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lads_mobile_sdk/uc0;->l:Landroidx/browser/customtabs/CustomTabsCallback;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_14

    monitor-exit v0

    if-eqz v1, :cond_12

    invoke-virtual {v1, p1, p2}, Landroidx/browser/customtabs/CustomTabsCallback;->extraCallbackWithResult(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_12
    const/4 p1, 0x0

    return-object p1

    :catchall_14
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final onActivityResized(IILandroid/os/Bundle;)V
    .registers 6

    .line 1
    const-string v0, "extras"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    :try_start_5
    iget-object v0, p0, Lads_mobile_sdk/uc0;->e:Ljava/lang/Object;

    monitor-enter v0
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_14

    :try_start_8
    iget-object v1, p0, Lads_mobile_sdk/uc0;->l:Landroidx/browser/customtabs/CustomTabsCallback;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_11

    :try_start_a
    monitor-exit v0

    if-eqz v1, :cond_14

    invoke-virtual {v1, p1, p2, p3}, Landroidx/browser/customtabs/CustomTabsCallback;->onActivityResized(IILandroid/os/Bundle;)V

    return-void

    :catchall_11
    move-exception p1

    .line 216
    monitor-exit v0

    throw p1
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_14

    :catchall_14
    :cond_14
    return-void
.end method

.method public final onMessageChannelReady(Landroid/os/Bundle;)V
    .registers 4

    .line 123
    iget-object v0, p0, Lads_mobile_sdk/uc0;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 124
    :try_start_4
    iput-boolean v1, p0, Lads_mobile_sdk/uc0;->f:Z

    .line 125
    iget-object v1, p0, Lads_mobile_sdk/uc0;->l:Landroidx/browser/customtabs/CustomTabsCallback;

    if-eqz v1, :cond_10

    invoke-virtual {v1, p1}, Landroidx/browser/customtabs/CustomTabsCallback;->onMessageChannelReady(Landroid/os/Bundle;)V

    goto :goto_10

    :catchall_e
    move-exception p1

    goto :goto_14

    .line 126
    :cond_10
    :goto_10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_e

    .line 127
    monitor-exit v0

    return-void

    .line 128
    :goto_14
    monitor-exit v0

    throw p1
.end method

.method public final onNavigationEvent(ILandroid/os/Bundle;)V
    .registers 11

    .line 88
    iget-object v1, p0, Lads_mobile_sdk/uc0;->e:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    .line 89
    :try_start_4
    iput-boolean v0, p0, Lads_mobile_sdk/uc0;->f:Z

    .line 90
    iget-object v0, p0, Lads_mobile_sdk/uc0;->l:Landroidx/browser/customtabs/CustomTabsCallback;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1, p2}, Landroidx/browser/customtabs/CustomTabsCallback;->onNavigationEvent(ILandroid/os/Bundle;)V

    goto :goto_12

    :catchall_e
    move-exception v0

    move-object p1, v0

    goto/16 :goto_b3

    .line 92
    :cond_12
    :goto_12
    sget-object p2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v0, p0, Lads_mobile_sdk/uc0;->b:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 94
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v2, v3, v0}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v2

    iput-wide v2, p0, Lads_mobile_sdk/uc0;->h:J

    .line 95
    iget-object v0, p0, Lads_mobile_sdk/uc0;->n:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_af

    .line 97
    iget-wide v2, p0, Lads_mobile_sdk/uc0;->h:J

    .line 98
    iget-object p1, p0, Lads_mobile_sdk/uc0;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    const-string v0, "gads:pact_polling_forever:enabled"

    .line 100
    const-string v4, "key"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v5, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p1, v0, v4, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_54

    .line 117
    invoke-virtual {p2}, Lkotlin/time/Duration$Companion;->getINFINITE-UwyO8pc()J

    move-result-wide p1

    goto :goto_78

    .line 118
    :cond_54
    iget-object p1, p0, Lads_mobile_sdk/uc0;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    const-string p2, "gads:pact_polling_duration_ms"

    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    const/16 v4, 0x3c

    invoke-static {v4, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v4

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-static {v4, v5}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v0

    sget-object v4, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {p1, p2, v0, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/time/Duration;

    invoke-virtual {p1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide p1

    .line 121
    :goto_78
    invoke-static {v2, v3, p1, p2}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide p1

    .line 122
    iput-wide p1, p0, Lads_mobile_sdk/uc0;->i:J

    .line 128
    iget-object p1, p0, Lads_mobile_sdk/uc0;->g:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_88

    .line 129
    invoke-interface {p1}, Lkotlinx/coroutines/Job;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_af

    .line 130
    :cond_88
    iget-object v2, p0, Lads_mobile_sdk/uc0;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lads_mobile_sdk/rc0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lads_mobile_sdk/rc0;-><init>(Lads_mobile_sdk/uc0;Lkotlin/coroutines/Continuation;)V

    .line 131
    sget-object v3, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 132
    const-string v0, "<this>"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    new-instance v5, Lads_mobile_sdk/ws3;

    invoke-direct {v5, p1, p2}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 391
    iput-object p1, p0, Lads_mobile_sdk/uc0;->g:Lkotlinx/coroutines/Job;

    .line 394
    :cond_af
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_b1
    .catchall {:try_start_4 .. :try_end_b1} :catchall_e

    .line 395
    monitor-exit v1

    return-void

    .line 396
    :goto_b3
    monitor-exit v1

    throw p1
.end method

.method public final onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 1
    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    sget-object v0, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    :try_start_7
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_15

    goto :goto_33

    :catch_15
    move-exception v0

    .line 130
    const-string v1, "t"

    invoke-static {v0, v1, v0}, Lads_mobile_sdk/a2;->a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lads_mobile_sdk/uj2;

    move-result-object v1

    .line 131
    iget-object v1, v1, Lads_mobile_sdk/uj2;->s:Ljava/util/List;

    .line 132
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2c

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_2c
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_33
    if-eqz v0, :cond_56

    .line 133
    const-string v1, "gpa"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_56

    .line 134
    iget-object v1, p0, Lads_mobile_sdk/uc0;->e:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_42
    iput-boolean v2, p0, Lads_mobile_sdk/uc0;->f:Z

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_53

    monitor-exit v1

    .line 135
    const-string v1, "paw_id"

    .line 136
    const-string v2, ""

    invoke-static {v0, v1, v2}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-virtual {p0, v0}, Lads_mobile_sdk/uc0;->a(Ljava/lang/String;)V

    goto :goto_56

    :catchall_53
    move-exception p1

    .line 138
    monitor-exit v1

    throw p1

    .line 143
    :cond_56
    :goto_56
    iget-object v0, p0, Lads_mobile_sdk/uc0;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_59
    iget-object v1, p0, Lads_mobile_sdk/uc0;->l:Landroidx/browser/customtabs/CustomTabsCallback;
    :try_end_5b
    .catchall {:try_start_59 .. :try_end_5b} :catchall_62

    monitor-exit v0

    if-eqz v1, :cond_61

    invoke-virtual {v1, p1, p2}, Landroidx/browser/customtabs/CustomTabsCallback;->onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_61
    return-void

    :catchall_62
    move-exception p1

    .line 144
    monitor-exit v0

    throw p1
.end method

.method public final onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .registers 7

    .line 1
    const-string v0, "requestedOrigin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lads_mobile_sdk/uc0;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lads_mobile_sdk/uc0;->l:Landroidx/browser/customtabs/CustomTabsCallback;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_11

    monitor-exit v0

    if-eqz v1, :cond_10

    .line 202
    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/browser/customtabs/CustomTabsCallback;->onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V

    :cond_10
    return-void

    :catchall_11
    move-exception p1

    .line 203
    monitor-exit v0

    throw p1
.end method
