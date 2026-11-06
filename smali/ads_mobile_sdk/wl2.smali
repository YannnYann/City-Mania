###### Class ads_mobile_sdk.wl2 (ads_mobile_sdk.wl2)
.class public final Lads_mobile_sdk/wl2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Z

.field public final synthetic c:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic d:Lads_mobile_sdk/im2;

.field public final synthetic e:Lads_mobile_sdk/om2;


# direct methods
.method public constructor <init>(ZLkotlin/jvm/internal/Ref$ObjectRef;Lads_mobile_sdk/im2;Lads_mobile_sdk/om2;Lkotlin/coroutines/Continuation;)V
    .registers 6

    .line 1
    iput-boolean p1, p0, Lads_mobile_sdk/wl2;->b:Z

    iput-object p2, p0, Lads_mobile_sdk/wl2;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lads_mobile_sdk/wl2;->d:Lads_mobile_sdk/im2;

    iput-object p4, p0, Lads_mobile_sdk/wl2;->e:Lads_mobile_sdk/om2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 9

    .line 1
    new-instance v0, Lads_mobile_sdk/wl2;

    iget-boolean v1, p0, Lads_mobile_sdk/wl2;->b:Z

    iget-object v2, p0, Lads_mobile_sdk/wl2;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lads_mobile_sdk/wl2;->d:Lads_mobile_sdk/im2;

    iget-object v4, p0, Lads_mobile_sdk/wl2;->e:Lads_mobile_sdk/om2;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/wl2;-><init>(ZLkotlin/jvm/internal/Ref$ObjectRef;Lads_mobile_sdk/im2;Lads_mobile_sdk/om2;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/wl2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/wl2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/wl2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 301
    iget v1, p0, Lads_mobile_sdk/wl2;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_34

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 302
    iget-boolean p1, p0, Lads_mobile_sdk/wl2;->b:Z

    if-nez p1, :cond_24

    iget-object p1, p0, Lads_mobile_sdk/wl2;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez p1, :cond_36

    .line 303
    :cond_24
    iget-object p1, p0, Lads_mobile_sdk/wl2;->d:Lads_mobile_sdk/im2;

    iget-object v1, p0, Lads_mobile_sdk/wl2;->e:Lads_mobile_sdk/om2;

    iput v2, p0, Lads_mobile_sdk/wl2;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    invoke-static {p1, v1, p0}, Lads_mobile_sdk/im2;->b(Lads_mobile_sdk/im2;Lads_mobile_sdk/om2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_34

    return-object v0

    .line 305
    :cond_34
    :goto_34
    check-cast p1, Lads_mobile_sdk/v01;

    .line 309
    :cond_36
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
