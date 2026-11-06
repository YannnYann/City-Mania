###### Class com.iab.omid.library.ironsrc.b (com.iab.omid.library.ironsrc.b)
.class public Lcom/iab/omid/library/ironsrc/b;
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

    invoke-static {p1, v0}, Lcom/iab/omid/library/ironsrc/utils/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 0
    const-string v0, "1.5.7-Ironsrc"

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/iab/omid/library/ironsrc/b;->b(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/iab/omid/library/ironsrc/b;->b()Z

    move-result v0

    if-nez v0, :cond_39

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iab/omid/library/ironsrc/b;->a(Z)V

    invoke-static {}, Lcom/iab/omid/library/ironsrc/internal/i;->c()Lcom/iab/omid/library/ironsrc/internal/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/ironsrc/internal/i;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/iab/omid/library/ironsrc/internal/b;->g()Lcom/iab/omid/library/ironsrc/internal/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/ironsrc/internal/d;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/iab/omid/library/ironsrc/utils/a;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/iab/omid/library/ironsrc/utils/c;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/iab/omid/library/ironsrc/utils/e;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/iab/omid/library/ironsrc/internal/g;->b()Lcom/iab/omid/library/ironsrc/internal/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/ironsrc/internal/g;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/iab/omid/library/ironsrc/internal/a;->a()Lcom/iab/omid/library/ironsrc/internal/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/ironsrc/internal/a;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/iab/omid/library/ironsrc/internal/j;->b()Lcom/iab/omid/library/ironsrc/internal/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/ironsrc/internal/j;->a(Landroid/content/Context;)V

    :cond_39
    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/iab/omid/library/ironsrc/b;->a:Z

    return-void
.end method

.method public b()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/iab/omid/library/ironsrc/b;->a:Z

    return v0
.end method

.method public c()V
    .registers 2

    .line 0
    invoke-static {}, Lcom/iab/omid/library/ironsrc/utils/g;->a()V

    invoke-static {}, Lcom/iab/omid/library/ironsrc/internal/a;->a()Lcom/iab/omid/library/ironsrc/internal/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/ironsrc/internal/a;->d()V

    return-void
.end method
