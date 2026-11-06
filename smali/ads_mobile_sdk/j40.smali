###### Class ads_mobile_sdk.j40 (ads_mobile_sdk.j40)
.class public final Lads_mobile_sdk/j40;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/f13;

.field public b:J


# direct methods
.method public constructor <init>(Lads_mobile_sdk/f13;)V
    .registers 4

    .line 1
    const-string v0, "randomGenerator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lads_mobile_sdk/j40;->a:Lads_mobile_sdk/f13;

    const-wide/16 v0, -0x1

    .line 11
    iput-wide v0, p0, Lads_mobile_sdk/j40;->b:J

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 10

    .line 15
    monitor-enter p0

    .line 16
    :try_start_1
    iget-object v0, p0, Lads_mobile_sdk/j40;->a:Lads_mobile_sdk/f13;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    const-wide v1, 0x2386f26fc10000L

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Lkotlin/random/Random$Default;->nextLong(JJ)J

    move-result-wide v5

    .line 18
    :goto_13
    iget-wide v7, p0, Lads_mobile_sdk/j40;->b:J

    cmp-long v0, v5, v7

    if-nez v0, :cond_27

    .line 19
    iget-object v0, p0, Lads_mobile_sdk/j40;->a:Lads_mobile_sdk/f13;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v0, v3, v4, v1, v2}, Lkotlin/random/Random$Default;->nextLong(JJ)J

    move-result-wide v5

    goto :goto_13

    :catchall_25
    move-exception v0

    goto :goto_2f

    .line 21
    :cond_27
    iput-wide v5, p0, Lads_mobile_sdk/j40;->b:J

    .line 22
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_25

    monitor-exit p0

    return-object v0

    :goto_2f
    monitor-exit p0

    throw v0
.end method
