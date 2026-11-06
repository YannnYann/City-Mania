###### Class ads_mobile_sdk.kr0 (ads_mobile_sdk.kr0)
.class public final Lads_mobile_sdk/kr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/qj3;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public final b:Lads_mobile_sdk/ks1;

.field public final c:Lads_mobile_sdk/ks1;

.field public final d:Lads_mobile_sdk/hl3;

.field public final e:Lads_mobile_sdk/ks1;

.field public final f:Lads_mobile_sdk/cw2;

.field public final g:Lads_mobile_sdk/na;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lads_mobile_sdk/ks1;Lads_mobile_sdk/ks1;Lads_mobile_sdk/hl3;Lads_mobile_sdk/ks1;Lads_mobile_sdk/dw2;Lads_mobile_sdk/na;)V
    .registers 8

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/kr0;->a:Ljava/util/concurrent/ExecutorService;

    .line 4
    iput-object p2, p0, Lads_mobile_sdk/kr0;->b:Lads_mobile_sdk/ks1;

    .line 5
    iput-object p3, p0, Lads_mobile_sdk/kr0;->c:Lads_mobile_sdk/ks1;

    .line 6
    iput-object p4, p0, Lads_mobile_sdk/kr0;->d:Lads_mobile_sdk/hl3;

    .line 7
    iput-object p5, p0, Lads_mobile_sdk/kr0;->e:Lads_mobile_sdk/ks1;

    .line 8
    iput-object p6, p0, Lads_mobile_sdk/kr0;->f:Lads_mobile_sdk/cw2;

    .line 9
    iput-object p7, p0, Lads_mobile_sdk/kr0;->g:Lads_mobile_sdk/na;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 464
    new-instance v0, Lads_mobile_sdk/kr0$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lads_mobile_sdk/kr0$$ExternalSyntheticLambda0;-><init>(Lads_mobile_sdk/kr0;)V

    iget-object v1, p0, Lads_mobile_sdk/kr0;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->submit(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5

    .line 237
    iget-object v0, p0, Lads_mobile_sdk/kr0;->f:Lads_mobile_sdk/cw2;

    .line 238
    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/nh3;

    .line 239
    check-cast v0, Lads_mobile_sdk/sd0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    iput-object p1, v0, Lads_mobile_sdk/sd0;->c:Landroid/content/Context;

    .line 242
    iget-object p1, p0, Lads_mobile_sdk/kr0;->d:Lads_mobile_sdk/hl3;

    .line 243
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 245
    iget-object p1, p1, Lads_mobile_sdk/hl3;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/bt3;

    .line 246
    invoke-interface {v2, v1}, Lads_mobile_sdk/bt3;->a(Ljava/util/HashMap;)V

    goto :goto_22

    .line 247
    :cond_32
    iput-object v1, v0, Lads_mobile_sdk/sd0;->g:Ljava/util/Map;

    .line 248
    invoke-static {}, Lads_mobile_sdk/fh;->D()Lads_mobile_sdk/xf;

    move-result-object p1

    .line 249
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    iput-object p1, v0, Lads_mobile_sdk/sd0;->h:Lads_mobile_sdk/xf;

    .line 251
    sget-object p1, Lads_mobile_sdk/fl3;->a:Lads_mobile_sdk/fl3;

    .line 252
    iput-object p1, v0, Lads_mobile_sdk/sd0;->i:Lads_mobile_sdk/fl3;

    .line 253
    invoke-virtual {v0}, Lads_mobile_sdk/sd0;->a()Lads_mobile_sdk/td0;

    move-result-object p1

    .line 254
    iget-object p1, p1, Lads_mobile_sdk/td0;->B:Lads_mobile_sdk/dw2;

    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/lh3;

    .line 255
    invoke-virtual {p1}, Lads_mobile_sdk/lh3;->b()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 7

    .line 363
    iget-object v0, p0, Lads_mobile_sdk/kr0;->f:Lads_mobile_sdk/cw2;

    .line 364
    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/nh3;

    .line 365
    check-cast v0, Lads_mobile_sdk/sd0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 366
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    iput-object p1, v0, Lads_mobile_sdk/sd0;->c:Landroid/content/Context;

    .line 368
    iput-object p3, v0, Lads_mobile_sdk/sd0;->d:Landroid/view/View;

    .line 369
    iput-object p4, v0, Lads_mobile_sdk/sd0;->e:Landroid/app/Activity;

    .line 370
    iget-object p4, p0, Lads_mobile_sdk/kr0;->g:Lads_mobile_sdk/na;

    invoke-virtual {p4}, Lads_mobile_sdk/na;->H()Z

    move-result p4

    if-eqz p4, :cond_1f

    goto :goto_21

    :cond_1f
    const-string p2, ""

    .line 371
    :goto_21
    iput-object p2, v0, Lads_mobile_sdk/sd0;->f:Ljava/lang/String;

    .line 372
    iget-object p2, p0, Lads_mobile_sdk/kr0;->d:Lads_mobile_sdk/hl3;

    .line 373
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 374
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 375
    iget-object p2, p2, Lads_mobile_sdk/hl3;->a:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_33
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/bt3;

    .line 376
    invoke-interface {v1, p4, p1, p3}, Lads_mobile_sdk/bt3;->a(Ljava/util/HashMap;Landroid/content/Context;Landroid/view/View;)V

    goto :goto_33

    .line 377
    :cond_43
    iput-object p4, v0, Lads_mobile_sdk/sd0;->g:Ljava/util/Map;

    .line 378
    invoke-static {}, Lads_mobile_sdk/fh;->D()Lads_mobile_sdk/xf;

    move-result-object p1

    .line 379
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 380
    iput-object p1, v0, Lads_mobile_sdk/sd0;->h:Lads_mobile_sdk/xf;

    .line 381
    sget-object p1, Lads_mobile_sdk/fl3;->b:Lads_mobile_sdk/fl3;

    .line 382
    iput-object p1, v0, Lads_mobile_sdk/sd0;->i:Lads_mobile_sdk/fl3;

    .line 383
    invoke-virtual {v0}, Lads_mobile_sdk/sd0;->a()Lads_mobile_sdk/td0;

    move-result-object p1

    .line 384
    iget-object p1, p1, Lads_mobile_sdk/td0;->B:Lads_mobile_sdk/dw2;

    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/lh3;

    .line 385
    invoke-virtual {p1}, Lads_mobile_sdk/lh3;->b()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/view/InputEvent;)V
    .registers 3

    .line 146
    iget-object v0, p0, Lads_mobile_sdk/kr0;->e:Lads_mobile_sdk/ks1;

    invoke-interface {v0}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/bd1;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/bd1;->a(Landroid/view/InputEvent;)V

    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 8

    .line 128
    iget-object v0, p0, Lads_mobile_sdk/kr0;->d:Lads_mobile_sdk/hl3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 130
    iget-object v0, v0, Lads_mobile_sdk/hl3;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/bt3;

    .line 131
    invoke-interface {v2, v1}, Lads_mobile_sdk/bt3;->b(Ljava/util/HashMap;)V

    goto :goto_10

    .line 132
    :cond_20
    iget-object v0, p0, Lads_mobile_sdk/kr0;->e:Lads_mobile_sdk/ks1;

    invoke-interface {v0}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/bd1;

    invoke-virtual {v0, v1}, Lads_mobile_sdk/bd1;->a(Ljava/util/HashMap;)V

    .line 133
    iget-object v0, p0, Lads_mobile_sdk/kr0;->f:Lads_mobile_sdk/cw2;

    .line 134
    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/nh3;

    .line 135
    check-cast v0, Lads_mobile_sdk/sd0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    iput-object p1, v0, Lads_mobile_sdk/sd0;->c:Landroid/content/Context;

    .line 138
    iput-object p3, v0, Lads_mobile_sdk/sd0;->d:Landroid/view/View;

    .line 139
    iput-object p4, v0, Lads_mobile_sdk/sd0;->e:Landroid/app/Activity;

    .line 140
    iput-object p2, v0, Lads_mobile_sdk/sd0;->f:Ljava/lang/String;

    .line 141
    iput-object v1, v0, Lads_mobile_sdk/sd0;->g:Ljava/util/Map;

    .line 142
    sget-object p1, Lads_mobile_sdk/fl3;->c:Lads_mobile_sdk/fl3;

    .line 143
    iput-object p1, v0, Lads_mobile_sdk/sd0;->i:Lads_mobile_sdk/fl3;

    .line 144
    invoke-static {}, Lads_mobile_sdk/fh;->D()Lads_mobile_sdk/xf;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    iput-object p1, v0, Lads_mobile_sdk/sd0;->h:Lads_mobile_sdk/xf;

    .line 147
    invoke-virtual {v0}, Lads_mobile_sdk/sd0;->a()Lads_mobile_sdk/td0;

    move-result-object p1

    .line 148
    iget-object p1, p1, Lads_mobile_sdk/td0;->B:Lads_mobile_sdk/dw2;

    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/lh3;

    .line 149
    invoke-virtual {p1}, Lads_mobile_sdk/lh3;->b()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 150
    const-string v0, "1.975916745"

    return-object v0
.end method

.method public final c()Ljava/lang/Void;
    .registers 6

    .line 82
    iget-object v0, p0, Lads_mobile_sdk/kr0;->c:Lads_mobile_sdk/ks1;

    invoke-interface {v0}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/a;

    invoke-virtual {v0}, Lads_mobile_sdk/a;->a()V

    .line 83
    iget-object v0, p0, Lads_mobile_sdk/kr0;->b:Lads_mobile_sdk/ks1;

    invoke-interface {v0}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/yw1;

    check-cast v0, Lads_mobile_sdk/zw1;

    .line 84
    monitor-enter v0

    .line 85
    :try_start_16
    iget-object v1, v0, Lads_mobile_sdk/zw1;->e:Lads_mobile_sdk/ts3;

    sget-object v2, Lads_mobile_sdk/lq0;->I:Lads_mobile_sdk/lq0;

    .line 86
    new-instance v3, Lads_mobile_sdk/qr3;

    .line 87
    iget-object v4, v1, Lads_mobile_sdk/ts3;->b:Lads_mobile_sdk/tx;

    .line 88
    iget-object v1, v1, Lads_mobile_sdk/ts3;->a:Lads_mobile_sdk/qt1;

    invoke-direct {v3, v2, v4, v1}, Lads_mobile_sdk/qr3;-><init>(Lads_mobile_sdk/lq0;Lads_mobile_sdk/tx;Lads_mobile_sdk/qt1;)V
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_46

    .line 89
    :try_start_23
    invoke-virtual {v3}, Lads_mobile_sdk/qr3;->b()V

    .line 90
    invoke-virtual {v0}, Lads_mobile_sdk/zw1;->a()V

    .line 91
    invoke-virtual {v0}, Lads_mobile_sdk/zw1;->c()V

    .line 92
    invoke-virtual {v0}, Lads_mobile_sdk/zw1;->d()V

    const/4 v1, 0x1

    .line 93
    iput-boolean v1, v0, Lads_mobile_sdk/zw1;->j:Z
    :try_end_32
    .catch Lads_mobile_sdk/mj3; {:try_start_23 .. :try_end_32} :catch_35
    .catchall {:try_start_23 .. :try_end_32} :catchall_33

    goto :goto_40

    :catchall_33
    move-exception v1

    goto :goto_37

    :catch_35
    move-exception v1

    goto :goto_3d

    .line 101
    :goto_37
    :try_start_37
    invoke-virtual {v3, v1}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V

    .line 102
    throw v1

    :catchall_3b
    move-exception v1

    goto :goto_48

    .line 103
    :goto_3d
    invoke-virtual {v3, v1}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_3b

    .line 100
    :goto_40
    :try_start_40
    invoke-virtual {v3}, Lads_mobile_sdk/qr3;->a()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_46

    .line 109
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_46
    move-exception v1

    goto :goto_4c

    .line 110
    :goto_48
    :try_start_48
    invoke-virtual {v3}, Lads_mobile_sdk/qr3;->a()V

    .line 111
    throw v1
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_46

    :goto_4c
    monitor-exit v0

    throw v1
.end method

###### Class ads_mobile_sdk.kr0$$ExternalSyntheticLambda0 (ads_mobile_sdk.kr0$$ExternalSyntheticLambda0)
.class public final synthetic Lads_mobile_sdk/kr0$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/kr0;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/kr0;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/kr0$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/kr0;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/kr0$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/kr0;

    invoke-virtual {v0}, Lads_mobile_sdk/kr0;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
