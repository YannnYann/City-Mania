###### Class ads_mobile_sdk.kd2 (ads_mobile_sdk.kd2)
.class public final Lads_mobile_sdk/kd2;
.super Lads_mobile_sdk/nc1;
.source "SourceFile"


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Lkotlin/coroutines/CoroutineContext;

.field public final e:Lkotlinx/coroutines/CoroutineScope;

.field public final f:Lads_mobile_sdk/ur3;

.field public final g:Lads_mobile_sdk/g83;

.field public final h:Ljava/lang/String;

.field public final i:Lkotlinx/coroutines/CompletableJob;

.field public final j:Lads_mobile_sdk/bj2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/ur3;Lads_mobile_sdk/g83;Ljava/lang/String;)V
    .registers 9

    .line 1
    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gmaVersion"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, v1, v0}, Lads_mobile_sdk/nc1;-><init>(Lads_mobile_sdk/s11;I)V

    .line 54
    iput-object p1, p0, Lads_mobile_sdk/kd2;->c:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lads_mobile_sdk/kd2;->d:Lkotlin/coroutines/CoroutineContext;

    .line 56
    iput-object p3, p0, Lads_mobile_sdk/kd2;->e:Lkotlinx/coroutines/CoroutineScope;

    .line 57
    iput-object p4, p0, Lads_mobile_sdk/kd2;->f:Lads_mobile_sdk/ur3;

    .line 58
    iput-object p5, p0, Lads_mobile_sdk/kd2;->g:Lads_mobile_sdk/g83;

    .line 59
    iput-object p6, p0, Lads_mobile_sdk/kd2;->h:Ljava/lang/String;

    const/4 p1, 0x1

    .line 62
    invoke-static {v1, p1, v1}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/kd2;->i:Lkotlinx/coroutines/CompletableJob;

    .line 63
    const-string p1, "Google"

    invoke-static {p1, p6}, Lads_mobile_sdk/bj2;->a(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/bj2;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/kd2;->j:Lads_mobile_sdk/bj2;

    return-void
.end method

.method public static a(Lads_mobile_sdk/kd2;Lads_mobile_sdk/r31;Lads_mobile_sdk/xh2;Lads_mobile_sdk/x91;Lads_mobile_sdk/l40;Lads_mobile_sdk/xh2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14

    .line 116
    instance-of v1, p7, Lads_mobile_sdk/uc2;

    if-eqz v1, :cond_13

    move-object v1, p7

    check-cast v1, Lads_mobile_sdk/uc2;

    iget v2, v1, Lads_mobile_sdk/uc2;->j:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_13

    sub-int/2addr v2, v3

    iput v2, v1, Lads_mobile_sdk/uc2;->j:I

    goto :goto_18

    :cond_13
    new-instance v1, Lads_mobile_sdk/uc2;

    invoke-direct {v1, p0, p7}, Lads_mobile_sdk/uc2;-><init>(Lads_mobile_sdk/kd2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object v0, v1, Lads_mobile_sdk/uc2;->h:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 210
    iget v3, v1, Lads_mobile_sdk/uc2;->j:I

    const/4 v4, 0x1

    if-eqz v3, :cond_44

    if-ne v3, v4, :cond_3c

    iget-object p0, v1, Lads_mobile_sdk/uc2;->g:Ljava/lang/String;

    iget-object p1, v1, Lads_mobile_sdk/uc2;->f:Lads_mobile_sdk/xh2;

    iget-object p4, v1, Lads_mobile_sdk/uc2;->e:Lads_mobile_sdk/l40;

    iget-object p3, v1, Lads_mobile_sdk/uc2;->d:Lads_mobile_sdk/x91;

    iget-object p2, v1, Lads_mobile_sdk/uc2;->c:Lads_mobile_sdk/xh2;

    iget-object v2, v1, Lads_mobile_sdk/uc2;->b:Lads_mobile_sdk/r31;

    iget-object v1, v1, Lads_mobile_sdk/uc2;->a:Lads_mobile_sdk/kd2;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p0

    move-object v3, p1

    move-object p0, p2

    move-object p1, v1

    move-object p2, v2

    goto :goto_66

    :cond_3c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_44
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lads_mobile_sdk/kd2;->i:Lkotlinx/coroutines/CompletableJob;

    iput-object p0, v1, Lads_mobile_sdk/uc2;->a:Lads_mobile_sdk/kd2;

    iput-object p1, v1, Lads_mobile_sdk/uc2;->b:Lads_mobile_sdk/r31;

    iput-object p2, v1, Lads_mobile_sdk/uc2;->c:Lads_mobile_sdk/xh2;

    iput-object p3, v1, Lads_mobile_sdk/uc2;->d:Lads_mobile_sdk/x91;

    iput-object p4, v1, Lads_mobile_sdk/uc2;->e:Lads_mobile_sdk/l40;

    iput-object p5, v1, Lads_mobile_sdk/uc2;->f:Lads_mobile_sdk/xh2;

    iput-object p6, v1, Lads_mobile_sdk/uc2;->g:Ljava/lang/String;

    iput v4, v1, Lads_mobile_sdk/uc2;->j:I

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_60

    return-object v2

    :cond_60
    move-object v3, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, v3

    move-object v3, p5

    move-object v5, p6

    .line 219
    :goto_66
    sget-object v0, Lads_mobile_sdk/jd2;->a:Lads_mobile_sdk/me2;

    .line 220
    iget-boolean v0, v0, Lads_mobile_sdk/me2;->a:Z

    if-nez v0, :cond_6e

    const/4 p0, 0x0

    return-object p0

    .line 221
    :cond_6e
    iget-object v0, p1, Lads_mobile_sdk/kd2;->f:Lads_mobile_sdk/ur3;

    new-instance v1, Lads_mobile_sdk/vc2;

    move-object p6, p0

    move-object p5, p3

    move-object p0, v1

    move-object p7, v3

    move-object p3, v5

    invoke-direct/range {p0 .. p7}, Lads_mobile_sdk/vc2;-><init>(Lads_mobile_sdk/kd2;Lads_mobile_sdk/r31;Ljava/lang/String;Lads_mobile_sdk/l40;Lads_mobile_sdk/x91;Lads_mobile_sdk/xh2;Lads_mobile_sdk/xh2;)V

    const-string p1, "CreateOmidSession"

    invoke-interface {v0, p1, p0}, Lads_mobile_sdk/ur3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lads_mobile_sdk/kd2;Lads_mobile_sdk/r31;Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/l40;Lads_mobile_sdk/x91;Lads_mobile_sdk/xh2;Lads_mobile_sdk/xh2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 16

    move-object v0, p8

    .line 222
    instance-of v1, v0, Lads_mobile_sdk/xc2;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lads_mobile_sdk/xc2;

    iget v2, v1, Lads_mobile_sdk/xc2;->k:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_14

    sub-int/2addr v2, v3

    iput v2, v1, Lads_mobile_sdk/xc2;->k:I

    goto :goto_19

    :cond_14
    new-instance v1, Lads_mobile_sdk/xc2;

    invoke-direct {v1, p0, p8}, Lads_mobile_sdk/xc2;-><init>(Lads_mobile_sdk/kd2;Lkotlin/coroutines/Continuation;)V

    :goto_19
    iget-object v0, v1, Lads_mobile_sdk/xc2;->i:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 406
    iget v3, v1, Lads_mobile_sdk/xc2;->k:I

    const/4 v4, 0x1

    if-eqz v3, :cond_48

    if-ne v3, v4, :cond_40

    iget-object p0, v1, Lads_mobile_sdk/xc2;->h:Lads_mobile_sdk/xh2;

    iget-object p1, v1, Lads_mobile_sdk/xc2;->g:Lads_mobile_sdk/xh2;

    iget-object p2, v1, Lads_mobile_sdk/xc2;->f:Lads_mobile_sdk/x91;

    iget-object p3, v1, Lads_mobile_sdk/xc2;->e:Lads_mobile_sdk/l40;

    iget-object v2, v1, Lads_mobile_sdk/xc2;->d:Ljava/lang/String;

    iget-object v3, v1, Lads_mobile_sdk/xc2;->c:Ljava/lang/String;

    iget-object v4, v1, Lads_mobile_sdk/xc2;->b:Lads_mobile_sdk/r31;

    iget-object v1, v1, Lads_mobile_sdk/xc2;->a:Lads_mobile_sdk/kd2;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, p1

    move-object v5, p2

    move-object p2, v1

    move-object p1, v3

    move-object v3, p3

    move-object p3, v4

    goto :goto_6e

    :cond_40
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_48
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 415
    iget-object v0, p0, Lads_mobile_sdk/kd2;->i:Lkotlinx/coroutines/CompletableJob;

    iput-object p0, v1, Lads_mobile_sdk/xc2;->a:Lads_mobile_sdk/kd2;

    iput-object p1, v1, Lads_mobile_sdk/xc2;->b:Lads_mobile_sdk/r31;

    iput-object p2, v1, Lads_mobile_sdk/xc2;->c:Ljava/lang/String;

    iput-object p3, v1, Lads_mobile_sdk/xc2;->d:Ljava/lang/String;

    iput-object p4, v1, Lads_mobile_sdk/xc2;->e:Lads_mobile_sdk/l40;

    iput-object p5, v1, Lads_mobile_sdk/xc2;->f:Lads_mobile_sdk/x91;

    iput-object p6, v1, Lads_mobile_sdk/xc2;->g:Lads_mobile_sdk/xh2;

    iput-object p7, v1, Lads_mobile_sdk/xc2;->h:Lads_mobile_sdk/xh2;

    iput v4, v1, Lads_mobile_sdk/xc2;->k:I

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_66

    return-object v2

    :cond_66
    move-object v2, p3

    move-object v3, p4

    move-object v5, p5

    move-object v6, p6

    move-object p3, p1

    move-object p1, p2

    move-object p2, p0

    move-object p0, p7

    .line 416
    :goto_6e
    sget-object v0, Lads_mobile_sdk/jd2;->a:Lads_mobile_sdk/me2;

    .line 417
    iget-boolean v0, v0, Lads_mobile_sdk/me2;->a:Z

    if-nez v0, :cond_76

    const/4 p0, 0x0

    return-object p0

    .line 418
    :cond_76
    iget-object v0, p2, Lads_mobile_sdk/kd2;->f:Lads_mobile_sdk/ur3;

    new-instance v1, Lads_mobile_sdk/yc2;

    move-object p8, p0

    move-object p0, v1

    move-object p4, v2

    move-object p5, v3

    move-object p6, v5

    move-object p7, v6

    invoke-direct/range {p0 .. p8}, Lads_mobile_sdk/yc2;-><init>(Ljava/lang/String;Lads_mobile_sdk/kd2;Lads_mobile_sdk/r31;Ljava/lang/String;Lads_mobile_sdk/l40;Lads_mobile_sdk/x91;Lads_mobile_sdk/xh2;Lads_mobile_sdk/xh2;)V

    const-string p1, "CreateJavascriptAdSession"

    invoke-interface {v0, p1, p0}, Lads_mobile_sdk/ur3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lads_mobile_sdk/kd2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    instance-of v0, p1, Lads_mobile_sdk/cd2;

    if-eqz v0, :cond_16

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/cd2;

    iget v1, v0, Lads_mobile_sdk/cd2;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/cd2;->c:I

    goto :goto_1b

    :cond_16
    new-instance v0, Lads_mobile_sdk/cd2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/cd2;-><init>(Lads_mobile_sdk/kd2;Lkotlin/coroutines/Continuation;)V

    :goto_1b
    iget-object p1, v0, Lads_mobile_sdk/cd2;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 108
    iget v2, v0, Lads_mobile_sdk/cd2;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_35

    if-ne v2, v4, :cond_2d

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4d

    :cond_2d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_35
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 109
    iget-object p1, p0, Lads_mobile_sdk/kd2;->f:Lads_mobile_sdk/ur3;

    new-instance v2, Lads_mobile_sdk/ed2;

    invoke-direct {v2, p0, v3}, Lads_mobile_sdk/ed2;-><init>(Lads_mobile_sdk/kd2;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lads_mobile_sdk/cd2;->c:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    const-string p0, "ActivateOmid"

    invoke-static {p1, p0, v2, v0}, Lads_mobile_sdk/ur3;->a(Lads_mobile_sdk/ur3;Ljava/lang/String;Lads_mobile_sdk/ed2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4d

    return-object v1

    .line 111
    :cond_4d
    :goto_4d
    sget-object p0, Lads_mobile_sdk/jd2;->a:Lads_mobile_sdk/me2;

    .line 112
    iget-boolean p0, p0, Lads_mobile_sdk/me2;->a:Z

    if-nez p0, :cond_59

    .line 113
    const-string p0, "OMSDK failed to activate."

    const/4 p1, 0x6

    invoke-static {p0, v3, p1}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 115
    :cond_59
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/k9;Landroid/view/View;)Lkotlin/Unit;
    .registers 5

    .line 419
    const-string v0, "adSession"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lads_mobile_sdk/kd2;->f:Lads_mobile_sdk/ur3;

    new-instance v1, Lads_mobile_sdk/gd2;

    invoke-direct {v1, p1, p2}, Lads_mobile_sdk/gd2;-><init>(Lads_mobile_sdk/k9;Landroid/view/View;)V

    const-string p1, "RegisterOmidAdView"

    invoke-interface {v0, p1, v1}, Lads_mobile_sdk/ur3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    return-object p1
.end method

.method public final g()Ljava/lang/String;
    .registers 4

    .line 89
    iget-object v0, p0, Lads_mobile_sdk/kd2;->f:Lads_mobile_sdk/ur3;

    sget-object v1, Lads_mobile_sdk/bd2;->a:Lads_mobile_sdk/bd2;

    const-string v2, "GetOmidVersion"

    invoke-interface {v0, v2, v1}, Lads_mobile_sdk/ur3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/kd2;->e:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lads_mobile_sdk/hd2;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lads_mobile_sdk/hd2;-><init>(Lads_mobile_sdk/kd2;Lkotlin/coroutines/Continuation;)V

    move-object v2, v1

    .line 3
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 4
    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "block"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    new-instance v3, Lads_mobile_sdk/ws3;

    invoke-direct {v3, p1, v2}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 263
    new-instance p1, Lads_mobile_sdk/q01;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
