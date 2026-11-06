###### Class ads_mobile_sdk.ye1 (ads_mobile_sdk.ye1)
.class public final Lads_mobile_sdk/ye1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/if1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ye1;->b:Lads_mobile_sdk/if1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/ye1;

    iget-object v0, p0, Lads_mobile_sdk/ye1;->b:Lads_mobile_sdk/if1;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/ye1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/ye1;

    iget-object v0, p0, Lads_mobile_sdk/ye1;->b:Lads_mobile_sdk/if1;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/ye1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/ye1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 153
    iget v1, p0, Lads_mobile_sdk/ye1;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    if-eq v1, v3, :cond_1a

    if-ne v1, v2, :cond_12

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4c

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2f

    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 154
    iget-object p1, p0, Lads_mobile_sdk/ye1;->b:Lads_mobile_sdk/if1;

    iput v3, p0, Lads_mobile_sdk/ye1;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    invoke-static {p1, p0}, Lads_mobile_sdk/if1;->b(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2f

    goto :goto_4b

    .line 156
    :cond_2f
    :goto_2f
    check-cast p1, Lads_mobile_sdk/og1;

    .line 158
    invoke-virtual {p1}, Lads_mobile_sdk/og1;->A()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 159
    iget-object v1, p0, Lads_mobile_sdk/ye1;->b:Lads_mobile_sdk/if1;

    invoke-virtual {p1}, Lads_mobile_sdk/og1;->v()Ljava/lang/String;

    move-result-object p1

    iput v2, p0, Lads_mobile_sdk/ye1;->a:I

    sget-object v2, Lads_mobile_sdk/if1;->N:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;

    .line 160
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    .line 161
    invoke-static {v1, p1, v2, p0}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/String;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4c

    :goto_4b
    return-object v0

    .line 162
    :cond_4c
    :goto_4c
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
