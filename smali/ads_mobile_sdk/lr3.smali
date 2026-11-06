###### Class ads_mobile_sdk.lr3 (ads_mobile_sdk.lr3)
.class public final Lads_mobile_sdk/lr3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/bt3;


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public final i:Lads_mobile_sdk/tx;

.field public final j:J


# direct methods
.method public constructor <init>(Lads_mobile_sdk/tx;)V
    .registers 4

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 204
    iput-wide v0, p0, Lads_mobile_sdk/lr3;->a:J

    .line 205
    iput-wide v0, p0, Lads_mobile_sdk/lr3;->b:J

    .line 206
    iput-wide v0, p0, Lads_mobile_sdk/lr3;->c:J

    .line 207
    iput-wide v0, p0, Lads_mobile_sdk/lr3;->d:J

    .line 208
    iput-wide v0, p0, Lads_mobile_sdk/lr3;->e:J

    .line 209
    iput-wide v0, p0, Lads_mobile_sdk/lr3;->f:J

    .line 210
    iput-wide v0, p0, Lads_mobile_sdk/lr3;->g:J

    .line 211
    iput-wide v0, p0, Lads_mobile_sdk/lr3;->h:J

    .line 375
    iput-object p1, p0, Lads_mobile_sdk/lr3;->i:Lads_mobile_sdk/tx;

    .line 376
    invoke-virtual {p0}, Lads_mobile_sdk/lr3;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lads_mobile_sdk/lr3;->j:J

    return-void
.end method

.method public static a(Landroid/view/View;)Z
    .registers 5

    const/4 v0, 0x0

    .line 270
    :try_start_1
    invoke-static {p0}, Lads_mobile_sdk/lr3;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    .line 271
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getAdConfiguration"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 272
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "adType"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v2, "adTypeToString"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 275
    const-string v1, "INTERSTITIAL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5f

    const-string v1, "APP_OPEN"

    .line 276
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5f

    const-string v1, "REWARDED"

    .line 277
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_5b
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_5b} :catch_61
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_5b} :catch_61
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_5b} :catch_61

    if-eqz p0, :cond_5e

    goto :goto_5f

    :cond_5e
    return v0

    :cond_5f
    :goto_5f
    const/4 p0, 0x1

    return p0

    :catch_61
    return v0
.end method

.method public static b(Landroid/view/View;)Landroid/view/View;
    .registers 3

    .line 164
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DebugGestureViewWrapper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 165
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    :cond_17
    return-object p0
.end method


# virtual methods
.method public final a()J
    .registers 3

    .line 124
    iget-object v0, p0, Lads_mobile_sdk/lr3;->i:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final declared-synchronized a(Ljava/util/HashMap;)V
    .registers 4

    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lads_mobile_sdk/lr3;->a:J

    iput-wide v0, p0, Lads_mobile_sdk/lr3;->b:J

    .line 3
    invoke-virtual {p0}, Lads_mobile_sdk/lr3;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lads_mobile_sdk/lr3;->a:J

    .line 4
    invoke-virtual {p0, p1}, Lads_mobile_sdk/lr3;->c(Ljava/util/HashMap;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public final declared-synchronized a(Ljava/util/HashMap;Landroid/content/Context;Landroid/view/View;)V
    .registers 9

    monitor-enter p0

    .line 6
    :try_start_1
    iget-wide v0, p0, Lads_mobile_sdk/lr3;->c:J

    iput-wide v0, p0, Lads_mobile_sdk/lr3;->d:J

    .line 7
    invoke-virtual {p0}, Lads_mobile_sdk/lr3;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lads_mobile_sdk/lr3;->c:J

    .line 9
    iget-wide v0, p0, Lads_mobile_sdk/lr3;->e:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_19

    .line 10
    iput-wide v0, p0, Lads_mobile_sdk/lr3;->f:J

    goto :goto_19

    :catchall_16
    move-exception p1

    goto/16 :goto_9e

    .line 11
    :cond_19
    :goto_19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_26

    invoke-static {p2}, Lads_mobile_sdk/lr3$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_30

    .line 16
    :cond_26
    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    if-nez p2, :cond_32

    :goto_30
    const/4 p2, 0x0

    goto :goto_43

    .line 20
    :cond_32
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    .line 22
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_16

    .line 24
    :try_start_3b
    invoke-virtual {p2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_3e
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3b .. :try_end_3e} :catch_3f
    .catchall {:try_start_3b .. :try_end_3e} :catchall_16

    goto :goto_42

    .line 26
    :catch_3f
    :try_start_3f
    invoke-virtual {p2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :goto_42
    move-object p2, v0

    :goto_43
    if-nez p2, :cond_46

    goto :goto_97

    .line 27
    :cond_46
    iget v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v0, v1

    if-nez p3, :cond_4e

    goto :goto_97

    .line 34
    :cond_4e
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_97

    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_5e

    goto :goto_97

    .line 37
    :cond_5e
    invoke-virtual {p3}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 38
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 39
    invoke-virtual {p3, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_70

    goto :goto_97

    .line 45
    :cond_70
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v4, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 46
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v4

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    mul-int/2addr p2, v1

    mul-int/lit8 v1, p2, 0x2

    if-lt v1, v0, :cond_8a

    goto :goto_92

    :cond_8a
    if-nez p2, :cond_97

    .line 56
    invoke-static {p3}, Lads_mobile_sdk/lr3;->a(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_97

    .line 57
    :goto_92
    iget-wide p2, p0, Lads_mobile_sdk/lr3;->c:J

    iput-wide p2, p0, Lads_mobile_sdk/lr3;->e:J

    goto :goto_99

    .line 59
    :cond_97
    :goto_97
    iput-wide v2, p0, Lads_mobile_sdk/lr3;->e:J

    .line 60
    :goto_99
    invoke-virtual {p0, p1}, Lads_mobile_sdk/lr3;->c(Ljava/util/HashMap;)V
    :try_end_9c
    .catchall {:try_start_3f .. :try_end_9c} :catchall_16

    monitor-exit p0

    return-void

    :goto_9e
    :try_start_9e
    monitor-exit p0
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_16

    throw p1
.end method

.method public final declared-synchronized b(Ljava/util/HashMap;)V
    .registers 4

    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Lads_mobile_sdk/lr3;->g:J

    iput-wide v0, p0, Lads_mobile_sdk/lr3;->h:J

    .line 3
    invoke-virtual {p0}, Lads_mobile_sdk/lr3;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lads_mobile_sdk/lr3;->g:J

    .line 4
    invoke-virtual {p0, p1}, Lads_mobile_sdk/lr3;->c(Ljava/util/HashMap;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public final c(Ljava/util/HashMap;)V
    .registers 4

    .line 2
    iget-wide v0, p0, Lads_mobile_sdk/lr3;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "tcq"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-wide v0, p0, Lads_mobile_sdk/lr3;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "tpq"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-wide v0, p0, Lads_mobile_sdk/lr3;->g:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "tcc"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-wide v0, p0, Lads_mobile_sdk/lr3;->h:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "tpc"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-wide v0, p0, Lads_mobile_sdk/lr3;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "tpv"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-wide v0, p0, Lads_mobile_sdk/lr3;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "tcv"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-wide v0, p0, Lads_mobile_sdk/lr3;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "tchv"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-wide v0, p0, Lads_mobile_sdk/lr3;->f:J

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 11
    const-string v1, "tphv"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-wide v0, p0, Lads_mobile_sdk/lr3;->j:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "tst"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
