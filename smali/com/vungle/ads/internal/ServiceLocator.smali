###### Class com.vungle.ads.internal.ServiceLocator (com.vungle.ads.internal.ServiceLocator)
.class public final Lcom/vungle/ads/internal/ServiceLocator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile INSTANCE:Lcom/vungle/ads/internal/ServiceLocator;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static final d:Lcom/vungle/ads/internal/r1;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/vungle/ads/internal/r1;

    .line 1
    invoke-direct {v0}, Lcom/vungle/ads/internal/r1;-><init>()V

    .line 2
    sput-object v0, Lcom/vungle/ads/internal/ServiceLocator;->d:Lcom/vungle/ads/internal/r1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context.applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vungle/ads/internal/ServiceLocator;->a:Landroid/content/Context;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/ServiceLocator;->b:Ljava/util/HashMap;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/ServiceLocator;->c:Ljava/util/HashMap;

    .line 7
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ServiceLocator;->b()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/ServiceLocator;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic a()Lcom/vungle/ads/internal/ServiceLocator;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ServiceLocator;->INSTANCE:Lcom/vungle/ads/internal/ServiceLocator;

    return-object v0
.end method

.method public static final synthetic a(Lcom/vungle/ads/internal/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/ServiceLocator;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lcom/vungle/ads/internal/ServiceLocator;)V
    .registers 1

    .line 3
    sput-object p0, Lcom/vungle/ads/internal/ServiceLocator;->INSTANCE:Lcom/vungle/ads/internal/ServiceLocator;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5

    .line 4
    iget-object v0, p0, Lcom/vungle/ads/internal/ServiceLocator;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 5
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 6
    iget-object p1, p0, Lcom/vungle/ads/internal/ServiceLocator;->c:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_44

    .line 8
    iget-object p1, p0, Lcom/vungle/ads/internal/ServiceLocator;->b:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/ads/internal/s1;

    if-eqz p1, :cond_3c

    .line 10
    invoke-virtual {p1}, Lcom/vungle/ads/internal/s1;->a()Ljava/lang/Object;

    move-result-object v0

    .line 11
    iget-boolean p1, p1, Lcom/vungle/ads/internal/s1;->a:Z

    if-eqz p1, :cond_3b

    .line 12
    iget-object p1, p0, Lcom/vungle/ads/internal/ServiceLocator;->c:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    return-object v0

    .line 13
    :cond_3c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown class"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_44
    return-object p1

    .line 14
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown dependency for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ServiceLocator;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/vungle/ads/internal/a2;

    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/a2;-><init>(Lcom/vungle/ads/internal/ServiceLocator;)V

    const-class v2, Lcom/vungle/ads/internal/task/d;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/vungle/ads/internal/ServiceLocator;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/vungle/ads/internal/b2;

    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/b2;-><init>(Lcom/vungle/ads/internal/ServiceLocator;)V

    const-class v2, Lcom/vungle/ads/internal/task/g;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/vungle/ads/internal/ServiceLocator;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/vungle/ads/internal/c2;

    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/c2;-><init>(Lcom/vungle/ads/internal/ServiceLocator;)V

    const-class v2, Lcom/vungle/ads/internal/network/VungleApiClient;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/vungle/ads/internal/ServiceLocator;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/vungle/ads/internal/d2;

    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/d2;-><init>(Lcom/vungle/ads/internal/ServiceLocator;)V

    const-class v2, Lcom/vungle/ads/internal/platform/f;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/vungle/ads/internal/ServiceLocator;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/vungle/ads/internal/e2;

    invoke-direct {v1}, Lcom/vungle/ads/internal/e2;-><init>()V

    const-class v2, Lcom/vungle/ads/internal/executor/a;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/vungle/ads/internal/ServiceLocator;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/vungle/ads/internal/f2;

    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/f2;-><init>(Lcom/vungle/ads/internal/ServiceLocator;)V

    const-class v2, Lcom/vungle/ads/internal/omsdk/c;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/vungle/ads/internal/ServiceLocator;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/vungle/ads/internal/g2;

    invoke-direct {v1}, Lcom/vungle/ads/internal/g2;-><init>()V

    const-class v2, Lcom/vungle/ads/internal/omsdk/d;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/vungle/ads/internal/ServiceLocator;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/vungle/ads/internal/h2;

    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/h2;-><init>(Lcom/vungle/ads/internal/ServiceLocator;)V

    const-class v2, Lcom/vungle/ads/internal/persistence/FilePreferences;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/vungle/ads/internal/ServiceLocator;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/vungle/ads/internal/i2;

    invoke-direct {v1}, Lcom/vungle/ads/internal/i2;-><init>()V

    const-class v2, Lcom/vungle/ads/internal/locale/a;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/vungle/ads/internal/ServiceLocator;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/vungle/ads/internal/t1;

    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/t1;-><init>(Lcom/vungle/ads/internal/ServiceLocator;)V

    const-class v2, Lcom/vungle/ads/internal/bidding/e;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/vungle/ads/internal/ServiceLocator;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/vungle/ads/internal/u1;

    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/u1;-><init>(Lcom/vungle/ads/internal/ServiceLocator;)V

    const-class v2, Lcom/vungle/ads/internal/util/PathProvider;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/vungle/ads/internal/ServiceLocator;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/vungle/ads/internal/v1;

    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/v1;-><init>(Lcom/vungle/ads/internal/ServiceLocator;)V

    const-class v2, Lcom/vungle/ads/internal/downloader/n;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/vungle/ads/internal/ServiceLocator;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/vungle/ads/internal/w1;

    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/w1;-><init>(Lcom/vungle/ads/internal/ServiceLocator;)V

    const-class v2, Lcom/vungle/ads/internal/downloader/u;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/vungle/ads/internal/ServiceLocator;->b:Ljava/util/HashMap;

    .line 92
    new-instance v1, Lcom/vungle/ads/internal/x1;

    invoke-direct {v1}, Lcom/vungle/ads/internal/x1;-><init>()V

    const-class v2, Lcom/vungle/ads/internal/util/l;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/vungle/ads/internal/ServiceLocator;->b:Ljava/util/HashMap;

    .line 98
    new-instance v1, Lcom/vungle/ads/internal/y1;

    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/y1;-><init>(Lcom/vungle/ads/internal/ServiceLocator;)V

    const-class v2, Lcom/vungle/ads/internal/signals/j;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/vungle/ads/internal/ServiceLocator;->b:Ljava/util/HashMap;

    .line 104
    new-instance v1, Lcom/vungle/ads/internal/z1;

    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/z1;-><init>(Lcom/vungle/ads/internal/ServiceLocator;)V

    const-class v2, Lcom/vungle/ads/internal/network/r;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final declared-synchronized c()Z
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    const-class v0, Lcom/vungle/ads/internal/downloader/u;

    .line 2
    const-string v1, "serviceClass"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/vungle/ads/internal/ServiceLocator;->c:Ljava/util/HashMap;

    .line 49
    iget-object v2, p0, Lcom/vungle/ads/internal/ServiceLocator;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 50
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 51
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    monitor-exit p0

    return v0

    :catchall_2c
    move-exception v0

    goto :goto_45

    .line 52
    :cond_2e
    :try_start_2e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown dependency for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_2e .. :try_end_46} :catchall_2c

    throw v0
.end method

.method public final declared-synchronized getService(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "serviceClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/ServiceLocator;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object p1

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method
