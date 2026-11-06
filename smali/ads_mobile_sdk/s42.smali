###### Class ads_mobile_sdk.s42 (ads_mobile_sdk.s42)
.class public final Lads_mobile_sdk/s42;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lcom/google/gson/JsonArray;

.field public final synthetic c:Lads_mobile_sdk/v42;

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Lads_mobile_sdk/v42;Lcom/google/gson/JsonArray;Lkotlin/coroutines/Continuation;Z)V
    .registers 5

    .line 2
    iput-object p2, p0, Lads_mobile_sdk/s42;->b:Lcom/google/gson/JsonArray;

    iput-object p1, p0, Lads_mobile_sdk/s42;->c:Lads_mobile_sdk/v42;

    iput-boolean p4, p0, Lads_mobile_sdk/s42;->d:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 7

    .line 1
    new-instance v0, Lads_mobile_sdk/s42;

    iget-object v1, p0, Lads_mobile_sdk/s42;->b:Lcom/google/gson/JsonArray;

    iget-object v2, p0, Lads_mobile_sdk/s42;->c:Lads_mobile_sdk/v42;

    iget-boolean v3, p0, Lads_mobile_sdk/s42;->d:Z

    invoke-direct {v0, v2, v1, p2, v3}, Lads_mobile_sdk/s42;-><init>(Lads_mobile_sdk/v42;Lcom/google/gson/JsonArray;Lkotlin/coroutines/Continuation;Z)V

    iput-object p1, v0, Lads_mobile_sdk/s42;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/s42;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/s42;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/s42;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 188
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/s42;->a:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 189
    iget-object p1, p0, Lads_mobile_sdk/s42;->b:Lcom/google/gson/JsonArray;

    iget-object v6, p0, Lads_mobile_sdk/s42;->c:Lads_mobile_sdk/v42;

    iget-boolean v7, p0, Lads_mobile_sdk/s42;->d:Z

    .line 384
    new-instance v8, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 385
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 386
    check-cast v1, Lcom/google/gson/JsonElement;

    .line 387
    new-instance v3, Lads_mobile_sdk/r42;

    const/4 v2, 0x0

    invoke-direct {v3, v6, v1, v7, v2}, Lads_mobile_sdk/r42;-><init>(Lads_mobile_sdk/v42;Lcom/google/gson/JsonElement;ZLkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v1

    .line 583
    invoke-interface {v8, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_3d
    return-object v8
.end method
