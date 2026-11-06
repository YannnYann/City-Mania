###### Class com.ironsource.X4 (com.ironsource.X4)
.class public Lcom/ironsource/X4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:I = 0x0

.field public static final i:I = 0x1

.field public static final j:I = 0x2

.field public static final k:I = 0x3

.field public static final l:I = -0x1


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Z

.field private g:Lcom/ironsource/R9;


# direct methods
.method public constructor <init>(Lcom/ironsource/R9;)V
    .registers 6

    .line 21
    invoke-virtual {p1}, Lcom/ironsource/R9;->e()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-virtual {p1}, Lcom/ironsource/R9;->g()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lcom/ironsource/R9;->a()Ljava/util/Map;

    move-result-object v2

    .line 24
    invoke-virtual {p1}, Lcom/ironsource/R9;->b()Lcom/ironsource/Oc;

    move-result-object v3

    .line 25
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ironsource/X4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/Oc;)V

    .line 30
    iput-object p1, p0, Lcom/ironsource/X4;->g:Lcom/ironsource/R9;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/Oc;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/Oc;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, -0x1

    .line 2
    iput p4, p0, Lcom/ironsource/X4;->c:I

    .line 15
    iput-object p1, p0, Lcom/ironsource/X4;->b:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/ironsource/X4;->a:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/ironsource/X4;->d:Ljava/util/Map;

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/ironsource/X4;->e:I

    .line 19
    iput-boolean p1, p0, Lcom/ironsource/X4;->f:Z

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/ironsource/X4;->g:Lcom/ironsource/R9;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/ironsource/X4;->d:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_7
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ironsource/X4;->d:Ljava/util/Map;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/ironsource/X4;->f:Z

    return-void
.end method

.method public a(I)Z
    .registers 3

    .line 2
    iget v0, p0, Lcom/ironsource/X4;->c:I

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public b()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/ironsource/X4;->b:Ljava/lang/String;

    const-string v2, "demandSourceId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/ironsource/X4;->a:Ljava/lang/String;

    const-string v2, "demandSourceName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/ironsource/X4;->d:Ljava/util/Map;

    if-eqz v1, :cond_1a

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1a
    return-object v0
.end method

.method public declared-synchronized b(I)V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iput p1, p0, Lcom/ironsource/X4;->e:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public c()Lcom/ironsource/R9;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/X4;->g:Lcom/ironsource/R9;

    return-object v0
.end method

.method public c(I)V
    .registers 2

    .line 2
    iput p1, p0, Lcom/ironsource/X4;->c:I

    return-void
.end method

.method public d()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/X4;->f:Z

    return v0
.end method

.method public e()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/X4;->e:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/X4;->a:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/X4;->d:Ljava/util/Map;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/X4;->b:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lcom/ironsource/Oc;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/X4;->g:Lcom/ironsource/R9;

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {p0}, Lcom/ironsource/X4;->c()Lcom/ironsource/R9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/R9;->b()Lcom/ironsource/Oc;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public j()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/X4;->c:I

    return v0
.end method

.method public k()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/X4;->d:Ljava/util/Map;

    if-eqz v0, :cond_19

    const-string v1, "rewarded"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2
    iget-object v0, p0, Lcom/ironsource/X4;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_19
    const/4 v0, 0x0

    return v0
.end method
