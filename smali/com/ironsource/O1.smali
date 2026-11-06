###### Class com.ironsource.O1 (com.ironsource.O1)
.class public Lcom/ironsource/O1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ironsource/O1;->b:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ironsource/O1;->a:Z

    .line 4
    iput-boolean v0, p0, Lcom/ironsource/O1;->e:Z

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/ironsource/O1;->g:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 4
    iget v0, p0, Lcom/ironsource/O1;->f:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .line 5
    iput p1, p0, Lcom/ironsource/O1;->f:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 3
    iget-object v0, p0, Lcom/ironsource/O1;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/ironsource/O1;->a:Z

    return-void
.end method

.method public b()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/O1;->b:Ljava/util/HashSet;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/ironsource/O1;->d:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .registers 2

    .line 3
    iput-boolean p1, p0, Lcom/ironsource/O1;->g:Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/ironsource/O1;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/O1;->c:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .registers 2

    .line 3
    iput-boolean p1, p0, Lcom/ironsource/O1;->e:Z

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/O1;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/O1;->e:Z

    return v0
.end method

.method public f()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/O1;->a:Z

    return v0
.end method

.method public g()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/O1;->g:Z

    return v0
.end method
