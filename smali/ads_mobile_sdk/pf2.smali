###### Class ads_mobile_sdk.pf2 (ads_mobile_sdk.pf2)
.class public final Lads_mobile_sdk/pf2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public synthetic a:Lads_mobile_sdk/k9;

.field public final synthetic b:Lads_mobile_sdk/vf2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/vf2;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/pf2;->b:Lads_mobile_sdk/vf2;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lads_mobile_sdk/r31;

    check-cast p2, Lads_mobile_sdk/k9;

    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/pf2;

    iget-object v0, p0, Lads_mobile_sdk/pf2;->b:Lads_mobile_sdk/vf2;

    invoke-direct {p1, v0, p3}, Lads_mobile_sdk/pf2;-><init>(Lads_mobile_sdk/vf2;Lkotlin/coroutines/Continuation;)V

    iput-object p2, p1, Lads_mobile_sdk/pf2;->a:Lads_mobile_sdk/k9;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/pf2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 248
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/pf2;->a:Lads_mobile_sdk/k9;

    .line 249
    iget-object v0, p0, Lads_mobile_sdk/pf2;->b:Lads_mobile_sdk/vf2;

    .line 250
    iget-object v0, v0, Lads_mobile_sdk/vf2;->n:Ljava/util/List;

    .line 251
    const-string v1, "access$getOmidRegisteredViews$p(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->removeLastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 252
    iget-object v0, p0, Lads_mobile_sdk/pf2;->b:Lads_mobile_sdk/vf2;

    .line 253
    iget-object v0, v0, Lads_mobile_sdk/vf2;->n:Ljava/util/List;

    .line 254
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2a

    iget-object v1, p0, Lads_mobile_sdk/pf2;->b:Lads_mobile_sdk/vf2;

    .line 255
    iget-object v1, v1, Lads_mobile_sdk/vf2;->f:Lads_mobile_sdk/kd2;

    .line 256
    invoke-virtual {v1, p1, v0}, Lads_mobile_sdk/kd2;->a(Lads_mobile_sdk/k9;Landroid/view/View;)Lkotlin/Unit;

    .line 257
    :cond_2a
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
