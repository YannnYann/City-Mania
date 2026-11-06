###### Class com.iab.omid.library.appodeal.internal.i (com.iab.omid.library.appodeal.internal.i)
.class public Lcom/iab/omid/library/appodeal/internal/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iab/omid/library/appodeal/internal/d$a;
.implements Lcom/iab/omid/library/appodeal/devicevolume/c;


# static fields
.field private static f:Lcom/iab/omid/library/appodeal/internal/i;


# instance fields
.field private a:F

.field private final b:Lcom/iab/omid/library/appodeal/devicevolume/e;

.field private final c:Lcom/iab/omid/library/appodeal/devicevolume/b;

.field private d:Lcom/iab/omid/library/appodeal/devicevolume/d;

.field private e:Lcom/iab/omid/library/appodeal/internal/c;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/appodeal/devicevolume/e;Lcom/iab/omid/library/appodeal/devicevolume/b;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/iab/omid/library/appodeal/internal/i;->a:F

    iput-object p1, p0, Lcom/iab/omid/library/appodeal/internal/i;->b:Lcom/iab/omid/library/appodeal/devicevolume/e;

    iput-object p2, p0, Lcom/iab/omid/library/appodeal/internal/i;->c:Lcom/iab/omid/library/appodeal/devicevolume/b;

    return-void
.end method

.method private a()Lcom/iab/omid/library/appodeal/internal/c;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/iab/omid/library/appodeal/internal/i;->e:Lcom/iab/omid/library/appodeal/internal/c;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/iab/omid/library/appodeal/internal/c;->c()Lcom/iab/omid/library/appodeal/internal/c;

    move-result-object v0

    iput-object v0, p0, Lcom/iab/omid/library/appodeal/internal/i;->e:Lcom/iab/omid/library/appodeal/internal/c;

    :cond_a
    iget-object v0, p0, Lcom/iab/omid/library/appodeal/internal/i;->e:Lcom/iab/omid/library/appodeal/internal/c;

    return-object v0
.end method

.method public static c()Lcom/iab/omid/library/appodeal/internal/i;
    .registers 3

    .line 0
    sget-object v0, Lcom/iab/omid/library/appodeal/internal/i;->f:Lcom/iab/omid/library/appodeal/internal/i;

    if-nez v0, :cond_15

    new-instance v0, Lcom/iab/omid/library/appodeal/devicevolume/b;

    invoke-direct {v0}, Lcom/iab/omid/library/appodeal/devicevolume/b;-><init>()V

    new-instance v1, Lcom/iab/omid/library/appodeal/devicevolume/e;

    invoke-direct {v1}, Lcom/iab/omid/library/appodeal/devicevolume/e;-><init>()V

    new-instance v2, Lcom/iab/omid/library/appodeal/internal/i;

    invoke-direct {v2, v1, v0}, Lcom/iab/omid/library/appodeal/internal/i;-><init>(Lcom/iab/omid/library/appodeal/devicevolume/e;Lcom/iab/omid/library/appodeal/devicevolume/b;)V

    sput-object v2, Lcom/iab/omid/library/appodeal/internal/i;->f:Lcom/iab/omid/library/appodeal/internal/i;

    :cond_15
    sget-object v0, Lcom/iab/omid/library/appodeal/internal/i;->f:Lcom/iab/omid/library/appodeal/internal/i;

    return-object v0
.end method


# virtual methods
.method public a(F)V
    .registers 4

    .line 0
    iput p1, p0, Lcom/iab/omid/library/appodeal/internal/i;->a:F

    invoke-direct {p0}, Lcom/iab/omid/library/appodeal/internal/i;->a()Lcom/iab/omid/library/appodeal/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/appodeal/internal/c;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iab/omid/library/appodeal/adsession/a;

    invoke-virtual {v1}, Lcom/iab/omid/library/appodeal/adsession/a;->d()Lcom/iab/omid/library/appodeal/publisher/AdSessionStatePublisher;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iab/omid/library/appodeal/publisher/AdSessionStatePublisher;->a(F)V

    goto :goto_e

    :cond_22
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/iab/omid/library/appodeal/internal/i;->c:Lcom/iab/omid/library/appodeal/devicevolume/b;

    invoke-virtual {v0}, Lcom/iab/omid/library/appodeal/devicevolume/b;->a()Lcom/iab/omid/library/appodeal/devicevolume/a;

    move-result-object v0

    iget-object v1, p0, Lcom/iab/omid/library/appodeal/internal/i;->b:Lcom/iab/omid/library/appodeal/devicevolume/e;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v2, p1, v0, p0}, Lcom/iab/omid/library/appodeal/devicevolume/e;->a(Landroid/os/Handler;Landroid/content/Context;Lcom/iab/omid/library/appodeal/devicevolume/a;Lcom/iab/omid/library/appodeal/devicevolume/c;)Lcom/iab/omid/library/appodeal/devicevolume/d;

    move-result-object p1

    iput-object p1, p0, Lcom/iab/omid/library/appodeal/internal/i;->d:Lcom/iab/omid/library/appodeal/devicevolume/d;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 0
    if-eqz p1, :cond_a

    invoke-static {}, Lcom/iab/omid/library/appodeal/walking/TreeWalker;->getInstance()Lcom/iab/omid/library/appodeal/walking/TreeWalker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iab/omid/library/appodeal/walking/TreeWalker;->h()V

    return-void

    :cond_a
    invoke-static {}, Lcom/iab/omid/library/appodeal/walking/TreeWalker;->getInstance()Lcom/iab/omid/library/appodeal/walking/TreeWalker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iab/omid/library/appodeal/walking/TreeWalker;->g()V

    return-void
.end method

.method public b()F
    .registers 2

    .line 0
    iget v0, p0, Lcom/iab/omid/library/appodeal/internal/i;->a:F

    return v0
.end method

.method public d()V
    .registers 2

    .line 0
    invoke-static {}, Lcom/iab/omid/library/appodeal/internal/b;->g()Lcom/iab/omid/library/appodeal/internal/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iab/omid/library/appodeal/internal/d;->a(Lcom/iab/omid/library/appodeal/internal/d$a;)V

    invoke-static {}, Lcom/iab/omid/library/appodeal/internal/b;->g()Lcom/iab/omid/library/appodeal/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/appodeal/internal/d;->e()V

    invoke-static {}, Lcom/iab/omid/library/appodeal/walking/TreeWalker;->getInstance()Lcom/iab/omid/library/appodeal/walking/TreeWalker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/appodeal/walking/TreeWalker;->h()V

    iget-object v0, p0, Lcom/iab/omid/library/appodeal/internal/i;->d:Lcom/iab/omid/library/appodeal/devicevolume/d;

    invoke-virtual {v0}, Lcom/iab/omid/library/appodeal/devicevolume/d;->b()V

    return-void
.end method

.method public e()V
    .registers 2

    .line 0
    invoke-static {}, Lcom/iab/omid/library/appodeal/walking/TreeWalker;->getInstance()Lcom/iab/omid/library/appodeal/walking/TreeWalker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/appodeal/walking/TreeWalker;->j()V

    invoke-static {}, Lcom/iab/omid/library/appodeal/internal/b;->g()Lcom/iab/omid/library/appodeal/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/appodeal/internal/d;->f()V

    iget-object v0, p0, Lcom/iab/omid/library/appodeal/internal/i;->d:Lcom/iab/omid/library/appodeal/devicevolume/d;

    invoke-virtual {v0}, Lcom/iab/omid/library/appodeal/devicevolume/d;->c()V

    return-void
.end method
