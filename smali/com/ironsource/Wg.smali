###### Class com.ironsource.Wg (com.ironsource.Wg)
.class public final Lcom/ironsource/Wg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Yg;


# instance fields
.field private final a:Lcom/ironsource/Rg;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/ironsource/Rg;)V
    .registers 3

    const-string v0, "waterfallOperations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Wg;->a:Lcom/ironsource/Rg;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 3
    iget-object v0, p0, Lcom/ironsource/Wg;->a:Lcom/ironsource/Rg;

    sget-object v1, Lcom/ironsource/Z4$c;->b:Lcom/ironsource/Z4$c;

    invoke-interface {v0, v1}, Lcom/ironsource/Rg;->a(Lcom/ironsource/Z4;)V

    return-void
.end method

.method public a(Lcom/ironsource/A;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/ironsource/Wg;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ironsource/Wg;->b:I

    .line 2
    iget-object v0, p0, Lcom/ironsource/Wg;->a:Lcom/ironsource/Rg;

    invoke-interface {v0, p1}, Lcom/ironsource/Rg;->a(Lcom/ironsource/A;)V

    return-void
.end method

.method public b()Lcom/ironsource/Pd;
    .registers 3

    .line 1
    iget v0, p0, Lcom/ironsource/Wg;->b:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_8

    .line 2
    sget-object v0, Lcom/ironsource/Pd;->d:Lcom/ironsource/Pd;

    return-object v0

    .line 5
    :cond_8
    iget-object v0, p0, Lcom/ironsource/Wg;->a:Lcom/ironsource/Rg;

    invoke-interface {v0}, Lcom/ironsource/Rg;->a()Z

    move-result v0

    if-nez v0, :cond_13

    .line 6
    sget-object v0, Lcom/ironsource/Pd;->c:Lcom/ironsource/Pd;

    return-object v0

    .line 8
    :cond_13
    sget-object v0, Lcom/ironsource/Pd;->b:Lcom/ironsource/Pd;

    return-object v0
.end method

.method public c()Lcom/ironsource/A;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Wg;->a:Lcom/ironsource/Rg;

    iget v1, p0, Lcom/ironsource/Wg;->b:I

    invoke-interface {v0, v1}, Lcom/ironsource/Rg;->a(I)Lcom/ironsource/A;

    move-result-object v0

    return-object v0
.end method
