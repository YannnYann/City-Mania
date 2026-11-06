###### Class ads_mobile_sdk.z00 (ads_mobile_sdk.z00)
.class public final Lads_mobile_sdk/z00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/ai1;


# instance fields
.field public final a:Lads_mobile_sdk/i2;

.field public final b:Lads_mobile_sdk/vn;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/i2;Lads_mobile_sdk/vn;)V
    .registers 4

    .line 1
    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appStatsTracker"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lads_mobile_sdk/z00;->a:Lads_mobile_sdk/i2;

    .line 21
    iput-object p2, p0, Lads_mobile_sdk/z00;->b:Lads_mobile_sdk/vn;

    return-void
.end method


# virtual methods
.method public final h(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 25
    iget-object p1, p0, Lads_mobile_sdk/z00;->a:Lads_mobile_sdk/i2;

    iget-boolean p1, p1, Lads_mobile_sdk/i2;->H0:Z

    if-eqz p1, :cond_16

    .line 26
    iget-object p1, p0, Lads_mobile_sdk/z00;->b:Lads_mobile_sdk/vn;

    .line 27
    iget-object v0, p1, Lads_mobile_sdk/vn;->c:Ljava/lang/Object;

    .line 28
    monitor-enter v0

    :try_start_b
    iget v1, p1, Lads_mobile_sdk/vn;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lads_mobile_sdk/vn;->e:I
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_13

    monitor-exit v0

    goto :goto_16

    :catchall_13
    move-exception p1

    monitor-exit v0

    throw p1

    .line 29
    :cond_16
    :goto_16
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
