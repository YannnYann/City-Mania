###### Class io.bidmachine.iab.vast.VastHelper (io.bidmachine.iab.vast.VastHelper)
.class public Lio/bidmachine/iab/vast/VastHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/vast/VastHelper$OnScreenStateChangeListener;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/WeakHashMap;

.field public static final b:Landroid/content/BroadcastReceiver;

.field public static final c:Landroid/content/IntentFilter;

.field public static d:Z

.field public static e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/bidmachine/iab/vast/VastHelper;->a:Ljava/util/WeakHashMap;

    .line 3
    new-instance v0, Lio/bidmachine/iab/vast/VastHelper$a;

    invoke-direct {v0}, Lio/bidmachine/iab/vast/VastHelper$a;-><init>()V

    sput-object v0, Lio/bidmachine/iab/vast/VastHelper;->b:Landroid/content/BroadcastReceiver;

    .line 17
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lio/bidmachine/iab/vast/VastHelper;->c:Landroid/content/IntentFilter;

    const/4 v1, 0x0

    .line 19
    sput-boolean v1, Lio/bidmachine/iab/vast/VastHelper;->d:Z

    .line 20
    sput-boolean v1, Lio/bidmachine/iab/vast/VastHelper;->e:Z

    .line 23
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .registers 5

    const-class v0, Lio/bidmachine/iab/vast/VastHelper;

    monitor-enter v0

    .line 3
    :try_start_3
    sget-boolean v1, Lio/bidmachine/iab/vast/VastHelper;->d:Z

    if-nez v1, :cond_33

    .line 4
    const-class v1, Lio/bidmachine/iab/vast/VastHelper;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_31

    .line 5
    :try_start_a
    sget-boolean v2, Lio/bidmachine/iab/vast/VastHelper;->d:Z

    if-nez v2, :cond_2d

    .line 6
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 7
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    sput-boolean v2, Lio/bidmachine/iab/vast/VastHelper;->e:Z

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v2, Lio/bidmachine/iab/vast/VastHelper;->b:Landroid/content/BroadcastReceiver;

    sget-object v3, Lio/bidmachine/iab/vast/VastHelper;->c:Landroid/content/IntentFilter;

    .line 9
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p0, 0x1

    .line 10
    sput-boolean p0, Lio/bidmachine/iab/vast/VastHelper;->d:Z

    goto :goto_2d

    :catchall_2b
    move-exception p0

    goto :goto_2f

    .line 12
    :cond_2d
    :goto_2d
    monitor-exit v1

    goto :goto_33

    :goto_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_2b

    :try_start_30
    throw p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception p0

    goto :goto_35

    :cond_33
    :goto_33
    monitor-exit v0

    return-void

    :goto_35
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_31

    throw p0
.end method

.method public static synthetic a()Z
    .registers 1

    .line 1
    sget-boolean v0, Lio/bidmachine/iab/vast/VastHelper;->e:Z

    return v0
.end method

.method public static synthetic a(Z)Z
    .registers 1

    .line 2
    sput-boolean p0, Lio/bidmachine/iab/vast/VastHelper;->e:Z

    return p0
.end method

.method public static addScreenStateChangeListener(Landroid/view/View;Lio/bidmachine/iab/vast/VastHelper$OnScreenStateChangeListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "listener"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/iab/vast/VastHelper;->a(Landroid/content/Context;)V

    .line 2
    sget-object v0, Lio/bidmachine/iab/vast/VastHelper;->a:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 3
    :try_start_a
    invoke-virtual {v0, p0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    throw p0
.end method

.method public static isScreenOn(Landroid/content/Context;)Z
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/bidmachine/iab/vast/VastHelper;->a(Landroid/content/Context;)V

    .line 2
    sget-boolean p0, Lio/bidmachine/iab/vast/VastHelper;->e:Z

    return p0
.end method

.method public static removeScreenStateChangeListener(Landroid/view/View;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lio/bidmachine/iab/vast/VastHelper;->d:Z

    if-nez v0, :cond_5

    return-void

    .line 4
    :cond_5
    sget-object v0, Lio/bidmachine/iab/vast/VastHelper;->a:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 5
    :try_start_8
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw p0
.end method

###### Class io.bidmachine.iab.vast.VastHelper.OnScreenStateChangeListener (io.bidmachine.iab.vast.VastHelper$OnScreenStateChangeListener)
.class public interface abstract Lio/bidmachine/iab/vast/VastHelper$OnScreenStateChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/VastHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnScreenStateChangeListener"
.end annotation


# virtual methods
.method public abstract onScreenStateChange(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isScreenOn"
        }
    .end annotation
.end method

###### Class io.bidmachine.iab.vast.VastHelper.a (io.bidmachine.iab.vast.VastHelper$a)
.class public Lio/bidmachine/iab/vast/VastHelper$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/VastHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 1
    const-class p1, Lio/bidmachine/iab/vast/VastHelper;

    monitor-enter p1

    .line 2
    :try_start_3
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p2}, Lio/bidmachine/iab/vast/VastHelper;->a(Z)Z

    .line 3
    monitor-exit p1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_36

    .line 4
    sget-object p2, Lio/bidmachine/iab/vast/VastHelper;->a:Ljava/util/WeakHashMap;

    monitor-enter p2

    .line 5
    :try_start_14
    invoke-virtual {p2}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/iab/vast/VastHelper$OnScreenStateChangeListener;

    .line 6
    invoke-static {}, Lio/bidmachine/iab/vast/VastHelper;->a()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/bidmachine/iab/vast/VastHelper$OnScreenStateChangeListener;->onScreenStateChange(Z)V

    goto :goto_1c

    :catchall_30
    move-exception p1

    goto :goto_34

    .line 8
    :cond_32
    monitor-exit p2

    return-void

    .line 9
    :goto_34
    monitor-exit p2
    :try_end_35
    .catchall {:try_start_14 .. :try_end_35} :catchall_30

    throw p1

    :catchall_36
    move-exception p2

    .line 10
    :try_start_37
    monitor-exit p1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p2
.end method
