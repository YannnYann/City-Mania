###### Class io.bidmachine.media3.exoplayer.analytics.PlayerId (io.bidmachine.media3.exoplayer.analytics.PlayerId)
.class public final Lio/bidmachine/media3/exoplayer/analytics/PlayerId;
.super Ljava/lang/Object;
.source "PlayerId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;
    }
.end annotation


# static fields
.field public static final UNSET:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;


# instance fields
.field public final equalityToken:Ljava/lang/Object;

.field public final logSessionIdApi31:Lio/bidmachine/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    const-string v1, ""

    invoke-direct {v0, v1}, Lio/bidmachine/media3/exoplayer/analytics/PlayerId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/bidmachine/media3/exoplayer/analytics/PlayerId;->UNSET:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/PlayerId;->name:Ljava/lang/String;

    .line 58
    sget p1, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p1, v0, :cond_11

    new-instance p1, Lio/bidmachine/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;-><init>()V

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/PlayerId;->logSessionIdApi31:Lio/bidmachine/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;

    .line 59
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/PlayerId;->equalityToken:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 67
    :cond_4
    instance-of v1, p1, Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 70
    :cond_a
    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    .line 71
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/PlayerId;->name:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/analytics/PlayerId;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/PlayerId;->logSessionIdApi31:Lio/bidmachine/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;

    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/analytics/PlayerId;->logSessionIdApi31:Lio/bidmachine/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;

    .line 72
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/PlayerId;->equalityToken:Ljava/lang/Object;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/analytics/PlayerId;->equalityToken:Ljava/lang/Object;

    .line 73
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    return v0

    :cond_2b
    return v2
.end method

.method public declared-synchronized getLogSessionId()Landroid/media/metrics/LogSessionId;
    .registers 2

    monitor-enter p0

    .line 84
    :try_start_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/PlayerId;->logSessionIdApi31:Lio/bidmachine/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;->logSessionId:Landroid/media/metrics/LogSessionId;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public hashCode()I
    .registers 4

    .line 78
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/PlayerId;->name:Ljava/lang/String;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/PlayerId;->logSessionIdApi31:Lio/bidmachine/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/analytics/PlayerId;->equalityToken:Ljava/lang/Object;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized setLogSessionId(Landroid/media/metrics/LogSessionId;)V
    .registers 3

    monitor-enter p0

    .line 94
    :try_start_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/PlayerId;->logSessionIdApi31:Lio/bidmachine/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;->setLogSessionId(Landroid/media/metrics/LogSessionId;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 95
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.PlayerId.LogSessionIdApi31 (io.bidmachine.media3.exoplayer.analytics.PlayerId$LogSessionIdApi31)
.class public final Lio/bidmachine/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;
.super Ljava/lang/Object;
.source "PlayerId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/analytics/PlayerId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogSessionIdApi31"
.end annotation


# instance fields
.field public logSessionId:Landroid/media/metrics/LogSessionId;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-static {}, Lio/bidmachine/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31$$ExternalSyntheticApiModelOutline0;->m()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;->logSessionId:Landroid/media/metrics/LogSessionId;

    return-void
.end method


# virtual methods
.method public setLogSessionId(Landroid/media/metrics/LogSessionId;)V
    .registers 4

    .line 107
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;->logSessionId:Landroid/media/metrics/LogSessionId;

    invoke-static {}, Lio/bidmachine/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31$$ExternalSyntheticApiModelOutline0;->m()Landroid/media/metrics/LogSessionId;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/metrics/LogSessionId;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 108
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;->logSessionId:Landroid/media/metrics/LogSessionId;

    return-void
.end method
