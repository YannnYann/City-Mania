###### Class com.ironsource.O6 (com.ironsource.O6)
.class public Lcom/ironsource/O6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String; = "userId"

.field public static final c:Ljava/lang/String; = "appKey"

.field private static d:Lcom/ironsource/O6;


# instance fields
.field private final a:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/ironsource/O6;->a:Lorg/json/JSONObject;

    return-void
.end method

.method public static declared-synchronized a()Lcom/ironsource/O6;
    .registers 2

    const-class v0, Lcom/ironsource/O6;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/ironsource/O6;->d:Lcom/ironsource/O6;

    if-nez v1, :cond_11

    .line 2
    new-instance v1, Lcom/ironsource/O6;

    invoke-direct {v1}, Lcom/ironsource/O6;-><init>()V

    sput-object v1, Lcom/ironsource/O6;->d:Lcom/ironsource/O6;

    goto :goto_11

    :catchall_f
    move-exception v1

    goto :goto_15

    .line 5
    :cond_11
    :goto_11
    sget-object v1, Lcom/ironsource/O6;->d:Lcom/ironsource/O6;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    monitor-exit v0

    return-object v1

    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw v1
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 11
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/O6;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    monitor-enter p0

    .line 8
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/O6;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_9
    .catchall {:try_start_1 .. :try_end_6} :catchall_7

    goto :goto_11

    :catchall_7
    move-exception p1

    goto :goto_13

    :catch_9
    move-exception p1

    .line 10
    :try_start_a
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_7

    :goto_11
    monitor-exit p0

    return-void

    :goto_13
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_7

    throw p1
.end method

.method public declared-synchronized a(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_22

    .line 6
    :try_start_3
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/ironsource/O6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_b

    :catchall_1f
    move-exception p1

    .line 6
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p1

    .line 7
    :cond_22
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b()Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->h()Lcom/ironsource/D7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/u5;->y()Z

    move-result v0

    if-nez v0, :cond_15

    .line 2
    iget-object v0, p0, Lcom/ironsource/O6;->a:Lorg/json/JSONObject;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    goto :goto_22

    .line 5
    :cond_15
    :try_start_15
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ironsource/O6;->a:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_13

    monitor-exit p0

    return-object v0

    :goto_22
    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_13

    throw v0
.end method
