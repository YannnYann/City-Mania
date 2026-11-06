###### Class com.ironsource.C3949yc (com.ironsource.yc)
.class public final Lcom/ironsource/yc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Ob;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ironsource/Ob<",
        "Lcom/ironsource/xc;",
        "Lcom/ironsource/h1;",
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
.method public a(Lcom/ironsource/xc;)Lcom/ironsource/h1;
    .registers 5

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/ironsource/h1;

    .line 3
    invoke-virtual {p1}, Lcom/ironsource/xc;->d()Lcom/ironsource/mf;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/ironsource/xc;->b()Lcom/ironsource/W7;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/ironsource/xc;->a()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {v0, v1, v2, p1}, Lcom/ironsource/h1;-><init>(Lcom/ironsource/mf;Lcom/ironsource/W7;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lcom/ironsource/xc;

    invoke-virtual {p0, p1}, Lcom/ironsource/yc;->a(Lcom/ironsource/xc;)Lcom/ironsource/h1;

    move-result-object p1

    return-object p1
.end method
