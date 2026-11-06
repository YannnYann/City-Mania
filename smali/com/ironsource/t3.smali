###### Class com.ironsource.AbstractC3850t3 (com.ironsource.t3)
.class public abstract Lcom/ironsource/t3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Lcom/ironsource/nd;


# direct methods
.method public constructor <init>(ILjava/lang/String;ZLcom/ironsource/nd;)V
    .registers 6

    const-string v0, "placementName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/ironsource/t3;->a:I

    .line 3
    iput-object p2, p0, Lcom/ironsource/t3;->b:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lcom/ironsource/t3;->c:Z

    .line 5
    iput-object p4, p0, Lcom/ironsource/t3;->d:Lcom/ironsource/nd;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ZLcom/ironsource/nd;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move p1, v0

    :cond_6
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_b

    move p3, v0

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_10

    const/4 p4, 0x0

    .line 6
    :cond_10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/t3;-><init>(ILjava/lang/String;ZLcom/ironsource/nd;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/nd;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/t3;->d:Lcom/ironsource/nd;

    return-object v0
.end method

.method public final a(I)Z
    .registers 3

    .line 2
    iget v0, p0, Lcom/ironsource/t3;->a:I

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public final b()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/t3;->a:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/t3;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/t3;->c:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/t3;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placement name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
