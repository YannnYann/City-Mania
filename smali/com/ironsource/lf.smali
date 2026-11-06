###### Class com.ironsource.C3713lf (com.ironsource.lf)
.class public final Lcom/ironsource/lf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Ob;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ironsource/Ob<",
        "Lcom/ironsource/ff;",
        "Lcom/ironsource/v;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/ff;)Lcom/ironsource/v;
    .registers 10

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/ironsource/v;

    .line 3
    invoke-virtual {p1}, Lcom/ironsource/ff;->b()Lcom/ironsource/mf;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/ironsource/ff;->a()Lcom/ironsource/O;

    move-result-object v0

    const-string v3, "0"

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/ironsource/O;->h()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    :cond_19
    move-object v0, v3

    .line 6
    :cond_1a
    invoke-virtual {p1}, Lcom/ironsource/ff;->a()Lcom/ironsource/O;

    move-result-object v4

    if-eqz v4, :cond_26

    invoke-virtual {v4}, Lcom/ironsource/O;->i()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_27

    :cond_26
    move-object v4, v3

    .line 7
    :cond_27
    invoke-virtual {p1}, Lcom/ironsource/ff;->a()Lcom/ironsource/O;

    move-result-object v5

    if-eqz v5, :cond_33

    invoke-virtual {v5}, Lcom/ironsource/O;->g()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_34

    :cond_33
    move-object v5, v3

    .line 8
    :cond_34
    invoke-virtual {p1}, Lcom/ironsource/ff;->a()Lcom/ironsource/O;

    move-result-object v6

    if-eqz v6, :cond_40

    invoke-virtual {v6}, Lcom/ironsource/O;->e()Lcom/ironsource/W7;

    move-result-object v6

    if-nez v6, :cond_42

    :cond_40
    sget-object v6, Lcom/ironsource/W7;->c:Lcom/ironsource/W7;

    .line 9
    :cond_42
    invoke-virtual {p1}, Lcom/ironsource/ff;->a()Lcom/ironsource/O;

    move-result-object p1

    if-eqz p1, :cond_52

    invoke-virtual {p1}, Lcom/ironsource/O;->c()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4f

    goto :goto_52

    :cond_4f
    move-object v7, p1

    :goto_50
    move-object v3, v0

    goto :goto_54

    :cond_52
    :goto_52
    move-object v7, v3

    goto :goto_50

    .line 10
    :goto_54
    invoke-direct/range {v1 .. v7}, Lcom/ironsource/v;-><init>(Lcom/ironsource/mf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/W7;Ljava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lcom/ironsource/ff;

    invoke-virtual {p0, p1}, Lcom/ironsource/lf;->a(Lcom/ironsource/ff;)Lcom/ironsource/v;

    move-result-object p1

    return-object p1
.end method
