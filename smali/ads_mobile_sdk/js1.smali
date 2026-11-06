###### Class ads_mobile_sdk.js1 (ads_mobile_sdk.js1)
.class public final Lads_mobile_sdk/js1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 2

    .line 70
    const-string v0, "The backing field has not yet been initialized."

    invoke-virtual {p0, v0}, Lads_mobile_sdk/js1;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 71
    const-string v0, "uninitializedMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    monitor-enter p0

    .line 136
    :try_start_6
    iget-object v0, p0, Lads_mobile_sdk/js1;->a:Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_16

    if-eqz v0, :cond_c

    .line 137
    monitor-exit p0

    return-object v0

    .line 138
    :cond_c
    :try_start_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_16

    :catchall_16
    move-exception p1

    .line 139
    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 3

    .line 140
    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    monitor-enter p0

    :try_start_6
    iput-object p1, p0, Lads_mobile_sdk/js1;->a:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    .line 213
    monitor-exit p0

    throw p1
.end method

.method public final b()Z
    .registers 2

    .line 76
    iget-object v0, p0, Lads_mobile_sdk/js1;->a:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method
