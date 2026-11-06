###### Class ads_mobile_sdk.vn2 (ads_mobile_sdk.vn2)
.class public final Lads_mobile_sdk/vn2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/ao2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ao2;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/vn2;->a:Lads_mobile_sdk/ao2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/vn2;

    iget-object v0, p0, Lads_mobile_sdk/vn2;->a:Lads_mobile_sdk/ao2;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/vn2;-><init>(Lads_mobile_sdk/ao2;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/vn2;

    iget-object v0, p0, Lads_mobile_sdk/vn2;->a:Lads_mobile_sdk/ao2;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/vn2;-><init>(Lads_mobile_sdk/ao2;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/vn2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 329
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 330
    iget-object p1, p0, Lads_mobile_sdk/vn2;->a:Lads_mobile_sdk/ao2;

    .line 331
    iget-object v0, p1, Lads_mobile_sdk/ao2;->i:Lads_mobile_sdk/do2;

    if-eqz v0, :cond_f

    .line 332
    invoke-virtual {p1, v0}, Lads_mobile_sdk/ao2;->a(Lads_mobile_sdk/do2;)V

    .line 333
    :cond_f
    iget-object p1, p0, Lads_mobile_sdk/vn2;->a:Lads_mobile_sdk/ao2;

    const/4 v0, 0x0

    .line 334
    iput-object v0, p1, Lads_mobile_sdk/ao2;->i:Lads_mobile_sdk/do2;

    .line 335
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
