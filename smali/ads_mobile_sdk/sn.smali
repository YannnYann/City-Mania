###### Class ads_mobile_sdk.sn (ads_mobile_sdk.sn)
.class public Lads_mobile_sdk/sn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lads_mobile_sdk/rn;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 3

    .line 54
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_9

    .line 55
    check-cast p1, Landroid/app/Application;

    .line 56
    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_9
    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public final a()Z
    .registers 3

    .line 58
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 59
    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 60
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_f

    goto :goto_15

    .line 61
    :cond_f
    invoke-virtual {p0}, Lads_mobile_sdk/sn;->b()Z

    move-result v0

    if-eqz v0, :cond_17

    :goto_15
    const/4 v0, 0x1

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    .line 0
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    .line 0
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    .line 0
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    .line 2
    iget-boolean p1, p0, Lads_mobile_sdk/sn;->b:Z

    const/4 v0, 0x1

    if-eq p1, v0, :cond_15

    .line 3
    iput-boolean v0, p0, Lads_mobile_sdk/sn;->b:Z

    .line 4
    iget-boolean p1, p0, Lads_mobile_sdk/sn;->a:Z

    if-eqz p1, :cond_15

    .line 5
    invoke-virtual {p0, v0}, Lads_mobile_sdk/sn;->a(Z)V

    .line 6
    iget-object p1, p0, Lads_mobile_sdk/sn;->c:Lads_mobile_sdk/rn;

    if-eqz p1, :cond_15

    .line 7
    invoke-interface {p1, v0}, Lads_mobile_sdk/rn;->a(Z)V

    :cond_15
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 3

    .line 31
    invoke-virtual {p0}, Lads_mobile_sdk/sn;->a()Z

    move-result p1

    .line 32
    iget-boolean v0, p0, Lads_mobile_sdk/sn;->b:Z

    if-eq v0, p1, :cond_18

    .line 33
    iput-boolean p1, p0, Lads_mobile_sdk/sn;->b:Z

    .line 34
    iget-boolean v0, p0, Lads_mobile_sdk/sn;->a:Z

    if-eqz v0, :cond_18

    .line 35
    invoke-virtual {p0, p1}, Lads_mobile_sdk/sn;->a(Z)V

    .line 36
    iget-object v0, p0, Lads_mobile_sdk/sn;->c:Lads_mobile_sdk/rn;

    if-eqz v0, :cond_18

    .line 37
    invoke-interface {v0, p1}, Lads_mobile_sdk/rn;->a(Z)V

    :cond_18
    return-void
.end method
