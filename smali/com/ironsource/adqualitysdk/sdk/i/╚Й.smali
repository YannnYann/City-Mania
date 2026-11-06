###### Class com.ironsource.adqualitysdk.sdk.i.C0092 (com.ironsource.adqualitysdk.sdk.i.ȉ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ȉ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/ȉ;

.field public static final ﺙ:Ljava/lang/Object;

.field public static final ﻏ:Ljava/lang/String;


# instance fields
.field public final ﻐ:Ljava/util/ArrayList;

.field public final ﻛ:Ljava/util/HashMap;

.field public final ｋ:Ljava/util/HashMap;

.field public final ﾇ:Landroid/content/Context;

.field public ﾒ:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "nmTNXE0MZeWzb81cUjpa67xqyVhT\n"

    const-string v1, "0guuPSFOF4o=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ȉ;->ﻏ:Ljava/lang/String;

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ȉ;->ﺙ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ȉ;->ﾒ:Z

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ȉ;->ｋ:Ljava/util/HashMap;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ȉ;->ﻛ:Ljava/util/HashMap;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ȉ;->ﻐ:Ljava/util/ArrayList;

    .line 39
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ȉ;->ﾇ:Landroid/content/Context;

    .line 40
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ɭ;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ɭ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ȉ;Landroid/os/Looper;)V

    return-void
.end method

.method public static ﾒ(Landroid/content/Context;)Lcom/ironsource/adqualitysdk/sdk/i/ȉ;
    .registers 3

    .line 1
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ȉ;->ﺙ:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ȉ;->ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/ȉ;

    if-nez v1, :cond_15

    .line 3
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ȉ;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ȉ;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ȉ;->ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/ȉ;

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_19

    .line 5
    :cond_15
    :goto_15
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/ȉ;->ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/ȉ;

    monitor-exit v0

    return-object p0

    .line 6
    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_13

    throw p0
.end method


# virtual methods
.method public final ｋ()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ȉ;->ｋ:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_3
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ȉ;->ｋ:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 3
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/BroadcastReceiver;

    .line 4
    invoke-virtual {p0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ȉ;->ﾒ(Landroid/content/BroadcastReceiver;)V

    goto :goto_12

    :catchall_22
    move-exception v1

    goto :goto_26

    .line 6
    :cond_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_22

    throw v1
.end method

.method public final declared-synchronized ﾇ()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_2
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ȉ;->ﾒ:Z

    .line 2
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ȉ;->ｋ()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public final declared-synchronized ﾒ()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 7
    :try_start_2
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ȉ;->ﾒ:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public final ﾒ(Landroid/content/BroadcastReceiver;)V
    .registers 10

    .line 8
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ȉ;->ｋ:Ljava/util/HashMap;

    monitor-enter v0

    .line 9
    :try_start_3
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ȉ;->ｋ:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-nez p1, :cond_11

    .line 11
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p1

    goto :goto_5c

    :cond_11
    const/4 v1, 0x0

    move v2, v1

    .line 13
    :goto_13
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5a

    .line 14
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    move v4, v1

    .line 15
    :goto_20
    invoke-virtual {v3}, Landroid/content/IntentFilter;->countActions()I

    move-result v5

    if-ge v4, v5, :cond_57

    .line 16
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v5

    .line 17
    iget-object v6, p0, Lcom/ironsource/adqualitysdk/sdk/i/ȉ;->ﻛ:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-eqz v6, :cond_54

    .line 19
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_46

    .line 25
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_54

    .line 26
    iget-object v6, p0, Lcom/ironsource/adqualitysdk/sdk/i/ȉ;->ﻛ:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_54

    .line 27
    :cond_46
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4e

    const/4 p1, 0x0

    throw p1

    :cond_4e
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_54
    :goto_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 38
    :cond_5a
    monitor-exit v0

    return-void

    :goto_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_f

    throw p1
.end method
