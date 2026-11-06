###### Class ads_mobile_sdk.hn (ads_mobile_sdk.hn)
.class public final Lads_mobile_sdk/hn;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/pn;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/pn;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/hn;->b:Lads_mobile_sdk/pn;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/hn;

    iget-object v0, p0, Lads_mobile_sdk/hn;->b:Lads_mobile_sdk/pn;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/hn;-><init>(Lads_mobile_sdk/pn;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/hn;

    iget-object v0, p0, Lads_mobile_sdk/hn;->b:Lads_mobile_sdk/pn;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/hn;-><init>(Lads_mobile_sdk/pn;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/hn;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 98
    iget v1, p0, Lads_mobile_sdk/hn;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_1f

    if-eq v1, v2, :cond_1b

    if-ne v1, v3, :cond_13

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_cb

    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3c

    :cond_1f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 100
    iget-object p1, p0, Lads_mobile_sdk/hn;->b:Lads_mobile_sdk/pn;

    .line 101
    iget-object p1, p1, Lads_mobile_sdk/pn;->b:Lads_mobile_sdk/mm;

    .line 102
    iget-object p1, p1, Lads_mobile_sdk/mm;->a:Lads_mobile_sdk/ks1;

    .line 103
    invoke-interface {p1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/core/DataStore;

    invoke-interface {p1}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 104
    iput v2, p0, Lads_mobile_sdk/hn;->a:I

    invoke-static {p1, p0}, Lkotlinx/coroutines/flow/FlowKt;->firstOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3c

    goto/16 :goto_ca

    .line 105
    :cond_3c
    :goto_3c
    check-cast p1, Lads_mobile_sdk/jm;

    if-nez p1, :cond_43

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 106
    :cond_43
    invoke-virtual {p1}, Lads_mobile_sdk/jm;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAppSettingsJson(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_55

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 109
    :cond_55
    invoke-virtual {p1}, Lads_mobile_sdk/jm;->C()I

    move-result v1

    if-ge v1, v3, :cond_5e

    .line 117
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 120
    :cond_5e
    iget-object v1, p0, Lads_mobile_sdk/hn;->b:Lads_mobile_sdk/pn;

    .line 121
    iget-object v1, v1, Lads_mobile_sdk/pn;->d:Lads_mobile_sdk/ex0;

    .line 122
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    const-string v2, "key"

    const-string v4, "gads:app_settings_expiry_check_on_init:enabled"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v5, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v1, v4, v2, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 141
    iget-object v1, p0, Lads_mobile_sdk/hn;->b:Lads_mobile_sdk/pn;

    .line 142
    invoke-virtual {v1, p1}, Lads_mobile_sdk/pn;->a(Lads_mobile_sdk/jm;)Z

    move-result v1

    if-nez v1, :cond_87

    .line 143
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 147
    :cond_87
    sget-object v1, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    .line 148
    :try_start_89
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lads_mobile_sdk/jm;->B()Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/google/gson/JsonObject;

    invoke-virtual {v1, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "fromJson(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/google/gson/JsonObject;
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_9f} :catch_a0

    goto :goto_be

    :catch_a0
    move-exception v1

    .line 149
    const-string v2, "t"

    invoke-static {v1, v2, v1}, Lads_mobile_sdk/a2;->a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lads_mobile_sdk/uj2;

    move-result-object v2

    .line 150
    iget-object v2, v2, Lads_mobile_sdk/uj2;->s:Ljava/util/List;

    .line 151
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    :cond_b7
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_be
    if-eqz v1, :cond_cb

    .line 152
    iget-object v2, p0, Lads_mobile_sdk/hn;->b:Lads_mobile_sdk/pn;

    iput v3, p0, Lads_mobile_sdk/hn;->a:I

    .line 153
    invoke-virtual {v2, p1, v1, p0}, Lads_mobile_sdk/pn;->a(Lads_mobile_sdk/jm;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_cb

    :goto_ca
    return-object v0

    .line 154
    :cond_cb
    :goto_cb
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
