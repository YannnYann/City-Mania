###### Class ads_mobile_sdk.am (ads_mobile_sdk.am)
.class public final Lads_mobile_sdk/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/bm;

.field public final synthetic b:Lkotlinx/coroutines/CancellableContinuation;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/bm;Lkotlinx/coroutines/CancellableContinuationImpl;)V
    .registers 3

    .line 2
    iput-object p1, p0, Lads_mobile_sdk/am;->a:Lads_mobile_sdk/bm;

    iput-object p2, p0, Lads_mobile_sdk/am;->b:Lkotlinx/coroutines/CancellableContinuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .registers 6

    .line 1
    const-string v0, "appSetIdInfoTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 39
    new-instance v0, Lads_mobile_sdk/fu;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/appset/AppSetIdInfo;

    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v1, p0, Lads_mobile_sdk/am;->a:Lads_mobile_sdk/bm;

    .line 40
    iget-object v1, v1, Lads_mobile_sdk/bm;->c:Lads_mobile_sdk/tx;

    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 43
    sget-object v3, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v1, v2, v3}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v1

    .line 44
    invoke-direct {v0, p1, v1, v2}, Lads_mobile_sdk/fu;-><init>(Lcom/google/android/gms/appset/AppSetIdInfo;J)V

    .line 45
    iget-object p1, p0, Lads_mobile_sdk/am;->b:Lkotlinx/coroutines/CancellableContinuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lads_mobile_sdk/q01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void

    .line 46
    :cond_3a
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 47
    iget-object p1, p0, Lads_mobile_sdk/am;->a:Lads_mobile_sdk/bm;

    .line 48
    iget-object p1, p1, Lads_mobile_sdk/bm;->b:Lads_mobile_sdk/ur3;

    .line 49
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "AppSet Id task was cancelled"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 50
    check-cast p1, Lads_mobile_sdk/as3;

    invoke-virtual {p1, v1, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    iget-object p1, p0, Lads_mobile_sdk/am;->b:Lkotlinx/coroutines/CancellableContinuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 55
    new-instance v0, Lads_mobile_sdk/m01;

    const-string v1, "Gms Task for getting AppSetId was cancelled"

    .line 56
    sget-object v2, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 57
    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    .line 58
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void

    .line 62
    :cond_65
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    if-nez p1, :cond_72

    .line 63
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "AppSet Id task wasn\'t successful or cancelled, but had no exception."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 64
    :cond_72
    iget-object v0, p0, Lads_mobile_sdk/am;->a:Lads_mobile_sdk/bm;

    .line 65
    iget-object v0, v0, Lads_mobile_sdk/bm;->b:Lads_mobile_sdk/ur3;

    .line 66
    check-cast v0, Lads_mobile_sdk/as3;

    const-string v1, "Task failed while getting AppSet Id"

    invoke-virtual {v0, v1, p1}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    iget-object v0, p0, Lads_mobile_sdk/am;->b:Lkotlinx/coroutines/CancellableContinuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lads_mobile_sdk/j01;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3, v3, v2}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
