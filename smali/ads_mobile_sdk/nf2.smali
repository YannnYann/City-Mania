###### Class ads_mobile_sdk.nf2 (ads_mobile_sdk.nf2)
.class public final Lads_mobile_sdk/nf2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/vf2;

.field public final synthetic b:Lads_mobile_sdk/k9;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/vf2;Lads_mobile_sdk/k9;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/nf2;->a:Lads_mobile_sdk/vf2;

    iput-object p2, p0, Lads_mobile_sdk/nf2;->b:Lads_mobile_sdk/k9;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/nf2;

    iget-object v0, p0, Lads_mobile_sdk/nf2;->a:Lads_mobile_sdk/vf2;

    iget-object v1, p0, Lads_mobile_sdk/nf2;->b:Lads_mobile_sdk/k9;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/nf2;-><init>(Lads_mobile_sdk/vf2;Lads_mobile_sdk/k9;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/nf2;

    iget-object v0, p0, Lads_mobile_sdk/nf2;->a:Lads_mobile_sdk/vf2;

    iget-object v1, p0, Lads_mobile_sdk/nf2;->b:Lads_mobile_sdk/k9;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/nf2;-><init>(Lads_mobile_sdk/vf2;Lads_mobile_sdk/k9;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/nf2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 292
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/nf2;->a:Lads_mobile_sdk/vf2;

    .line 293
    iget-object p1, p1, Lads_mobile_sdk/vf2;->f:Lads_mobile_sdk/kd2;

    .line 294
    iget-object v0, p0, Lads_mobile_sdk/nf2;->b:Lads_mobile_sdk/k9;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    const-string v1, "adSession"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    iget-object p1, p1, Lads_mobile_sdk/kd2;->f:Lads_mobile_sdk/ur3;

    new-instance v1, Lads_mobile_sdk/zc2;

    invoke-direct {v1, v0}, Lads_mobile_sdk/zc2;-><init>(Lads_mobile_sdk/k9;)V

    const-string v0, "FinishOmidSession"

    invoke-interface {p1, v0, v1}, Lads_mobile_sdk/ur3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    return-object p1
.end method
