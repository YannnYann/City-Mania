###### Class ads_mobile_sdk.vj3 (ads_mobile_sdk.vj3)
.class public final Lads_mobile_sdk/vj3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/wj3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/wj3;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lads_mobile_sdk/vj3;->a:Lads_mobile_sdk/wj3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .registers 2

    .line 0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .registers 4

    .line 70
    check-cast p1, Lads_mobile_sdk/qj3;

    .line 71
    iget-object v0, p0, Lads_mobile_sdk/vj3;->a:Lads_mobile_sdk/wj3;

    iget-object v0, v0, Lads_mobile_sdk/wj3;->c:Lads_mobile_sdk/rj3;

    check-cast v0, Lads_mobile_sdk/st1;

    .line 72
    iget-object v1, v0, Lads_mobile_sdk/st1;->n:Ljava/lang/Object;

    .line 73
    monitor-enter v1

    .line 74
    :try_start_b
    iget-object v0, v0, Lads_mobile_sdk/st1;->q:Lads_mobile_sdk/wa;

    invoke-interface {p1}, Lads_mobile_sdk/qj3;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lads_mobile_sdk/wa;->a(Ljava/lang/String;)V

    .line 75
    monitor-exit v1

    return-void

    :catchall_16
    move-exception p1

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_16

    throw p1
.end method
