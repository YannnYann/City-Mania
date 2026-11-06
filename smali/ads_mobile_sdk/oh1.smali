###### Class ads_mobile_sdk.oh1 (ads_mobile_sdk.oh1)
.class public final Lads_mobile_sdk/oh1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/th1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/th1;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/oh1;->a:Lads_mobile_sdk/th1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/oh1;

    iget-object v0, p0, Lads_mobile_sdk/oh1;->a:Lads_mobile_sdk/th1;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/oh1;-><init>(Lads_mobile_sdk/th1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/oh1;

    iget-object v0, p0, Lads_mobile_sdk/oh1;->a:Lads_mobile_sdk/th1;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/oh1;-><init>(Lads_mobile_sdk/th1;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/oh1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 82
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/oh1;->a:Lads_mobile_sdk/th1;

    .line 83
    iget-object p1, p1, Lads_mobile_sdk/th1;->h:Lads_mobile_sdk/eh1;

    .line 84
    iget-object p1, p1, Lads_mobile_sdk/eh1;->b:Lads_mobile_sdk/dh1;

    if-eqz p1, :cond_26

    const/4 v0, 0x3

    .line 85
    iput v0, p1, Lads_mobile_sdk/dh1;->a:I

    .line 86
    iget-object v0, p1, Lads_mobile_sdk/dh1;->e:Lads_mobile_sdk/ch1;

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 87
    const-string v0, "Unbinding from service."

    invoke-static {v0}, Lads_mobile_sdk/gh1;->a(Ljava/lang/String;)V

    .line 88
    iget-object v0, p1, Lads_mobile_sdk/dh1;->b:Landroid/content/Context;

    iget-object v2, p1, Lads_mobile_sdk/dh1;->e:Lads_mobile_sdk/ch1;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 89
    iput-object v1, p1, Lads_mobile_sdk/dh1;->e:Lads_mobile_sdk/ch1;

    .line 91
    :cond_24
    iput-object v1, p1, Lads_mobile_sdk/dh1;->d:Lads_mobile_sdk/u81;

    .line 92
    :cond_26
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
