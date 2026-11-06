###### Class ads_mobile_sdk.or3 (ads_mobile_sdk.or3)
.class public final Lads_mobile_sdk/or3;
.super Lads_mobile_sdk/jj3;
.source "SourceFile"


# instance fields
.field public final f:Ljava/util/Map;

.field public final g:Lads_mobile_sdk/yw1;

.field public final h:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/xf;Lads_mobile_sdk/yw1;Ljava/util/Map;Landroid/util/DisplayMetrics;Lads_mobile_sdk/ts3;)V
    .registers 13

    .line 61
    sget-object v0, Lads_mobile_sdk/lq0;->B:Lads_mobile_sdk/lq0;

    .line 64
    invoke-virtual {p5, v0}, Lads_mobile_sdk/ts3;->a(Lads_mobile_sdk/lq0;)Lads_mobile_sdk/qr3;

    move-result-object v6

    .line 65
    const-string v2, "wIGOLfnk1nzTsp6li7k0BsIlCG7uMPqg0o75hlXQhc8b+SsFCnmi/DiYWcMC2l6c"

    const-string v3, "GnZ/3TJK6yLIUnfdHCU3GsIzeXoNAV7fJenlMCT7Qj4="

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lads_mobile_sdk/jj3;-><init>(Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/xf;Lads_mobile_sdk/yw1;Lads_mobile_sdk/qr3;)V

    .line 71
    iput-object v5, v1, Lads_mobile_sdk/or3;->g:Lads_mobile_sdk/yw1;

    .line 72
    iput-object p3, v1, Lads_mobile_sdk/or3;->f:Ljava/util/Map;

    .line 73
    iput-object p4, v1, Lads_mobile_sdk/or3;->h:Landroid/util/DisplayMetrics;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/bh;)V
    .registers 11

    .line 522
    iget-object v0, p0, Lads_mobile_sdk/or3;->f:Ljava/util/Map;

    const-string v1, "oe"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/zc1;

    if-nez v0, :cond_e

    goto/16 :goto_cc

    .line 527
    :cond_e
    iget-wide v1, v0, Lads_mobile_sdk/zc1;->a:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_cc

    iget-object v1, p0, Lads_mobile_sdk/or3;->h:Landroid/util/DisplayMetrics;

    if-eqz v1, :cond_cc

    .line 528
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_cc

    .line 529
    iget-wide v5, v0, Lads_mobile_sdk/zc1;->g:D

    .line 530
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/DisplayMetrics;

    .line 531
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v1, v1

    div-double/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    .line 532
    invoke-virtual {p1, v1, v2}, Lads_mobile_sdk/bh;->a(J)V

    .line 536
    iget v1, v0, Lads_mobile_sdk/zc1;->j:F

    iget v2, v0, Lads_mobile_sdk/zc1;->h:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    iget-object v5, p0, Lads_mobile_sdk/or3;->h:Landroid/util/DisplayMetrics;

    .line 537
    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    float-to-double v5, v5

    div-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    .line 538
    invoke-virtual {p1, v1, v2}, Lads_mobile_sdk/bh;->m(J)Lads_mobile_sdk/bh;

    move-result-object v1

    iget v2, v0, Lads_mobile_sdk/zc1;->k:F

    iget v5, v0, Lads_mobile_sdk/zc1;->i:F

    sub-float/2addr v2, v5

    float-to-double v5, v2

    iget-object v2, p0, Lads_mobile_sdk/or3;->h:Landroid/util/DisplayMetrics;

    .line 539
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v7, v2

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    .line 540
    invoke-virtual {v1, v5, v6}, Lads_mobile_sdk/bh;->n(J)Lads_mobile_sdk/bh;

    move-result-object v1

    iget v2, v0, Lads_mobile_sdk/zc1;->h:F

    float-to-double v5, v2

    iget-object v2, p0, Lads_mobile_sdk/or3;->h:Landroid/util/DisplayMetrics;

    .line 541
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v7, v2

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    .line 542
    invoke-virtual {v1, v5, v6}, Lads_mobile_sdk/bh;->f(J)Lads_mobile_sdk/bh;

    move-result-object v1

    iget v2, v0, Lads_mobile_sdk/zc1;->i:F

    float-to-double v5, v2

    iget-object v2, p0, Lads_mobile_sdk/or3;->h:Landroid/util/DisplayMetrics;

    .line 543
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v7, v2

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    .line 544
    invoke-virtual {v1, v5, v6}, Lads_mobile_sdk/bh;->h(J)V

    .line 546
    iget-object v1, p0, Lads_mobile_sdk/or3;->f:Ljava/util/Map;

    const-string v2, "nv"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    if-nez v1, :cond_8a

    goto :goto_cc

    .line 550
    :cond_8a
    iget v2, v0, Lads_mobile_sdk/zc1;->h:F

    iget v5, v0, Lads_mobile_sdk/zc1;->j:F

    sub-float/2addr v2, v5

    .line 552
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    add-float/2addr v5, v2

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v5, v2

    float-to-double v5, v5

    iget-object v2, p0, Lads_mobile_sdk/or3;->h:Landroid/util/DisplayMetrics;

    .line 553
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v7, v2

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_ab

    .line 554
    invoke-virtual {p1, v5, v6}, Lads_mobile_sdk/bh;->k(J)V

    .line 556
    :cond_ab
    iget v2, v0, Lads_mobile_sdk/zc1;->i:F

    iget v0, v0, Lads_mobile_sdk/zc1;->k:F

    sub-float/2addr v2, v0

    .line 558
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    add-float/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget-object v2, p0, Lads_mobile_sdk/or3;->h:Landroid/util/DisplayMetrics;

    .line 559
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v5, v2

    div-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-eqz v2, :cond_cc

    .line 560
    invoke-virtual {p1, v0, v1}, Lads_mobile_sdk/bh;->l(J)V

    :cond_cc
    :goto_cc
    return-void
.end method

.method public final a(Lads_mobile_sdk/xf;)V
    .registers 5

    .line 353
    iget-object v0, p0, Lads_mobile_sdk/or3;->g:Lads_mobile_sdk/yw1;

    .line 355
    check-cast v0, Lads_mobile_sdk/zw1;

    const-string v1, "ptkaUVDTLfNqaGRtRIraqNrTprMtGmt3IzCNSoNMVOfIZ9Ss/9Vh6PY9L+QVC4mg"

    const-string v2, "knYhVkDhcPjoxZ4MXCS3A9MdUHLgzvVXsVl0JJ2BOEQ="

    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/zw1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 356
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 360
    iget-object v1, p0, Lads_mobile_sdk/or3;->f:Ljava/util/Map;

    const-string v2, "nv"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    .line 362
    iget-object v2, p0, Lads_mobile_sdk/or3;->h:Landroid/util/DisplayMetrics;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 363
    aget-object v1, v0, v1

    if-eqz v1, :cond_3e

    .line 364
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lads_mobile_sdk/xf;->D(J)V

    :cond_3e
    const/4 v1, 0x1

    .line 366
    aget-object v1, v0, v1

    if-eqz v1, :cond_4c

    .line 367
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lads_mobile_sdk/xf;->E(J)V

    :cond_4c
    const/4 v1, 0x2

    .line 369
    aget-object v1, v0, v1

    if-eqz v1, :cond_5a

    .line 370
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lads_mobile_sdk/xf;->B(J)V

    :cond_5a
    const/4 v1, 0x3

    .line 372
    aget-object v1, v0, v1

    if-eqz v1, :cond_68

    .line 373
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lads_mobile_sdk/xf;->A(J)V

    :cond_68
    const/4 v1, 0x4

    .line 375
    aget-object v0, v0, v1

    if-eqz v0, :cond_76

    .line 376
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lads_mobile_sdk/xf;->x(J)V

    :cond_76
    return-void
.end method

.method public final a(Ljava/lang/reflect/Method;Lads_mobile_sdk/xf;)V
    .registers 10

    .line 74
    iget-object v0, p0, Lads_mobile_sdk/or3;->f:Ljava/util/Map;

    const-string v1, "nv"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    .line 77
    :try_start_a
    const-string v1, ""

    iget-object v2, p0, Lads_mobile_sdk/or3;->h:Landroid/util/DisplayMetrics;

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 78
    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 80
    invoke-static {}, Lads_mobile_sdk/ch;->v()Lads_mobile_sdk/bh;

    move-result-object v1

    const/4 v2, 0x0

    .line 81
    aget-object v2, p1, v2

    if-eqz v2, :cond_45

    const/4 v3, 0x1

    aget-object v4, p1, v3

    if-eqz v4, :cond_45

    .line 82
    check-cast v2, Ljava/lang/Long;

    .line 83
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lads_mobile_sdk/bh;->g(J)Lads_mobile_sdk/bh;

    move-result-object v2

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/Long;

    .line 84
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lads_mobile_sdk/bh;->i(J)Lads_mobile_sdk/bh;

    goto :goto_45

    :catchall_42
    move-exception p1

    goto/16 :goto_106

    :cond_45
    :goto_45
    const/4 v2, 0x2

    .line 86
    aget-object v2, p1, v2

    if-eqz v2, :cond_53

    .line 87
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lads_mobile_sdk/bh;->e(J)V

    :cond_53
    const/4 v2, 0x3

    .line 89
    aget-object v2, p1, v2

    if-eqz v2, :cond_61

    .line 90
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lads_mobile_sdk/bh;->d(J)V

    :cond_61
    const/4 v2, 0x4

    .line 92
    aget-object v2, p1, v2

    if-eqz v2, :cond_6f

    .line 93
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lads_mobile_sdk/bh;->c(J)V

    :cond_6f
    const/4 v2, 0x5

    .line 95
    aget-object v2, p1, v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_88

    .line 97
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_83

    sget-object v2, Lads_mobile_sdk/rh;->c:Lads_mobile_sdk/rh;

    goto :goto_85

    .line 98
    :cond_83
    sget-object v2, Lads_mobile_sdk/rh;->b:Lads_mobile_sdk/rh;

    .line 99
    :goto_85
    invoke-virtual {v1, v2}, Lads_mobile_sdk/bh;->b(Lads_mobile_sdk/rh;)V

    :cond_88
    const/4 v2, 0x6

    .line 102
    aget-object v2, p1, v2

    if-eqz v2, :cond_96

    .line 103
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lads_mobile_sdk/bh;->b(J)V

    :cond_96
    const/4 v2, 0x7

    .line 105
    aget-object v2, p1, v2

    if-eqz v2, :cond_a4

    .line 106
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lads_mobile_sdk/bh;->j(J)V

    :cond_a4
    const/16 v2, 0x8

    .line 108
    aget-object p1, p1, v2

    if-eqz p1, :cond_bc

    .line 110
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-eqz p1, :cond_b7

    sget-object p1, Lads_mobile_sdk/rh;->c:Lads_mobile_sdk/rh;

    goto :goto_b9

    .line 111
    :cond_b7
    sget-object p1, Lads_mobile_sdk/rh;->b:Lads_mobile_sdk/rh;

    .line 112
    :goto_b9
    invoke-virtual {v1, p1}, Lads_mobile_sdk/bh;->a(Lads_mobile_sdk/rh;)V

    .line 116
    :cond_bc
    monitor-enter p2
    :try_end_bd
    .catchall {:try_start_a .. :try_end_bd} :catchall_42

    .line 117
    :try_start_bd
    invoke-virtual {p0, p2}, Lads_mobile_sdk/or3;->a(Lads_mobile_sdk/xf;)V

    .line 118
    iget-object p1, p0, Lads_mobile_sdk/or3;->f:Ljava/util/Map;

    const-string v2, "oe"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/zc1;

    if-nez p1, :cond_cd

    goto :goto_f4

    .line 123
    :cond_cd
    iget-wide v5, p1, Lads_mobile_sdk/zc1;->a:J

    cmp-long v2, v5, v3

    if-lez v2, :cond_d9

    .line 124
    invoke-virtual {p2, v5, v6}, Lads_mobile_sdk/xf;->y(J)V

    goto :goto_d9

    :catchall_d7
    move-exception p1

    goto :goto_104

    .line 127
    :cond_d9
    :goto_d9
    iget-wide v5, p1, Lads_mobile_sdk/zc1;->b:J

    cmp-long v2, v5, v3

    if-lez v2, :cond_e2

    .line 128
    invoke-virtual {p2, v5, v6}, Lads_mobile_sdk/xf;->z(J)V

    .line 130
    :cond_e2
    iget-wide v5, p1, Lads_mobile_sdk/zc1;->c:J

    cmp-long v2, v5, v3

    if-lez v2, :cond_eb

    .line 131
    invoke-virtual {p2, v5, v6}, Lads_mobile_sdk/xf;->C(J)V

    .line 133
    :cond_eb
    iget-wide v5, p1, Lads_mobile_sdk/zc1;->d:J

    cmp-long p1, v5, v3

    if-lez p1, :cond_f4

    .line 134
    invoke-virtual {p2, v5, v6}, Lads_mobile_sdk/xf;->w(J)V

    .line 135
    :cond_f4
    :goto_f4
    invoke-virtual {p0, v1}, Lads_mobile_sdk/or3;->a(Lads_mobile_sdk/bh;)V

    .line 136
    invoke-virtual {p2, v1}, Lads_mobile_sdk/xf;->a(Lads_mobile_sdk/bh;)V

    .line 137
    invoke-virtual {p0, p2}, Lads_mobile_sdk/or3;->b(Lads_mobile_sdk/xf;)V

    .line 138
    monitor-exit p2
    :try_end_fe
    .catchall {:try_start_bd .. :try_end_fe} :catchall_d7

    if-eqz v0, :cond_103

    .line 141
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_103
    return-void

    .line 142
    :goto_104
    :try_start_104
    monitor-exit p2
    :try_end_105
    .catchall {:try_start_104 .. :try_end_105} :catchall_d7

    :try_start_105
    throw p1
    :try_end_106
    .catchall {:try_start_105 .. :try_end_106} :catchall_42

    :goto_106
    if-eqz v0, :cond_10b

    .line 145
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 147
    :cond_10b
    throw p1
.end method

.method public final b(Lads_mobile_sdk/xf;)V
    .registers 10

    .line 188
    iget-object v0, p0, Lads_mobile_sdk/or3;->f:Ljava/util/Map;

    const-string v1, "ro"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/ad1;

    if-eqz v0, :cond_5d

    .line 189
    iget-object v1, p0, Lads_mobile_sdk/or3;->h:Landroid/util/DisplayMetrics;

    if-eqz v1, :cond_5d

    .line 190
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5d

    const/4 v1, 0x0

    .line 191
    :goto_18
    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    if-gt v1, v2, :cond_5d

    .line 192
    aget-object v2, v0, v1

    .line 194
    invoke-static {}, Lads_mobile_sdk/ch;->v()Lads_mobile_sdk/bh;

    move-result-object v3

    iget v4, v2, Lads_mobile_sdk/ad1;->a:F

    float-to-double v4, v4

    iget-object v6, p0, Lads_mobile_sdk/or3;->h:Landroid/util/DisplayMetrics;

    .line 195
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/DisplayMetrics;

    .line 196
    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    float-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 197
    invoke-virtual {v3, v4, v5}, Lads_mobile_sdk/bh;->g(J)Lads_mobile_sdk/bh;

    move-result-object v3

    iget v2, v2, Lads_mobile_sdk/ad1;->b:F

    float-to-double v4, v2

    iget-object v2, p0, Lads_mobile_sdk/or3;->h:Landroid/util/DisplayMetrics;

    .line 198
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/DisplayMetrics;

    .line 199
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v6, v2

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 200
    invoke-virtual {v3, v4, v5}, Lads_mobile_sdk/bh;->i(J)Lads_mobile_sdk/bh;

    move-result-object v2

    .line 201
    invoke-virtual {v2}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/ch;

    .line 202
    invoke-virtual {p1, v2}, Lads_mobile_sdk/xf;->a(Lads_mobile_sdk/ch;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_5d
    return-void
.end method
