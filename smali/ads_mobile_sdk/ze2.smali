###### Class ads_mobile_sdk.ze2 (ads_mobile_sdk.ze2)
.class public final Lads_mobile_sdk/ze2;
.super Lads_mobile_sdk/es;
.source "SourceFile"


# instance fields
.field public final c:Lads_mobile_sdk/kd2;

.field public final d:Lads_mobile_sdk/i2;

.field public final e:Lkotlinx/coroutines/sync/Mutex;

.field public f:Lads_mobile_sdk/aq1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/kd2;Lads_mobile_sdk/i2;Lads_mobile_sdk/ex0;Lkotlin/coroutines/CoroutineContext;)V
    .registers 6

    .line 1
    const-string v0, "omid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, p3, p4}, Lads_mobile_sdk/es;-><init>(Lads_mobile_sdk/ex0;Lkotlin/coroutines/CoroutineContext;)V

    .line 42
    iput-object p1, p0, Lads_mobile_sdk/ze2;->c:Lads_mobile_sdk/kd2;

    .line 43
    iput-object p2, p0, Lads_mobile_sdk/ze2;->d:Lads_mobile_sdk/i2;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 48
    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/ze2;->e:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public static synthetic a(Lads_mobile_sdk/ze2;Lads_mobile_sdk/h41;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 463
    instance-of v0, p2, Lads_mobile_sdk/ue2;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/ue2;

    iget v1, v0, Lads_mobile_sdk/ue2;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ue2;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/ue2;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/ue2;-><init>(Lads_mobile_sdk/ze2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/ue2;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 544
    iget v2, v0, Lads_mobile_sdk/ue2;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_49

    if-eq v2, v4, :cond_3b

    if-ne v2, v3, :cond_33

    iget-object p0, v0, Lads_mobile_sdk/ue2;->a:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_2d
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_77

    :catchall_31
    move-exception p1

    goto :goto_7d

    .line 545
    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    iget-object p0, v0, Lads_mobile_sdk/ue2;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lads_mobile_sdk/ue2;->b:Lads_mobile_sdk/h41;

    iget-object v2, v0, Lads_mobile_sdk/ue2;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/ze2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p0

    move-object p0, v2

    goto :goto_5d

    :cond_49
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lads_mobile_sdk/ze2;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 612
    iput-object p0, v0, Lads_mobile_sdk/ue2;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/ue2;->b:Lads_mobile_sdk/h41;

    iput-object p2, v0, Lads_mobile_sdk/ue2;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/ue2;->f:I

    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5d

    goto :goto_75

    .line 613
    :cond_5d
    :goto_5d
    :try_start_5d
    iget-object v2, p0, Lads_mobile_sdk/ze2;->f:Lads_mobile_sdk/aq1;

    if-nez v2, :cond_62

    goto :goto_76

    .line 614
    :cond_62
    new-instance v4, Lads_mobile_sdk/ve2;

    invoke-direct {v4, p1, p0, v2, v5}, Lads_mobile_sdk/ve2;-><init>(Lads_mobile_sdk/h41;Lads_mobile_sdk/ze2;Lads_mobile_sdk/aq1;Lkotlin/coroutines/Continuation;)V

    iput-object p2, v0, Lads_mobile_sdk/ue2;->a:Ljava/lang/Object;

    iput-object v5, v0, Lads_mobile_sdk/ue2;->b:Lads_mobile_sdk/h41;

    iput-object v5, v0, Lads_mobile_sdk/ue2;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/ue2;->f:I

    invoke-virtual {p0, v4, v0}, Lads_mobile_sdk/es;->a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0
    :try_end_73
    .catchall {:try_start_5d .. :try_end_73} :catchall_7f

    if-ne p0, v1, :cond_76

    :goto_75
    return-object v1

    :cond_76
    :goto_76
    move-object p0, p2

    .line 624
    :goto_77
    :try_start_77
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_79
    .catchall {:try_start_77 .. :try_end_79} :catchall_31

    .line 683
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :goto_7d
    move-object p2, p0

    goto :goto_81

    :catchall_7f
    move-exception p0

    move-object p1, p0

    .line 684
    :goto_81
    invoke-interface {p2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public static a(Lads_mobile_sdk/ze2;Lads_mobile_sdk/r31;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14

    .line 889
    instance-of v0, p3, Lads_mobile_sdk/xe2;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/xe2;

    iget v1, v0, Lads_mobile_sdk/xe2;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/xe2;->g:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/xe2;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/xe2;-><init>(Lads_mobile_sdk/ze2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/xe2;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 890
    iget v2, v0, Lads_mobile_sdk/xe2;->g:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_56

    if-eq v2, v5, :cond_44

    if-ne v2, v4, :cond_3c

    iget-object p0, v0, Lads_mobile_sdk/xe2;->c:Ljava/lang/Object;

    check-cast p0, Lads_mobile_sdk/ze2;

    iget-object p1, v0, Lads_mobile_sdk/xe2;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    iget-object p2, v0, Lads_mobile_sdk/xe2;->a:Lads_mobile_sdk/ze2;

    :try_start_34
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_39

    goto/16 :goto_d1

    :catchall_39
    move-exception p0

    goto/16 :goto_e2

    :cond_3c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_44
    iget-boolean p2, v0, Lads_mobile_sdk/xe2;->d:Z

    iget-object p0, v0, Lads_mobile_sdk/xe2;->c:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lads_mobile_sdk/xe2;->b:Ljava/lang/Object;

    check-cast p1, Landroid/webkit/WebView;

    iget-object v2, v0, Lads_mobile_sdk/xe2;->a:Lads_mobile_sdk/ze2;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p3, p0

    move-object p0, v2

    goto :goto_6c

    :cond_56
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 893
    iget-object p3, p0, Lads_mobile_sdk/ze2;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 963
    iput-object p0, v0, Lads_mobile_sdk/xe2;->a:Lads_mobile_sdk/ze2;

    iput-object p1, v0, Lads_mobile_sdk/xe2;->b:Ljava/lang/Object;

    iput-object p3, v0, Lads_mobile_sdk/xe2;->c:Ljava/lang/Object;

    iput-boolean p2, v0, Lads_mobile_sdk/xe2;->d:Z

    iput v5, v0, Lads_mobile_sdk/xe2;->g:I

    invoke-interface {p3, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6c

    goto :goto_cc

    .line 964
    :cond_6c
    :goto_6c
    :try_start_6c
    iget-object v2, p0, Lads_mobile_sdk/ze2;->d:Lads_mobile_sdk/i2;

    iget-boolean v2, v2, Lads_mobile_sdk/i2;->P:Z

    if-eqz v2, :cond_e4

    .line 965
    iget-object v2, p0, Lads_mobile_sdk/ze2;->c:Lads_mobile_sdk/kd2;

    .line 966
    iget-object v2, v2, Lads_mobile_sdk/kd2;->f:Lads_mobile_sdk/ur3;

    .line 967
    const-string v7, "IsActive"

    sget-object v8, Lads_mobile_sdk/fd2;->a:Lads_mobile_sdk/fd2;

    invoke-interface {v2, v7, v8}, Lads_mobile_sdk/ur3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_e4

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_e4

    .line 968
    iget-object v2, p0, Lads_mobile_sdk/ze2;->d:Lads_mobile_sdk/i2;

    iget-object v2, v2, Lads_mobile_sdk/i2;->T:Lads_mobile_sdk/dg2;

    iget-boolean v2, v2, Lads_mobile_sdk/dg2;->c:Z

    if-eqz v2, :cond_e4

    .line 969
    iget-object v2, p0, Lads_mobile_sdk/es;->a:Lads_mobile_sdk/ex0;

    .line 970
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 971
    const-string v7, "gads:omid_javascript_session_service:enabled"

    .line 972
    const-string v8, "key"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 988
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v9, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v2, v7, v8, v9}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_ad

    goto :goto_e4

    .line 989
    :cond_ad
    iget-object v2, p0, Lads_mobile_sdk/ze2;->f:Lads_mobile_sdk/aq1;

    if-eqz v2, :cond_b9

    .line 990
    const-string p0, "Already started javascript session service"

    .line 991
    invoke-static {p0, v6}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e4

    :catchall_b7
    move-exception p0

    goto :goto_ec

    .line 992
    :cond_b9
    new-instance v2, Lads_mobile_sdk/ye2;

    invoke-direct {v2, p0, p1, p2, v6}, Lads_mobile_sdk/ye2;-><init>(Lads_mobile_sdk/ze2;Landroid/webkit/WebView;ZLkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lads_mobile_sdk/xe2;->a:Lads_mobile_sdk/ze2;

    iput-object p3, v0, Lads_mobile_sdk/xe2;->b:Ljava/lang/Object;

    iput-object p0, v0, Lads_mobile_sdk/xe2;->c:Ljava/lang/Object;

    iput v4, v0, Lads_mobile_sdk/xe2;->g:I

    invoke-virtual {p0, v2, v0}, Lads_mobile_sdk/es;->a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1
    :try_end_ca
    .catchall {:try_start_6c .. :try_end_ca} :catchall_b7

    if-ne p1, v1, :cond_cd

    :goto_cc
    return-object v1

    :cond_cd
    move-object p2, p3

    move-object p3, p1

    move-object p1, p2

    move-object p2, p0

    .line 993
    :goto_d1
    :try_start_d1
    check-cast p3, Lads_mobile_sdk/aq1;

    iput-object p3, p0, Lads_mobile_sdk/ze2;->f:Lads_mobile_sdk/aq1;

    .line 1013
    iget-object p0, p2, Lads_mobile_sdk/ze2;->f:Lads_mobile_sdk/aq1;

    if-eqz p0, :cond_da

    move v3, v5

    :cond_da
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_de
    .catchall {:try_start_d1 .. :try_end_de} :catchall_39

    .line 1070
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :goto_e2
    move-object p3, p1

    goto :goto_ec

    :cond_e4
    :goto_e4
    :try_start_e4
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_e8
    .catchall {:try_start_e4 .. :try_end_e8} :catchall_b7

    invoke-interface {p3, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :goto_ec
    invoke-interface {p3, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static synthetic a(Lads_mobile_sdk/ze2;Lads_mobile_sdk/zp1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 226
    instance-of v0, p2, Lads_mobile_sdk/se2;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/se2;

    iget v1, v0, Lads_mobile_sdk/se2;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/se2;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/se2;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/se2;-><init>(Lads_mobile_sdk/ze2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/se2;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 339
    iget v2, v0, Lads_mobile_sdk/se2;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_4b

    if-eq v2, v4, :cond_3d

    if-ne v2, v3, :cond_35

    iget-object p0, v0, Lads_mobile_sdk/se2;->b:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lads_mobile_sdk/se2;->a:Lads_mobile_sdk/ze2;

    :try_start_2f
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_79

    :catchall_33
    move-exception p1

    goto :goto_87

    .line 340
    :cond_35
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3d
    iget-object p0, v0, Lads_mobile_sdk/se2;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lads_mobile_sdk/se2;->b:Ljava/lang/Object;

    check-cast p1, Lads_mobile_sdk/zp1;

    iget-object v2, v0, Lads_mobile_sdk/se2;->a:Lads_mobile_sdk/ze2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p0

    move-object p0, v2

    goto :goto_5f

    :cond_4b
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lads_mobile_sdk/ze2;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 397
    iput-object p0, v0, Lads_mobile_sdk/se2;->a:Lads_mobile_sdk/ze2;

    iput-object p1, v0, Lads_mobile_sdk/se2;->b:Ljava/lang/Object;

    iput-object p2, v0, Lads_mobile_sdk/se2;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/se2;->f:I

    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5f

    goto :goto_76

    .line 398
    :cond_5f
    :goto_5f
    :try_start_5f
    iget-object v2, p0, Lads_mobile_sdk/ze2;->f:Lads_mobile_sdk/aq1;

    if-eqz v2, :cond_82

    .line 399
    new-instance v4, Lads_mobile_sdk/te2;

    invoke-direct {v4, p0, v2, p1, v5}, Lads_mobile_sdk/te2;-><init>(Lads_mobile_sdk/ze2;Lads_mobile_sdk/aq1;Lads_mobile_sdk/zp1;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lads_mobile_sdk/se2;->a:Lads_mobile_sdk/ze2;

    iput-object p2, v0, Lads_mobile_sdk/se2;->b:Ljava/lang/Object;

    iput-object v5, v0, Lads_mobile_sdk/se2;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/se2;->f:I

    invoke-virtual {p0, v4, v0}, Lads_mobile_sdk/es;->a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1
    :try_end_74
    .catchall {:try_start_5f .. :try_end_74} :catchall_7f

    if-ne p1, v1, :cond_77

    :goto_76
    return-object v1

    :cond_77
    move-object p1, p0

    move-object p0, p2

    .line 400
    :goto_79
    :try_start_79
    iput-object v5, p1, Lads_mobile_sdk/ze2;->f:Lads_mobile_sdk/aq1;

    .line 401
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_33

    move-object p2, p0

    goto :goto_83

    :catchall_7f
    move-exception p1

    move-object p0, p2

    goto :goto_87

    :cond_82
    move-object p1, v5

    .line 461
    :goto_83
    invoke-interface {p2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    .line 462
    :goto_87
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public static synthetic a(Lads_mobile_sdk/ze2;Landroid/view/View;Lads_mobile_sdk/tx0;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 19

    move-object/from16 v0, p4

    .line 1
    instance-of v1, v0, Lads_mobile_sdk/qe2;

    if-eqz v1, :cond_15

    move-object v1, v0

    check-cast v1, Lads_mobile_sdk/qe2;

    iget v2, v1, Lads_mobile_sdk/qe2;->h:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_15

    sub-int/2addr v2, v3

    iput v2, v1, Lads_mobile_sdk/qe2;->h:I

    goto :goto_1a

    :cond_15
    new-instance v1, Lads_mobile_sdk/qe2;

    invoke-direct {v1, p0, v0}, Lads_mobile_sdk/qe2;-><init>(Lads_mobile_sdk/ze2;Lkotlin/coroutines/Continuation;)V

    :goto_1a
    iget-object v0, v1, Lads_mobile_sdk/qe2;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 97
    iget v3, v1, Lads_mobile_sdk/qe2;->h:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_50

    if-eq v3, v5, :cond_3d

    if-ne v3, v4, :cond_35

    iget-object p0, v1, Lads_mobile_sdk/qe2;->a:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_2f
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_8f

    :catchall_33
    move-exception v0

    goto :goto_95

    .line 98
    :cond_35
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3d
    iget-object p0, v1, Lads_mobile_sdk/qe2;->e:Lkotlinx/coroutines/sync/Mutex;

    iget-object v3, v1, Lads_mobile_sdk/qe2;->d:Ljava/lang/String;

    iget-object v5, v1, Lads_mobile_sdk/qe2;->c:Lads_mobile_sdk/tx0;

    iget-object v7, v1, Lads_mobile_sdk/qe2;->b:Landroid/view/View;

    iget-object v8, v1, Lads_mobile_sdk/qe2;->a:Ljava/lang/Object;

    check-cast v8, Lads_mobile_sdk/ze2;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v3

    move-object v11, v5

    move-object v10, v7

    goto :goto_71

    :cond_50
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lads_mobile_sdk/ze2;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 161
    iput-object p0, v1, Lads_mobile_sdk/qe2;->a:Ljava/lang/Object;

    iput-object p1, v1, Lads_mobile_sdk/qe2;->b:Landroid/view/View;

    move-object/from16 v7, p2

    iput-object v7, v1, Lads_mobile_sdk/qe2;->c:Lads_mobile_sdk/tx0;

    move-object/from16 v8, p3

    iput-object v8, v1, Lads_mobile_sdk/qe2;->d:Ljava/lang/String;

    iput-object v0, v1, Lads_mobile_sdk/qe2;->e:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v1, Lads_mobile_sdk/qe2;->h:I

    invoke-interface {v0, v6, v1}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_6c

    goto :goto_8e

    :cond_6c
    move-object v10, p1

    move-object v11, v7

    move-object v12, v8

    move-object v8, p0

    move-object p0, v0

    .line 162
    :goto_71
    :try_start_71
    iget-object v9, v8, Lads_mobile_sdk/ze2;->f:Lads_mobile_sdk/aq1;

    if-nez v9, :cond_76

    goto :goto_8f

    .line 163
    :cond_76
    new-instance v7, Lads_mobile_sdk/re2;

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v13}, Lads_mobile_sdk/re2;-><init>(Lads_mobile_sdk/ze2;Lads_mobile_sdk/aq1;Landroid/view/View;Lads_mobile_sdk/tx0;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v1, Lads_mobile_sdk/qe2;->a:Ljava/lang/Object;

    iput-object v6, v1, Lads_mobile_sdk/qe2;->b:Landroid/view/View;

    iput-object v6, v1, Lads_mobile_sdk/qe2;->c:Lads_mobile_sdk/tx0;

    iput-object v6, v1, Lads_mobile_sdk/qe2;->d:Ljava/lang/String;

    iput-object v6, v1, Lads_mobile_sdk/qe2;->e:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v1, Lads_mobile_sdk/qe2;->h:I

    invoke-virtual {v8, v7, v1}, Lads_mobile_sdk/es;->a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_8f

    :goto_8e
    return-object v2

    .line 171
    :cond_8f
    :goto_8f
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_91
    .catchall {:try_start_71 .. :try_end_91} :catchall_33

    .line 224
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    .line 225
    :goto_95
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public static synthetic a(Lads_mobile_sdk/ze2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 685
    instance-of v0, p1, Lads_mobile_sdk/we2;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/we2;

    iget v1, v0, Lads_mobile_sdk/we2;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/we2;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/we2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/we2;-><init>(Lads_mobile_sdk/ze2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/we2;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 762
    iget v2, v0, Lads_mobile_sdk/we2;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p0, v0, Lads_mobile_sdk/we2;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/we2;->a:Lads_mobile_sdk/ze2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v0

    goto :goto_4a

    :cond_30
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/ze2;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 822
    iput-object p0, v0, Lads_mobile_sdk/we2;->a:Lads_mobile_sdk/ze2;

    iput-object p1, v0, Lads_mobile_sdk/we2;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/we2;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4a

    return-object v1

    .line 823
    :cond_4a
    :goto_4a
    :try_start_4a
    iget-object p0, p0, Lads_mobile_sdk/ze2;->f:Lads_mobile_sdk/aq1;

    if-eqz p0, :cond_4f

    goto :goto_50

    :cond_4f
    const/4 v3, 0x0

    :goto_50
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_58

    .line 887
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_58
    move-exception p0

    .line 888
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method
