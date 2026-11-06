###### Class com.ironsource.Vg (com.ironsource.Vg)
.class public final Lcom/ironsource/Vg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Yg;


# instance fields
.field private final a:Lcom/ironsource/Rg;


# direct methods
.method public constructor <init>(Lcom/ironsource/Rg;)V
    .registers 3

    const-string v0, "waterfallOperations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Vg;->a:Lcom/ironsource/Rg;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .line 0
    return-void
.end method

.method public a(Lcom/ironsource/A;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/Vg;->a:Lcom/ironsource/Rg;

    invoke-interface {v0, p1}, Lcom/ironsource/Rg;->a(Lcom/ironsource/A;)V

    .line 2
    iget-object p1, p0, Lcom/ironsource/Vg;->a:Lcom/ironsource/Rg;

    sget-object v0, Lcom/ironsource/Z4$b;->b:Lcom/ironsource/Z4$b;

    invoke-interface {p1, v0}, Lcom/ironsource/Rg;->a(Lcom/ironsource/Z4;)V

    return-void
.end method

.method public b()Lcom/ironsource/Pd;
    .registers 2

    .line 1
    sget-object v0, Lcom/ironsource/Pd;->e:Lcom/ironsource/Pd;

    return-object v0
.end method

.method public c()Lcom/ironsource/A;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Vg;->a:Lcom/ironsource/Rg;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ironsource/Rg;->a(I)Lcom/ironsource/A;

    move-result-object v0

    return-object v0
.end method
