###### Class com.iab.omid.library.appodeal.b (com.iab.omid.library.appodeal.b)
.class public Lcom/iab/omid/library/appodeal/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .registers 3

    .line 0
    const-string v0, "Application Context cannot be null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/appodeal/utils/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .registers 4

    .line 0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/iab/omid/library/appodeal/b$a;

    invoke-direct {v1, p0, p1}, Lcom/iab/omid/library/appodeal/b$a;-><init>(Lcom/iab/omid/library/appodeal/b;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 0
    const-string v0, "1.6.3-Appodeal"

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/iab/omid/library/appodeal/b;->b(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/iab/omid/library/appodeal/b;->b()Z

    move-result v0

    if-nez v0, :cond_3c

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iab/omid/library/appodeal/b;->a(Z)V

    invoke-static {}, Lcom/iab/omid/library/appodeal/internal/i;->c()Lcom/iab/omid/library/appodeal/internal/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/appodeal/internal/i;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/iab/omid/library/appodeal/internal/b;->g()Lcom/iab/omid/library/appodeal/internal/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/appodeal/internal/d;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/iab/omid/library/appodeal/utils/a;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/iab/omid/library/appodeal/utils/c;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/iab/omid/library/appodeal/utils/e;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/iab/omid/library/appodeal/internal/g;->b()Lcom/iab/omid/library/appodeal/internal/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/appodeal/internal/g;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/iab/omid/library/appodeal/internal/a;->a()Lcom/iab/omid/library/appodeal/internal/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/appodeal/internal/a;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/iab/omid/library/appodeal/internal/k;->b()Lcom/iab/omid/library/appodeal/internal/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/appodeal/internal/k;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/iab/omid/library/appodeal/b;->c(Landroid/content/Context;)V

    :cond_3c
    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/iab/omid/library/appodeal/b;->a:Z

    return-void
.end method

.method public b()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/iab/omid/library/appodeal/b;->a:Z

    return v0
.end method

.method public c()V
    .registers 2

    .line 0
    invoke-static {}, Lcom/iab/omid/library/appodeal/utils/g;->a()V

    invoke-static {}, Lcom/iab/omid/library/appodeal/internal/a;->a()Lcom/iab/omid/library/appodeal/internal/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/appodeal/internal/a;->d()V

    return-void
.end method

###### Class com.iab.omid.library.appodeal.b.a (com.iab.omid.library.appodeal.b$a)
.class Lcom/iab/omid/library/appodeal/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iab/omid/library/appodeal/b;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/appodeal/b;Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 0
    iput-object p2, p0, Lcom/iab/omid/library/appodeal/b$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/iab/omid/library/appodeal/b$a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    const-string v0, "Ignoring failure while retrieving default WebView user agent"

    invoke-static {v0}, Lcom/iab/omid/library/appodeal/utils/d;->a(Ljava/lang/String;)V

    return-void
.end method
