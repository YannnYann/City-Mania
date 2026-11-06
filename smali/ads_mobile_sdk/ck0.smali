###### Class ads_mobile_sdk.ck0 (ads_mobile_sdk.ck0)
.class public final Lads_mobile_sdk/ck0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lads_mobile_sdk/ok0;

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;IILads_mobile_sdk/ok0;ILkotlin/coroutines/Continuation;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ck0;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p2, p0, Lads_mobile_sdk/ck0;->c:I

    iput p3, p0, Lads_mobile_sdk/ck0;->d:I

    iput-object p4, p0, Lads_mobile_sdk/ck0;->e:Lads_mobile_sdk/ok0;

    iput p5, p0, Lads_mobile_sdk/ck0;->f:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 10

    .line 1
    new-instance v0, Lads_mobile_sdk/ck0;

    iget-object v1, p0, Lads_mobile_sdk/ck0;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v2, p0, Lads_mobile_sdk/ck0;->c:I

    iget v3, p0, Lads_mobile_sdk/ck0;->d:I

    iget-object v4, p0, Lads_mobile_sdk/ck0;->e:Lads_mobile_sdk/ok0;

    iget v5, p0, Lads_mobile_sdk/ck0;->f:I

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lads_mobile_sdk/ck0;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;IILads_mobile_sdk/ok0;ILkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/ck0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/ck0;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/ck0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 349
    iget v1, p0, Lads_mobile_sdk/ck0;->a:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_24

    if-eq v1, v5, :cond_20

    if-eq v1, v4, :cond_20

    if-eq v1, v3, :cond_20

    if-ne v1, v2, :cond_18

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_83

    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_75

    :cond_24
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 350
    iget-object p1, p0, Lads_mobile_sdk/ck0;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    iget v1, p0, Lads_mobile_sdk/ck0;->c:I

    if-eq p1, v1, :cond_75

    .line 351
    iget-object p1, p0, Lads_mobile_sdk/ck0;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    .line 352
    iget v1, p0, Lads_mobile_sdk/ck0;->d:I

    if-ne p1, v1, :cond_4d

    iget-object p1, p0, Lads_mobile_sdk/ck0;->e:Lads_mobile_sdk/ok0;

    .line 353
    iget-object p1, p1, Lads_mobile_sdk/ok0;->j:Lads_mobile_sdk/if1;

    .line 354
    sget-object v1, Lads_mobile_sdk/vd1;->d:Lads_mobile_sdk/vd1;

    iput v5, p0, Lads_mobile_sdk/ck0;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    invoke-static {p1, v1, p0}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Lads_mobile_sdk/vd1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_75

    goto :goto_82

    .line 356
    :cond_4d
    iget v1, p0, Lads_mobile_sdk/ck0;->f:I

    if-ne p1, v1, :cond_63

    iget-object p1, p0, Lads_mobile_sdk/ck0;->e:Lads_mobile_sdk/ok0;

    .line 357
    iget-object p1, p1, Lads_mobile_sdk/ok0;->j:Lads_mobile_sdk/if1;

    .line 358
    sget-object v1, Lads_mobile_sdk/vd1;->c:Lads_mobile_sdk/vd1;

    iput v4, p0, Lads_mobile_sdk/ck0;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 359
    invoke-static {p1, v1, p0}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Lads_mobile_sdk/vd1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_75

    goto :goto_82

    .line 360
    :cond_63
    iget-object p1, p0, Lads_mobile_sdk/ck0;->e:Lads_mobile_sdk/ok0;

    .line 361
    iget-object p1, p1, Lads_mobile_sdk/ok0;->j:Lads_mobile_sdk/if1;

    .line 362
    sget-object v1, Lads_mobile_sdk/vd1;->b:Lads_mobile_sdk/vd1;

    iput v3, p0, Lads_mobile_sdk/ck0;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 363
    invoke-static {p1, v1, p0}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Lads_mobile_sdk/vd1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_75

    goto :goto_82

    .line 364
    :cond_75
    :goto_75
    iget-object p1, p0, Lads_mobile_sdk/ck0;->e:Lads_mobile_sdk/ok0;

    iput v2, p0, Lads_mobile_sdk/ck0;->a:I

    sget-object v1, Lads_mobile_sdk/ok0;->q:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 365
    invoke-virtual {p1, v1, p0}, Lads_mobile_sdk/ok0;->a(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_83

    :goto_82
    return-object v0

    .line 366
    :cond_83
    :goto_83
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
