###### Class ads_mobile_sdk.rw3 (ads_mobile_sdk.rw3)
.class public final Lads_mobile_sdk/rw3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/vv2;

.field public final b:Lads_mobile_sdk/xu2;

.field public final c:Lads_mobile_sdk/wl3;

.field public final d:Lads_mobile_sdk/ts3;

.field public final e:Lads_mobile_sdk/ja3;

.field public final f:Z

.field public final g:J

.field public final h:J


# direct methods
.method public constructor <init>(Lads_mobile_sdk/vv2;Lads_mobile_sdk/xu2;Lads_mobile_sdk/wl3;Lads_mobile_sdk/ts3;Lads_mobile_sdk/ja3;ZJJ)V
    .registers 11

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lads_mobile_sdk/rw3;->a:Lads_mobile_sdk/vv2;

    .line 82
    iput-object p2, p0, Lads_mobile_sdk/rw3;->b:Lads_mobile_sdk/xu2;

    .line 83
    iput-object p3, p0, Lads_mobile_sdk/rw3;->c:Lads_mobile_sdk/wl3;

    .line 84
    iput-object p4, p0, Lads_mobile_sdk/rw3;->d:Lads_mobile_sdk/ts3;

    .line 85
    iput-object p5, p0, Lads_mobile_sdk/rw3;->e:Lads_mobile_sdk/ja3;

    .line 86
    iput-boolean p6, p0, Lads_mobile_sdk/rw3;->f:Z

    .line 87
    iput-wide p7, p0, Lads_mobile_sdk/rw3;->g:J

    .line 88
    iput-wide p9, p0, Lads_mobile_sdk/rw3;->h:J

    return-void
.end method

.method public static synthetic a(Ljava/lang/Throwable;)Lads_mobile_sdk/iv2;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic a(Lads_mobile_sdk/ow3;)Lads_mobile_sdk/qw3;
    .registers 1

    .line 906
    sget-object p0, Lads_mobile_sdk/qw3;->e:Lads_mobile_sdk/qw3;

    return-object p0
.end method

.method public static synthetic a(Lads_mobile_sdk/pw3;)Lads_mobile_sdk/qw3;
    .registers 1

    .line 907
    sget-object p0, Lads_mobile_sdk/qw3;->d:Lads_mobile_sdk/qw3;

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/Object;)Lads_mobile_sdk/qw3;
    .registers 1

    .line 905
    sget-object p0, Lads_mobile_sdk/qw3;->c:Lads_mobile_sdk/qw3;

    return-object p0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/pr0;)Lads_mobile_sdk/pr0;
    .registers 12

    .line 181
    invoke-virtual {p1}, Lads_mobile_sdk/pr0;->x()Lads_mobile_sdk/ul3;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, ""

    packed-switch v0, :pswitch_data_aa

    .line 209
    new-instance p1, Ljava/lang/IncompatibleClassChangeError;

    invoke-direct {p1}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    throw p1

    .line 210
    :pswitch_13
    iget-object v0, p0, Lads_mobile_sdk/rw3;->d:Lads_mobile_sdk/ts3;

    sget-object v2, Lads_mobile_sdk/lq0;->b:Lads_mobile_sdk/lq0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    invoke-virtual {p1}, Lads_mobile_sdk/pr0;->x()Lads_mobile_sdk/ul3;

    move-result-object v3

    .line 213
    iget v3, v3, Lads_mobile_sdk/ul3;->a:I

    .line 214
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 215
    iget-object v0, v0, Lads_mobile_sdk/ts3;->a:Lads_mobile_sdk/qt1;

    .line 216
    move-object v4, v0

    check-cast v4, Lads_mobile_sdk/st1;

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/16 v5, 0x3ec

    invoke-virtual/range {v4 .. v9}, Lads_mobile_sdk/st1;->a(IJLjava/lang/Throwable;Ljava/lang/String;)V

    .line 217
    new-instance v0, Lads_mobile_sdk/nw3;

    invoke-virtual {p1}, Lads_mobile_sdk/pr0;->x()Lads_mobile_sdk/ul3;

    move-result-object p1

    .line 218
    iget p1, p1, Lads_mobile_sdk/ul3;->a:I

    .line 219
    invoke-direct {v0, p1}, Lads_mobile_sdk/nw3;-><init>(I)V

    throw v0

    .line 220
    :pswitch_45
    iget-object v0, p0, Lads_mobile_sdk/rw3;->d:Lads_mobile_sdk/ts3;

    sget-object v2, Lads_mobile_sdk/lq0;->b:Lads_mobile_sdk/lq0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    invoke-virtual {p1}, Lads_mobile_sdk/pr0;->x()Lads_mobile_sdk/ul3;

    move-result-object v3

    .line 223
    iget v3, v3, Lads_mobile_sdk/ul3;->a:I

    .line 224
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 225
    iget-object v0, v0, Lads_mobile_sdk/ts3;->a:Lads_mobile_sdk/qt1;

    .line 226
    move-object v4, v0

    check-cast v4, Lads_mobile_sdk/st1;

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/16 v5, 0x3eb

    invoke-virtual/range {v4 .. v9}, Lads_mobile_sdk/st1;->a(IJLjava/lang/Throwable;Ljava/lang/String;)V

    .line 227
    new-instance v0, Lads_mobile_sdk/pw3;

    invoke-virtual {p1}, Lads_mobile_sdk/pr0;->x()Lads_mobile_sdk/ul3;

    move-result-object p1

    .line 228
    iget p1, p1, Lads_mobile_sdk/ul3;->a:I

    .line 229
    invoke-direct {v0, p1}, Lads_mobile_sdk/pw3;-><init>(I)V

    throw v0

    :pswitch_77
    return-object p1

    .line 244
    :pswitch_78
    iget-object v0, p0, Lads_mobile_sdk/rw3;->d:Lads_mobile_sdk/ts3;

    sget-object v2, Lads_mobile_sdk/lq0;->b:Lads_mobile_sdk/lq0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    invoke-virtual {p1}, Lads_mobile_sdk/pr0;->x()Lads_mobile_sdk/ul3;

    move-result-object v3

    .line 247
    iget v3, v3, Lads_mobile_sdk/ul3;->a:I

    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 249
    iget-object v0, v0, Lads_mobile_sdk/ts3;->a:Lads_mobile_sdk/qt1;

    .line 250
    move-object v4, v0

    check-cast v4, Lads_mobile_sdk/st1;

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/16 v5, 0x3ec

    invoke-virtual/range {v4 .. v9}, Lads_mobile_sdk/st1;->a(IJLjava/lang/Throwable;Ljava/lang/String;)V

    .line 251
    new-instance v0, Lads_mobile_sdk/ow3;

    invoke-virtual {p1}, Lads_mobile_sdk/pr0;->x()Lads_mobile_sdk/ul3;

    move-result-object p1

    .line 252
    iget p1, p1, Lads_mobile_sdk/ul3;->a:I

    .line 253
    invoke-direct {v0, p1}, Lads_mobile_sdk/ow3;-><init>(I)V

    throw v0

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_78
        :pswitch_77
        :pswitch_77
        :pswitch_45
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_13
    .end packed-switch
.end method

.method public final synthetic a(ILads_mobile_sdk/nw3;)Lads_mobile_sdk/qw3;
    .registers 3

    .line 685
    invoke-virtual {p0, p1}, Lads_mobile_sdk/rw3;->b(I)V

    .line 686
    sget-object p1, Lads_mobile_sdk/qw3;->f:Lads_mobile_sdk/qw3;

    return-object p1
.end method

.method public final a()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5

    .line 798
    iget-object v0, p0, Lads_mobile_sdk/rw3;->c:Lads_mobile_sdk/wl3;

    invoke-interface {v0}, Lads_mobile_sdk/wl3;->a()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/FluentFuture;->from(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v0

    new-instance v1, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda2;-><init>()V

    .line 799
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    const-class v3, Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/util/concurrent/FluentFuture;->catching(Ljava/lang/Class;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v0

    iget-object v1, p0, Lads_mobile_sdk/rw3;->a:Lads_mobile_sdk/vv2;

    .line 800
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda3;-><init>(Lads_mobile_sdk/vv2;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/common/util/concurrent/FluentFuture;->transform(Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v0

    new-instance v1, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda4;-><init>(Lads_mobile_sdk/rw3;)V

    .line 802
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 803
    invoke-virtual {v0, v1, v2}, Lcom/google/common/util/concurrent/FluentFuture;->transformAsync(Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Boolean;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 532
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_14

    .line 533
    iget-object p1, p0, Lads_mobile_sdk/rw3;->d:Lads_mobile_sdk/ts3;

    sget-object v0, Lads_mobile_sdk/lq0;->P:Lads_mobile_sdk/lq0;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    .line 534
    sget-object p1, Lads_mobile_sdk/qw3;->b:Lads_mobile_sdk/qw3;

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :cond_14
    const/4 p1, 0x0

    .line 536
    invoke-virtual {p0, p1}, Lads_mobile_sdk/rw3;->c(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(I)V
    .registers 2

    add-int/lit8 p1, p1, 0x1

    .line 415
    invoke-virtual {p0, p1}, Lads_mobile_sdk/rw3;->c(I)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public final a(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_11

    .line 902
    iget-object v0, p0, Lads_mobile_sdk/rw3;->e:Lads_mobile_sdk/ja3;

    new-instance v1, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda1;-><init>(Lads_mobile_sdk/rw3;)V

    invoke-interface {v0, v1, p1, p2}, Lads_mobile_sdk/ja3;->a(Ljava/lang/Runnable;J)V

    return-void

    .line 904
    :cond_11
    invoke-virtual {p0}, Lads_mobile_sdk/rw3;->a()Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public final b(Lads_mobile_sdk/pr0;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5

    .line 376
    invoke-virtual {p1}, Lads_mobile_sdk/pr0;->x()Lads_mobile_sdk/ul3;

    move-result-object v0

    sget-object v1, Lads_mobile_sdk/ul3;->c:Lads_mobile_sdk/ul3;

    if-ne v0, v1, :cond_1b

    .line 377
    iget-object v0, p0, Lads_mobile_sdk/rw3;->c:Lads_mobile_sdk/wl3;

    .line 378
    invoke-virtual {p1}, Lads_mobile_sdk/pr0;->w()Lads_mobile_sdk/iv2;

    move-result-object v1

    invoke-virtual {p1}, Lads_mobile_sdk/pr0;->v()Lads_mobile_sdk/du;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/du;->i()[B

    move-result-object p1

    .line 379
    invoke-interface {v0, v1, p1}, Lads_mobile_sdk/wl3;->a(Lads_mobile_sdk/iv2;[B)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 381
    :cond_1b
    invoke-virtual {p1}, Lads_mobile_sdk/pr0;->x()Lads_mobile_sdk/ul3;

    move-result-object v0

    sget-object v1, Lads_mobile_sdk/ul3;->d:Lads_mobile_sdk/ul3;

    if-ne v0, v1, :cond_3e

    .line 382
    iget-object v0, p0, Lads_mobile_sdk/rw3;->c:Lads_mobile_sdk/wl3;

    .line 383
    invoke-virtual {p1}, Lads_mobile_sdk/pr0;->w()Lads_mobile_sdk/iv2;

    move-result-object v1

    .line 384
    invoke-virtual {p1}, Lads_mobile_sdk/pr0;->y()Lads_mobile_sdk/du;

    move-result-object v2

    invoke-virtual {v2}, Lads_mobile_sdk/du;->i()[B

    move-result-object v2

    .line 385
    invoke-virtual {p1}, Lads_mobile_sdk/pr0;->v()Lads_mobile_sdk/du;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/du;->i()[B

    move-result-object p1

    .line 386
    invoke-interface {v0, v1, v2, p1}, Lads_mobile_sdk/wl3;->a(Lads_mobile_sdk/iv2;[B[B)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 391
    :cond_3e
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Unreachable"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final b(I)V
    .registers 10

    .line 157
    iget-boolean v0, p0, Lads_mobile_sdk/rw3;->f:Z

    if-eqz v0, :cond_21

    int-to-long v0, p1

    iget-wide v2, p0, Lads_mobile_sdk/rw3;->g:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_c

    goto :goto_21

    .line 160
    :cond_c
    iget-object v0, p0, Lads_mobile_sdk/rw3;->e:Lads_mobile_sdk/ja3;

    new-instance v1, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda0;-><init>(Lads_mobile_sdk/rw3;I)V

    .line 161
    iget-wide v2, p0, Lads_mobile_sdk/rw3;->h:J

    int-to-double v4, p1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v4, v4

    mul-long/2addr v2, v4

    .line 162
    invoke-interface {v0, v1, v2, v3}, Lads_mobile_sdk/ja3;->a(Ljava/lang/Runnable;J)V

    :cond_21
    :goto_21
    return-void
.end method

.method public final c(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 8

    .line 129
    iget-object v0, p0, Lads_mobile_sdk/rw3;->d:Lads_mobile_sdk/ts3;

    sget-object v1, Lads_mobile_sdk/lq0;->O:Lads_mobile_sdk/lq0;

    iget-object v2, p0, Lads_mobile_sdk/rw3;->b:Lads_mobile_sdk/xu2;

    .line 131
    invoke-interface {v2}, Lads_mobile_sdk/xu2;->a()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/util/concurrent/FluentFuture;->from(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v2

    new-instance v3, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda5;-><init>(Lads_mobile_sdk/rw3;)V

    .line 132
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/util/concurrent/FluentFuture;->transform(Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v2

    new-instance v3, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda6;-><init>(Lads_mobile_sdk/rw3;)V

    .line 133
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/util/concurrent/FluentFuture;->transformAsync(Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v2

    new-instance v3, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda7;

    invoke-direct {v3}, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda7;-><init>()V

    .line 134
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/util/concurrent/FluentFuture;->transform(Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v2

    new-instance v3, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda8;

    invoke-direct {v3}, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda8;-><init>()V

    .line 141
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 142
    const-class v5, Lads_mobile_sdk/ow3;

    invoke-virtual {v2, v5, v3, v4}, Lcom/google/common/util/concurrent/FluentFuture;->catching(Ljava/lang/Class;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v2

    new-instance v3, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda9;

    invoke-direct {v3}, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda9;-><init>()V

    .line 149
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 150
    const-class v5, Lads_mobile_sdk/pw3;

    invoke-virtual {v2, v5, v3, v4}, Lcom/google/common/util/concurrent/FluentFuture;->catching(Ljava/lang/Class;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v2

    new-instance v3, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, p1}, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda10;-><init>(Lads_mobile_sdk/rw3;I)V

    .line 160
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 161
    const-class v4, Lads_mobile_sdk/nw3;

    invoke-virtual {v2, v4, v3, p1}, Lcom/google/common/util/concurrent/FluentFuture;->catching(Ljava/lang/Class;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object p1

    .line 162
    invoke-virtual {v0, v1, p1}, Lads_mobile_sdk/ts3;->a(Lads_mobile_sdk/lq0;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

###### Class ads_mobile_sdk.rw3$$ExternalSyntheticLambda0 (ads_mobile_sdk.rw3$$ExternalSyntheticLambda0)
.class public final synthetic Lads_mobile_sdk/rw3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/rw3;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/rw3;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/rw3;

    iput p2, p0, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/rw3;

    iget v1, p0, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v0, v1}, Lads_mobile_sdk/rw3;->a(I)V

    return-void
.end method

###### Class ads_mobile_sdk.rw3$$ExternalSyntheticLambda1 (ads_mobile_sdk.rw3$$ExternalSyntheticLambda1)
.class public final synthetic Lads_mobile_sdk/rw3$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/rw3;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/rw3;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/rw3;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/rw3;

    invoke-virtual {v0}, Lads_mobile_sdk/rw3;->a()Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

###### Class ads_mobile_sdk.rw3$$ExternalSyntheticLambda10 (ads_mobile_sdk.rw3$$ExternalSyntheticLambda10)
.class public final synthetic Lads_mobile_sdk/rw3$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/rw3;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/rw3;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda10;->f$0:Lads_mobile_sdk/rw3;

    iput p2, p0, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda10;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda10;->f$0:Lads_mobile_sdk/rw3;

    iget v1, p0, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda10;->f$1:I

    check-cast p1, Lads_mobile_sdk/nw3;

    invoke-virtual {v0, v1, p1}, Lads_mobile_sdk/rw3;->a(ILads_mobile_sdk/nw3;)Lads_mobile_sdk/qw3;

    move-result-object p1

    return-object p1
.end method

###### Class ads_mobile_sdk.rw3$$ExternalSyntheticLambda2 (ads_mobile_sdk.rw3$$ExternalSyntheticLambda2)
.class public final synthetic Lads_mobile_sdk/rw3$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lads_mobile_sdk/rw3;->a(Ljava/lang/Throwable;)Lads_mobile_sdk/iv2;

    move-result-object p1

    return-object p1
.end method

###### Class ads_mobile_sdk.rw3$$ExternalSyntheticLambda3 (ads_mobile_sdk.rw3$$ExternalSyntheticLambda3)
.class public final synthetic Lads_mobile_sdk/rw3$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/vv2;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/vv2;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda3;->f$0:Lads_mobile_sdk/vv2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda3;->f$0:Lads_mobile_sdk/vv2;

    check-cast p1, Lads_mobile_sdk/iv2;

    invoke-interface {v0, p1}, Lads_mobile_sdk/vv2;->a(Lads_mobile_sdk/iv2;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

###### Class ads_mobile_sdk.rw3$$ExternalSyntheticLambda4 (ads_mobile_sdk.rw3$$ExternalSyntheticLambda4)
.class public final synthetic Lads_mobile_sdk/rw3$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/rw3;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/rw3;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda4;->f$0:Lads_mobile_sdk/rw3;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda4;->f$0:Lads_mobile_sdk/rw3;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/rw3;->a(Ljava/lang/Boolean;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

###### Class ads_mobile_sdk.rw3$$ExternalSyntheticLambda5 (ads_mobile_sdk.rw3$$ExternalSyntheticLambda5)
.class public final synthetic Lads_mobile_sdk/rw3$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/rw3;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/rw3;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda5;->f$0:Lads_mobile_sdk/rw3;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda5;->f$0:Lads_mobile_sdk/rw3;

    check-cast p1, Lads_mobile_sdk/pr0;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/rw3;->a(Lads_mobile_sdk/pr0;)Lads_mobile_sdk/pr0;

    move-result-object p1

    return-object p1
.end method

###### Class ads_mobile_sdk.rw3$$ExternalSyntheticLambda6 (ads_mobile_sdk.rw3$$ExternalSyntheticLambda6)
.class public final synthetic Lads_mobile_sdk/rw3$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/rw3;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/rw3;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda6;->f$0:Lads_mobile_sdk/rw3;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/rw3$$ExternalSyntheticLambda6;->f$0:Lads_mobile_sdk/rw3;

    check-cast p1, Lads_mobile_sdk/pr0;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/rw3;->b(Lads_mobile_sdk/pr0;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

###### Class ads_mobile_sdk.rw3$$ExternalSyntheticLambda7 (ads_mobile_sdk.rw3$$ExternalSyntheticLambda7)
.class public final synthetic Lads_mobile_sdk/rw3$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p1}, Lads_mobile_sdk/rw3;->a(Ljava/lang/Object;)Lads_mobile_sdk/qw3;

    move-result-object p1

    return-object p1
.end method

###### Class ads_mobile_sdk.rw3$$ExternalSyntheticLambda8 (ads_mobile_sdk.rw3$$ExternalSyntheticLambda8)
.class public final synthetic Lads_mobile_sdk/rw3$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lads_mobile_sdk/ow3;

    invoke-static {p1}, Lads_mobile_sdk/rw3;->a(Lads_mobile_sdk/ow3;)Lads_mobile_sdk/qw3;

    move-result-object p1

    return-object p1
.end method

###### Class ads_mobile_sdk.rw3$$ExternalSyntheticLambda9 (ads_mobile_sdk.rw3$$ExternalSyntheticLambda9)
.class public final synthetic Lads_mobile_sdk/rw3$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lads_mobile_sdk/pw3;

    invoke-static {p1}, Lads_mobile_sdk/rw3;->a(Lads_mobile_sdk/pw3;)Lads_mobile_sdk/qw3;

    move-result-object p1

    return-object p1
.end method
