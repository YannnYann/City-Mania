###### Class ads_mobile_sdk.dt3 (ads_mobile_sdk.dt3)
.class public final Lads_mobile_sdk/dt3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/lt3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/lt3;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/dt3;->a:Lads_mobile_sdk/lt3;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance v0, Lads_mobile_sdk/dt3;

    iget-object v1, p0, Lads_mobile_sdk/dt3;->a:Lads_mobile_sdk/lt3;

    invoke-direct {v0, v1, p1}, Lads_mobile_sdk/dt3;-><init>(Lads_mobile_sdk/lt3;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance v0, Lads_mobile_sdk/dt3;

    iget-object v1, p0, Lads_mobile_sdk/dt3;->a:Lads_mobile_sdk/lt3;

    invoke-direct {v0, v1, p1}, Lads_mobile_sdk/dt3;-><init>(Lads_mobile_sdk/lt3;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/dt3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 217
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 218
    iget-object p1, p0, Lads_mobile_sdk/dt3;->a:Lads_mobile_sdk/lt3;

    .line 219
    iget-object v0, p1, Lads_mobile_sdk/lt3;->o:Lads_mobile_sdk/vn;

    .line 220
    iget-object v1, p1, Lads_mobile_sdk/lt3;->p:Ljava/util/Set;

    .line 221
    iget-object p1, p1, Lads_mobile_sdk/lt3;->f:Lads_mobile_sdk/ec3;

    .line 222
    iget-object p1, p1, Lads_mobile_sdk/ec3;->a:Lads_mobile_sdk/wb3;

    iget-object p1, p1, Lads_mobile_sdk/wb3;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    .line 223
    invoke-virtual {v0, p1, v1}, Lads_mobile_sdk/vn;->a(Ljava/lang/String;Ljava/util/Set;)Lads_mobile_sdk/w91;

    move-result-object p1

    return-object p1
.end method
