###### Class com.ironsource.R9 (com.ironsource.R9)
.class public Lcom/ironsource/R9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Lcom/ironsource/i8;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/ironsource/Oc;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/util/Map;Lcom/ironsource/Oc;Lcom/ironsource/i8;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/Oc;",
            "Lcom/ironsource/i8;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/ironsource/R9;->b:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/ironsource/R9;->c:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Lcom/ironsource/R9;->a:Z

    .line 6
    iput-boolean p4, p0, Lcom/ironsource/R9;->d:Z

    .line 7
    iput-object p8, p0, Lcom/ironsource/R9;->f:Ljava/util/Map;

    .line 8
    iput-object p9, p0, Lcom/ironsource/R9;->g:Lcom/ironsource/Oc;

    .line 9
    iput-object p10, p0, Lcom/ironsource/R9;->e:Lcom/ironsource/i8;

    .line 10
    iput-boolean p5, p0, Lcom/ironsource/R9;->i:Z

    .line 11
    iput-boolean p6, p0, Lcom/ironsource/R9;->j:Z

    .line 12
    iput-object p7, p0, Lcom/ironsource/R9;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .registers 5
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
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/ironsource/R9;->b:Ljava/lang/String;

    const-string v2, "instanceId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/ironsource/R9;->c:Ljava/lang/String;

    const-string v2, "instanceName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-boolean v1, p0, Lcom/ironsource/R9;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rewarded"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-boolean v1, p0, Lcom/ironsource/R9;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "inAppBidding"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-boolean v1, p0, Lcom/ironsource/R9;->i:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isOneFlow"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 8
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "apiVersion"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lcom/ironsource/R9;->e:Lcom/ironsource/i8;

    const-string v2, "0"

    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Lcom/ironsource/i8;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4e

    :cond_4d
    move-object v1, v2

    .line 12
    :goto_4e
    const-string v3, "width"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v1, p0, Lcom/ironsource/R9;->e:Lcom/ironsource/i8;

    if-eqz v1, :cond_5f

    invoke-virtual {v1}, Lcom/ironsource/i8;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 18
    :cond_5f
    const-string v1, "height"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v1, p0, Lcom/ironsource/R9;->e:Lcom/ironsource/i8;

    if-eqz v1, :cond_6d

    invoke-virtual {v1}, Lcom/ironsource/i8;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_6f

    :cond_6d
    const-string v1, ""

    :goto_6f
    const-string v2, "label"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {p0}, Lcom/ironsource/R9;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isBanner"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-boolean v1, p0, Lcom/ironsource/R9;->j:Z

    if-eqz v1, :cond_8c

    .line 25
    const-string v1, "isMultipleAdObjects"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_8c
    iget-object v1, p0, Lcom/ironsource/R9;->h:Ljava/lang/String;

    if-eqz v1, :cond_95

    .line 28
    const-string v2, "adUnitId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_95
    iget-object v1, p0, Lcom/ironsource/R9;->f:Ljava/util/Map;

    if-eqz v1, :cond_9c

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_9c
    return-object v0
.end method

.method public a(Lcom/ironsource/Oc;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/ironsource/R9;->g:Lcom/ironsource/Oc;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/ironsource/R9;->h:Ljava/lang/String;

    return-void
.end method

.method public final b()Lcom/ironsource/Oc;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/R9;->g:Lcom/ironsource/Oc;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/R9;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/util/Map;
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
    iget-object v0, p0, Lcom/ironsource/R9;->f:Ljava/util/Map;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/R9;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/R9;->c:Ljava/lang/String;

    const-string v1, "IronSource_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/R9;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lcom/ironsource/i8;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/R9;->e:Lcom/ironsource/i8;

    return-object v0
.end method

.method public i()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/R9;->h()Lcom/ironsource/i8;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/ironsource/R9;->h()Lcom/ironsource/i8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/i8;->d()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public j()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/R9;->d:Z

    return v0
.end method

.method public k()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/R9;->j()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/ironsource/R9;->m()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method public l()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/R9;->j:Z

    return v0
.end method

.method public m()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/R9;->i:Z

    return v0
.end method

.method public n()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/R9;->a:Z

    return v0
.end method
