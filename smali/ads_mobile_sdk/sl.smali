###### Class ads_mobile_sdk.sl (ads_mobile_sdk.sl)
.class public final Lads_mobile_sdk/sl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rh3;


# instance fields
.field public final a:Lads_mobile_sdk/f0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/f0;)V
    .registers 3

    .line 1
    const-string v0, "activityTracker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lads_mobile_sdk/sl;->a:Lads_mobile_sdk/f0;

    return-void
.end method


# virtual methods
.method public final f()Lads_mobile_sdk/y11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/y11;->m:Lads_mobile_sdk/y11;

    return-object v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/q01;

    new-instance v0, Lads_mobile_sdk/rl;

    iget-object v1, p0, Lads_mobile_sdk/sl;->a:Lads_mobile_sdk/f0;

    .line 2
    monitor-enter v1

    .line 3
    :try_start_7
    iget-boolean v2, v1, Lads_mobile_sdk/f0;->n:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_11

    monitor-exit v1

    .line 4
    invoke-direct {v0, v2}, Lads_mobile_sdk/rl;-><init>(Z)V

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1

    :catchall_11
    move-exception p1

    .line 5
    monitor-exit v1

    throw p1
.end method
