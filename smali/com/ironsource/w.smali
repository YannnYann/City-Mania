###### Class com.ironsource.C3900w (com.ironsource.w)
.class public final Lcom/ironsource/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Ob;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ironsource/Ob<",
        "Lcom/ironsource/v;",
        "Lcom/ironsource/F0;",
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
.method public a(Lcom/ironsource/v;)Lcom/ironsource/F0;
    .registers 9

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/ironsource/F0;

    .line 3
    invoke-virtual {p1}, Lcom/ironsource/v;->f()Lcom/ironsource/mf;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/ironsource/v;->d()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p1}, Lcom/ironsource/v;->e()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {p1}, Lcom/ironsource/v;->b()Lcom/ironsource/W7;

    move-result-object v5

    .line 7
    invoke-virtual {p1}, Lcom/ironsource/v;->a()Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-direct/range {v1 .. v6}, Lcom/ironsource/F0;-><init>(Lcom/ironsource/mf;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/W7;Ljava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lcom/ironsource/v;

    invoke-virtual {p0, p1}, Lcom/ironsource/w;->a(Lcom/ironsource/v;)Lcom/ironsource/F0;

    move-result-object p1

    return-object p1
.end method
