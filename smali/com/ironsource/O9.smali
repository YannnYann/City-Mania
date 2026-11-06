###### Class com.ironsource.O9 (com.ironsource.O9)
.class public final Lcom/ironsource/O9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/v9;


# instance fields
.field private final a:Lcom/ironsource/c1;

.field private final b:Lcom/ironsource/L9;


# direct methods
.method public constructor <init>(Lcom/ironsource/c1;Lcom/ironsource/L9;)V
    .registers 4

    const-string v0, "adapterConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adFormatConfigurations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/O9;->a:Lcom/ironsource/c1;

    .line 3
    iput-object p2, p0, Lcom/ironsource/O9;->b:Lcom/ironsource/L9;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public b()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/O9;->b:Lcom/ironsource/L9;

    invoke-virtual {v0}, Lcom/ironsource/L9;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/O9;->a:Lcom/ironsource/c1;

    invoke-virtual {v0}, Lcom/ironsource/c1;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getProviderName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public d()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/O9;->a:Lcom/ironsource/c1;

    invoke-virtual {v0}, Lcom/ironsource/c1;->j()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/O9;->a:Lcom/ironsource/c1;

    invoke-virtual {v0}, Lcom/ironsource/c1;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAdSourceNameForEvents(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public f()Lcom/ironsource/x9;
    .registers 3

    .line 1
    sget-object v0, Lcom/ironsource/x9;->b:Lcom/ironsource/x9$a;

    iget-object v1, p0, Lcom/ironsource/O9;->a:Lcom/ironsource/c1;

    invoke-virtual {v1}, Lcom/ironsource/c1;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/x9$a;->a(I)Lcom/ironsource/x9;

    move-result-object v0

    return-object v0
.end method
