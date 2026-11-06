###### Class ads_mobile_sdk.bd1 (ads_mobile_sdk.bd1)
.class public final Lads_mobile_sdk/bd1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayDeque;

.field public b:Landroid/view/InputEvent;

.field public c:Landroid/view/MotionEvent;

.field public d:Lads_mobile_sdk/zc1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/bd1;->a:Ljava/util/ArrayDeque;

    .line 39
    new-instance v0, Lads_mobile_sdk/zc1;

    invoke-direct {v0}, Lads_mobile_sdk/zc1;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/bd1;->d:Lads_mobile_sdk/zc1;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/view/InputEvent;)V
    .registers 11

    monitor-enter p0

    .line 50
    :try_start_1
    iput-object p1, p0, Lads_mobile_sdk/bd1;->b:Landroid/view/InputEvent;

    .line 51
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_df

    .line 52
    check-cast p1, Landroid/view/MotionEvent;

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 54
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/bd1;->c:Landroid/view/MotionEvent;

    goto :goto_1a

    :catchall_17
    move-exception p1

    goto/16 :goto_e1

    .line 56
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lads_mobile_sdk/bd1;->d:Lads_mobile_sdk/zc1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const-wide/16 v3, 0x1

    if-eqz v2, :cond_98

    if-eq v2, v1, :cond_6b

    const/4 v5, 0x2

    if-eq v2, v5, :cond_38

    const/4 v1, 0x3

    if-eq v2, v1, :cond_31

    goto/16 :goto_c7

    .line 69
    :cond_31
    iget-wide v1, v0, Lads_mobile_sdk/zc1;->d:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lads_mobile_sdk/zc1;->d:J

    goto/16 :goto_c7

    .line 72
    :cond_38
    iget-wide v2, v0, Lads_mobile_sdk/zc1;->b:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    add-int/2addr v4, v1

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lads_mobile_sdk/zc1;->b:J

    .line 73
    iget-wide v1, v0, Lads_mobile_sdk/zc1;->e:D

    iget-wide v3, v0, Lads_mobile_sdk/zc1;->f:D

    iget-wide v5, v0, Lads_mobile_sdk/zc1;->g:D

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-double v7, v7

    sub-double/2addr v7, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-double v1, v1

    sub-double/2addr v1, v3

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    add-double/2addr v1, v5

    .line 75
    iput-wide v1, v0, Lads_mobile_sdk/zc1;->g:D

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, v0, Lads_mobile_sdk/zc1;->e:D

    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, v0, Lads_mobile_sdk/zc1;->f:D

    goto :goto_c7

    .line 80
    :cond_6b
    iget-wide v1, v0, Lads_mobile_sdk/zc1;->c:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lads_mobile_sdk/zc1;->c:J

    .line 81
    iget-wide v1, v0, Lads_mobile_sdk/zc1;->e:D

    iget-wide v3, v0, Lads_mobile_sdk/zc1;->f:D

    iget-wide v5, v0, Lads_mobile_sdk/zc1;->g:D

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-double v7, v7

    sub-double/2addr v7, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-double v1, v1

    sub-double/2addr v1, v3

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    add-double/2addr v1, v5

    .line 83
    iput-wide v1, v0, Lads_mobile_sdk/zc1;->g:D

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, v0, Lads_mobile_sdk/zc1;->e:D

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, v0, Lads_mobile_sdk/zc1;->f:D

    goto :goto_c7

    .line 86
    :cond_98
    iget-wide v1, v0, Lads_mobile_sdk/zc1;->a:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lads_mobile_sdk/zc1;->a:J

    const-wide/16 v1, 0x0

    .line 87
    iput-wide v1, v0, Lads_mobile_sdk/zc1;->g:D

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, v0, Lads_mobile_sdk/zc1;->e:D

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, v0, Lads_mobile_sdk/zc1;->f:D

    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lads_mobile_sdk/zc1;->h:F

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lads_mobile_sdk/zc1;->i:F

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, v0, Lads_mobile_sdk/zc1;->j:F

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Lads_mobile_sdk/zc1;->k:F

    .line 94
    :goto_c7
    iget-object v0, p0, Lads_mobile_sdk/bd1;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_d5

    .line 95
    iget-object v0, p0, Lads_mobile_sdk/bd1;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 97
    :cond_d5
    iget-object v0, p0, Lads_mobile_sdk/bd1;->a:Ljava/util/ArrayDeque;

    new-instance v1, Lads_mobile_sdk/ad1;

    invoke-direct {v1, p1}, Lads_mobile_sdk/ad1;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_df
    .catchall {:try_start_1 .. :try_end_df} :catchall_17

    :cond_df
    monitor-exit p0

    return-void

    :goto_e1
    :try_start_e1
    monitor-exit p0
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_17

    throw p1
.end method

.method public final declared-synchronized a(Ljava/util/HashMap;)V
    .registers 4

    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lads_mobile_sdk/bd1;->b:Landroid/view/InputEvent;

    if-eqz v0, :cond_d

    .line 3
    const-string v1, "evt"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :catchall_b
    move-exception p1

    goto :goto_41

    .line 5
    :cond_d
    :goto_d
    iget-object v0, p0, Lads_mobile_sdk/bd1;->c:Landroid/view/MotionEvent;

    if-eqz v0, :cond_16

    .line 6
    const-string v1, "nv"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_16
    iget-object v0, p0, Lads_mobile_sdk/bd1;->d:Lads_mobile_sdk/zc1;

    const-string v1, "oe"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lads_mobile_sdk/bd1;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    new-array v1, v1, [Lads_mobile_sdk/ad1;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ro"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance p1, Lads_mobile_sdk/zc1;

    invoke-direct {p1}, Lads_mobile_sdk/zc1;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/bd1;->d:Lads_mobile_sdk/zc1;

    .line 12
    iget-object p1, p0, Lads_mobile_sdk/bd1;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lads_mobile_sdk/bd1;->c:Landroid/view/MotionEvent;

    .line 15
    iput-object p1, p0, Lads_mobile_sdk/bd1;->b:Landroid/view/InputEvent;
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_b

    monitor-exit p0

    return-void

    :goto_41
    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_b

    throw p1
.end method
