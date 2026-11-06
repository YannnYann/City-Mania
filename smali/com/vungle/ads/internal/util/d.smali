###### Class com.vungle.ads.internal.util.d (com.vungle.ads.internal.util.d)
.class public final Lcom/vungle/ads/internal/util/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field public static final f:Lcom/vungle/ads/internal/util/d;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile b:I

.field public volatile c:Z

.field public volatile d:Lcom/vungle/ads/internal/util/c;

.field public final e:Ljava/util/concurrent/CopyOnWriteArraySet;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/util/d;

    invoke-direct {v0}, Lcom/vungle/ads/internal/util/d;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/util/d;->f:Lcom/vungle/ads/internal/util/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vungle/ads/internal/util/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/vungle/ads/internal/util/d;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method public static final a(Lcom/vungle/ads/internal/util/d;Landroid/content/Context;)V
    .registers 4

    .line 25
    iget-object v0, p0, Lcom/vungle/ads/internal/util/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_41

    .line 27
    :cond_a
    :try_start_a
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.Application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Application;

    .line 29
    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 30
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 31
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_21

    goto :goto_2c

    :catchall_21
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 34
    :goto_2c
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_41

    .line 35
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v0, "ActivityManager"

    const-string v1, "Error initializing ActivityManager"

    invoke-static {v0, v1, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    iget-object p0, p0, Lcom/vungle/ads/internal/util/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_41
    :goto_41
    return-void
.end method

.method public static final a(Lcom/vungle/ads/internal/util/d;Lcom/vungle/ads/internal/util/b;)V
    .registers 2

    .line 39
    iget-object p0, p0, Lcom/vungle/ads/internal/util/d;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 40
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final synthetic a(Lcom/vungle/ads/internal/util/d;Lcom/vungle/ads/internal/util/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/util/d;->d:Lcom/vungle/ads/internal/util/c;

    return-void
.end method

.method public static final a(Lcom/vungle/ads/internal/util/d;)Z
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/vungle/ads/internal/util/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean p0, p0, Lcom/vungle/ads/internal/util/d;->c:Z

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public static final a(Lcom/vungle/ads/internal/util/d;Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;Lcom/vungle/ads/internal/ui/m;)Z
    .registers 9

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_12

    .line 3
    :try_start_7
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    if-eqz p4, :cond_3f

    .line 4
    invoke-interface {p4, v0}, Lcom/vungle/ads/internal/ui/m;->a(Z)V

    goto :goto_3f

    :catch_10
    move-exception v1

    goto :goto_18

    :cond_12
    if-eqz p3, :cond_40

    .line 8
    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_10

    goto :goto_3f

    .line 15
    :goto_18
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_37

    if-eqz p4, :cond_37

    .line 18
    :try_start_34
    invoke-interface {p4, p0}, Lcom/vungle/ads/internal/ui/m;->a(Z)V

    :cond_37
    if-eqz p2, :cond_40

    if-nez p3, :cond_3c

    goto :goto_40

    .line 24
    :cond_3c
    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3f} :catch_40

    :cond_3f
    :goto_3f
    move p0, v0

    :catch_40
    :cond_40
    :goto_40
    return p0
.end method


# virtual methods
.method public final a(Lcom/vungle/ads/internal/util/b;)V
    .registers 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/vungle/ads/internal/util/d;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    .line 0
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/util/d;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 109
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/ads/internal/util/b;

    .line 110
    invoke-virtual {v1, p1}, Lcom/vungle/ads/internal/util/b;->a(Landroid/app/Activity;)V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/util/d;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 113
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/ads/internal/util/b;

    .line 114
    invoke-virtual {v1, p1}, Lcom/vungle/ads/internal/util/b;->b(Landroid/app/Activity;)V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    .line 0
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "outState"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 5

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p0, Lcom/vungle/ads/internal/util/d;->b:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/vungle/ads/internal/util/d;->b:I

    .line 2
    iget-boolean p1, p0, Lcom/vungle/ads/internal/util/d;->c:Z

    if-nez p1, :cond_52

    iget p1, p0, Lcom/vungle/ads/internal/util/d;->b:I

    if-ne p1, v0, :cond_52

    .line 3
    iput-boolean v0, p0, Lcom/vungle/ads/internal/util/d;->c:Z

    .line 5
    iget-object p1, p0, Lcom/vungle/ads/internal/util/d;->d:Lcom/vungle/ads/internal/util/c;

    if-eqz p1, :cond_3c

    .line 6
    invoke-virtual {p1}, Lcom/vungle/ads/internal/util/c;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_39

    .line 7
    const-string v1, "it"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/ads/internal/util/c;->c()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/util/c;->d()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1}, Lcom/vungle/ads/internal/util/c;->a()Lcom/vungle/ads/internal/ui/m;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lcom/vungle/ads/internal/util/a;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;Lcom/vungle/ads/internal/ui/m;)Z

    :cond_39
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/vungle/ads/internal/util/d;->d:Lcom/vungle/ads/internal/util/c;

    .line 12
    :cond_3c
    iget-object p1, p0, Lcom/vungle/ads/internal/util/d;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 138
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_42
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/util/b;

    .line 139
    invoke-virtual {v0}, Lcom/vungle/ads/internal/util/b;->b()V

    goto :goto_42

    :cond_52
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p0, Lcom/vungle/ads/internal/util/d;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/vungle/ads/internal/util/d;->b:I

    .line 2
    iget-boolean p1, p0, Lcom/vungle/ads/internal/util/d;->c:Z

    if-eqz p1, :cond_2c

    iget p1, p0, Lcom/vungle/ads/internal/util/d;->b:I

    if-nez p1, :cond_2c

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/vungle/ads/internal/util/d;->c:Z

    .line 5
    iget-object p1, p0, Lcom/vungle/ads/internal/util/d;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 122
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/util/b;

    .line 123
    invoke-virtual {v0}, Lcom/vungle/ads/internal/util/b;->a()V

    goto :goto_1c

    :cond_2c
    return-void
.end method
