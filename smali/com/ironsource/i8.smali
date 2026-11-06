###### Class com.ironsource.C3653i8 (com.ironsource.i8)
.class public Lcom/ironsource/i8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ironsource/i8;->a:I

    .line 3
    iput v0, p0, Lcom/ironsource/i8;->b:I

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/i8;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/ironsource/i8;->a:I

    .line 7
    iput p2, p0, Lcom/ironsource/i8;->b:I

    .line 8
    iput-object p3, p0, Lcom/ironsource/i8;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/i8;->b:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/i8;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/i8;->a:I

    return v0
.end method

.method public d()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/i8;->b:I

    if-lez v0, :cond_a

    iget v0, p0, Lcom/ironsource/i8;->a:I

    if-lez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/i8;->b:I

    if-nez v0, :cond_a

    iget v0, p0, Lcom/ironsource/i8;->a:I

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/i8;->c:Ljava/lang/String;

    return-object v0
.end method
