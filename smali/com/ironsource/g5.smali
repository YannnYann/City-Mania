###### Class com.ironsource.C3614g5 (com.ironsource.g5)
.class Lcom/ironsource/g5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/ironsource/D8;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:I

.field private final e:Ljava/lang/String;

.field private final f:Z


# direct methods
.method public constructor <init>(Lcom/ironsource/D8;Ljava/lang/String;IIZLjava/lang/String;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/g5;->a:Lcom/ironsource/D8;

    .line 3
    iput-object p2, p0, Lcom/ironsource/g5;->b:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/ironsource/g5;->c:I

    .line 5
    iput p4, p0, Lcom/ironsource/g5;->d:I

    .line 6
    iput-object p6, p0, Lcom/ironsource/g5;->e:Ljava/lang/String;

    .line 7
    iput-boolean p5, p0, Lcom/ironsource/g5;->f:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/g5;->c:I

    return v0
.end method

.method public b()Lcom/ironsource/D8;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/g5;->a:Lcom/ironsource/D8;

    return-object v0
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/g5;->d:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/g5;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/g5;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/g5;->f:Z

    return v0
.end method
