###### Class com.ironsource.I5 (com.ironsource.I5)
.class public final Lcom/ironsource/I5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/I5$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Lcom/ironsource/J7;

.field private e:Z

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ironsource/I5$a;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ironsource/I5;->e:Z

    .line 6
    invoke-static {p1}, Lcom/ironsource/I5$a;->-$$Nest$fgeta(Lcom/ironsource/I5$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/I5;->a:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/ironsource/I5$a;->-$$Nest$fgetb(Lcom/ironsource/I5$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ironsource/I5;->b:Z

    .line 8
    invoke-static {p1}, Lcom/ironsource/I5$a;->-$$Nest$fgetc(Lcom/ironsource/I5$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/I5;->c:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/ironsource/I5$a;->-$$Nest$fgetd(Lcom/ironsource/I5$a;)Lcom/ironsource/J7;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/I5;->d:Lcom/ironsource/J7;

    .line 10
    invoke-static {p1}, Lcom/ironsource/I5$a;->-$$Nest$fgete(Lcom/ironsource/I5$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ironsource/I5;->e:Z

    .line 12
    invoke-static {p1}, Lcom/ironsource/I5$a;->-$$Nest$fgetf(Lcom/ironsource/I5$a;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/ironsource/I5$a;->-$$Nest$fgetf(Lcom/ironsource/I5$a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ironsource/I5;->f:Ljava/util/ArrayList;

    :cond_35
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/I5;->b:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/I5;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/ironsource/J7;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/I5;->d:Lcom/ironsource/J7;

    return-object v0
.end method

.method public d()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ironsource/I5;->f:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/I5;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/I5;->e:Z

    return v0
.end method

###### Class com.ironsource.I5.a (com.ironsource.I5$a)
.class public Lcom/ironsource/I5$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/I5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Lcom/ironsource/J7;

.field private e:Z

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgeta(Lcom/ironsource/I5$a;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/I5$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetb(Lcom/ironsource/I5$a;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/ironsource/I5$a;->b:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetc(Lcom/ironsource/I5$a;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/I5$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetd(Lcom/ironsource/I5$a;)Lcom/ironsource/J7;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/I5$a;->d:Lcom/ironsource/J7;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgete(Lcom/ironsource/I5$a;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/ironsource/I5$a;->e:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetf(Lcom/ironsource/I5$a;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/I5$a;->f:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/I5$a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ironsource/I5$a;->b:Z

    .line 4
    const-string v1, "POST"

    iput-object v1, p0, Lcom/ironsource/I5$a;->c:Ljava/lang/String;

    .line 6
    iput-boolean v0, p0, Lcom/ironsource/I5$a;->e:Z

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/I5$a;->f:Ljava/util/ArrayList;

    if-eqz p1, :cond_21

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 11
    iput-object p1, p0, Lcom/ironsource/I5$a;->a:Ljava/lang/String;

    :cond_21
    return-void
.end method


# virtual methods
.method public a(Landroid/util/Pair;)Lcom/ironsource/I5$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ironsource/I5$a;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/ironsource/I5$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Lcom/ironsource/J7;)Lcom/ironsource/I5$a;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/I5$a;->d:Lcom/ironsource/J7;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/ironsource/I5$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/ironsource/I5$a;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/ironsource/I5$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public a(Z)Lcom/ironsource/I5$a;
    .registers 2

    .line 4
    iput-boolean p1, p0, Lcom/ironsource/I5$a;->e:Z

    return-object p0
.end method

.method public a()Lcom/ironsource/I5;
    .registers 2

    .line 5
    new-instance v0, Lcom/ironsource/I5;

    invoke-direct {v0, p0}, Lcom/ironsource/I5;-><init>(Lcom/ironsource/I5$a;)V

    return-object v0
.end method

.method public b()Lcom/ironsource/I5$a;
    .registers 2

    .line 2
    const-string v0, "GET"

    iput-object v0, p0, Lcom/ironsource/I5$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/ironsource/I5$a;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/ironsource/I5$a;->b:Z

    return-object p0
.end method

.method public c()Lcom/ironsource/I5$a;
    .registers 2

    .line 1
    const-string v0, "POST"

    iput-object v0, p0, Lcom/ironsource/I5$a;->c:Ljava/lang/String;

    return-object p0
.end method
