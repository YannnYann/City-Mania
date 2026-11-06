###### Class ads_mobile_sdk.bm (ads_mobile_sdk.bm)
.class public final Lads_mobile_sdk/bm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lads_mobile_sdk/ur3;

.field public final c:Lads_mobile_sdk/tx;

.field public final d:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/ur3;Lads_mobile_sdk/tx;)V
    .registers 5

    .line 1
    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lads_mobile_sdk/bm;->a:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lads_mobile_sdk/bm;->b:Lads_mobile_sdk/ur3;

    .line 27
    iput-object p3, p0, Lads_mobile_sdk/bm;->c:Lads_mobile_sdk/tx;

    .line 30
    new-instance p1, Lads_mobile_sdk/yl;

    invoke-direct {p1, p0}, Lads_mobile_sdk/yl;-><init>(Lads_mobile_sdk/bm;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/bm;->d:Lkotlin/Lazy;

    return-void
.end method

.method public static a(Lads_mobile_sdk/bm;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/zl;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/zl;

    iget v1, v0, Lads_mobile_sdk/zl;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/zl;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/zl;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/zl;-><init>(Lads_mobile_sdk/bm;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/zl;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 33
    iget v2, v0, Lads_mobile_sdk/zl;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_35

    if-ne v2, v3, :cond_2d

    iget-object p0, v0, Lads_mobile_sdk/zl;->a:Lads_mobile_sdk/bm;

    :try_start_27
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_6c

    :catch_2b
    move-exception p1

    goto :goto_6f

    .line 34
    :cond_2d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_35
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    :try_start_38
    iput-object p0, v0, Lads_mobile_sdk/zl;->a:Lads_mobile_sdk/bm;

    iput v3, v0, Lads_mobile_sdk/zl;->d:I

    .line 69
    new-instance p1, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v2

    invoke-direct {p1, v2, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 75
    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 76
    iget-object v2, p0, Lads_mobile_sdk/bm;->d:Lkotlin/Lazy;

    .line 77
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/appset/AppSetIdClient;

    .line 78
    invoke-interface {v2}, Lcom/google/android/gms/appset/AppSetIdClient;->getAppSetIdInfo()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Lads_mobile_sdk/am;

    invoke-direct {v3, p0, p1}, Lads_mobile_sdk/am;-><init>(Lads_mobile_sdk/bm;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 118
    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 119
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_69

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_69
    if-ne p1, v1, :cond_6c

    return-object v1

    .line 129
    :cond_6c
    :goto_6c
    check-cast p1, Lads_mobile_sdk/v01;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_6e} :catch_2b

    return-object p1

    .line 130
    :goto_6f
    iget-object p0, p0, Lads_mobile_sdk/bm;->b:Lads_mobile_sdk/ur3;

    check-cast p0, Lads_mobile_sdk/as3;

    const-string v0, "Exception while getting AppSet Id"

    invoke-virtual {p0, v0, p1}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    new-instance p0, Lads_mobile_sdk/j01;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v1, v0}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    return-object p0
.end method
