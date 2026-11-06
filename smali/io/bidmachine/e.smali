###### Class io.bidmachine.e (io.bidmachine.e)
.class public Lio/bidmachine/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile b:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$c08oElZ1Hneoko2qAWspCu2xDJ8(Lio/bidmachine/e;Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lio/bidmachine/e;->a(Landroid/content/Context;)V

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

    iput-object v0, p0, Lio/bidmachine/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/e;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/e;->b:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic a(Landroid/content/Context;)V
    .registers 3

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/appset/AppSet;->getClient(Landroid/content/Context;)Lcom/google/android/gms/appset/AppSetIdClient;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/appset/AppSetIdClient;->getAppSetIdInfo()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lio/bidmachine/e$a;

    invoke-direct {v0, p0}, Lio/bidmachine/e$a;-><init>(Lio/bidmachine/e;)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 5
    :cond_b
    invoke-static {}, Lio/bidmachine/p;->a()Lio/bidmachine/utils/task/TaskManager;

    move-result-object v0

    new-instance v1, Lio/bidmachine/e$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/e$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/e;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lio/bidmachine/utils/task/TaskManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class io.bidmachine.e.a (io.bidmachine.e$a)
.class public Lio/bidmachine/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/e;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/e;


# direct methods
.method public constructor <init>(Lio/bidmachine/e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/e$a;->a:Lio/bidmachine/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/appset/AppSetIdInfo;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/appset/AppSetIdInfo;->getScope()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 2
    iget-object v0, p0, Lio/bidmachine/e$a;->a:Lio/bidmachine/e;

    invoke-virtual {p1}, Lcom/google/android/gms/appset/AppSetIdInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/bidmachine/e;->a(Lio/bidmachine/e;Ljava/lang/String;)Ljava/lang/String;

    :cond_10
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/appset/AppSetIdInfo;

    invoke-virtual {p0, p1}, Lio/bidmachine/e$a;->a(Lcom/google/android/gms/appset/AppSetIdInfo;)V

    return-void
.end method

###### Class io.bidmachine.e$$ExternalSyntheticLambda0 (io.bidmachine.e$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/e$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/internal/p;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/e;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/e;Landroid/content/Context;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/e$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/e;

    iput-object p2, p0, Lio/bidmachine/e$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onRun()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/e$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/e;

    iget-object v1, p0, Lio/bidmachine/e$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-static {v0, v1}, Lio/bidmachine/e;->$r8$lambda$c08oElZ1Hneoko2qAWspCu2xDJ8(Lio/bidmachine/e;Landroid/content/Context;)V

    return-void
.end method
