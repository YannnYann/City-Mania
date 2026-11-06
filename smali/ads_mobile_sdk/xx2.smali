###### Class ads_mobile_sdk.xx2 (ads_mobile_sdk.xx2)
.class public final Lads_mobile_sdk/xx2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/yx2;

.field public final synthetic b:Lads_mobile_sdk/v01;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/yx2;Lads_mobile_sdk/v01;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/xx2;->a:Lads_mobile_sdk/yx2;

    iput-object p2, p0, Lads_mobile_sdk/xx2;->b:Lads_mobile_sdk/v01;

    iput-object p3, p0, Lads_mobile_sdk/xx2;->c:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/xx2;

    iget-object v0, p0, Lads_mobile_sdk/xx2;->a:Lads_mobile_sdk/yx2;

    iget-object v1, p0, Lads_mobile_sdk/xx2;->b:Lads_mobile_sdk/v01;

    iget-object v2, p0, Lads_mobile_sdk/xx2;->c:Ljava/util/List;

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/xx2;-><init>(Lads_mobile_sdk/yx2;Lads_mobile_sdk/v01;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/xx2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/xx2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/xx2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 231
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/xx2;->a:Lads_mobile_sdk/yx2;

    iget-object v0, p0, Lads_mobile_sdk/xx2;->b:Lads_mobile_sdk/v01;

    check-cast v0, Lads_mobile_sdk/i01;

    iget-object v1, p0, Lads_mobile_sdk/xx2;->c:Ljava/util/List;

    sget-object v2, Lads_mobile_sdk/yx2;->u:Lads_mobile_sdk/m01;

    .line 232
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    instance-of v2, v0, Lads_mobile_sdk/j01;

    if-eqz v2, :cond_2a

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/j01;

    .line 234
    iget-object v2, v2, Lads_mobile_sdk/j01;->c:Ljava/lang/Throwable;

    .line 235
    instance-of v2, v2, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_2a

    .line 236
    new-instance v0, Lkotlin/Pair;

    const-string v2, "0.2.0.0"

    const-string v3, "timeout"

    invoke-direct {v0, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_46

    .line 237
    :cond_2a
    instance-of v2, v0, Lads_mobile_sdk/k01;

    const-string v3, "0.6.0.0"

    if-eqz v2, :cond_3f

    .line 238
    new-instance v2, Lkotlin/Pair;

    check-cast v0, Lads_mobile_sdk/k01;

    .line 239
    iget v0, v0, Lads_mobile_sdk/k01;->c:I

    .line 240
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_46

    .line 242
    :cond_3f
    new-instance v0, Lkotlin/Pair;

    const-string v2, "fetch failed"

    invoke-direct {v0, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 243
    :goto_46
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 244
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 253
    iget-object p1, p1, Lads_mobile_sdk/yx2;->s:Lads_mobile_sdk/vw3;

    .line 400
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 401
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_95

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 402
    check-cast v3, Landroid/net/Uri;

    .line 403
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "toString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 404
    const-string v4, "@gw_adnetstatus@"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x4

    const/4 v11, 0x0

    .line 405
    const-string v7, "@error_code@"

    const/4 v9, 0x0

    move-object v8, v0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 550
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 551
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v8

    goto :goto_64

    .line 552
    :cond_95
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 553
    const-string v0, "uris"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 599
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 600
    iget-object v2, p1, Lads_mobile_sdk/vw3;->e:Lkotlinx/coroutines/channels/Channel;

    new-instance v3, Lkotlin/Pair;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a1

    .line 601
    :cond_b9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
