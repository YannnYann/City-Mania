###### Class ads_mobile_sdk.bv2 (ads_mobile_sdk.bv2)
.class public final Lads_mobile_sdk/bv2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/xu2;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/ExecutorService;

.field public final c:Lads_mobile_sdk/n71;

.field public final d:Ljava/lang/String;

.field public final e:Lads_mobile_sdk/j61;

.field public final f:Ljava/lang/String;

.field public final g:Lads_mobile_sdk/ts3;

.field public final h:Lads_mobile_sdk/pv2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lads_mobile_sdk/na;Lads_mobile_sdk/n71;Lads_mobile_sdk/ts3;Lads_mobile_sdk/pv2;)V
    .registers 7

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lads_mobile_sdk/bv2;->a:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lads_mobile_sdk/bv2;->b:Ljava/util/concurrent/ExecutorService;

    .line 65
    iput-object p4, p0, Lads_mobile_sdk/bv2;->c:Lads_mobile_sdk/n71;

    .line 66
    iput-object p5, p0, Lads_mobile_sdk/bv2;->g:Lads_mobile_sdk/ts3;

    .line 67
    iput-object p6, p0, Lads_mobile_sdk/bv2;->h:Lads_mobile_sdk/pv2;

    .line 69
    invoke-virtual {p3}, Lads_mobile_sdk/na;->M()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/bv2;->d:Ljava/lang/String;

    .line 70
    invoke-virtual {p3}, Lads_mobile_sdk/na;->L()Lads_mobile_sdk/ma;

    move-result-object p1

    invoke-static {p1}, Lads_mobile_sdk/bv2;->a(Lads_mobile_sdk/ma;)Lads_mobile_sdk/j61;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/bv2;->e:Lads_mobile_sdk/j61;

    .line 71
    invoke-virtual {p3}, Lads_mobile_sdk/na;->S()Lads_mobile_sdk/uv2;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/uv2;->A()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/bv2;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Lads_mobile_sdk/ma;)Lads_mobile_sdk/j61;
    .registers 1

    .line 187
    invoke-virtual {p0}, Lads_mobile_sdk/ma;->getNumber()I

    move-result p0

    invoke-static {p0}, Lads_mobile_sdk/j61;->a(I)Lads_mobile_sdk/j61;

    move-result-object p0

    if-eqz p0, :cond_b

    return-object p0

    .line 188
    :cond_b
    sget-object p0, Lads_mobile_sdk/j61;->b:Lads_mobile_sdk/j61;

    return-object p0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/z61;)Lads_mobile_sdk/pr0;
    .registers 9

    .line 436
    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/p71;

    .line 437
    iget v0, v0, Lads_mobile_sdk/p71;->a:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_36

    .line 438
    iget-object p1, p0, Lads_mobile_sdk/bv2;->g:Lads_mobile_sdk/ts3;

    sget-object v0, Lads_mobile_sdk/lq0;->b:Lads_mobile_sdk/lq0;

    new-instance v6, Ljava/lang/String;

    .line 440
    invoke-static {}, Lads_mobile_sdk/iy3;->b()[B

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 441
    iget-object p1, p1, Lads_mobile_sdk/ts3;->a:Lads_mobile_sdk/qt1;

    .line 442
    move-object v1, p1

    check-cast v1, Lads_mobile_sdk/st1;

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/16 v2, 0x4e22

    invoke-virtual/range {v1 .. v6}, Lads_mobile_sdk/st1;->a(IJLjava/lang/Throwable;Ljava/lang/String;)V

    .line 443
    sget-object p1, Lads_mobile_sdk/ul3;->h:Lads_mobile_sdk/ul3;

    .line 444
    invoke-static {}, Lads_mobile_sdk/pr0;->z()Lads_mobile_sdk/or0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lads_mobile_sdk/or0;->a(Lads_mobile_sdk/ul3;)Lads_mobile_sdk/or0;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/pr0;

    return-object p1

    .line 445
    :cond_36
    :try_start_36
    check-cast p1, Lads_mobile_sdk/p71;

    .line 446
    new-instance v0, Ljava/lang/String;

    iget-object p1, p1, Lads_mobile_sdk/p71;->b:[B

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 447
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 448
    iget-object p1, p0, Lads_mobile_sdk/bv2;->g:Lads_mobile_sdk/ts3;

    sget-object v0, Lads_mobile_sdk/lq0;->Z2:Lads_mobile_sdk/lq0;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    .line 449
    sget-object p1, Lads_mobile_sdk/ul3;->i:Lads_mobile_sdk/ul3;

    .line 450
    invoke-static {}, Lads_mobile_sdk/pr0;->z()Lads_mobile_sdk/or0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lads_mobile_sdk/or0;->a(Lads_mobile_sdk/ul3;)Lads_mobile_sdk/or0;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/pr0;

    return-object p1

    :catchall_5d
    move-exception v0

    move-object p1, v0

    move-object v4, p1

    goto/16 :goto_fb

    :cond_62
    const/4 p1, 0x1

    .line 451
    invoke-static {v0, p1}, Lads_mobile_sdk/hi;->a(Ljava/lang/String;Z)[B

    move-result-object p1

    .line 454
    invoke-static {}, Lads_mobile_sdk/er0;->b()Lads_mobile_sdk/er0;

    move-result-object v0

    .line 455
    invoke-static {p1, v0}, Lads_mobile_sdk/db;->a([BLads_mobile_sdk/er0;)Lads_mobile_sdk/db;

    move-result-object p1

    .line 458
    invoke-virtual {p1}, Lads_mobile_sdk/db;->w()Lads_mobile_sdk/eh2;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/eh2;->y()Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 459
    invoke-virtual {p1}, Lads_mobile_sdk/db;->w()Lads_mobile_sdk/eh2;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/eh2;->z()Z

    move-result v0

    if-nez v0, :cond_84

    goto :goto_e3

    .line 464
    :cond_84
    iget-object v0, p0, Lads_mobile_sdk/bv2;->h:Lads_mobile_sdk/pv2;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/pv2;->a(Lads_mobile_sdk/db;)Z

    move-result v0

    if-nez v0, :cond_a4

    .line 465
    iget-object p1, p0, Lads_mobile_sdk/bv2;->g:Lads_mobile_sdk/ts3;

    sget-object v0, Lads_mobile_sdk/lq0;->b3:Lads_mobile_sdk/lq0;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    .line 466
    sget-object p1, Lads_mobile_sdk/ul3;->m:Lads_mobile_sdk/ul3;

    .line 467
    invoke-static {}, Lads_mobile_sdk/pr0;->z()Lads_mobile_sdk/or0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lads_mobile_sdk/or0;->a(Lads_mobile_sdk/ul3;)Lads_mobile_sdk/or0;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/pr0;

    return-object p1

    .line 468
    :cond_a4
    invoke-static {}, Lads_mobile_sdk/pr0;->z()Lads_mobile_sdk/or0;

    move-result-object v0

    .line 470
    invoke-static {}, Lads_mobile_sdk/iv2;->A()Lads_mobile_sdk/gv2;

    move-result-object v1

    .line 471
    invoke-virtual {p1}, Lads_mobile_sdk/db;->w()Lads_mobile_sdk/eh2;

    move-result-object v2

    invoke-virtual {v2}, Lads_mobile_sdk/eh2;->x()Lads_mobile_sdk/hh2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lads_mobile_sdk/gv2;->a(Lads_mobile_sdk/hh2;)Lads_mobile_sdk/gv2;

    move-result-object v1

    .line 472
    invoke-virtual {p1}, Lads_mobile_sdk/db;->v()Lads_mobile_sdk/yh1$c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lads_mobile_sdk/gv2;->a(Lads_mobile_sdk/yh1$c;)Lads_mobile_sdk/gv2;

    move-result-object v1

    .line 473
    invoke-virtual {v1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/iv2;

    .line 474
    invoke-virtual {v0, v1}, Lads_mobile_sdk/or0;->a(Lads_mobile_sdk/iv2;)Lads_mobile_sdk/or0;

    move-result-object v0

    .line 479
    invoke-virtual {p1}, Lads_mobile_sdk/db;->w()Lads_mobile_sdk/eh2;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/eh2;->w()Lads_mobile_sdk/du;

    move-result-object p1

    invoke-virtual {v0, p1}, Lads_mobile_sdk/or0;->a(Lads_mobile_sdk/du;)Lads_mobile_sdk/or0;

    move-result-object p1

    sget-object v0, Lads_mobile_sdk/ul3;->c:Lads_mobile_sdk/ul3;

    .line 480
    invoke-virtual {p1, v0}, Lads_mobile_sdk/or0;->a(Lads_mobile_sdk/ul3;)Lads_mobile_sdk/or0;

    move-result-object p1

    .line 481
    invoke-virtual {p1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/pr0;

    return-object p1

    .line 482
    :cond_e3
    :goto_e3
    iget-object p1, p0, Lads_mobile_sdk/bv2;->g:Lads_mobile_sdk/ts3;

    sget-object v0, Lads_mobile_sdk/lq0;->Z2:Lads_mobile_sdk/lq0;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    .line 483
    sget-object p1, Lads_mobile_sdk/ul3;->i:Lads_mobile_sdk/ul3;

    .line 484
    invoke-static {}, Lads_mobile_sdk/pr0;->z()Lads_mobile_sdk/or0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lads_mobile_sdk/or0;->a(Lads_mobile_sdk/ul3;)Lads_mobile_sdk/or0;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/pr0;
    :try_end_fa
    .catchall {:try_start_36 .. :try_end_fa} :catchall_5d

    return-object p1

    .line 485
    :goto_fb
    iget-object p1, p0, Lads_mobile_sdk/bv2;->g:Lads_mobile_sdk/ts3;

    sget-object v0, Lads_mobile_sdk/lq0;->b:Lads_mobile_sdk/lq0;

    .line 486
    iget-object p1, p1, Lads_mobile_sdk/ts3;->a:Lads_mobile_sdk/qt1;

    .line 487
    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/st1;

    const-wide/16 v2, -0x1

    const/4 v5, 0x0

    const/16 v1, 0x4e24

    invoke-virtual/range {v0 .. v5}, Lads_mobile_sdk/st1;->a(IJLjava/lang/Throwable;Ljava/lang/String;)V

    .line 488
    sget-object p1, Lads_mobile_sdk/ul3;->g:Lads_mobile_sdk/ul3;

    .line 489
    invoke-static {}, Lads_mobile_sdk/pr0;->z()Lads_mobile_sdk/or0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lads_mobile_sdk/or0;->a(Lads_mobile_sdk/ul3;)Lads_mobile_sdk/or0;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/pr0;

    return-object p1
.end method

.method public final a(Ljava/net/SocketException;)Lads_mobile_sdk/pr0;
    .registers 3

    .line 665
    iget-object p1, p0, Lads_mobile_sdk/bv2;->g:Lads_mobile_sdk/ts3;

    sget-object v0, Lads_mobile_sdk/lq0;->d3:Lads_mobile_sdk/lq0;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    .line 666
    sget-object p1, Lads_mobile_sdk/ul3;->n:Lads_mobile_sdk/ul3;

    .line 667
    invoke-static {}, Lads_mobile_sdk/pr0;->z()Lads_mobile_sdk/or0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lads_mobile_sdk/or0;->a(Lads_mobile_sdk/ul3;)Lads_mobile_sdk/or0;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/pr0;

    return-object p1
.end method

.method public final a(Ljava/net/UnknownHostException;)Lads_mobile_sdk/pr0;
    .registers 3

    .line 572
    iget-object p1, p0, Lads_mobile_sdk/bv2;->g:Lads_mobile_sdk/ts3;

    sget-object v0, Lads_mobile_sdk/lq0;->c3:Lads_mobile_sdk/lq0;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    .line 573
    sget-object p1, Lads_mobile_sdk/ul3;->n:Lads_mobile_sdk/ul3;

    .line 574
    invoke-static {}, Lads_mobile_sdk/pr0;->z()Lads_mobile_sdk/or0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lads_mobile_sdk/or0;->a(Lads_mobile_sdk/ul3;)Lads_mobile_sdk/or0;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/pr0;

    return-object p1
.end method

.method public final a()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 8

    .line 264
    iget-object v0, p0, Lads_mobile_sdk/bv2;->g:Lads_mobile_sdk/ts3;

    sget-object v1, Lads_mobile_sdk/lq0;->X2:Lads_mobile_sdk/lq0;

    iget-object v2, p0, Lads_mobile_sdk/bv2;->c:Lads_mobile_sdk/n71;

    .line 265
    invoke-static {}, Lads_mobile_sdk/ab;->v()Lads_mobile_sdk/za;

    move-result-object v3

    .line 266
    invoke-static {}, Lads_mobile_sdk/iy3;->b()[B

    move-result-object v4

    invoke-static {v4}, Lads_mobile_sdk/du;->a([B)Lads_mobile_sdk/du;

    move-result-object v4

    invoke-virtual {v3, v4}, Lads_mobile_sdk/za;->a(Lads_mobile_sdk/du;)Lads_mobile_sdk/za;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    int-to-long v4, v4

    .line 267
    invoke-virtual {v3, v4, v5}, Lads_mobile_sdk/za;->a(J)Lads_mobile_sdk/za;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 268
    invoke-virtual {v3, v4}, Lads_mobile_sdk/za;->c(Ljava/lang/String;)Lads_mobile_sdk/za;

    move-result-object v3

    iget-object v4, p0, Lads_mobile_sdk/bv2;->a:Landroid/content/Context;

    .line 269
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lads_mobile_sdk/za;->a(Ljava/lang/String;)Lads_mobile_sdk/za;

    move-result-object v3

    const/4 v4, 0x0

    .line 270
    :try_start_2e
    iget-object v5, p0, Lads_mobile_sdk/bv2;->a:Landroid/content/Context;

    .line 271
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lads_mobile_sdk/bv2;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 272
    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_40
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2e .. :try_end_40} :catch_41

    goto :goto_42

    :catch_41
    const/4 v5, -0x1

    :goto_42
    int-to-long v5, v5

    .line 273
    invoke-virtual {v3, v5, v6}, Lads_mobile_sdk/za;->b(J)Lads_mobile_sdk/za;

    move-result-object v3

    iget-object v5, p0, Lads_mobile_sdk/bv2;->d:Ljava/lang/String;

    .line 274
    invoke-virtual {v3, v5}, Lads_mobile_sdk/za;->b(Ljava/lang/String;)Lads_mobile_sdk/za;

    move-result-object v3

    .line 275
    invoke-virtual {v3}, Lads_mobile_sdk/za;->h()Lads_mobile_sdk/za;

    move-result-object v3

    iget-object v5, p0, Lads_mobile_sdk/bv2;->e:Lads_mobile_sdk/j61;

    .line 276
    invoke-virtual {v3, v5}, Lads_mobile_sdk/za;->a(Lads_mobile_sdk/j61;)Lads_mobile_sdk/za;

    move-result-object v3

    .line 277
    invoke-virtual {v3}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/ab;

    .line 279
    invoke-virtual {v3}, Lads_mobile_sdk/f;->c()[B

    move-result-object v3

    const/4 v5, 0x1

    .line 280
    invoke-static {v5}, Lads_mobile_sdk/hi;->a(Z)Lcom/google/common/io/BaseEncoding;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v3

    .line 281
    iget-object v5, p0, Lads_mobile_sdk/bv2;->f:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 282
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 283
    const-string v6, "aspq"

    invoke-virtual {v5, v6, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 284
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 285
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 286
    check-cast v2, Lads_mobile_sdk/q71;

    .line 287
    new-array v5, v4, [B

    const/4 v6, 0x0

    .line 288
    invoke-virtual {v2, v3, v4, v5, v6}, Lads_mobile_sdk/q71;->a(Ljava/lang/String;Z[BLjava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 289
    invoke-static {v2}, Lcom/google/common/util/concurrent/FluentFuture;->from(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v2

    new-instance v3, Lads_mobile_sdk/bv2$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lads_mobile_sdk/bv2$$ExternalSyntheticLambda0;-><init>(Lads_mobile_sdk/bv2;)V

    iget-object v4, p0, Lads_mobile_sdk/bv2;->b:Ljava/util/concurrent/ExecutorService;

    .line 290
    invoke-virtual {v2, v3, v4}, Lcom/google/common/util/concurrent/FluentFuture;->transform(Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v2

    new-instance v3, Lads_mobile_sdk/bv2$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lads_mobile_sdk/bv2$$ExternalSyntheticLambda1;-><init>(Lads_mobile_sdk/bv2;)V

    .line 298
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 299
    const-class v5, Ljava/net/UnknownHostException;

    invoke-virtual {v2, v5, v3, v4}, Lcom/google/common/util/concurrent/FluentFuture;->catching(Ljava/lang/Class;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v2

    new-instance v3, Lads_mobile_sdk/bv2$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lads_mobile_sdk/bv2$$ExternalSyntheticLambda2;-><init>(Lads_mobile_sdk/bv2;)V

    .line 314
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 315
    const-class v5, Ljava/net/SocketException;

    invoke-virtual {v2, v5, v3, v4}, Lcom/google/common/util/concurrent/FluentFuture;->catching(Ljava/lang/Class;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v2

    .line 316
    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/ts3;->a(Lads_mobile_sdk/lq0;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

###### Class ads_mobile_sdk.bv2$$ExternalSyntheticLambda0 (ads_mobile_sdk.bv2$$ExternalSyntheticLambda0)
.class public final synthetic Lads_mobile_sdk/bv2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/bv2;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/bv2;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/bv2$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/bv2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/bv2$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/bv2;

    check-cast p1, Lads_mobile_sdk/z61;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/bv2;->a(Lads_mobile_sdk/z61;)Lads_mobile_sdk/pr0;

    move-result-object p1

    return-object p1
.end method

###### Class ads_mobile_sdk.bv2$$ExternalSyntheticLambda1 (ads_mobile_sdk.bv2$$ExternalSyntheticLambda1)
.class public final synthetic Lads_mobile_sdk/bv2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/bv2;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/bv2;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/bv2$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/bv2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/bv2$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/bv2;

    check-cast p1, Ljava/net/UnknownHostException;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/bv2;->a(Ljava/net/UnknownHostException;)Lads_mobile_sdk/pr0;

    move-result-object p1

    return-object p1
.end method

###### Class ads_mobile_sdk.bv2$$ExternalSyntheticLambda2 (ads_mobile_sdk.bv2$$ExternalSyntheticLambda2)
.class public final synthetic Lads_mobile_sdk/bv2$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/bv2;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/bv2;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/bv2$$ExternalSyntheticLambda2;->f$0:Lads_mobile_sdk/bv2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/bv2$$ExternalSyntheticLambda2;->f$0:Lads_mobile_sdk/bv2;

    check-cast p1, Ljava/net/SocketException;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/bv2;->a(Ljava/net/SocketException;)Lads_mobile_sdk/pr0;

    move-result-object p1

    return-object p1
.end method
