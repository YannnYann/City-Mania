###### Class ads_mobile_sdk.z12 (ads_mobile_sdk.z12)
.class public final Lads_mobile_sdk/z12;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/google/gson/JsonArray;

.field public final synthetic d:I

.field public final synthetic e:Lads_mobile_sdk/c22;


# direct methods
.method public constructor <init>(ILads_mobile_sdk/c22;Lcom/google/gson/JsonArray;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 2
    iput-object p3, p0, Lads_mobile_sdk/z12;->c:Lcom/google/gson/JsonArray;

    iput p1, p0, Lads_mobile_sdk/z12;->d:I

    iput-object p2, p0, Lads_mobile_sdk/z12;->e:Lads_mobile_sdk/c22;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 7

    .line 1
    new-instance v0, Lads_mobile_sdk/z12;

    iget-object v1, p0, Lads_mobile_sdk/z12;->c:Lcom/google/gson/JsonArray;

    iget v2, p0, Lads_mobile_sdk/z12;->d:I

    iget-object v3, p0, Lads_mobile_sdk/z12;->e:Lads_mobile_sdk/c22;

    invoke-direct {v0, v2, v3, v1, p2}, Lads_mobile_sdk/z12;-><init>(ILads_mobile_sdk/c22;Lcom/google/gson/JsonArray;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lads_mobile_sdk/z12;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/z12;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/z12;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/z12;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 18

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 129
    iget v2, v0, Lads_mobile_sdk/z12;->a:I

    const/4 v3, 0x1

    if-eqz v2, :cond_19

    if-ne v2, v3, :cond_11

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_57

    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lads_mobile_sdk/z12;->b:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, Lkotlinx/coroutines/channels/ProducerScope;

    .line 130
    iget-object v2, v0, Lads_mobile_sdk/z12;->c:Lcom/google/gson/JsonArray;

    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v7

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v6, v4

    .line 132
    :goto_2e
    iget v4, v0, Lads_mobile_sdk/z12;->d:I

    if-ge v6, v4, :cond_4e

    .line 136
    iget-object v5, v0, Lads_mobile_sdk/z12;->e:Lads_mobile_sdk/c22;

    .line 137
    iget-object v11, v5, Lads_mobile_sdk/c22;->t:Lkotlinx/coroutines/CoroutineScope;

    .line 138
    new-instance v4, Lads_mobile_sdk/y12;

    iget-object v8, v0, Lads_mobile_sdk/z12;->c:Lcom/google/gson/JsonArray;

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lads_mobile_sdk/y12;-><init>(Lads_mobile_sdk/c22;IILcom/google/gson/JsonArray;Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)V

    const/4 v14, 0x3

    const/4 v15, 0x0

    move-object v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v13, v4

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v4

    .line 170
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    .line 173
    :cond_4e
    iput v3, v0, Lads_mobile_sdk/z12;->a:I

    invoke-static {v2, v0}, Lkotlinx/coroutines/AwaitKt;->joinAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_57

    return-object v1

    .line 174
    :cond_57
    :goto_57
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
