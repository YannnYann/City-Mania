###### Class ads_mobile_sdk.iq1 (ads_mobile_sdk.iq1)
.class public final Lads_mobile_sdk/iq1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lads_mobile_sdk/uw0;

.field public b:Lads_mobile_sdk/fl1;

.field public c:I

.field public final synthetic d:Lads_mobile_sdk/yq1;

.field public final synthetic e:Lads_mobile_sdk/fl1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/yq1;Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/iq1;->d:Lads_mobile_sdk/yq1;

    iput-object p2, p0, Lads_mobile_sdk/iq1;->e:Lads_mobile_sdk/fl1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/iq1;

    iget-object v0, p0, Lads_mobile_sdk/iq1;->d:Lads_mobile_sdk/yq1;

    iget-object v1, p0, Lads_mobile_sdk/iq1;->e:Lads_mobile_sdk/fl1;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/iq1;-><init>(Lads_mobile_sdk/yq1;Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/iq1;

    iget-object v0, p0, Lads_mobile_sdk/iq1;->d:Lads_mobile_sdk/yq1;

    iget-object v1, p0, Lads_mobile_sdk/iq1;->e:Lads_mobile_sdk/fl1;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/iq1;-><init>(Lads_mobile_sdk/yq1;Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/iq1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 90
    iget v1, p0, Lads_mobile_sdk/iq1;->c:I

    const-string v2, "consentStringsProvider"

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_35

    if-eq v1, v6, :cond_31

    if-eq v1, v5, :cond_2d

    if-eq v1, v4, :cond_24

    if-ne v1, v3, :cond_1c

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_af

    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    iget-object v1, p0, Lads_mobile_sdk/iq1;->b:Lads_mobile_sdk/fl1;

    iget-object v2, p0, Lads_mobile_sdk/iq1;->a:Lads_mobile_sdk/uw0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9d

    :cond_2d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_7b

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_64

    :cond_35
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 92
    iget-object p1, p0, Lads_mobile_sdk/iq1;->d:Lads_mobile_sdk/yq1;

    .line 93
    iget-object p1, p1, Lads_mobile_sdk/yq1;->f:Lads_mobile_sdk/ex0;

    .line 94
    iget-object p1, p1, Lads_mobile_sdk/ex0;->s:Lads_mobile_sdk/eb3;

    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 97
    const-string v8, "key"

    const/16 v9, 0x3c

    const-string v10, "gads:flag_update_delay_sec"

    invoke-static {v9, v1, v10, v8}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v1

    .line 98
    sget-object v8, Lads_mobile_sdk/yr;->l:Lads_mobile_sdk/ur;

    invoke-virtual {p1, v10, v1, v8}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/time/Duration;

    invoke-virtual {p1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v8

    .line 99
    iput v6, p0, Lads_mobile_sdk/iq1;->c:I

    invoke-static {v8, v9, p0}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_64

    goto :goto_ae

    .line 100
    :cond_64
    :goto_64
    iget-object p1, p0, Lads_mobile_sdk/iq1;->d:Lads_mobile_sdk/yq1;

    .line 101
    iget-object p1, p1, Lads_mobile_sdk/yq1;->p:Lads_mobile_sdk/n30;

    if-nez p1, :cond_6e

    .line 102
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v7

    :cond_6e
    check-cast p1, Lads_mobile_sdk/g30;

    .line 103
    iget-object p1, p1, Lads_mobile_sdk/g30;->C:Lkotlinx/coroutines/CompletableJob;

    .line 104
    iput v5, p0, Lads_mobile_sdk/iq1;->c:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7b

    goto :goto_ae

    .line 105
    :cond_7b
    :goto_7b
    iget-object p1, p0, Lads_mobile_sdk/iq1;->d:Lads_mobile_sdk/yq1;

    .line 106
    iget-object v1, p1, Lads_mobile_sdk/yq1;->i:Lads_mobile_sdk/uw0;

    .line 107
    iget-object v5, p0, Lads_mobile_sdk/iq1;->e:Lads_mobile_sdk/fl1;

    .line 108
    iget-object p1, p1, Lads_mobile_sdk/yq1;->p:Lads_mobile_sdk/n30;

    if-nez p1, :cond_89

    .line 109
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v7

    :cond_89
    iput-object v1, p0, Lads_mobile_sdk/iq1;->a:Lads_mobile_sdk/uw0;

    iput-object v5, p0, Lads_mobile_sdk/iq1;->b:Lads_mobile_sdk/fl1;

    iput v4, p0, Lads_mobile_sdk/iq1;->c:I

    check-cast p1, Lads_mobile_sdk/g30;

    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    invoke-static {p1, p0}, Lads_mobile_sdk/g30;->e(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9b

    goto :goto_ae

    :cond_9b
    move-object v2, v1

    move-object v1, v5

    .line 112
    :goto_9d
    check-cast p1, Lcom/google/gson/JsonObject;

    iput-object v7, p0, Lads_mobile_sdk/iq1;->a:Lads_mobile_sdk/uw0;

    iput-object v7, p0, Lads_mobile_sdk/iq1;->b:Lads_mobile_sdk/fl1;

    iput v3, p0, Lads_mobile_sdk/iq1;->c:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    invoke-static {v2, v1, p1, p0}, Lads_mobile_sdk/uw0;->a(Lads_mobile_sdk/uw0;Lads_mobile_sdk/fl1;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_af

    :goto_ae
    return-object v0

    .line 114
    :cond_af
    :goto_af
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
