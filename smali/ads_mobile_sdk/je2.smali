###### Class ads_mobile_sdk.je2 (ads_mobile_sdk.je2)
.class public final Lads_mobile_sdk/je2;
.super Lads_mobile_sdk/es;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/df2;


# instance fields
.field public final c:Lkotlinx/coroutines/CoroutineScope;

.field public final d:Lads_mobile_sdk/i2;

.field public final e:Lads_mobile_sdk/kd2;

.field public final f:Lads_mobile_sdk/h41;

.field public final g:Lads_mobile_sdk/ze2;

.field public final h:Lkotlinx/coroutines/sync/Mutex;

.field public i:Lads_mobile_sdk/k9;

.field public final j:Ljava/util/List;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/i2;Lads_mobile_sdk/kd2;Lads_mobile_sdk/h41;Lads_mobile_sdk/ze2;Lads_mobile_sdk/ex0;)V
    .registers 9

    .line 1
    const-string v0, "uiContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "omid"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webViewContainer"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "omidJavaScriptSessionService"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, p7, p1}, Lads_mobile_sdk/es;-><init>(Lads_mobile_sdk/ex0;Lkotlin/coroutines/CoroutineContext;)V

    .line 42
    iput-object p2, p0, Lads_mobile_sdk/je2;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 43
    iput-object p3, p0, Lads_mobile_sdk/je2;->d:Lads_mobile_sdk/i2;

    .line 44
    iput-object p4, p0, Lads_mobile_sdk/je2;->e:Lads_mobile_sdk/kd2;

    .line 45
    iput-object p5, p0, Lads_mobile_sdk/je2;->f:Lads_mobile_sdk/h41;

    .line 46
    iput-object p6, p0, Lads_mobile_sdk/je2;->g:Lads_mobile_sdk/ze2;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 50
    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/je2;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/je2;->j:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lads_mobile_sdk/je2;Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 628
    instance-of v0, p2, Lads_mobile_sdk/he2;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/he2;

    iget v1, v0, Lads_mobile_sdk/he2;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/he2;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/he2;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/he2;-><init>(Lads_mobile_sdk/je2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/he2;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 746
    iget v2, v0, Lads_mobile_sdk/he2;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_49

    if-eq v2, v4, :cond_3d

    if-ne v2, v3, :cond_35

    iget-object p0, v0, Lads_mobile_sdk/he2;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lads_mobile_sdk/he2;->b:Landroid/view/View;

    iget-object v0, v0, Lads_mobile_sdk/he2;->a:Lads_mobile_sdk/je2;

    :try_start_2f
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_77

    :catchall_33
    move-exception p1

    goto :goto_87

    .line 747
    :cond_35
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3d
    iget-object p0, v0, Lads_mobile_sdk/he2;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lads_mobile_sdk/he2;->b:Landroid/view/View;

    iget-object v2, v0, Lads_mobile_sdk/he2;->a:Lads_mobile_sdk/je2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p0

    move-object p0, v2

    goto :goto_5d

    :cond_49
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lads_mobile_sdk/je2;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 835
    iput-object p0, v0, Lads_mobile_sdk/he2;->a:Lads_mobile_sdk/je2;

    iput-object p1, v0, Lads_mobile_sdk/he2;->b:Landroid/view/View;

    iput-object p2, v0, Lads_mobile_sdk/he2;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/he2;->f:I

    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5d

    goto :goto_74

    .line 836
    :cond_5d
    :goto_5d
    :try_start_5d
    iget-object v2, p0, Lads_mobile_sdk/je2;->i:Lads_mobile_sdk/k9;

    if-eqz v2, :cond_80

    .line 837
    new-instance v4, Lads_mobile_sdk/ie2;

    invoke-direct {v4, p0, v2, p1, v5}, Lads_mobile_sdk/ie2;-><init>(Lads_mobile_sdk/je2;Lads_mobile_sdk/k9;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lads_mobile_sdk/he2;->a:Lads_mobile_sdk/je2;

    iput-object p1, v0, Lads_mobile_sdk/he2;->b:Landroid/view/View;

    iput-object p2, v0, Lads_mobile_sdk/he2;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/he2;->f:I

    invoke-virtual {p0, v4, v0}, Lads_mobile_sdk/es;->a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0
    :try_end_72
    .catchall {:try_start_5d .. :try_end_72} :catchall_7d

    if-ne v0, v1, :cond_75

    :goto_74
    return-object v1

    :cond_75
    move-object v0, p0

    move-object p0, p2

    .line 838
    :goto_77
    :try_start_77
    iget-object p2, v0, Lads_mobile_sdk/je2;->j:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_81

    :catchall_7d
    move-exception p1

    move-object p0, p2

    goto :goto_87

    :cond_80
    move-object p0, p2

    .line 840
    :goto_81
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_83
    .catchall {:try_start_77 .. :try_end_83} :catchall_33

    .line 927
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    .line 928
    :goto_87
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public static a(Lads_mobile_sdk/je2;Landroid/view/ViewGroup;Lads_mobile_sdk/tx0;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 15

    .line 2
    instance-of v0, p4, Lads_mobile_sdk/vd2;

    if-eqz v0, :cond_13

    move-object v0, p4

    check-cast v0, Lads_mobile_sdk/vd2;

    iget v1, v0, Lads_mobile_sdk/vd2;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/vd2;->g:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/vd2;

    invoke-direct {v0, p0, p4}, Lads_mobile_sdk/vd2;-><init>(Lads_mobile_sdk/je2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p4, v0, Lads_mobile_sdk/vd2;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 3
    iget v2, v0, Lads_mobile_sdk/vd2;->g:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_44

    if-eq v2, v4, :cond_34

    if-ne v2, v3, :cond_2c

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p4

    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    iget-object p3, v0, Lads_mobile_sdk/vd2;->d:Ljava/lang/String;

    iget-object p2, v0, Lads_mobile_sdk/vd2;->c:Lads_mobile_sdk/tx0;

    iget-object p1, v0, Lads_mobile_sdk/vd2;->b:Landroid/view/View;

    iget-object p0, v0, Lads_mobile_sdk/vd2;->a:Lads_mobile_sdk/je2;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_3f
    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    goto :goto_5d

    :cond_44
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 8
    iget-object p4, p0, Lads_mobile_sdk/je2;->g:Lads_mobile_sdk/ze2;

    iput-object p0, v0, Lads_mobile_sdk/vd2;->a:Lads_mobile_sdk/je2;

    iput-object p1, v0, Lads_mobile_sdk/vd2;->b:Landroid/view/View;

    iput-object p2, v0, Lads_mobile_sdk/vd2;->c:Lads_mobile_sdk/tx0;

    iput-object p3, v0, Lads_mobile_sdk/vd2;->d:Ljava/lang/String;

    iput v4, v0, Lads_mobile_sdk/vd2;->g:I

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {p4, v0}, Lads_mobile_sdk/ze2;->a(Lads_mobile_sdk/ze2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3f

    goto :goto_7c

    .line 10
    :goto_5d
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_7e

    .line 11
    new-instance v4, Lads_mobile_sdk/wd2;

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lads_mobile_sdk/wd2;-><init>(Lads_mobile_sdk/je2;Landroid/view/View;Lads_mobile_sdk/tx0;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x0

    iput-object p0, v0, Lads_mobile_sdk/vd2;->a:Lads_mobile_sdk/je2;

    iput-object p0, v0, Lads_mobile_sdk/vd2;->b:Landroid/view/View;

    iput-object p0, v0, Lads_mobile_sdk/vd2;->c:Lads_mobile_sdk/tx0;

    iput-object p0, v0, Lads_mobile_sdk/vd2;->d:Ljava/lang/String;

    iput v3, v0, Lads_mobile_sdk/vd2;->g:I

    invoke-virtual {v5, v4, v0}, Lads_mobile_sdk/es;->a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7d

    :goto_7c
    return-object v1

    :cond_7d
    return-object p0

    .line 19
    :cond_7e
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static a(Lads_mobile_sdk/je2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 312
    instance-of v0, p1, Lads_mobile_sdk/zd2;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/zd2;

    iget v1, v0, Lads_mobile_sdk/zd2;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/zd2;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/zd2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/zd2;-><init>(Lads_mobile_sdk/je2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/zd2;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 461
    iget v2, v0, Lads_mobile_sdk/zd2;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_47

    if-eq v2, v4, :cond_3b

    if-ne v2, v3, :cond_33

    iget-object p0, v0, Lads_mobile_sdk/zd2;->a:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_2d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_6e

    :catchall_31
    move-exception p1

    goto :goto_78

    .line 462
    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    iget-object p0, v0, Lads_mobile_sdk/zd2;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/zd2;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/je2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v2

    goto :goto_59

    :cond_47
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/je2;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 541
    iput-object p0, v0, Lads_mobile_sdk/zd2;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/zd2;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/zd2;->e:I

    invoke-interface {p1, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_59

    goto :goto_6c

    .line 542
    :cond_59
    :goto_59
    :try_start_59
    iget-object v2, p0, Lads_mobile_sdk/es;->b:Lkotlin/coroutines/CoroutineContext;

    .line 543
    new-instance v4, Lads_mobile_sdk/be2;

    invoke-direct {v4, p0, v5}, Lads_mobile_sdk/be2;-><init>(Lads_mobile_sdk/je2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lads_mobile_sdk/zd2;->a:Ljava/lang/Object;

    iput-object v5, v0, Lads_mobile_sdk/zd2;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/zd2;->e:I

    invoke-static {v2, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_6a
    .catchall {:try_start_59 .. :try_end_6a} :catchall_74

    if-ne p0, v1, :cond_6d

    :goto_6c
    return-object v1

    :cond_6d
    move-object p0, p1

    .line 559
    :goto_6e
    :try_start_6e
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_70
    .catchall {:try_start_6e .. :try_end_70} :catchall_31

    .line 625
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_74
    move-exception p0

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    .line 626
    :goto_78
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public static b(Lads_mobile_sdk/je2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/ce2;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/ce2;

    iget v1, v0, Lads_mobile_sdk/ce2;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ce2;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/ce2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/ce2;-><init>(Lads_mobile_sdk/je2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/ce2;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 115
    iget v2, v0, Lads_mobile_sdk/ce2;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_47

    if-eq v2, v4, :cond_3b

    if-ne v2, v3, :cond_33

    iget-object p0, v0, Lads_mobile_sdk/ce2;->a:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_2d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_72

    :catchall_31
    move-exception p1

    goto :goto_89

    .line 116
    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    iget-object p0, v0, Lads_mobile_sdk/ce2;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/ce2;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/je2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v2

    goto :goto_59

    :cond_47
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/je2;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 198
    iput-object p0, v0, Lads_mobile_sdk/ce2;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/ce2;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/ce2;->e:I

    invoke-interface {p1, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_59

    goto :goto_6e

    .line 199
    :cond_59
    :goto_59
    :try_start_59
    iget-object v2, p0, Lads_mobile_sdk/je2;->i:Lads_mobile_sdk/k9;

    if-nez v2, :cond_80

    iget-object p0, p0, Lads_mobile_sdk/je2;->g:Lads_mobile_sdk/ze2;

    iput-object p1, v0, Lads_mobile_sdk/ce2;->a:Ljava/lang/Object;

    iput-object v5, v0, Lads_mobile_sdk/ce2;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/ce2;->e:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    invoke-static {p0, v0}, Lads_mobile_sdk/ze2;->a(Lads_mobile_sdk/ze2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_6c
    .catchall {:try_start_59 .. :try_end_6c} :catchall_7e

    if-ne p0, v1, :cond_6f

    :goto_6e
    return-object v1

    :cond_6f
    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    .line 201
    :goto_72
    :try_start_72
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7c

    move-object p1, p0

    goto :goto_80

    :cond_7c
    const/4 v4, 0x0

    goto :goto_81

    :catchall_7e
    move-exception p0

    goto :goto_8c

    :cond_80
    :goto_80
    move-object p0, p1

    .line 202
    :goto_81
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_85
    .catchall {:try_start_72 .. :try_end_85} :catchall_31

    .line 287
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :goto_89
    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    :goto_8c
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static synthetic c(Lads_mobile_sdk/je2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 1
    const-string v0, "omidRegisteredViews"

    instance-of v1, p1, Lads_mobile_sdk/de2;

    if-eqz v1, :cond_15

    move-object v1, p1

    check-cast v1, Lads_mobile_sdk/de2;

    iget v2, v1, Lads_mobile_sdk/de2;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_15

    sub-int/2addr v2, v3

    iput v2, v1, Lads_mobile_sdk/de2;->e:I

    goto :goto_1a

    :cond_15
    new-instance v1, Lads_mobile_sdk/de2;

    invoke-direct {v1, p0, p1}, Lads_mobile_sdk/de2;-><init>(Lads_mobile_sdk/je2;Lkotlin/coroutines/Continuation;)V

    :goto_1a
    iget-object p1, v1, Lads_mobile_sdk/de2;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 126
    iget v3, v1, Lads_mobile_sdk/de2;->e:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_49

    if-eq v3, v5, :cond_3d

    if-ne v3, v4, :cond_35

    iget-object p0, v1, Lads_mobile_sdk/de2;->a:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_2f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_8b

    :catchall_33
    move-exception p1

    goto :goto_91

    .line 127
    :cond_35
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3d
    iget-object p0, v1, Lads_mobile_sdk/de2;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v3, v1, Lads_mobile_sdk/de2;->a:Ljava/lang/Object;

    check-cast v3, Lads_mobile_sdk/je2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v3

    goto :goto_5b

    :cond_49
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/je2;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 219
    iput-object p0, v1, Lads_mobile_sdk/de2;->a:Ljava/lang/Object;

    iput-object p1, v1, Lads_mobile_sdk/de2;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v1, Lads_mobile_sdk/de2;->e:I

    invoke-interface {p1, v6, v1}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_5b

    goto :goto_87

    .line 220
    :cond_5b
    :goto_5b
    :try_start_5b
    iget-object v3, p0, Lads_mobile_sdk/je2;->i:Lads_mobile_sdk/k9;

    if-eqz v3, :cond_8a

    .line 221
    iget-object v5, p0, Lads_mobile_sdk/je2;->j:Ljava/util/List;

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->removeLastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 222
    iget-object v5, p0, Lads_mobile_sdk/je2;->j:Ljava/util/List;

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_76

    iget-object v0, p0, Lads_mobile_sdk/je2;->f:Lads_mobile_sdk/h41;

    .line 223
    :cond_76
    new-instance v5, Lads_mobile_sdk/ee2;

    invoke-direct {v5, p0, v3, v0, v6}, Lads_mobile_sdk/ee2;-><init>(Lads_mobile_sdk/je2;Lads_mobile_sdk/k9;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v1, Lads_mobile_sdk/de2;->a:Ljava/lang/Object;

    iput-object v6, v1, Lads_mobile_sdk/de2;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v1, Lads_mobile_sdk/de2;->e:I

    invoke-virtual {p0, v5, v1}, Lads_mobile_sdk/es;->a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0
    :try_end_85
    .catchall {:try_start_5b .. :try_end_85} :catchall_88

    if-ne p0, v2, :cond_8a

    :goto_87
    return-object v2

    :catchall_88
    move-exception p0

    goto :goto_94

    :cond_8a
    move-object p0, p1

    .line 225
    :goto_8b
    :try_start_8b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8d
    .catchall {:try_start_8b .. :try_end_8d} :catchall_33

    .line 315
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :goto_91
    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    .line 316
    :goto_94
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static d(Lads_mobile_sdk/je2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/fe2;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/fe2;

    iget v1, v0, Lads_mobile_sdk/fe2;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/fe2;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/fe2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/fe2;-><init>(Lads_mobile_sdk/je2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/fe2;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 107
    iget v2, v0, Lads_mobile_sdk/fe2;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_62

    if-eq v2, v5, :cond_53

    if-eq v2, v4, :cond_40

    if-ne v2, v3, :cond_38

    iget-object p0, v0, Lads_mobile_sdk/fe2;->a:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_30
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_35

    goto/16 :goto_b5

    :catchall_35
    move-exception p1

    goto/16 :goto_bb

    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 108
    :cond_40
    iget-object p0, v0, Lads_mobile_sdk/fe2;->b:Ljava/lang/Object;

    check-cast p0, Lads_mobile_sdk/r31;

    iget-object v2, v0, Lads_mobile_sdk/fe2;->a:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    :try_start_48
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_50

    move-object v7, p1

    move-object p1, p0

    move-object p0, v2

    move-object v2, v7

    goto :goto_92

    :catchall_50
    move-exception p0

    goto/16 :goto_bd

    .line 109
    :cond_53
    iget-object p0, v0, Lads_mobile_sdk/fe2;->b:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/fe2;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/je2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v2

    move-object v2, p0

    move-object p0, v7

    goto :goto_75

    :cond_62
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/je2;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 188
    iput-object p0, v0, Lads_mobile_sdk/fe2;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/fe2;->b:Ljava/lang/Object;

    iput v5, v0, Lads_mobile_sdk/fe2;->e:I

    invoke-interface {p1, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_74

    goto :goto_b4

    :cond_74
    move-object v2, p1

    .line 189
    :goto_75
    :try_start_75
    iget-object p1, p0, Lads_mobile_sdk/je2;->f:Lads_mobile_sdk/h41;

    .line 190
    iget-object p1, p1, Lads_mobile_sdk/h41;->a:Lads_mobile_sdk/r31;

    .line 191
    iget-object v5, p0, Lads_mobile_sdk/je2;->i:Lads_mobile_sdk/k9;

    if-nez v5, :cond_a0

    iget-object p0, p0, Lads_mobile_sdk/je2;->g:Lads_mobile_sdk/ze2;

    iput-object v2, v0, Lads_mobile_sdk/fe2;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/fe2;->b:Ljava/lang/Object;

    iput v4, v0, Lads_mobile_sdk/fe2;->e:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    invoke-static {p0, v0}, Lads_mobile_sdk/ze2;->a(Lads_mobile_sdk/ze2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_8c
    .catchall {:try_start_75 .. :try_end_8c} :catchall_50

    if-ne p0, v1, :cond_8f

    goto :goto_b4

    :cond_8f
    move-object v7, v2

    move-object v2, p0

    move-object p0, v7

    .line 193
    :goto_92
    :try_start_92
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_a1

    .line 194
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9c
    .catchall {:try_start_92 .. :try_end_9c} :catchall_35

    .line 274
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :cond_a0
    move-object p0, v2

    .line 275
    :cond_a1
    :try_start_a1
    const-string v2, "onSdkImpression"

    new-instance v4, Lcom/google/gson/JsonObject;

    invoke-direct {v4}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object p0, v0, Lads_mobile_sdk/fe2;->a:Ljava/lang/Object;

    iput-object v6, v0, Lads_mobile_sdk/fe2;->b:Ljava/lang/Object;

    iput v3, v0, Lads_mobile_sdk/fe2;->e:I

    invoke-virtual {p1, v4, v2, v0}, Lads_mobile_sdk/r31;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b5

    :goto_b4
    return-object v1

    .line 276
    :cond_b5
    :goto_b5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_b7
    .catchall {:try_start_a1 .. :try_end_b7} :catchall_35

    .line 353
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :goto_bb
    move-object v2, p0

    move-object p0, p1

    .line 354
    :goto_bd
    invoke-interface {v2, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static e(Lads_mobile_sdk/je2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/ge2;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/ge2;

    iget v1, v0, Lads_mobile_sdk/ge2;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ge2;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/ge2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/ge2;-><init>(Lads_mobile_sdk/je2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/ge2;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 54
    iget v2, v0, Lads_mobile_sdk/ge2;->d:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_41

    if-eq v2, v5, :cond_3b

    if-eq v2, v4, :cond_37

    if-ne v2, v3, :cond_2f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_88

    :cond_2f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_78

    :cond_3b
    iget-object p0, v0, Lads_mobile_sdk/ge2;->a:Lads_mobile_sdk/je2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5d

    :cond_41
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    iget-object p1, p0, Lads_mobile_sdk/je2;->d:Lads_mobile_sdk/i2;

    iget-boolean p1, p1, Lads_mobile_sdk/i2;->P:Z

    if-nez p1, :cond_4d

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 58
    :cond_4d
    iget-object p1, p0, Lads_mobile_sdk/je2;->g:Lads_mobile_sdk/ze2;

    iput-object p0, v0, Lads_mobile_sdk/ge2;->a:Lads_mobile_sdk/je2;

    iput v5, v0, Lads_mobile_sdk/ge2;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    invoke-static {p1, v0}, Lads_mobile_sdk/ze2;->a(Lads_mobile_sdk/ze2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5d

    goto :goto_87

    .line 60
    :cond_5d
    :goto_5d
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_7b

    .line 61
    iget-object p1, p0, Lads_mobile_sdk/je2;->g:Lads_mobile_sdk/ze2;

    iget-object p0, p0, Lads_mobile_sdk/je2;->f:Lads_mobile_sdk/h41;

    iput-object v2, v0, Lads_mobile_sdk/ge2;->a:Lads_mobile_sdk/je2;

    iput v4, v0, Lads_mobile_sdk/ge2;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    invoke-static {p1, p0, v0}, Lads_mobile_sdk/ze2;->a(Lads_mobile_sdk/ze2;Lads_mobile_sdk/h41;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_78

    goto :goto_87

    .line 63
    :cond_78
    :goto_78
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 64
    :cond_7b
    iget-object p1, p0, Lads_mobile_sdk/je2;->f:Lads_mobile_sdk/h41;

    iput-object v2, v0, Lads_mobile_sdk/ge2;->a:Lads_mobile_sdk/je2;

    iput v3, v0, Lads_mobile_sdk/ge2;->d:I

    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/je2;->a(Lads_mobile_sdk/h41;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_88

    :goto_87
    return-object v1

    .line 66
    :cond_88
    :goto_88
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/c04;)Ljava/lang/Object;
    .registers 2

    .line 311
    invoke-static {p0, p1}, Lads_mobile_sdk/je2;->a(Lads_mobile_sdk/je2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/h41;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 20
    instance-of v0, p2, Lads_mobile_sdk/xd2;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/xd2;

    iget v1, v0, Lads_mobile_sdk/xd2;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/xd2;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/xd2;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/xd2;-><init>(Lads_mobile_sdk/je2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/xd2;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 85
    iget v2, v0, Lads_mobile_sdk/xd2;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_47

    if-eq v2, v4, :cond_3b

    if-ne v2, v3, :cond_33

    iget-object p1, v0, Lads_mobile_sdk/xd2;->a:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    :try_start_2d
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_74

    :catchall_31
    move-exception p2

    goto :goto_7a

    .line 86
    :cond_33
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3b
    iget-object p1, v0, Lads_mobile_sdk/xd2;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/xd2;->b:Lads_mobile_sdk/h41;

    iget-object v4, v0, Lads_mobile_sdk/xd2;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/je2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5e

    :cond_47
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 87
    iget-object p2, p0, Lads_mobile_sdk/je2;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 195
    iput-object p0, v0, Lads_mobile_sdk/xd2;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/xd2;->b:Lads_mobile_sdk/h41;

    iput-object p2, v0, Lads_mobile_sdk/xd2;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/xd2;->f:I

    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5b

    goto :goto_73

    :cond_5b
    move-object v4, p0

    move-object v2, p1

    move-object p1, p2

    .line 196
    :goto_5e
    :try_start_5e
    iget-object p2, v4, Lads_mobile_sdk/es;->b:Lkotlin/coroutines/CoroutineContext;

    .line 197
    new-instance v6, Lads_mobile_sdk/yd2;

    invoke-direct {v6, v4, v2, v5}, Lads_mobile_sdk/yd2;-><init>(Lads_mobile_sdk/je2;Lads_mobile_sdk/h41;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lads_mobile_sdk/xd2;->a:Ljava/lang/Object;

    iput-object v5, v0, Lads_mobile_sdk/xd2;->b:Lads_mobile_sdk/h41;

    iput-object v5, v0, Lads_mobile_sdk/xd2;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/xd2;->f:I

    invoke-static {p2, v6, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_74

    :goto_73
    return-object v1

    .line 234
    :cond_74
    :goto_74
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_76
    .catchall {:try_start_5e .. :try_end_76} :catchall_31

    .line 308
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p2

    .line 309
    :goto_7a
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2
.end method

.method public final a(Landroid/view/View;Lads_mobile_sdk/tx0;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p0, p1, p2, p3, p4}, Lads_mobile_sdk/je2;->a(Lads_mobile_sdk/je2;Landroid/view/ViewGroup;Lads_mobile_sdk/tx0;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 627
    invoke-static {p0, p1, p2}, Lads_mobile_sdk/je2;->a(Lads_mobile_sdk/je2;Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lads_mobile_sdk/je2;->e(Lads_mobile_sdk/je2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final m(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lads_mobile_sdk/je2;->b(Lads_mobile_sdk/je2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final n(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lads_mobile_sdk/je2;->c(Lads_mobile_sdk/je2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lads_mobile_sdk/je2;->d(Lads_mobile_sdk/je2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
