###### Class ads_mobile_sdk.xc0 (ads_mobile_sdk.xc0)
.class public final Lads_mobile_sdk/xc0;
.super Landroidx/browser/customtabs/CustomTabsCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lads_mobile_sdk/zc0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/zc0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/xc0;->a:Lads_mobile_sdk/zc0;

    .line 59
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(ILandroid/os/Bundle;)V
    .registers 9

    .line 62
    iget-object p2, p0, Lads_mobile_sdk/xc0;->a:Lads_mobile_sdk/zc0;

    .line 63
    iget-object p2, p2, Lads_mobile_sdk/zc0;->c:Lads_mobile_sdk/g83;

    .line 64
    sget-object v0, Lads_mobile_sdk/s11;->C0:Lads_mobile_sdk/s11;

    .line 65
    new-instance v1, Lads_mobile_sdk/ks3;

    .line 66
    new-instance v2, Lads_mobile_sdk/n03;

    invoke-direct {v2}, Lads_mobile_sdk/n03;-><init>()V

    .line 67
    new-instance v3, Lads_mobile_sdk/tn1;

    invoke-direct {v3}, Lads_mobile_sdk/tn1;-><init>()V

    .line 68
    new-instance v4, Lads_mobile_sdk/m33;

    invoke-direct {v4}, Lads_mobile_sdk/m33;-><init>()V

    .line 69
    new-instance v5, Lads_mobile_sdk/zb;

    invoke-direct {v5}, Lads_mobile_sdk/zb;-><init>()V

    .line 70
    invoke-direct {v1, v2, v3, v4, v5}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 71
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 72
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v3

    .line 73
    iget-object v3, v3, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/4 v4, 0x0

    if-nez v3, :cond_84

    .line 74
    invoke-static {p2, v0, v2, v1}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object p2

    .line 75
    :try_start_30
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lads_mobile_sdk/uj2;->A:Ljava/lang/Integer;

    .line 76
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_40
    .catchall {:try_start_30 .. :try_end_40} :catchall_44

    .line 143
    invoke-static {p2, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_44
    move-exception p1

    .line 151
    :try_start_45
    invoke-virtual {p2, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 155
    instance-of v0, p1, Lads_mobile_sdk/v24;

    if-nez v0, :cond_7d

    .line 157
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_5a

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_5a

    .line 163
    invoke-virtual {p2, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_5a

    :catchall_58
    move-exception p1

    goto :goto_7e

    .line 169
    :cond_5a
    :goto_5a
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_75

    .line 170
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_6d

    .line 171
    instance-of v0, p1, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_67

    throw p1

    .line 172
    :cond_67
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 173
    :cond_6d
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 174
    :cond_75
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 175
    :cond_7d
    throw p1
    :try_end_7e
    .catchall {:try_start_45 .. :try_end_7e} :catchall_58

    .line 176
    :goto_7e
    :try_start_7e
    throw p1
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7f

    :catchall_7f
    move-exception v0

    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 210
    :cond_84
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p2

    .line 211
    :try_start_8d
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lads_mobile_sdk/uj2;->A:Ljava/lang/Integer;

    .line 212
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9d
    .catchall {:try_start_8d .. :try_end_9d} :catchall_a1

    .line 316
    invoke-static {p2, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_a1
    move-exception p1

    .line 324
    :try_start_a2
    invoke-virtual {p2, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 328
    instance-of v0, p1, Lads_mobile_sdk/v24;

    if-nez v0, :cond_da

    .line 330
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_b7

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_b7

    .line 336
    invoke-virtual {p2, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_b7

    :catchall_b5
    move-exception p1

    goto :goto_db

    .line 342
    :cond_b7
    :goto_b7
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_d2

    .line 343
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_ca

    .line 344
    instance-of v0, p1, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_c4

    throw p1

    .line 345
    :cond_c4
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 346
    :cond_ca
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 347
    :cond_d2
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 348
    :cond_da
    throw p1
    :try_end_db
    .catchall {:try_start_a2 .. :try_end_db} :catchall_b5

    .line 349
    :goto_db
    :try_start_db
    throw p1
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_dc

    :catchall_dc
    move-exception v0

    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
