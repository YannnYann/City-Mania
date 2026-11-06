###### Class com.iab.omid.library.ironsrc.internal.j (com.iab.omid.library.ironsrc.internal.j)
.class public Lcom/iab/omid/library/ironsrc/internal/j;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/iab/omid/library/ironsrc/internal/j;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/iab/omid/library/ironsrc/internal/j;

    invoke-direct {v0}, Lcom/iab/omid/library/ironsrc/internal/j;-><init>()V

    sput-object v0, Lcom/iab/omid/library/ironsrc/internal/j;->d:Lcom/iab/omid/library/ironsrc/internal/j;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iab/omid/library/ironsrc/internal/j;->b:Z

    iput-boolean v0, p0, Lcom/iab/omid/library/ironsrc/internal/j;->c:Z

    return-void
.end method

.method public static synthetic a(Lcom/iab/omid/library/ironsrc/internal/j;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/iab/omid/library/ironsrc/internal/j;->c:Z

    return p0
.end method

.method public static synthetic a(Lcom/iab/omid/library/ironsrc/internal/j;Z)Z
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/iab/omid/library/ironsrc/internal/j;->b:Z

    return p1
.end method

.method public static b()Lcom/iab/omid/library/ironsrc/internal/j;
    .registers 1

    .line 0
    sget-object v0, Lcom/iab/omid/library/ironsrc/internal/j;->d:Lcom/iab/omid/library/ironsrc/internal/j;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/internal/j;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_b

    goto :goto_15

    :cond_b
    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-nez v0, :cond_16

    :goto_15
    return-void

    :cond_16
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v0

    iget-boolean v1, p0, Lcom/iab/omid/library/ironsrc/internal/j;->b:Z

    invoke-virtual {p0, v1, v0}, Lcom/iab/omid/library/ironsrc/internal/j;->a(ZZ)V

    iput-boolean v0, p0, Lcom/iab/omid/library/ironsrc/internal/j;->c:Z

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 4

    .line 0
    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/iab/omid/library/ironsrc/internal/j;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/iab/omid/library/ironsrc/internal/j$a;

    invoke-direct {v1, p0}, Lcom/iab/omid/library/ironsrc/internal/j$a;-><init>(Lcom/iab/omid/library/ironsrc/internal/j;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public a(ZZ)V
    .registers 8

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_9

    if-eqz p1, :cond_7

    goto :goto_9

    :cond_7
    move v2, v1

    goto :goto_a

    :cond_9
    :goto_9
    move v2, v0

    :goto_a
    iget-boolean v3, p0, Lcom/iab/omid/library/ironsrc/internal/j;->c:Z

    if-nez v3, :cond_15

    iget-boolean v3, p0, Lcom/iab/omid/library/ironsrc/internal/j;->b:Z

    if-eqz v3, :cond_13

    goto :goto_15

    :cond_13
    move v3, v1

    goto :goto_16

    :cond_15
    :goto_15
    move v3, v0

    :goto_16
    if-ne v2, v3, :cond_19

    goto :goto_41

    :cond_19
    invoke-static {}, Lcom/iab/omid/library/ironsrc/internal/c;->c()Lcom/iab/omid/library/ironsrc/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iab/omid/library/ironsrc/internal/c;->b()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-virtual {v3}, Lcom/iab/omid/library/ironsrc/adsession/a;->d()Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;

    move-result-object v3

    if-nez p2, :cond_3c

    if-eqz p1, :cond_3a

    goto :goto_3c

    :cond_3a
    move v4, v1

    goto :goto_3d

    :cond_3c
    :goto_3c
    move v4, v0

    :goto_3d
    invoke-virtual {v3, v4}, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->b(Z)V

    goto :goto_25

    :cond_41
    :goto_41
    return-void
.end method

###### Class com.iab.omid.library.ironsrc.internal.j.a (com.iab.omid.library.ironsrc.internal.j$a)
.class Lcom/iab/omid/library/ironsrc/internal/j$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iab/omid/library/ironsrc/internal/j;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iab/omid/library/ironsrc/internal/j;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/ironsrc/internal/j;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/iab/omid/library/ironsrc/internal/j$a;->a:Lcom/iab/omid/library/ironsrc/internal/j;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/iab/omid/library/ironsrc/internal/j$a;->a:Lcom/iab/omid/library/ironsrc/internal/j;

    invoke-static {p1}, Lcom/iab/omid/library/ironsrc/internal/j;->a(Lcom/iab/omid/library/ironsrc/internal/j;)Z

    move-result p2

    const/4 v0, 0x1

    :goto_13
    invoke-virtual {p1, v0, p2}, Lcom/iab/omid/library/ironsrc/internal/j;->a(ZZ)V

    iget-object p1, p0, Lcom/iab/omid/library/ironsrc/internal/j$a;->a:Lcom/iab/omid/library/ironsrc/internal/j;

    invoke-static {p1, v0}, Lcom/iab/omid/library/ironsrc/internal/j;->a(Lcom/iab/omid/library/ironsrc/internal/j;Z)Z

    return-void

    :cond_1c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    iget-object p1, p0, Lcom/iab/omid/library/ironsrc/internal/j$a;->a:Lcom/iab/omid/library/ironsrc/internal/j;

    invoke-static {p1}, Lcom/iab/omid/library/ironsrc/internal/j;->a(Lcom/iab/omid/library/ironsrc/internal/j;)Z

    move-result p2

    const/4 v0, 0x0

    goto :goto_13

    :cond_30
    return-void
.end method
