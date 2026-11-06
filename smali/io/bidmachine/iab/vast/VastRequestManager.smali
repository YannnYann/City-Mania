###### Class io.bidmachine.iab.vast.VastRequestManager (io.bidmachine.iab.vast.VastRequestManager)
.class public Lio/bidmachine/iab/vast/VastRequestManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/bidmachine/iab/vast/VastRequestManager;->a:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized get(Ljava/lang/String;)Lio/bidmachine/iab/vast/VastRequest;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vastRequestId"
        }
    .end annotation

    const-class v0, Lio/bidmachine/iab/vast/VastRequestManager;

    monitor-enter v0

    .line 1
    :try_start_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_34

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    monitor-exit v0

    return-object v2

    .line 4
    :cond_c
    :try_start_c
    sget-object v1, Lio/bidmachine/iab/vast/VastRequestManager;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/iab/vast/VastRequest;

    .line 6
    invoke-virtual {v3}, Lio/bidmachine/iab/vast/VastRequest;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_34

    if-eqz v4, :cond_16

    monitor-exit v0

    return-object v3

    :catchall_34
    move-exception p0

    goto :goto_38

    :cond_36
    monitor-exit v0

    return-object v2

    :goto_38
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_34

    throw p0
.end method

.method public static declared-synchronized store(Lio/bidmachine/iab/vast/VastRequest;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vastRequest"
        }
    .end annotation

    const-class v0, Lio/bidmachine/iab/vast/VastRequestManager;

    monitor-enter v0

    if-nez p0, :cond_7

    monitor-exit v0

    return-void

    .line 1
    :cond_7
    :try_start_7
    sget-object v1, Lio/bidmachine/iab/vast/VastRequestManager;->a:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_10

    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p0
.end method
