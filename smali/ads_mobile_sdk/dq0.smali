###### Class ads_mobile_sdk.dq0 (ads_mobile_sdk.dq0)
.class public final Lads_mobile_sdk/dq0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/zd3;

.field public final b:Lads_mobile_sdk/tx;

.field public final c:Lads_mobile_sdk/ex0;

.field public final d:Lads_mobile_sdk/f13;

.field public final e:Lkotlinx/coroutines/sync/Mutex;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/zd3;Lads_mobile_sdk/tx;Lads_mobile_sdk/ex0;Lads_mobile_sdk/f13;)V
    .registers 6

    .line 1
    const-string v0, "sharedSettingsDataStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "randomGenerator"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lads_mobile_sdk/dq0;->a:Lads_mobile_sdk/zd3;

    .line 27
    iput-object p2, p0, Lads_mobile_sdk/dq0;->b:Lads_mobile_sdk/tx;

    .line 28
    iput-object p3, p0, Lads_mobile_sdk/dq0;->c:Lads_mobile_sdk/ex0;

    .line 29
    iput-object p4, p0, Lads_mobile_sdk/dq0;->d:Lads_mobile_sdk/f13;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 32
    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/dq0;->e:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public static a(Lads_mobile_sdk/dq0;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 19

    move-object/from16 v0, p4

    .line 422
    instance-of v1, v0, Lads_mobile_sdk/cq0;

    if-eqz v1, :cond_15

    move-object v1, v0

    check-cast v1, Lads_mobile_sdk/cq0;

    iget v2, v1, Lads_mobile_sdk/cq0;->g:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_15

    sub-int/2addr v2, v3

    iput v2, v1, Lads_mobile_sdk/cq0;->g:I

    goto :goto_1a

    :cond_15
    new-instance v1, Lads_mobile_sdk/cq0;

    invoke-direct {v1, p0, v0}, Lads_mobile_sdk/cq0;-><init>(Lads_mobile_sdk/dq0;Lkotlin/coroutines/Continuation;)V

    :goto_1a
    iget-object v0, v1, Lads_mobile_sdk/cq0;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 486
    iget v3, v1, Lads_mobile_sdk/cq0;->g:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_6b

    if-eq v3, v6, :cond_58

    if-eq v3, v5, :cond_47

    if-ne v3, v4, :cond_3f

    iget-object p0, v1, Lads_mobile_sdk/cq0;->b:Ljava/lang/Object;

    check-cast p0, Lads_mobile_sdk/xp0;

    iget-object v1, v1, Lads_mobile_sdk/cq0;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    :try_start_36
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3b

    goto/16 :goto_110

    :catchall_3b
    move-exception v0

    :goto_3c
    move-object p0, v0

    goto/16 :goto_11d

    :cond_3f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 487
    :cond_47
    iget-wide v5, v1, Lads_mobile_sdk/cq0;->d:J

    iget-object p0, v1, Lads_mobile_sdk/cq0;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v3, v1, Lads_mobile_sdk/cq0;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v8, v1, Lads_mobile_sdk/cq0;->a:Ljava/lang/Object;

    check-cast v8, Lads_mobile_sdk/dq0;

    :try_start_53
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_116

    goto/16 :goto_b2

    .line 488
    :cond_58
    iget-wide v8, v1, Lads_mobile_sdk/cq0;->d:J

    iget-object p0, v1, Lads_mobile_sdk/cq0;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v3, v1, Lads_mobile_sdk/cq0;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v6, v1, Lads_mobile_sdk/cq0;->a:Ljava/lang/Object;

    check-cast v6, Lads_mobile_sdk/dq0;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, v3

    move-object v3, p0

    move-object p0, v6

    goto :goto_86

    :cond_6b
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 489
    iget-object v0, p0, Lads_mobile_sdk/dq0;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 548
    iput-object p0, v1, Lads_mobile_sdk/cq0;->a:Ljava/lang/Object;

    iput-object p1, v1, Lads_mobile_sdk/cq0;->b:Ljava/lang/Object;

    iput-object v0, v1, Lads_mobile_sdk/cq0;->c:Lkotlinx/coroutines/sync/Mutex;

    move-wide/from16 v8, p2

    iput-wide v8, v1, Lads_mobile_sdk/cq0;->d:J

    iput v6, v1, Lads_mobile_sdk/cq0;->g:I

    invoke-interface {v0, v7, v1}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_84

    goto/16 :goto_10d

    :cond_84
    move-object v3, v0

    move-object v0, p1

    .line 549
    :goto_86
    :try_start_86
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_8d

    goto :goto_93

    :cond_8d
    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-gtz v6, :cond_96

    :goto_93
    move-object v0, v7

    goto/16 :goto_112

    .line 550
    :cond_96
    iget-object v6, p0, Lads_mobile_sdk/dq0;->a:Lads_mobile_sdk/zd3;

    iput-object p0, v1, Lads_mobile_sdk/cq0;->a:Ljava/lang/Object;

    iput-object v0, v1, Lads_mobile_sdk/cq0;->b:Ljava/lang/Object;

    iput-object v3, v1, Lads_mobile_sdk/cq0;->c:Lkotlinx/coroutines/sync/Mutex;

    iput-wide v8, v1, Lads_mobile_sdk/cq0;->d:J

    iput v5, v1, Lads_mobile_sdk/cq0;->g:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 551
    invoke-static {v6, v1}, Lads_mobile_sdk/zd3;->a(Lads_mobile_sdk/zd3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_a9
    .catchall {:try_start_86 .. :try_end_a9} :catchall_11a

    if-ne v5, v2, :cond_ac

    goto :goto_10d

    :cond_ac
    move-wide v12, v8

    move-object v8, p0

    move-object p0, v3

    move-object v3, v0

    move-object v0, v5

    move-wide v5, v12

    .line 552
    :goto_b2
    :try_start_b2
    check-cast v0, Lads_mobile_sdk/xp0;

    if-eqz v0, :cond_c8

    .line 556
    invoke-virtual {v0}, Lads_mobile_sdk/xp0;->w()Ljava/lang/String;

    move-result-object v9

    const-string v10, "getEoid(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_c6

    goto :goto_c8

    :cond_c6
    move-object v3, p0

    goto :goto_112

    .line 615
    :cond_c8
    :goto_c8
    invoke-static {}, Lads_mobile_sdk/xp0;->y()Lads_mobile_sdk/wp0;

    move-result-object v0

    const-string v9, "newBuilder(...)"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 616
    const-string v9, "builder"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    const-string v9, "value"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 662
    invoke-virtual {v0, v3}, Lads_mobile_sdk/wp0;->a(Ljava/lang/String;)V

    .line 663
    invoke-virtual {v0, v5, v6}, Lads_mobile_sdk/wp0;->a(J)V

    .line 664
    invoke-virtual {v0}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v0

    const-string v3, "build(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/xp0;

    .line 665
    iget-object v3, v8, Lads_mobile_sdk/dq0;->a:Lads_mobile_sdk/zd3;

    iput-object p0, v1, Lads_mobile_sdk/cq0;->a:Ljava/lang/Object;

    iput-object v0, v1, Lads_mobile_sdk/cq0;->b:Ljava/lang/Object;

    iput-object v7, v1, Lads_mobile_sdk/cq0;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v1, Lads_mobile_sdk/cq0;->g:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 666
    new-instance v4, Lads_mobile_sdk/ud3;

    invoke-direct {v4, v0}, Lads_mobile_sdk/ud3;-><init>(Lads_mobile_sdk/xp0;)V

    .line 667
    invoke-static {v3, v4, v1}, Lads_mobile_sdk/zd3;->a(Lads_mobile_sdk/zd3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .line 668
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_109

    goto :goto_10b

    :cond_109
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_10b
    .catchall {:try_start_b2 .. :try_end_10b} :catchall_116

    :goto_10b
    if-ne v1, v2, :cond_10e

    :goto_10d
    return-object v2

    :cond_10e
    move-object v1, p0

    move-object p0, v0

    :goto_110
    move-object v0, p0

    move-object v3, v1

    .line 669
    :goto_112
    invoke-interface {v3, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_116
    move-exception v0

    move-object v1, p0

    goto/16 :goto_3c

    :catchall_11a
    move-exception v0

    move-object p0, v0

    move-object v1, v3

    .line 670
    :goto_11d
    invoke-interface {v1, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static a(Lads_mobile_sdk/dq0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/yp0;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/yp0;

    iget v1, v0, Lads_mobile_sdk/yp0;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/yp0;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/yp0;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/yp0;-><init>(Lads_mobile_sdk/dq0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/yp0;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 94
    iget v2, v0, Lads_mobile_sdk/yp0;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_47

    if-eq v2, v4, :cond_3b

    if-ne v2, v3, :cond_33

    iget-object p0, v0, Lads_mobile_sdk/yp0;->a:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_2d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_77

    :catchall_31
    move-exception p1

    goto :goto_81

    .line 95
    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    iget-object p0, v0, Lads_mobile_sdk/yp0;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/yp0;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/dq0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v2

    goto :goto_59

    :cond_47
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 96
    iget-object p1, p0, Lads_mobile_sdk/dq0;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 149
    iput-object p0, v0, Lads_mobile_sdk/yp0;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/yp0;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/yp0;->e:I

    invoke-interface {p1, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_59

    goto :goto_75

    .line 150
    :cond_59
    :goto_59
    :try_start_59
    iget-object p0, p0, Lads_mobile_sdk/dq0;->a:Lads_mobile_sdk/zd3;

    iput-object p1, v0, Lads_mobile_sdk/yp0;->a:Ljava/lang/Object;

    iput-object v5, v0, Lads_mobile_sdk/yp0;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/yp0;->e:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    sget-object v2, Lads_mobile_sdk/pd3;->a:Lads_mobile_sdk/pd3;

    .line 152
    invoke-static {p0, v2, v0}, Lads_mobile_sdk/zd3;->a(Lads_mobile_sdk/zd3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .line 153
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_71

    goto :goto_73

    :cond_71
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_73
    .catchall {:try_start_59 .. :try_end_73} :catchall_7d

    :goto_73
    if-ne p0, v1, :cond_76

    :goto_75
    return-object v1

    :cond_76
    move-object p0, p1

    .line 154
    :goto_77
    :try_start_77
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_79
    .catchall {:try_start_77 .. :try_end_79} :catchall_31

    .line 211
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_7d
    move-exception p0

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    .line 212
    :goto_81
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public static b(Lads_mobile_sdk/dq0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/aq0;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/aq0;

    iget v1, v0, Lads_mobile_sdk/aq0;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/aq0;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/aq0;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/aq0;-><init>(Lads_mobile_sdk/dq0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/aq0;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 83
    iget v2, v0, Lads_mobile_sdk/aq0;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_56

    if-eq v2, v5, :cond_4a

    if-eq v2, v4, :cond_40

    if-ne v2, v3, :cond_38

    iget-object p0, v0, Lads_mobile_sdk/aq0;->a:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_30
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_35

    goto/16 :goto_a7

    :catchall_35
    move-exception p1

    goto/16 :goto_b1

    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 84
    :cond_40
    iget-object p0, v0, Lads_mobile_sdk/aq0;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/aq0;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/dq0;

    :try_start_46
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_35

    goto :goto_7e

    .line 85
    :cond_4a
    iget-object p0, v0, Lads_mobile_sdk/aq0;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/aq0;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/dq0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v2

    goto :goto_68

    :cond_56
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 86
    iget-object p1, p0, Lads_mobile_sdk/dq0;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 139
    iput-object p0, v0, Lads_mobile_sdk/aq0;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/aq0;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v0, Lads_mobile_sdk/aq0;->e:I

    invoke-interface {p1, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_68

    goto :goto_a6

    .line 140
    :cond_68
    :goto_68
    :try_start_68
    iget-object v2, p0, Lads_mobile_sdk/dq0;->a:Lads_mobile_sdk/zd3;

    iput-object p0, v0, Lads_mobile_sdk/aq0;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/aq0;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/aq0;->e:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    invoke-static {v2, v0}, Lads_mobile_sdk/zd3;->a(Lads_mobile_sdk/zd3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_77
    .catchall {:try_start_68 .. :try_end_77} :catchall_ad

    if-ne v2, v1, :cond_7a

    goto :goto_a6

    :cond_7a
    move-object v7, v2

    move-object v2, p0

    move-object p0, p1

    move-object p1, v7

    .line 142
    :goto_7e
    :try_start_7e
    check-cast p1, Lads_mobile_sdk/xp0;

    if-eqz p1, :cond_91

    .line 145
    invoke-virtual {p1}, Lads_mobile_sdk/xp0;->w()Ljava/lang/String;

    move-result-object p1

    const-string v4, "getEoid(...)"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_a7

    .line 146
    :cond_91
    iget-object p1, v2, Lads_mobile_sdk/dq0;->b:Lads_mobile_sdk/tx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 148
    iput-object p0, v0, Lads_mobile_sdk/aq0;->a:Ljava/lang/Object;

    iput-object v6, v0, Lads_mobile_sdk/aq0;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/aq0;->e:I

    invoke-virtual {v2, v4, v5, v0}, Lads_mobile_sdk/dq0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a7

    :goto_a6
    return-object v1

    .line 150
    :cond_a7
    :goto_a7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a9
    .catchall {:try_start_7e .. :try_end_a9} :catchall_35

    .line 202
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_ad
    move-exception p0

    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    .line 203
    :goto_b1
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public static c(Lads_mobile_sdk/dq0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    instance-of v2, v1, Lads_mobile_sdk/bq0;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/bq0;

    iget v3, v2, Lads_mobile_sdk/bq0;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/bq0;->e:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/bq0;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/bq0;-><init>(Lads_mobile_sdk/dq0;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v1, v2, Lads_mobile_sdk/bq0;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 42
    iget v4, v2, Lads_mobile_sdk/bq0;->e:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_5f

    if-eq v4, v7, :cond_53

    if-eq v4, v6, :cond_45

    if-ne v4, v5, :cond_3d

    iget-object v0, v2, Lads_mobile_sdk/bq0;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    :try_start_35
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_3a

    goto/16 :goto_e7

    :catchall_3a
    move-exception v0

    goto/16 :goto_f2

    :cond_3d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_45
    iget-object v4, v2, Lads_mobile_sdk/bq0;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v2, Lads_mobile_sdk/bq0;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/dq0;

    :try_start_4b
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    goto :goto_89

    :catchall_4f
    move-exception v0

    move-object v2, v4

    goto/16 :goto_f2

    .line 44
    :cond_53
    iget-object v0, v2, Lads_mobile_sdk/bq0;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v2, Lads_mobile_sdk/bq0;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/dq0;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    move-object v0, v4

    goto :goto_72

    :cond_5f
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, v0, Lads_mobile_sdk/dq0;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 116
    iput-object v0, v2, Lads_mobile_sdk/bq0;->a:Ljava/lang/Object;

    iput-object v1, v2, Lads_mobile_sdk/bq0;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v7, v2, Lads_mobile_sdk/bq0;->e:I

    invoke-interface {v1, v8, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_72

    goto/16 :goto_e5

    .line 117
    :cond_72
    :goto_72
    :try_start_72
    iget-object v4, v0, Lads_mobile_sdk/dq0;->a:Lads_mobile_sdk/zd3;

    iput-object v0, v2, Lads_mobile_sdk/bq0;->a:Ljava/lang/Object;

    iput-object v1, v2, Lads_mobile_sdk/bq0;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v6, v2, Lads_mobile_sdk/bq0;->e:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    invoke-static {v4, v2}, Lads_mobile_sdk/zd3;->a(Lads_mobile_sdk/zd3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_81
    .catchall {:try_start_72 .. :try_end_81} :catchall_f0

    if-ne v4, v3, :cond_84

    goto :goto_e5

    :cond_84
    move-object/from16 v16, v4

    move-object v4, v1

    move-object/from16 v1, v16

    .line 119
    :goto_89
    :try_start_89
    check-cast v1, Lads_mobile_sdk/xp0;

    .line 121
    iget-object v6, v0, Lads_mobile_sdk/dq0;->b:Lads_mobile_sdk/tx;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    if-eqz v1, :cond_eb

    .line 123
    invoke-virtual {v1}, Lads_mobile_sdk/xp0;->w()Ljava/lang/String;

    move-result-object v9

    const-string v10, "getEoid(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_eb

    .line 124
    invoke-virtual {v1}, Lads_mobile_sdk/xp0;->x()J

    move-result-wide v9

    iget-object v11, v0, Lads_mobile_sdk/dq0;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    const-string v12, "gads:eoid:default_ttl"

    sget-object v13, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v13, Lkotlin/time/DurationUnit;->DAYS:Lkotlin/time/DurationUnit;

    const/16 v14, 0xb4

    invoke-static {v14, v13}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v13

    const-string v15, "key"

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-static {v13, v14}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v13

    sget-object v14, Lads_mobile_sdk/yr;->l:Lads_mobile_sdk/ur;

    invoke-virtual {v11, v12, v13, v14}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlin/time/Duration;

    invoke-virtual {v11}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v11

    .line 127
    invoke-static {v11, v12}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v11

    add-long/2addr v9, v11

    cmp-long v9, v6, v9

    if-gtz v9, :cond_d9

    goto :goto_ec

    .line 130
    :cond_d9
    iput-object v4, v2, Lads_mobile_sdk/bq0;->a:Ljava/lang/Object;

    iput-object v8, v2, Lads_mobile_sdk/bq0;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v2, Lads_mobile_sdk/bq0;->e:I

    invoke-virtual {v0, v6, v7, v2}, Lads_mobile_sdk/dq0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_e3
    .catchall {:try_start_89 .. :try_end_e3} :catchall_4f

    if-ne v1, v3, :cond_e6

    :goto_e5
    return-object v3

    :cond_e6
    move-object v2, v4

    .line 131
    :goto_e7
    :try_start_e7
    check-cast v1, Lads_mobile_sdk/xp0;
    :try_end_e9
    .catchall {:try_start_e7 .. :try_end_e9} :catchall_3a

    move-object v4, v2

    goto :goto_ec

    :cond_eb
    move-object v1, v8

    .line 200
    :goto_ec
    invoke-interface {v4, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v1

    :catchall_f0
    move-exception v0

    move-object v2, v1

    .line 201
    :goto_f2
    invoke-interface {v2, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public final a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 213
    instance-of v0, p3, Lads_mobile_sdk/zp0;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/zp0;

    iget v1, v0, Lads_mobile_sdk/zp0;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/zp0;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/zp0;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/zp0;-><init>(Lads_mobile_sdk/dq0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/zp0;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 311
    iget v2, v0, Lads_mobile_sdk/zp0;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    if-ne v2, v3, :cond_2b

    iget-object p1, v0, Lads_mobile_sdk/zp0;->a:Lads_mobile_sdk/xp0;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 366
    invoke-static {}, Lads_mobile_sdk/xp0;->y()Lads_mobile_sdk/wp0;

    move-result-object p3

    const-string v2, "newBuilder(...)"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    const-string v2, "builder"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    iget-object v2, p0, Lads_mobile_sdk/dq0;->d:Lads_mobile_sdk/f13;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 369
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "toString(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    const-string v4, "value"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    invoke-virtual {p3, v2}, Lads_mobile_sdk/wp0;->a(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p3, p1, p2}, Lads_mobile_sdk/wp0;->a(J)V

    .line 417
    invoke-virtual {p3}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lads_mobile_sdk/xp0;

    .line 418
    iget-object p2, p0, Lads_mobile_sdk/dq0;->a:Lads_mobile_sdk/zd3;

    iput-object p1, v0, Lads_mobile_sdk/zp0;->a:Lads_mobile_sdk/xp0;

    iput v3, v0, Lads_mobile_sdk/zp0;->d:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 419
    new-instance p3, Lads_mobile_sdk/ud3;

    invoke-direct {p3, p1}, Lads_mobile_sdk/ud3;-><init>(Lads_mobile_sdk/xp0;)V

    .line 420
    invoke-static {p2, p3, v0}, Lads_mobile_sdk/zd3;->a(Lads_mobile_sdk/zd3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    .line 421
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p3

    if-ne p2, p3, :cond_85

    goto :goto_87

    :cond_85
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_87
    if-ne p2, v1, :cond_8a

    return-object v1

    :cond_8a
    return-object p1
.end method
