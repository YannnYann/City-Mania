###### Class ads_mobile_sdk.te2 (ads_mobile_sdk.te2)
.class public final Lads_mobile_sdk/te2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/ze2;

.field public final synthetic b:Lads_mobile_sdk/aq1;

.field public final synthetic c:Lads_mobile_sdk/zp1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ze2;Lads_mobile_sdk/aq1;Lads_mobile_sdk/zp1;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/te2;->a:Lads_mobile_sdk/ze2;

    iput-object p2, p0, Lads_mobile_sdk/te2;->b:Lads_mobile_sdk/aq1;

    iput-object p3, p0, Lads_mobile_sdk/te2;->c:Lads_mobile_sdk/zp1;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance v0, Lads_mobile_sdk/te2;

    iget-object v1, p0, Lads_mobile_sdk/te2;->a:Lads_mobile_sdk/ze2;

    iget-object v2, p0, Lads_mobile_sdk/te2;->b:Lads_mobile_sdk/aq1;

    iget-object v3, p0, Lads_mobile_sdk/te2;->c:Lads_mobile_sdk/zp1;

    invoke-direct {v0, v1, v2, v3, p1}, Lads_mobile_sdk/te2;-><init>(Lads_mobile_sdk/ze2;Lads_mobile_sdk/aq1;Lads_mobile_sdk/zp1;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1}, Lads_mobile_sdk/te2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/te2;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/te2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 116
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/te2;->a:Lads_mobile_sdk/ze2;

    .line 117
    iget-object p1, p1, Lads_mobile_sdk/ze2;->c:Lads_mobile_sdk/kd2;

    .line 118
    iget-object v0, p0, Lads_mobile_sdk/te2;->b:Lads_mobile_sdk/aq1;

    iget-object v1, p0, Lads_mobile_sdk/te2;->c:Lads_mobile_sdk/zp1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    const-string v2, "javaScriptSessionService"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "tearDownHandler"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    iget-object p1, p1, Lads_mobile_sdk/kd2;->f:Lads_mobile_sdk/ur3;

    new-instance v2, Lads_mobile_sdk/ad2;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/ad2;-><init>(Lads_mobile_sdk/aq1;Lads_mobile_sdk/zp1;)V

    const-string v0, "FinishJavaScriptSessionService"

    invoke-interface {p1, v0, v2}, Lads_mobile_sdk/ur3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    return-object p1
.end method
