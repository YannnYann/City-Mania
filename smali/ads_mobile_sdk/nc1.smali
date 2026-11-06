###### Class ads_mobile_sdk.nc1 (ads_mobile_sdk.nc1)
.class public abstract Lads_mobile_sdk/nc1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/s11;

.field public final b:Z


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/s11;I)V
    .registers 4

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_5

    const/4 p1, 0x0

    :cond_5
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_b

    const/4 p2, 0x1

    goto :goto_c

    :cond_b
    const/4 p2, 0x0

    .line 2
    :goto_c
    invoke-direct {p0, p1, p2}, Lads_mobile_sdk/nc1;-><init>(Lads_mobile_sdk/s11;Z)V

    return-void
.end method

.method public constructor <init>(Lads_mobile_sdk/s11;Z)V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lads_mobile_sdk/nc1;->a:Lads_mobile_sdk/s11;

    .line 22
    iput-boolean p2, p0, Lads_mobile_sdk/nc1;->b:Z

    return-void
.end method


# virtual methods
.method public final t(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/mc1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/mc1;

    iget v1, v0, Lads_mobile_sdk/mc1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/mc1;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/mc1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/mc1;-><init>(Lads_mobile_sdk/nc1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/mc1;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 22
    iget v2, v0, Lads_mobile_sdk/mc1;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_44

    if-eq v2, v4, :cond_38

    if-ne v2, v3, :cond_30

    iget-object v0, v0, Lads_mobile_sdk/mc1;->a:Lads_mobile_sdk/nc1;

    :try_start_2b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_79

    goto/16 :goto_ce

    .line 23
    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    iget-object v1, v0, Lads_mobile_sdk/mc1;->c:Lads_mobile_sdk/rr3;

    iget-object v2, v0, Lads_mobile_sdk/mc1;->b:Lads_mobile_sdk/rr3;

    iget-object v0, v0, Lads_mobile_sdk/mc1;->a:Lads_mobile_sdk/nc1;

    :try_start_3e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_67

    :catchall_42
    move-exception p1

    goto :goto_80

    .line 24
    :cond_44
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    :try_start_47
    iget-object p1, p0, Lads_mobile_sdk/nc1;->a:Lads_mobile_sdk/s11;

    if-eqz p1, :cond_c2

    .line 28
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 60
    invoke-static {p1, v2, v4}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p1
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_53} :catch_bf

    .line 61
    :try_start_53
    iput-object p0, v0, Lads_mobile_sdk/mc1;->a:Lads_mobile_sdk/nc1;

    iput-object p1, v0, Lads_mobile_sdk/mc1;->b:Lads_mobile_sdk/rr3;

    iput-object p1, v0, Lads_mobile_sdk/mc1;->c:Lads_mobile_sdk/rr3;

    iput v4, v0, Lads_mobile_sdk/mc1;->f:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/nc1;->u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5f
    .catchall {:try_start_53 .. :try_end_5f} :catchall_7b

    if-ne v0, v1, :cond_63

    goto/16 :goto_cc

    :cond_63
    move-object v1, p1

    move-object v2, v1

    move-object p1, v0

    move-object v0, p0

    .line 62
    :goto_67
    :try_start_67
    check-cast p1, Lads_mobile_sdk/v01;

    .line 103
    instance-of v3, p1, Lads_mobile_sdk/i01;

    if-eqz v3, :cond_74

    .line 104
    move-object v3, p1

    check-cast v3, Lads_mobile_sdk/i01;

    const/4 v4, 0x0

    .line 105
    invoke-static {v3, v4}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_74
    .catchall {:try_start_67 .. :try_end_74} :catchall_42

    .line 106
    :cond_74
    :try_start_74
    invoke-static {v1, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_79

    goto/16 :goto_d8

    :catch_79
    move-exception p1

    goto :goto_d1

    :catchall_7b
    move-exception v0

    move-object v1, p1

    move-object v2, v1

    move-object p1, v0

    move-object v0, p0

    .line 114
    :goto_80
    :try_start_80
    invoke-virtual {v2, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 118
    instance-of v3, p1, Lads_mobile_sdk/v24;

    if-nez v3, :cond_b8

    .line 120
    instance-of v3, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_95

    instance-of v3, p1, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_95

    .line 126
    invoke-virtual {v2, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_95

    :catchall_93
    move-exception p1

    goto :goto_b9

    .line 132
    :cond_95
    :goto_95
    instance-of v2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_b0

    .line 133
    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_a8

    .line 134
    instance-of v2, p1, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_a2

    throw p1

    .line 135
    :cond_a2
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 136
    :cond_a8
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 137
    :cond_b0
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 138
    :cond_b8
    throw p1
    :try_end_b9
    .catchall {:try_start_80 .. :try_end_b9} :catchall_93

    .line 139
    :goto_b9
    :try_start_b9
    throw p1
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_ba

    :catchall_ba
    move-exception v2

    :try_start_bb
    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_bf} :catch_79

    :catch_bf
    move-exception p1

    move-object v0, p0

    goto :goto_d1

    .line 140
    :cond_c2
    :try_start_c2
    iput-object p0, v0, Lads_mobile_sdk/mc1;->a:Lads_mobile_sdk/nc1;

    iput v3, v0, Lads_mobile_sdk/mc1;->f:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/nc1;->u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_ca} :catch_bf

    if-ne p1, v1, :cond_cd

    :goto_cc
    return-object v1

    :cond_cd
    move-object v0, p0

    .line 141
    :goto_ce
    :try_start_ce
    check-cast p1, Lads_mobile_sdk/v01;
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d0} :catch_79

    goto :goto_d8

    .line 144
    :goto_d1
    new-instance v1, Lads_mobile_sdk/j01;

    const/4 v2, 0x6

    invoke-direct {v1, p1, v5, v5, v2}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    move-object p1, v1

    .line 146
    :goto_d8
    iget-boolean v0, v0, Lads_mobile_sdk/nc1;->b:Z

    if-eqz v0, :cond_dd

    goto :goto_e4

    :cond_dd
    new-instance p1, Lads_mobile_sdk/q01;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    :goto_e4
    return-object p1
.end method

.method public abstract u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method
