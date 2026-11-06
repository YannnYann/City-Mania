###### Class com.ironsource.Z0 (com.ironsource.Z0)
.class public Lcom/ironsource/Z0;
.super Lcom/ironsource/me;
.source "SourceFile"


# static fields
.field private static h:Ljava/lang/String; = "type"

.field private static i:Ljava/lang/String; = "numOfAdUnits"

.field private static j:Ljava/lang/String; = "firstCampaignCredits"

.field private static k:Ljava/lang/String; = "totalNumberCredits"

.field private static l:Ljava/lang/String; = "productType"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/ironsource/me;-><init>(Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/ironsource/Z0;->h:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ironsource/me;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 4
    sget-object p1, Lcom/ironsource/Z0;->h:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ironsource/me;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/Z0;->k(Ljava/lang/String;)V

    .line 7
    :cond_14
    sget-object p1, Lcom/ironsource/Z0;->i:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ironsource/me;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 8
    sget-object p1, Lcom/ironsource/Z0;->i:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ironsource/me;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/Z0;->h(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 9
    invoke-direct {p0, p1}, Lcom/ironsource/Z0;->a(Z)V

    goto :goto_2e

    :cond_2a
    const/4 p1, 0x0

    .line 11
    invoke-direct {p0, p1}, Lcom/ironsource/Z0;->a(Z)V

    .line 14
    :goto_2e
    sget-object p1, Lcom/ironsource/Z0;->j:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ironsource/me;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 15
    sget-object p1, Lcom/ironsource/Z0;->j:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ironsource/me;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/Z0;->g(Ljava/lang/String;)V

    .line 18
    :cond_3f
    sget-object p1, Lcom/ironsource/Z0;->k:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ironsource/me;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 19
    sget-object p1, Lcom/ironsource/Z0;->k:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ironsource/me;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/Z0;->j(Ljava/lang/String;)V

    .line 22
    :cond_50
    sget-object p1, Lcom/ironsource/Z0;->l:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ironsource/me;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_61

    .line 23
    sget-object p1, Lcom/ironsource/Z0;->l:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ironsource/me;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/Z0;->i(Ljava/lang/String;)V

    :cond_61
    return-void
.end method

.method private a(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/ironsource/Z0;->g:Z

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Z0;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Z0;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Z0;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Z0;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Z0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/Z0;->e:Ljava/lang/String;

    return-void
.end method

.method public g()Z
    .registers 2

    .line 2
    iget-boolean v0, p0, Lcom/ironsource/Z0;->g:Z

    return v0
.end method

.method public h(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/Z0;->d:Ljava/lang/String;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/Z0;->c:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/Z0;->f:Ljava/lang/String;

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/Z0;->b:Ljava/lang/String;

    return-void
.end method
