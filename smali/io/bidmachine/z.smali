###### Class io.bidmachine.z (io.bidmachine.z)
.class public Lio/bidmachine/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile c:Lio/bidmachine/z;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/bidmachine/z;->a:Ljava/lang/Object;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/bidmachine/z;->b:Ljava/util/Map;

    return-void
.end method

.method public static a()Lio/bidmachine/z;
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/z;->c:Lio/bidmachine/z;

    if-nez v0, :cond_19

    .line 3
    const-class v1, Lio/bidmachine/z;

    monitor-enter v1

    .line 4
    :try_start_7
    sget-object v0, Lio/bidmachine/z;->c:Lio/bidmachine/z;

    if-nez v0, :cond_15

    .line 6
    new-instance v0, Lio/bidmachine/z;

    invoke-direct {v0}, Lio/bidmachine/z;-><init>()V

    .line 7
    sput-object v0, Lio/bidmachine/z;->c:Lio/bidmachine/z;

    goto :goto_15

    :catchall_13
    move-exception v0

    goto :goto_17

    .line 9
    :cond_15
    :goto_15
    monitor-exit v1

    return-object v0

    :goto_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw v0

    :cond_19
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lio/bidmachine/core/NetworkRequest;
    .registers 4

    .line 14
    iget-object v0, p0, Lio/bidmachine/z;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/z;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/core/NetworkRequest;

    monitor-exit v0

    return-object p1

    :catchall_d
    move-exception p1

    .line 16
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public a(Ljava/lang/String;Lio/bidmachine/core/NetworkRequest;)V
    .registers 5

    .line 10
    iget-object v0, p0, Lio/bidmachine/z;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/z;->b:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method
