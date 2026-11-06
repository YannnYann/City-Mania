###### Class ads_mobile_sdk.st1 (ads_mobile_sdk.st1)
.class public final Lads_mobile_sdk/st1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/qt1;
.implements Lads_mobile_sdk/pc1;
.implements Lads_mobile_sdk/rj3;


# static fields
.field public static final u:Lads_mobile_sdk/ra;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lads_mobile_sdk/ja3;

.field public final c:Ljava/util/concurrent/ExecutorService;

.field public final d:Lads_mobile_sdk/n71;

.field public final e:Z

.field public final f:Ljava/lang/String;

.field public final g:J

.field public final h:J

.field public final i:D

.field public final j:Ljava/lang/String;

.field public final k:Lads_mobile_sdk/ma;

.field public final l:J

.field public final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final n:Ljava/lang/Object;

.field public final o:Ljava/lang/Object;

.field public final p:Ljava/lang/Object;

.field public final q:Lads_mobile_sdk/wa;

.field public final r:Ljava/util/ArrayList;

.field public s:Z

.field public final t:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lads_mobile_sdk/ra;->v()Lads_mobile_sdk/qa;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lads_mobile_sdk/qa;->h()Lads_mobile_sdk/qa;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ra;

    sput-object v0, Lads_mobile_sdk/st1;->u:Lads_mobile_sdk/ra;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/ja3;Ljava/util/concurrent/ExecutorService;Lads_mobile_sdk/n71;Ljava/util/Random;Ljava/lang/String;JJDLjava/lang/String;Lads_mobile_sdk/ma;J)V
    .registers 21

    move-wide v0, p11

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lads_mobile_sdk/st1;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 105
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lads_mobile_sdk/st1;->n:Ljava/lang/Object;

    .line 106
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lads_mobile_sdk/st1;->o:Ljava/lang/Object;

    .line 107
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lads_mobile_sdk/st1;->p:Ljava/lang/Object;

    .line 112
    invoke-static {}, Lads_mobile_sdk/xa;->v()Lads_mobile_sdk/wa;

    move-result-object v2

    iput-object v2, p0, Lads_mobile_sdk/st1;->q:Lads_mobile_sdk/wa;

    .line 114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lads_mobile_sdk/st1;->r:Ljava/util/ArrayList;

    .line 117
    iput-boolean v3, p0, Lads_mobile_sdk/st1;->s:Z

    .line 121
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lads_mobile_sdk/st1;->t:Ljava/util/HashMap;

    .line 137
    iput-object p1, p0, Lads_mobile_sdk/st1;->a:Landroid/content/Context;

    .line 138
    iput-object p2, p0, Lads_mobile_sdk/st1;->b:Lads_mobile_sdk/ja3;

    .line 139
    iput-object p3, p0, Lads_mobile_sdk/st1;->c:Ljava/util/concurrent/ExecutorService;

    .line 140
    iput-object p4, p0, Lads_mobile_sdk/st1;->d:Lads_mobile_sdk/n71;

    .line 142
    iput-object p6, p0, Lads_mobile_sdk/st1;->f:Ljava/lang/String;

    .line 143
    iput-wide p7, p0, Lads_mobile_sdk/st1;->g:J

    .line 144
    iput-wide p9, p0, Lads_mobile_sdk/st1;->h:J

    .line 145
    iput-wide v0, p0, Lads_mobile_sdk/st1;->i:D

    move-object/from16 p1, p13

    .line 146
    iput-object p1, p0, Lads_mobile_sdk/st1;->j:Ljava/lang/String;

    move-object/from16 p1, p14

    .line 147
    iput-object p1, p0, Lads_mobile_sdk/st1;->k:Lads_mobile_sdk/ma;

    move-wide/from16 p1, p15

    .line 148
    iput-wide p1, p0, Lads_mobile_sdk/st1;->l:J

    .line 150
    invoke-virtual {p5}, Ljava/util/Random;->nextDouble()D

    move-result-wide p1

    cmpg-double p1, p1, v0

    if-gez p1, :cond_5c

    const/4 v3, 0x1

    :cond_5c
    iput-boolean v3, p0, Lads_mobile_sdk/st1;->e:Z

    return-void
.end method


# virtual methods
.method public final a(I)J
    .registers 7

    .line 206
    iget-object v0, p0, Lads_mobile_sdk/st1;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_3
    iget-object v1, p0, Lads_mobile_sdk/st1;->t:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_1a

    const-wide/16 v1, 0x0

    .line 209
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1a

    :catchall_18
    move-exception p1

    goto :goto_30

    .line 211
    :cond_1a
    :goto_1a
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 212
    iget-object v4, p0, Lads_mobile_sdk/st1;->t:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    monitor-exit v0

    return-wide v1

    .line 214
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_18

    throw p1
.end method

.method public final a()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 368
    new-instance v0, Lads_mobile_sdk/st1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lads_mobile_sdk/st1$$ExternalSyntheticLambda1;-><init>(Lads_mobile_sdk/st1;)V

    iget-object v1, p0, Lads_mobile_sdk/st1;->c:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->submit(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final a(IJLjava/lang/Throwable;Ljava/lang/String;)V
    .registers 16

    .line 504
    iget-boolean v0, p0, Lads_mobile_sdk/st1;->e:Z

    if-nez v0, :cond_5

    return-void

    .line 507
    :cond_5
    iget-object v1, p0, Lads_mobile_sdk/st1;->o:Ljava/lang/Object;

    monitor-enter v1

    .line 508
    :try_start_8
    iget-object v0, p0, Lads_mobile_sdk/st1;->r:Ljava/util/ArrayList;

    new-instance v2, Lads_mobile_sdk/rt1;

    .line 509
    invoke-virtual {p0, p1}, Lads_mobile_sdk/st1;->a(I)J

    move-result-wide v8

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v9}, Lads_mobile_sdk/rt1;-><init>(IJLjava/lang/Throwable;Ljava/lang/String;J)V

    .line 510
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    iget-boolean p1, p0, Lads_mobile_sdk/st1;->s:Z

    if-nez p1, :cond_31

    const/4 p1, 0x1

    .line 513
    iput-boolean p1, p0, Lads_mobile_sdk/st1;->s:Z

    .line 514
    iget-object p1, p0, Lads_mobile_sdk/st1;->b:Lads_mobile_sdk/ja3;

    new-instance p2, Lads_mobile_sdk/st1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lads_mobile_sdk/st1$$ExternalSyntheticLambda0;-><init>(Lads_mobile_sdk/st1;)V

    iget-wide p3, p0, Lads_mobile_sdk/st1;->h:J

    invoke-interface {p1, p2, p3, p4}, Lads_mobile_sdk/ja3;->a(Ljava/lang/Runnable;J)V

    goto :goto_31

    :catchall_2e
    move-exception v0

    move-object p1, v0

    goto :goto_33

    .line 516
    :cond_31
    :goto_31
    monitor-exit v1

    return-void

    .line 517
    :goto_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_2e

    throw p1
.end method

.method public final a(Lads_mobile_sdk/xa;)V
    .registers 6

    .line 518
    :try_start_0
    invoke-static {}, Lads_mobile_sdk/ib;->v()Lads_mobile_sdk/hb;

    move-result-object v0

    sget-object v1, Lads_mobile_sdk/st1;->u:Lads_mobile_sdk/ra;

    .line 519
    invoke-virtual {v0, v1}, Lads_mobile_sdk/hb;->a(Lads_mobile_sdk/ra;)Lads_mobile_sdk/hb;

    move-result-object v0

    .line 521
    invoke-static {}, Lads_mobile_sdk/gb;->v()Lads_mobile_sdk/fb;

    move-result-object v1

    .line 522
    invoke-virtual {v1, p1}, Lads_mobile_sdk/fb;->a(Lads_mobile_sdk/xa;)Lads_mobile_sdk/fb;

    move-result-object p1

    .line 523
    invoke-virtual {p1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/gb;

    .line 524
    invoke-virtual {v0, p1}, Lads_mobile_sdk/hb;->a(Lads_mobile_sdk/gb;)Lads_mobile_sdk/hb;

    move-result-object p1

    .line 528
    invoke-virtual {p1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/ib;

    .line 529
    iget-object v0, p0, Lads_mobile_sdk/st1;->d:Lads_mobile_sdk/n71;

    iget-object v1, p0, Lads_mobile_sdk/st1;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lads_mobile_sdk/f;->c()[B

    move-result-object p1

    const-string v2, "application/x-protobuf"

    check-cast v0, Lads_mobile_sdk/q71;

    const/4 v3, 0x1

    .line 530
    invoke-virtual {v0, v1, v3, p1, v2}, Lads_mobile_sdk/q71;->a(Ljava/lang/String;Z[BLjava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_32
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_32} :catch_32

    :catch_32
    return-void
.end method

.method public final b()V
    .registers 12

    .line 158
    iget-boolean v0, p0, Lads_mobile_sdk/st1;->e:Z

    if-eqz v0, :cond_d2

    iget-object v0, p0, Lads_mobile_sdk/st1;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_d2

    .line 161
    :cond_f
    iget-object v0, p0, Lads_mobile_sdk/st1;->a:Landroid/content/Context;

    iget-object v1, p0, Lads_mobile_sdk/st1;->j:Ljava/lang/String;

    iget-object v2, p0, Lads_mobile_sdk/st1;->k:Lads_mobile_sdk/ma;

    iget-wide v3, p0, Lads_mobile_sdk/st1;->i:D

    iget-wide v5, p0, Lads_mobile_sdk/st1;->l:J

    .line 162
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    .line 164
    invoke-virtual {v2}, Lads_mobile_sdk/ma;->getNumber()I

    move-result v2

    invoke-static {v2}, Lads_mobile_sdk/j61;->a(I)Lads_mobile_sdk/j61;

    move-result-object v2

    if-nez v2, :cond_29

    .line 166
    sget-object v2, Lads_mobile_sdk/j61;->b:Lads_mobile_sdk/j61;

    .line 169
    :cond_29
    invoke-static {}, Lads_mobile_sdk/xa;->v()Lads_mobile_sdk/wa;

    move-result-object v8

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    int-to-long v9, v9

    .line 170
    invoke-virtual {v8, v9, v10}, Lads_mobile_sdk/wa;->a(J)Lads_mobile_sdk/wa;

    move-result-object v8

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 171
    invoke-virtual {v8, v9}, Lads_mobile_sdk/wa;->f(Ljava/lang/String;)Lads_mobile_sdk/wa;

    move-result-object v8

    .line 172
    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lads_mobile_sdk/wa;->e(Ljava/lang/String;)Lads_mobile_sdk/wa;

    move-result-object v8

    .line 173
    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lads_mobile_sdk/wa;->c(Ljava/lang/String;)Lads_mobile_sdk/wa;

    move-result-object v7

    .line 174
    invoke-virtual {v7, v1}, Lads_mobile_sdk/wa;->d(Ljava/lang/String;)Lads_mobile_sdk/wa;

    move-result-object v1

    .line 175
    invoke-virtual {v1, v2}, Lads_mobile_sdk/wa;->a(Lads_mobile_sdk/j61;)Lads_mobile_sdk/wa;

    move-result-object v1

    .line 176
    invoke-virtual {v1}, Lads_mobile_sdk/wa;->i()Lads_mobile_sdk/wa;

    move-result-object v1

    .line 177
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lads_mobile_sdk/wa;->b(Ljava/lang/String;)Lads_mobile_sdk/wa;

    move-result-object v1

    .line 178
    invoke-virtual {v1, v5, v6}, Lads_mobile_sdk/wa;->c(J)Lads_mobile_sdk/wa;

    move-result-object v1

    const-wide/16 v5, 0x0

    cmpl-double v2, v3, v5

    if-lez v2, :cond_72

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double/2addr v5, v3

    .line 181
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lads_mobile_sdk/wa;->d(J)V

    .line 184
    :cond_72
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 187
    :try_start_76
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 188
    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Lads_mobile_sdk/wa;->b(J)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_85} :catch_85

    .line 195
    :catch_85
    :try_start_85
    const-string v3, "android.hardware.type.automotive"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 196
    sget-object v0, Lads_mobile_sdk/in0;->f:Lads_mobile_sdk/in0;

    goto :goto_bc

    .line 197
    :cond_90
    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 198
    sget-object v0, Lads_mobile_sdk/in0;->e:Lads_mobile_sdk/in0;

    goto :goto_bc

    .line 199
    :cond_9b
    const-string v3, "android.hardware.type.pc"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 200
    sget-object v0, Lads_mobile_sdk/in0;->h:Lads_mobile_sdk/in0;

    goto :goto_bc

    .line 201
    :cond_a6
    const-string v2, "uimode"

    .line 202
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    if-eqz v0, :cond_ba

    .line 204
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_ba

    .line 205
    sget-object v0, Lads_mobile_sdk/in0;->g:Lads_mobile_sdk/in0;

    goto :goto_bc

    .line 207
    :cond_ba
    sget-object v0, Lads_mobile_sdk/in0;->c:Lads_mobile_sdk/in0;

    .line 209
    :goto_bc
    invoke-virtual {v1, v0}, Lads_mobile_sdk/wa;->a(Lads_mobile_sdk/in0;)V
    :try_end_bf
    .catch Ljava/lang/RuntimeException; {:try_start_85 .. :try_end_bf} :catch_bf

    .line 214
    :catch_bf
    invoke-virtual {v1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/xa;

    .line 215
    iget-object v1, p0, Lads_mobile_sdk/st1;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 216
    :try_start_c8
    iget-object v2, p0, Lads_mobile_sdk/st1;->q:Lads_mobile_sdk/wa;

    invoke-virtual {v2, v0}, Lads_mobile_sdk/vz0$a;->a(Lads_mobile_sdk/vz0;)Lads_mobile_sdk/vz0$a;

    .line 217
    monitor-exit v1

    goto :goto_d2

    :catchall_cf
    move-exception v0

    .line 218
    monitor-exit v1
    :try_end_d1
    .catchall {:try_start_c8 .. :try_end_d1} :catchall_cf

    throw v0

    :cond_d2
    :goto_d2
    return-void
.end method

.method public final c()V
    .registers 10

    .line 174
    iget-object v0, p0, Lads_mobile_sdk/st1;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_3
    iget-object v1, p0, Lads_mobile_sdk/st1;->q:Lads_mobile_sdk/wa;

    invoke-virtual {v1}, Lads_mobile_sdk/vz0$a;->clone()Lads_mobile_sdk/vz0$a;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/wa;

    .line 176
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_cc

    .line 179
    iget-object v2, p0, Lads_mobile_sdk/st1;->o:Ljava/lang/Object;

    monitor-enter v2

    .line 180
    :try_start_f
    iget-object v0, p0, Lads_mobile_sdk/st1;->r:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 181
    iget-object v3, p0, Lads_mobile_sdk/st1;->r:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    .line 182
    iput-boolean v3, p0, Lads_mobile_sdk/st1;->s:Z

    .line 183
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_c9

    .line 185
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    move v2, v3

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ba

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lads_mobile_sdk/rt1;

    int-to-long v5, v2

    .line 186
    iget-wide v7, p0, Lads_mobile_sdk/st1;->g:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_43

    .line 187
    invoke-virtual {v1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/xa;

    invoke-virtual {p0, v2}, Lads_mobile_sdk/st1;->a(Lads_mobile_sdk/xa;)V

    .line 188
    invoke-virtual {v1}, Lads_mobile_sdk/wa;->h()V

    move v2, v3

    .line 189
    :cond_43
    invoke-static {}, Lads_mobile_sdk/gt1;->v()Lads_mobile_sdk/ft1;

    move-result-object v5

    iget v6, v4, Lads_mobile_sdk/rt1;->a:I

    int-to-long v6, v6

    .line 190
    invoke-virtual {v5, v6, v7}, Lads_mobile_sdk/ft1;->b(J)Lads_mobile_sdk/ft1;

    move-result-object v5

    iget-wide v6, v4, Lads_mobile_sdk/rt1;->b:J

    .line 191
    invoke-virtual {v5, v6, v7}, Lads_mobile_sdk/ft1;->c(J)Lads_mobile_sdk/ft1;

    move-result-object v5

    iget-wide v6, v4, Lads_mobile_sdk/rt1;->e:J

    .line 192
    invoke-virtual {v5, v6, v7}, Lads_mobile_sdk/ft1;->a(J)Lads_mobile_sdk/ft1;

    move-result-object v5

    .line 194
    iget-object v6, v4, Lads_mobile_sdk/rt1;->d:Ljava/lang/String;

    if-eqz v6, :cond_61

    .line 195
    invoke-virtual {v5, v6}, Lads_mobile_sdk/ft1;->a(Ljava/lang/String;)V

    .line 198
    :cond_61
    iget-object v4, v4, Lads_mobile_sdk/rt1;->c:Ljava/lang/Throwable;

    if-nez v4, :cond_68

    .line 199
    sget-object v6, Lads_mobile_sdk/vl3;->c:Lads_mobile_sdk/vl3;

    goto :goto_6a

    :cond_68
    sget-object v6, Lads_mobile_sdk/vl3;->d:Lads_mobile_sdk/vl3;

    :goto_6a
    invoke-virtual {v5, v6}, Lads_mobile_sdk/ft1;->a(Lads_mobile_sdk/vl3;)V

    if-eqz v4, :cond_ad

    .line 202
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lads_mobile_sdk/ft1;->b(Ljava/lang/String;)Lads_mobile_sdk/ft1;

    move-result-object v6

    .line 203
    :try_start_7b
    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_80} :catch_a8

    .line 204
    :try_start_80
    new-instance v8, Ljava/io/PrintWriter;

    invoke-direct {v8, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_85
    .catchall {:try_start_80 .. :try_end_85} :catchall_93

    .line 205
    :try_start_85
    invoke-virtual {v4, v8}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 206
    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_8c
    .catchall {:try_start_85 .. :try_end_8c} :catchall_95

    .line 207
    :try_start_8c
    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_93

    :try_start_8f
    invoke-virtual {v7}, Ljava/io/StringWriter;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_a8

    goto :goto_aa

    :catchall_93
    move-exception v4

    goto :goto_9f

    :catchall_95
    move-exception v4

    .line 208
    :try_start_96
    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_9a

    goto :goto_9e

    :catchall_9a
    move-exception v8

    :try_start_9b
    invoke-virtual {v4, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9e
    throw v4
    :try_end_9f
    .catchall {:try_start_9b .. :try_end_9f} :catchall_93

    :goto_9f
    :try_start_9f
    invoke-virtual {v7}, Ljava/io/StringWriter;->close()V
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_a3

    goto :goto_a7

    :catchall_a3
    move-exception v7

    :try_start_a4
    invoke-virtual {v4, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a7
    throw v4
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a8} :catch_a8

    .line 213
    :catch_a8
    const-string v4, ""

    .line 214
    :goto_aa
    invoke-virtual {v6, v4}, Lads_mobile_sdk/ft1;->c(Ljava/lang/String;)V

    .line 216
    :cond_ad
    invoke-virtual {v5}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v4

    check-cast v4, Lads_mobile_sdk/gt1;

    invoke-virtual {v1, v4}, Lads_mobile_sdk/wa;->a(Lads_mobile_sdk/gt1;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_23

    :cond_ba
    if-lez v2, :cond_c8

    .line 217
    invoke-virtual {v1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/xa;

    invoke-virtual {p0, v0}, Lads_mobile_sdk/st1;->a(Lads_mobile_sdk/xa;)V

    .line 218
    invoke-virtual {v1}, Lads_mobile_sdk/wa;->h()V

    :cond_c8
    return-void

    :catchall_c9
    move-exception v0

    .line 219
    :try_start_ca
    monitor-exit v2
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_c9

    throw v0

    :catchall_cc
    move-exception v1

    .line 220
    :try_start_cd
    monitor-exit v0
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_cc

    throw v1
.end method

###### Class ads_mobile_sdk.st1$$ExternalSyntheticLambda0 (ads_mobile_sdk.st1$$ExternalSyntheticLambda0)
.class public final synthetic Lads_mobile_sdk/st1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/st1;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/st1;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/st1$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/st1;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/st1$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/st1;

    invoke-virtual {v0}, Lads_mobile_sdk/st1;->c()V

    return-void
.end method

###### Class ads_mobile_sdk.st1$$ExternalSyntheticLambda1 (ads_mobile_sdk.st1$$ExternalSyntheticLambda1)
.class public final synthetic Lads_mobile_sdk/st1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/st1;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/st1;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/st1$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/st1;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/st1$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/st1;

    invoke-virtual {v0}, Lads_mobile_sdk/st1;->b()V

    return-void
.end method
