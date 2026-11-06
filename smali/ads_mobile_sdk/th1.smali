###### Class ads_mobile_sdk.th1 (ads_mobile_sdk.th1)
.class public final Lads_mobile_sdk/th1;
.super Lads_mobile_sdk/fp2;
.source "SourceFile"


# instance fields
.field public final c:Lkotlinx/coroutines/CoroutineScope;

.field public final d:Lkotlinx/coroutines/CoroutineScope;

.field public final e:Lads_mobile_sdk/ex0;

.field public final f:Lads_mobile_sdk/zd3;

.field public final g:Lads_mobile_sdk/g83;

.field public final h:Lads_mobile_sdk/eh1;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/ex0;Lads_mobile_sdk/zd3;Lads_mobile_sdk/g83;Lads_mobile_sdk/eh1;)V
    .registers 8

    .line 1
    const-string v0, "backgroundScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedSettingsDataStore"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installReferrerClientProxy"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lads_mobile_sdk/fp2;-><init>()V

    .line 38
    iput-object p1, p0, Lads_mobile_sdk/th1;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 39
    iput-object p2, p0, Lads_mobile_sdk/th1;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 40
    iput-object p3, p0, Lads_mobile_sdk/th1;->e:Lads_mobile_sdk/ex0;

    .line 41
    iput-object p4, p0, Lads_mobile_sdk/th1;->f:Lads_mobile_sdk/zd3;

    .line 42
    iput-object p5, p0, Lads_mobile_sdk/th1;->g:Lads_mobile_sdk/g83;

    .line 43
    iput-object p6, p0, Lads_mobile_sdk/th1;->h:Lads_mobile_sdk/eh1;

    return-void
.end method


# virtual methods
.method public final u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/qh1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/qh1;

    iget v1, v0, Lads_mobile_sdk/qh1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/qh1;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/qh1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/qh1;-><init>(Lads_mobile_sdk/th1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/qh1;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 39
    iget v2, v0, Lads_mobile_sdk/qh1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    if-ne v2, v3, :cond_2b

    iget-object v0, v0, Lads_mobile_sdk/qh1;->a:Lads_mobile_sdk/th1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_63

    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    iget-object p1, p0, Lads_mobile_sdk/th1;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    const-string v2, "key"

    const-string v4, "gads:install_referrer_details:enabled"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v5, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p1, v4, v2, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7a

    .line 60
    iget-object p1, p0, Lads_mobile_sdk/th1;->f:Lads_mobile_sdk/zd3;

    iput-object p0, v0, Lads_mobile_sdk/qh1;->a:Lads_mobile_sdk/th1;

    iput v3, v0, Lads_mobile_sdk/qh1;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    invoke-static {p1, v0}, Lads_mobile_sdk/zd3;->c(Lads_mobile_sdk/zd3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_62

    return-object v1

    :cond_62
    move-object v0, p0

    .line 62
    :goto_63
    check-cast p1, Lads_mobile_sdk/od3;

    invoke-virtual {p1}, Lads_mobile_sdk/od3;->x()Z

    move-result p1

    if-nez p1, :cond_7a

    .line 64
    iget-object v1, v0, Lads_mobile_sdk/th1;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lads_mobile_sdk/sh1;

    const/4 p1, 0x0

    invoke-direct {v4, v0, p1}, Lads_mobile_sdk/sh1;-><init>(Lads_mobile_sdk/th1;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 77
    :cond_7a
    new-instance p1, Lads_mobile_sdk/q01;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
