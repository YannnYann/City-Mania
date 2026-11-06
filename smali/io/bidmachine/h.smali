###### Class io.bidmachine.h (io.bidmachine.h)
.class public abstract Lio/bidmachine/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/h$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/bidmachine/h;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a()Landroid/app/Activity;
    .registers 1

    .line 12
    sget-object v0, Lio/bidmachine/util/TopActivityHolder;->INSTANCE:Lio/bidmachine/util/TopActivityHolder;

    invoke-virtual {v0}, Lio/bidmachine/util/TopActivityHolder;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 2

    .line 13
    sget-object v0, Lio/bidmachine/util/TopActivityHolder;->INSTANCE:Lio/bidmachine/util/TopActivityHolder;

    invoke-virtual {v0, p0}, Lio/bidmachine/util/TopActivityHolder;->setTopActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4

    .line 1
    sget-object v0, Lio/bidmachine/h;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_23

    .line 6
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 7
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_23

    .line 8
    check-cast p0, Landroid/app/Application;

    new-instance v0, Lio/bidmachine/h$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/h$b;-><init>(Lio/bidmachine/h$a;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception p0

    .line 11
    invoke-static {p0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :cond_23
    :goto_23
    return-void
.end method

###### Class io.bidmachine.h.a (io.bidmachine.h$a)
.class public abstract synthetic Lio/bidmachine/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.h.b (io.bidmachine.h$b)
.class public Lio/bidmachine/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$0rE6bgXjeec88GCZZLzlqZiJBxk()V
    .registers 0

    .line 0
    invoke-static {}, Lio/bidmachine/h$b;->a()V

    return-void
.end method

.method public static synthetic $r8$lambda$zf-sw7DXG0CVn5vtQhR--sLW6zE()V
    .registers 0

    .line 0
    invoke-static {}, Lio/bidmachine/h$b;->b()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/h$a;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lio/bidmachine/h$b;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .registers 1

    .line 1
    :try_start_0
    invoke-static {}, Lio/bidmachine/SessionManager;->get()Lio/bidmachine/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/SessionManager;->pause()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_7

    :catchall_7
    return-void
.end method

.method public static synthetic b()V
    .registers 1

    .line 1
    :try_start_0
    invoke-static {}, Lio/bidmachine/SessionManager;->get()Lio/bidmachine/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/SessionManager;->resume()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_7

    :catchall_7
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    .line 1
    :try_start_0
    new-instance p1, Lio/bidmachine/h$b$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lio/bidmachine/h$b$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1}, Lio/bidmachine/core/Utils;->onBackgroundThread(Ljava/lang/Runnable;)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_8

    :catchall_8
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    .line 1
    :try_start_0
    invoke-static {p1}, Lio/bidmachine/h;->a(Landroid/app/Activity;)V

    .line 3
    new-instance p1, Lio/bidmachine/h$b$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lio/bidmachine/h$b$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1}, Lio/bidmachine/core/Utils;->onBackgroundThread(Ljava/lang/Runnable;)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_b

    :catchall_b
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    .line 1
    :try_start_0
    invoke-static {p1}, Lio/bidmachine/h;->a(Landroid/app/Activity;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_3

    :catchall_3
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    .line 0
    return-void
.end method

###### Class io.bidmachine.h$b$$ExternalSyntheticLambda0 (io.bidmachine.h$b$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/h$b$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    invoke-static {}, Lio/bidmachine/h$b;->$r8$lambda$zf-sw7DXG0CVn5vtQhR--sLW6zE()V

    return-void
.end method

###### Class io.bidmachine.h$b$$ExternalSyntheticLambda1 (io.bidmachine.h$b$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/h$b$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    invoke-static {}, Lio/bidmachine/h$b;->$r8$lambda$0rE6bgXjeec88GCZZLzlqZiJBxk()V

    return-void
.end method
