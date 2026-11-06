###### Class com.ironsource.lifecycle.b (com.ironsource.lifecycle.b)
.class public Lcom/ironsource/lifecycle/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final m:Lcom/ironsource/lifecycle/b;

.field private static n:Ljava/util/concurrent/atomic/AtomicBoolean; = null

.field static final o:J = 0x2bcL


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Lcom/ironsource/ra;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/qa;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/ironsource/Ff$a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/Runnable;

.field private final i:Ljava/lang/Runnable;

.field private final j:Ljava/lang/Runnable;

.field private final k:Ljava/lang/Runnable;

.field private final l:Lcom/ironsource/lifecycle/a$a;


# direct methods
.method public static synthetic $r8$lambda$HVS4nALR6Iqxx8jtAcBJRLqDq_c(Lcom/ironsource/lifecycle/b;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/ironsource/lifecycle/b;->f()V

    return-void
.end method

.method public static synthetic $r8$lambda$QhQxLrtPVKhkWiWI-DRvO174ZKk(Lcom/ironsource/lifecycle/b;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/ironsource/lifecycle/b;->g()V

    return-void
.end method

.method public static synthetic $r8$lambda$SeGC8QYGPipAvu_jzF9Fv8oxNtI(Lcom/ironsource/lifecycle/b;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/ironsource/lifecycle/b;->h()V

    return-void
.end method

.method public static synthetic $r8$lambda$_xG7qme8xtDbUeDmtfD2paOYlAc(Lcom/ironsource/lifecycle/b;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/ironsource/lifecycle/b;->j()V

    return-void
.end method

.method public static synthetic $r8$lambda$o8jsJ4oGggX_ybxkgU_RiqhkHLw(Lcom/ironsource/lifecycle/b;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/ironsource/lifecycle/b;->i()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/ironsource/lifecycle/b;

    invoke-direct {v0}, Lcom/ironsource/lifecycle/b;-><init>()V

    sput-object v0, Lcom/ironsource/lifecycle/b;->m:Lcom/ironsource/lifecycle/b;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/ironsource/lifecycle/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/ironsource/lifecycle/b;->a:I

    .line 16
    iput v0, p0, Lcom/ironsource/lifecycle/b;->b:I

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/ironsource/lifecycle/b;->c:Z

    .line 19
    iput-boolean v0, p0, Lcom/ironsource/lifecycle/b;->d:Z

    .line 22
    sget-object v0, Lcom/ironsource/ra;->a:Lcom/ironsource/ra;

    iput-object v0, p0, Lcom/ironsource/lifecycle/b;->e:Lcom/ironsource/ra;

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/lifecycle/b;->f:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/ironsource/lifecycle/b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 28
    new-instance v0, Lcom/ironsource/lifecycle/b$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/ironsource/lifecycle/b$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/lifecycle/b;)V

    iput-object v0, p0, Lcom/ironsource/lifecycle/b;->h:Ljava/lang/Runnable;

    .line 35
    new-instance v0, Lcom/ironsource/lifecycle/b$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/ironsource/lifecycle/b$$ExternalSyntheticLambda2;-><init>(Lcom/ironsource/lifecycle/b;)V

    iput-object v0, p0, Lcom/ironsource/lifecycle/b;->i:Ljava/lang/Runnable;

    .line 42
    new-instance v0, Lcom/ironsource/lifecycle/b$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/ironsource/lifecycle/b$$ExternalSyntheticLambda3;-><init>(Lcom/ironsource/lifecycle/b;)V

    iput-object v0, p0, Lcom/ironsource/lifecycle/b;->j:Ljava/lang/Runnable;

    .line 49
    new-instance v0, Lcom/ironsource/lifecycle/b$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/ironsource/lifecycle/b$$ExternalSyntheticLambda4;-><init>(Lcom/ironsource/lifecycle/b;)V

    iput-object v0, p0, Lcom/ironsource/lifecycle/b;->k:Ljava/lang/Runnable;

    .line 190
    new-instance v0, Lcom/ironsource/lifecycle/b$a;

    invoke-direct {v0, p0}, Lcom/ironsource/lifecycle/b$a;-><init>(Lcom/ironsource/lifecycle/b;)V

    iput-object v0, p0, Lcom/ironsource/lifecycle/b;->l:Lcom/ironsource/lifecycle/a$a;

    return-void
.end method

.method private a()V
    .registers 3

    .line 21
    iget v0, p0, Lcom/ironsource/lifecycle/b;->b:I

    if-nez v0, :cond_12

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/ironsource/lifecycle/b;->c:Z

    .line 23
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    iget-object v1, p0, Lcom/ironsource/lifecycle/b;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postMediationBackgroundTask(Ljava/lang/Runnable;)V

    .line 24
    sget-object v0, Lcom/ironsource/ra;->d:Lcom/ironsource/ra;

    iput-object v0, p0, Lcom/ironsource/lifecycle/b;->e:Lcom/ironsource/ra;

    :cond_12
    return-void
.end method

.method private b()V
    .registers 3

    .line 13
    iget v0, p0, Lcom/ironsource/lifecycle/b;->a:I

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/ironsource/lifecycle/b;->c:Z

    if-eqz v0, :cond_16

    .line 15
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    iget-object v1, p0, Lcom/ironsource/lifecycle/b;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postMediationBackgroundTask(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/ironsource/lifecycle/b;->d:Z

    .line 17
    sget-object v0, Lcom/ironsource/ra;->e:Lcom/ironsource/ra;

    iput-object v0, p0, Lcom/ironsource/lifecycle/b;->e:Lcom/ironsource/ra;

    :cond_16
    return-void
.end method

.method public static d()Lcom/ironsource/lifecycle/b;
    .registers 1

    .line 1
    sget-object v0, Lcom/ironsource/lifecycle/b;->m:Lcom/ironsource/lifecycle/b;

    return-object v0
.end method

.method private synthetic f()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/ironsource/lifecycle/b;->a()V

    .line 2
    invoke-direct {p0}, Lcom/ironsource/lifecycle/b;->b()V

    return-void
.end method

.method private synthetic g()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/lifecycle/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/qa;

    .line 2
    invoke-interface {v1}, Lcom/ironsource/qa;->d()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private synthetic h()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/lifecycle/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/qa;

    .line 2
    invoke-interface {v1}, Lcom/ironsource/qa;->a()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private synthetic i()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/lifecycle/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/qa;

    .line 2
    invoke-interface {v1}, Lcom/ironsource/qa;->c()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private synthetic j()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/lifecycle/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/qa;

    .line 2
    invoke-interface {v1}, Lcom/ironsource/qa;->b()V

    goto :goto_6

    :cond_16
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 5

    .line 11
    iget p1, p0, Lcom/ironsource/lifecycle/b;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/ironsource/lifecycle/b;->b:I

    if-nez p1, :cond_1a

    .line 13
    sget-object p1, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v0, Lcom/ironsource/lifecycle/b$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/ironsource/lifecycle/b$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/lifecycle/b;)V

    const-wide/16 v1, 0x2bc

    .line 14
    invoke-virtual {p1, v0, v1, v2}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;J)Lcom/ironsource/Ff$a;

    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/ironsource/lifecycle/b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 5

    .line 4
    sget-object v0, Lcom/ironsource/lifecycle/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    if-eqz p1, :cond_15

    .line 10
    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_15
    return-void
.end method

.method public a(Lcom/ironsource/qa;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/ironsource/lifecycle/IronsourceLifecycleProvider;->a()Z

    move-result v0

    if-eqz v0, :cond_15

    if-eqz p1, :cond_15

    .line 2
    iget-object v0, p0, Lcom/ironsource/lifecycle/b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 3
    iget-object v0, p0, Lcom/ironsource/lifecycle/b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .registers 3

    .line 3
    iget p1, p0, Lcom/ironsource/lifecycle/b;->b:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/ironsource/lifecycle/b;->b:I

    if-ne p1, v0, :cond_28

    .line 5
    iget-boolean p1, p0, Lcom/ironsource/lifecycle/b;->c:Z

    if-eqz p1, :cond_1b

    .line 6
    sget-object p1, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    iget-object v0, p0, Lcom/ironsource/lifecycle/b;->j:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postMediationBackgroundTask(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/ironsource/lifecycle/b;->c:Z

    .line 8
    sget-object p1, Lcom/ironsource/ra;->c:Lcom/ironsource/ra;

    iput-object p1, p0, Lcom/ironsource/lifecycle/b;->e:Lcom/ironsource/ra;

    return-void

    .line 10
    :cond_1b
    iget-object p1, p0, Lcom/ironsource/lifecycle/b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/Ff$a;

    if-eqz p1, :cond_28

    .line 12
    invoke-virtual {p1}, Lcom/ironsource/Ff$a;->a()V

    :cond_28
    return-void
.end method

.method public b(Lcom/ironsource/qa;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/lifecycle/b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    iget-object v0, p0, Lcom/ironsource/lifecycle/b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public c()Lcom/ironsource/ra;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/lifecycle/b;->e:Lcom/ironsource/ra;

    return-object v0
.end method

.method public c(Landroid/app/Activity;)V
    .registers 3

    .line 2
    iget p1, p0, Lcom/ironsource/lifecycle/b;->a:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/ironsource/lifecycle/b;->a:I

    if-ne p1, v0, :cond_1a

    .line 3
    iget-boolean p1, p0, Lcom/ironsource/lifecycle/b;->d:Z

    if-eqz p1, :cond_1a

    .line 4
    sget-object p1, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    iget-object v0, p0, Lcom/ironsource/lifecycle/b;->k:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postMediationBackgroundTask(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/ironsource/lifecycle/b;->d:Z

    .line 6
    sget-object p1, Lcom/ironsource/ra;->b:Lcom/ironsource/ra;

    iput-object p1, p0, Lcom/ironsource/lifecycle/b;->e:Lcom/ironsource/ra;

    :cond_1a
    return-void
.end method

.method public d(Landroid/app/Activity;)V
    .registers 2

    .line 2
    iget p1, p0, Lcom/ironsource/lifecycle/b;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/ironsource/lifecycle/b;->a:I

    .line 3
    invoke-direct {p0}, Lcom/ironsource/lifecycle/b;->b()V

    return-void
.end method

.method public e()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/lifecycle/b;->e:Lcom/ironsource/ra;

    sget-object v1, Lcom/ironsource/ra;->e:Lcom/ironsource/ra;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/ironsource/lifecycle/a;->b(Landroid/app/Activity;)V

    .line 2
    invoke-static {p1}, Lcom/ironsource/lifecycle/a;->a(Landroid/app/Activity;)Lcom/ironsource/lifecycle/a;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 4
    iget-object p2, p0, Lcom/ironsource/lifecycle/b;->l:Lcom/ironsource/lifecycle/a$a;

    invoke-virtual {p1, p2}, Lcom/ironsource/lifecycle/a;->d(Lcom/ironsource/lifecycle/a$a;)V

    :cond_e
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
    invoke-virtual {p0, p1}, Lcom/ironsource/lifecycle/b;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/ironsource/lifecycle/b;->d(Landroid/app/Activity;)V

    return-void
.end method

###### Class com.ironsource.lifecycle.b.a (com.ironsource.lifecycle.b$a)
.class Lcom/ironsource/lifecycle/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/lifecycle/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/lifecycle/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/lifecycle/b;


# direct methods
.method public constructor <init>(Lcom/ironsource/lifecycle/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/lifecycle/b$a;->a:Lcom/ironsource/lifecycle/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/lifecycle/b$a;->a:Lcom/ironsource/lifecycle/b;

    invoke-virtual {v0, p1}, Lcom/ironsource/lifecycle/b;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/lifecycle/b$a;->a:Lcom/ironsource/lifecycle/b;

    invoke-virtual {v0, p1}, Lcom/ironsource/lifecycle/b;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .registers 2

    .line 0
    return-void
.end method

###### Class com.ironsource.lifecycle.b$$ExternalSyntheticLambda0 (com.ironsource.lifecycle.b$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/lifecycle/b$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/lifecycle/b;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/lifecycle/b;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/lifecycle/b$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/lifecycle/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/lifecycle/b$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/lifecycle/b;

    invoke-static {v0}, Lcom/ironsource/lifecycle/b;->$r8$lambda$HVS4nALR6Iqxx8jtAcBJRLqDq_c(Lcom/ironsource/lifecycle/b;)V

    return-void
.end method

###### Class com.ironsource.lifecycle.b$$ExternalSyntheticLambda1 (com.ironsource.lifecycle.b$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/ironsource/lifecycle/b$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/lifecycle/b;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/lifecycle/b;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/lifecycle/b$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/lifecycle/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/lifecycle/b$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/lifecycle/b;

    invoke-static {v0}, Lcom/ironsource/lifecycle/b;->$r8$lambda$QhQxLrtPVKhkWiWI-DRvO174ZKk(Lcom/ironsource/lifecycle/b;)V

    return-void
.end method

###### Class com.ironsource.lifecycle.b$$ExternalSyntheticLambda2 (com.ironsource.lifecycle.b$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/ironsource/lifecycle/b$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/lifecycle/b;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/lifecycle/b;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/lifecycle/b$$ExternalSyntheticLambda2;->f$0:Lcom/ironsource/lifecycle/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/lifecycle/b$$ExternalSyntheticLambda2;->f$0:Lcom/ironsource/lifecycle/b;

    invoke-static {v0}, Lcom/ironsource/lifecycle/b;->$r8$lambda$SeGC8QYGPipAvu_jzF9Fv8oxNtI(Lcom/ironsource/lifecycle/b;)V

    return-void
.end method

###### Class com.ironsource.lifecycle.b$$ExternalSyntheticLambda3 (com.ironsource.lifecycle.b$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/ironsource/lifecycle/b$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/lifecycle/b;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/lifecycle/b;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/lifecycle/b$$ExternalSyntheticLambda3;->f$0:Lcom/ironsource/lifecycle/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/lifecycle/b$$ExternalSyntheticLambda3;->f$0:Lcom/ironsource/lifecycle/b;

    invoke-static {v0}, Lcom/ironsource/lifecycle/b;->$r8$lambda$o8jsJ4oGggX_ybxkgU_RiqhkHLw(Lcom/ironsource/lifecycle/b;)V

    return-void
.end method

###### Class com.ironsource.lifecycle.b$$ExternalSyntheticLambda4 (com.ironsource.lifecycle.b$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/ironsource/lifecycle/b$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/lifecycle/b;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/lifecycle/b;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/lifecycle/b$$ExternalSyntheticLambda4;->f$0:Lcom/ironsource/lifecycle/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/lifecycle/b$$ExternalSyntheticLambda4;->f$0:Lcom/ironsource/lifecycle/b;

    invoke-static {v0}, Lcom/ironsource/lifecycle/b;->$r8$lambda$_xG7qme8xtDbUeDmtfD2paOYlAc(Lcom/ironsource/lifecycle/b;)V

    return-void
.end method
