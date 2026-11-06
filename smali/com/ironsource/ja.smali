###### Class com.ironsource.C3672ja (com.ironsource.ja)
.class public Lcom/ironsource/ja;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/ironsource/V6;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ironsource/V6;

    invoke-direct {v0}, Lcom/ironsource/V6;-><init>()V

    iput-object v0, p0, Lcom/ironsource/ja;->a:Lcom/ironsource/V6;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/ja;->a:Lcom/ironsource/V6;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "sdba"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public b(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/ja;->a:Lcom/ironsource/V6;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "sdia"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public c(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/ja;->a:Lcom/ironsource/V6;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "sdna"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public d(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/ja;->a:Lcom/ironsource/V6;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "sdra"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
