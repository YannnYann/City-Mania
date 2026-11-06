###### Class ads_mobile_sdk.ps (ads_mobile_sdk.ps)
.class public final Lads_mobile_sdk/ps;
.super Lads_mobile_sdk/ou;
.source "SourceFile"


# instance fields
.field public final l:Landroid/os/BatteryManager;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ex0;Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/tx;Lads_mobile_sdk/g83;Lads_mobile_sdk/f0;)V
    .registers 14

    .line 1
    const-string v0, "flags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityTracker"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    move-object v5, p1

    move-object v3, p3

    move-object v2, p4

    move-object v4, p5

    move-object v6, p6

    .line 32
    invoke-direct/range {v1 .. v6}, Lads_mobile_sdk/ou;-><init>(Lads_mobile_sdk/tx;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/g83;Lads_mobile_sdk/ex0;Lads_mobile_sdk/f0;)V

    .line 40
    const-class p1, Landroid/os/BatteryManager;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryManager;

    iput-object p1, v1, Lads_mobile_sdk/ps;->l:Landroid/os/BatteryManager;

    return-void
.end method


# virtual methods
.method public final f()Lads_mobile_sdk/y11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/y11;->r:Lads_mobile_sdk/y11;

    return-object v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 1
    new-instance p1, Lads_mobile_sdk/q01;

    .line 2
    new-instance v0, Lads_mobile_sdk/os;

    .line 3
    iget-object v1, p0, Lads_mobile_sdk/ps;->l:Landroid/os/BatteryManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    .line 4
    iget-object v3, p0, Lads_mobile_sdk/ps;->l:Landroid/os/BatteryManager;

    invoke-virtual {v3}, Landroid/os/BatteryManager;->isCharging()Z

    move-result v3

    .line 5
    invoke-direct {v0, v1, v2, v3}, Lads_mobile_sdk/os;-><init>(DZ)V

    .line 6
    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
