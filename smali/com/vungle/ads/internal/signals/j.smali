###### Class com.vungle.ads.internal.signals.j (com.vungle.ads.internal.signals.j)
.class public final Lcom/vungle/ads/internal/signals/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lkotlinx/serialization/json/Json;

.field public c:J

.field public d:J

.field public e:J

.field public f:I

.field public g:J

.field public h:Lcom/vungle/ads/internal/signals/c;

.field public i:Ljava/util/concurrent/ConcurrentHashMap;

.field public final j:Lkotlin/Lazy;

.field public k:Lcom/vungle/ads/internal/session/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/signals/j;->a:Landroid/content/Context;

    .line 2
    sget-object v0, Lcom/vungle/ads/internal/signals/e;->a:Lcom/vungle/ads/internal/signals/e;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/ads/internal/signals/j;->b:Lkotlinx/serialization/json/Json;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vungle/ads/internal/signals/j;->d:J

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/vungle/ads/internal/signals/j;->f:I

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/ads/internal/signals/j;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/vungle/ads/internal/signals/g;

    invoke-direct {v1, p1}, Lcom/vungle/ads/internal/signals/g;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 7
    iput-object v1, p0, Lcom/vungle/ads/internal/signals/j;->j:Lkotlin/Lazy;

    .line 8
    invoke-virtual {p0}, Lcom/vungle/ads/internal/signals/j;->e()V

    .line 9
    invoke-virtual {p0}, Lcom/vungle/ads/internal/signals/j;->c()Lcom/vungle/ads/internal/persistence/FilePreferences;

    move-result-object v1

    const-string v3, "vungle_signal_session_creation_time"

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v3, v4, v5}, Lcom/vungle/ads/internal/persistence/FilePreferences;->a(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/vungle/ads/internal/signals/j;->g:J

    .line 10
    invoke-virtual {p0}, Lcom/vungle/ads/internal/signals/j;->f()V

    .line 11
    new-instance v1, Lcom/vungle/ads/internal/signals/c;

    iget v3, p0, Lcom/vungle/ads/internal/signals/j;->f:I

    invoke-direct {v1, v3}, Lcom/vungle/ads/internal/signals/c;-><init>(I)V

    iput-object v1, p0, Lcom/vungle/ads/internal/signals/j;->h:Lcom/vungle/ads/internal/signals/c;

    .line 12
    new-instance v1, Lcom/vungle/ads/internal/signals/h;

    invoke-direct {v1, p1}, Lcom/vungle/ads/internal/signals/h;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 13
    new-instance v3, Lcom/vungle/ads/internal/signals/i;

    invoke-direct {v3, p1}, Lcom/vungle/ads/internal/signals/i;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 14
    new-instance v3, Lcom/vungle/ads/internal/session/b;

    iget-object v4, p0, Lcom/vungle/ads/internal/signals/j;->h:Lcom/vungle/ads/internal/signals/c;

    invoke-virtual {v4}, Lcom/vungle/ads/internal/signals/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/vungle/ads/internal/signals/j;->a(Lkotlin/Lazy;)Lcom/vungle/ads/internal/executor/a;

    move-result-object v1

    invoke-static {v0}, Lcom/vungle/ads/internal/signals/j;->b(Lkotlin/Lazy;)Lcom/vungle/ads/internal/util/PathProvider;

    move-result-object v0

    invoke-direct {v3, p1, v4, v1, v0}, Lcom/vungle/ads/internal/session/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/internal/executor/a;Lcom/vungle/ads/internal/util/PathProvider;)V

    .line 15
    iput-object v3, p0, Lcom/vungle/ads/internal/signals/j;->k:Lcom/vungle/ads/internal/session/b;

    .line 18
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/j;->h:Lcom/vungle/ads/internal/signals/c;

    invoke-virtual {v3}, Lcom/vungle/ads/internal/session/b;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/signals/c;->a(Ljava/util/ArrayList;)V

    .line 19
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v0, Lcom/vungle/ads/internal/signals/d;

    invoke-direct {v0, p0}, Lcom/vungle/ads/internal/signals/d;-><init>(Lcom/vungle/ads/internal/signals/j;)V

    const-string v1, "SignalManager"

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 22
    :try_start_8a
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/j;->h:Lcom/vungle/ads/internal/signals/c;

    invoke-static {}, Lcom/vungle/ads/internal/platform/e;->a()Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/vungle/ads/internal/signals/c;->a(I)V

    .line 23
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/j;->h:Lcom/vungle/ads/internal/signals/c;

    invoke-static {p1}, Lcom/vungle/ads/internal/platform/e;->f(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vungle/ads/internal/signals/c;->e(I)V

    .line 24
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/j;->h:Lcom/vungle/ads/internal/signals/c;

    invoke-static {p1}, Lcom/vungle/ads/internal/platform/e;->d(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vungle/ads/internal/signals/c;->c(I)V

    .line 25
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/j;->h:Lcom/vungle/ads/internal/signals/c;

    invoke-static {p1}, Lcom/vungle/ads/internal/platform/e;->c(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vungle/ads/internal/signals/c;->d(I)V

    .line 26
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/j;->h:Lcom/vungle/ads/internal/signals/c;

    invoke-static {p1}, Lcom/vungle/ads/internal/platform/e;->e(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/signals/c;->b(I)V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_b8} :catch_b9

    return-void

    :catch_b9
    move-exception p1

    .line 28
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 29
    const-string v0, "Failed to collect device signals: "

    invoke-static {v0}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final a(Lkotlin/Lazy;)Lcom/vungle/ads/internal/executor/a;
    .registers 1

    .line 2
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/executor/a;

    return-object p0
.end method

.method public static final synthetic a(Lcom/vungle/ads/internal/signals/j;)Lkotlinx/serialization/json/Json;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/ads/internal/signals/j;->b:Lkotlinx/serialization/json/Json;

    return-object p0
.end method

.method public static final b(Lkotlin/Lazy;)Lcom/vungle/ads/internal/util/PathProvider;
    .registers 1

    .line 2
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/util/PathProvider;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/vungle/ads/internal/signals/m;
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "placementId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/vungle/ads/internal/signals/j;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/vungle/ads/internal/signals/j;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    goto :goto_1e

    :catchall_1b
    move-exception p1

    goto :goto_2e

    :cond_1d
    const/4 v2, 0x0

    .line 6
    :goto_1e
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 8
    iget-object v4, p0, Lcom/vungle/ads/internal/signals/j;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance p1, Lcom/vungle/ads/internal/signals/m;

    invoke-direct {p1, v2, v0, v1}, Lcom/vungle/ads/internal/signals/m;-><init>(Ljava/lang/Long;J)V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_1b

    monitor-exit p0

    return-object p1

    :goto_2e
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_1b

    throw p1
.end method

.method public final a()Ljava/lang/String;
    .registers 6

    .line 23
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/j;->h:Lcom/vungle/ads/internal/signals/c;

    .line 24
    iget-wide v1, p0, Lcom/vungle/ads/internal/signals/j;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v1

    iget-wide v1, p0, Lcom/vungle/ads/internal/signals/j;->d:J

    sub-long/2addr v3, v1

    .line 25
    iput-wide v3, v0, Lcom/vungle/ads/internal/signals/c;->e:J

    .line 26
    :try_start_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/signals/j;->b:Lkotlinx/serialization/json/Json;

    iget-object v2, p0, Lcom/vungle/ads/internal/signals/j;->h:Lcom/vungle/ads/internal/signals/c;

    .line 47
    invoke-interface {v1}, Lkotlinx/serialization/SerialFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v3

    .line 48
    const-class v4, Lcom/vungle/ads/internal/signals/c;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    .line 49
    const-string v4, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-interface {v1, v3, v2}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3a
    .catchall {:try_start_e .. :try_end_3a} :catchall_3b

    return-object v0

    :catchall_3b
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Lcom/vungle/ads/internal/signals/m;)V
    .registers 6

    const-string v0, "signaledAd"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/j;->h:Lcom/vungle/ads/internal/signals/c;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/signals/c;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 15
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/j;->h:Lcom/vungle/ads/internal/signals/c;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/signals/c;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object p2, p0, Lcom/vungle/ads/internal/signals/j;->h:Lcom/vungle/ads/internal/signals/c;

    invoke-virtual {p2}, Lcom/vungle/ads/internal/signals/c;->b()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vungle/ads/internal/signals/m;

    if-nez p1, :cond_28

    .line 17
    iget-object p1, p0, Lcom/vungle/ads/internal/signals/j;->a:Landroid/content/Context;

    .line 18
    :cond_28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_3b

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    if-eqz p1, :cond_3b

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_3c

    :cond_3b
    const/4 p1, 0x0

    :goto_3c
    if-nez p1, :cond_3f

    goto :goto_48

    .line 19
    :cond_3f
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_48

    :goto_46
    move v0, v2

    goto :goto_5e

    :cond_48
    :goto_48
    if-nez p1, :cond_4b

    goto :goto_53

    .line 20
    :cond_4b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_53

    goto :goto_46

    :cond_53
    :goto_53
    if-nez p1, :cond_56

    goto :goto_5d

    .line 21
    :cond_56
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_5d

    goto :goto_5e

    :cond_5d
    :goto_5d
    const/4 v0, -0x1

    .line 22
    :goto_5e
    invoke-virtual {p2, v0}, Lcom/vungle/ads/internal/signals/m;->a(I)V

    return-void
.end method

.method public final a(Lcom/vungle/ads/internal/model/s3;)V
    .registers 3

    const-string v0, "unclosedAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vungle/ads/internal/ConfigManager;->t()Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 13
    :cond_11
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/j;->k:Lcom/vungle/ads/internal/session/b;

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/session/b;->a(Lcom/vungle/ads/internal/model/s3;)V

    return-void
.end method

.method public final b()Lcom/vungle/ads/internal/signals/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/j;->h:Lcom/vungle/ads/internal/signals/c;

    return-object v0
.end method

.method public final b(Lcom/vungle/ads/internal/model/s3;)V
    .registers 3

    const-string v0, "unclosedAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vungle/ads/internal/ConfigManager;->t()Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 6
    :cond_11
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/j;->k:Lcom/vungle/ads/internal/session/b;

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/session/b;->b(Lcom/vungle/ads/internal/model/s3;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_20

    .line 7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_20

    :cond_9
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/j;->h:Lcom/vungle/ads/internal/signals/c;

    .line 8
    iget-object v0, v0, Lcom/vungle/ads/internal/signals/c;->d:Ljava/util/List;

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 10
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/j;->h:Lcom/vungle/ads/internal/signals/c;

    .line 11
    iget-object v0, v0, Lcom/vungle/ads/internal/signals/c;->d:Ljava/util/List;

    const/4 v1, 0x0

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/signals/m;

    .line 13
    iput-object p1, v0, Lcom/vungle/ads/internal/signals/m;->c:Ljava/lang/String;

    :cond_20
    :goto_20
    return-void
.end method

.method public final c()Lcom/vungle/ads/internal/persistence/FilePreferences;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/j;->j:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/persistence/FilePreferences;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/j;->h:Lcom/vungle/ads/internal/signals/c;

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/signals/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()V
    .registers 2

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/d;->f:Lcom/vungle/ads/internal/util/d;

    new-instance v0, Lcom/vungle/ads/internal/signals/f;

    invoke-direct {v0, p0}, Lcom/vungle/ads/internal/signals/f;-><init>(Lcom/vungle/ads/internal/signals/j;)V

    invoke-static {v0}, Lcom/vungle/ads/internal/util/a;->a(Lcom/vungle/ads/internal/util/b;)V

    return-void
.end method

.method public final f()V
    .registers 10

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/signals/j;->f:I

    const/4 v1, -0x1

    const-string v2, "vungle_signal_session_count"

    if-ne v0, v1, :cond_12

    .line 2
    invoke-virtual {p0}, Lcom/vungle/ads/internal/signals/j;->c()Lcom/vungle/ads/internal/persistence/FilePreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/vungle/ads/internal/persistence/FilePreferences;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vungle/ads/internal/signals/j;->f:I

    .line 4
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5
    iget-wide v3, p0, Lcom/vungle/ads/internal/signals/j;->g:J

    sub-long v5, v0, v3

    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    const/4 v4, 0x1

    if-ltz v3, :cond_2f

    const-wide/32 v7, 0x5265c00

    cmp-long v3, v5, v7

    if-ltz v3, :cond_29

    goto :goto_2f

    .line 14
    :cond_29
    iget v0, p0, Lcom/vungle/ads/internal/signals/j;->f:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/vungle/ads/internal/signals/j;->f:I

    goto :goto_3c

    .line 15
    :cond_2f
    :goto_2f
    iput v4, p0, Lcom/vungle/ads/internal/signals/j;->f:I

    .line 16
    invoke-virtual {p0}, Lcom/vungle/ads/internal/signals/j;->c()Lcom/vungle/ads/internal/persistence/FilePreferences;

    move-result-object v3

    const-string v4, "vungle_signal_session_creation_time"

    invoke-virtual {v3, v4, v0, v1}, Lcom/vungle/ads/internal/persistence/FilePreferences;->b(Ljava/lang/String;J)Lcom/vungle/ads/internal/persistence/FilePreferences;

    .line 17
    iput-wide v0, p0, Lcom/vungle/ads/internal/signals/j;->g:J

    .line 21
    :goto_3c
    invoke-virtual {p0}, Lcom/vungle/ads/internal/signals/j;->c()Lcom/vungle/ads/internal/persistence/FilePreferences;

    move-result-object v0

    iget v1, p0, Lcom/vungle/ads/internal/signals/j;->f:I

    invoke-virtual {v0, v2, v1}, Lcom/vungle/ads/internal/persistence/FilePreferences;->b(Ljava/lang/String;I)Lcom/vungle/ads/internal/persistence/FilePreferences;

    .line 22
    invoke-virtual {p0}, Lcom/vungle/ads/internal/signals/j;->c()Lcom/vungle/ads/internal/persistence/FilePreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/persistence/FilePreferences;->b()V

    return-void
.end method
