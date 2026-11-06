###### Class ads_mobile_sdk.es0 (ads_mobile_sdk.es0)
.class public final Lads_mobile_sdk/es0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/gs0;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Lads_mobile_sdk/gs0;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/es0;->a:Lads_mobile_sdk/gs0;

    iput-object p2, p0, Lads_mobile_sdk/es0;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lads_mobile_sdk/es0;->c:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/es0;

    iget-object v0, p0, Lads_mobile_sdk/es0;->a:Lads_mobile_sdk/gs0;

    iget-object v1, p0, Lads_mobile_sdk/es0;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lads_mobile_sdk/es0;->c:Z

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/es0;-><init>(Lads_mobile_sdk/gs0;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/es0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/es0;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/es0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 29
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    iget-object p1, p0, Lads_mobile_sdk/es0;->a:Lads_mobile_sdk/gs0;

    .line 31
    iget-object p1, p1, Lads_mobile_sdk/gs0;->b:Lads_mobile_sdk/ls0;

    .line 32
    iget-object v0, p0, Lads_mobile_sdk/es0;->b:Ljava/lang/String;

    iget-boolean v1, p0, Lads_mobile_sdk/es0;->c:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    const-string v2, "adUnitId"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    :try_start_16
    iget-object v2, p1, Lads_mobile_sdk/ls0;->e:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_52

    .line 35
    iget-object v2, p1, Lads_mobile_sdk/ls0;->d:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Lads_mobile_sdk/ex0;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v1, :cond_2f

    .line 36
    const-string v1, "beginAdUnitExposure"

    goto :goto_31

    :catch_2d
    move-exception v0

    goto :goto_49

    :cond_2f
    const-string v1, "endAdUnitExposure"

    .line 38
    :goto_31
    const-class v3, Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 39
    iget-object v2, p1, Lads_mobile_sdk/ls0;->e:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 40
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_48} :catch_2d

    goto :goto_52

    .line 43
    :goto_49
    iget-object p1, p1, Lads_mobile_sdk/ls0;->b:Lads_mobile_sdk/ur3;

    check-cast p1, Lads_mobile_sdk/as3;

    const-string v1, "FirebaseAnalyticsAdapter.invokeMethod AdUnitExposure"

    invoke-virtual {p1, v1, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    :cond_52
    :goto_52
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
