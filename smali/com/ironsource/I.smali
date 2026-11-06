###### Class com.ironsource.I (com.ironsource.I)
.class public final Lcom/ironsource/I;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/ironsource/r0$a;


# direct methods
.method public constructor <init>(Lcom/ironsource/r0$a;)V
    .registers 3

    const-string v0, "performance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/I;->a:Lcom/ironsource/r0$a;

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/I;Lcom/ironsource/r0$a;ILjava/lang/Object;)Lcom/ironsource/I;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 3
    iget-object p1, p0, Lcom/ironsource/I;->a:Lcom/ironsource/r0$a;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/ironsource/I;->a(Lcom/ironsource/r0$a;)Lcom/ironsource/I;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/ironsource/r0$a;)Lcom/ironsource/I;
    .registers 3

    .line 2
    const-string v0, "performance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/I;

    invoke-direct {v0, p1}, Lcom/ironsource/I;-><init>(Lcom/ironsource/r0$a;)V

    return-object v0
.end method

.method public final a()Lcom/ironsource/r0$a;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/I;->a:Lcom/ironsource/r0$a;

    return-object v0
.end method

.method public final b()Lcom/ironsource/r0$a;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/I;->a:Lcom/ironsource/r0$a;

    return-object v0
.end method

.method public final b(Lcom/ironsource/r0$a;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/ironsource/I;->a:Lcom/ironsource/r0$a;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/ironsource/I;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/ironsource/I;

    iget-object v1, p0, Lcom/ironsource/I;->a:Lcom/ironsource/r0$a;

    iget-object p1, p1, Lcom/ironsource/I;->a:Lcom/ironsource/r0$a;

    if-eq v1, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/I;->a:Lcom/ironsource/r0$a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/I;->a:Lcom/ironsource/r0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdInstancePerformance(performance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
