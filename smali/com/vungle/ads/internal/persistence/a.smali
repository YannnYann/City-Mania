###### Class com.vungle.ads.internal.persistence.a (com.vungle.ads.internal.persistence.a)
.class public final Lcom/vungle/ads/internal/persistence/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/vungle/ads/internal/executor/j;Lcom/vungle/ads/internal/util/PathProvider;Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/FilePreferences;
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "ioExecutor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filename"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/vungle/ads/internal/persistence/FilePreferences;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2b

    .line 16
    new-instance v1, Lcom/vungle/ads/internal/persistence/FilePreferences;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/vungle/ads/internal/persistence/FilePreferences;-><init>(Lcom/vungle/ads/internal/executor/j;Lcom/vungle/ads/internal/util/PathProvider;Ljava/lang/String;I)V

    .line 30
    invoke-virtual {v0, p3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_27

    goto :goto_2b

    :cond_27
    move-object v1, p1

    goto :goto_2b

    :catchall_29
    move-exception p1

    goto :goto_34

    .line 31
    :cond_2b
    :goto_2b
    const-string p1, "filePreferenceMap.getOrP\u2026, filename)\n            }"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/vungle/ads/internal/persistence/FilePreferences;
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_29

    monitor-exit p0

    return-object v1

    :goto_34
    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_29

    throw p1
.end method
