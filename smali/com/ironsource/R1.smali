###### Class com.ironsource.R1 (com.ironsource.R1)
.class public Lcom/ironsource/R1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I

.field private j:[I

.field private k:[I

.field private l:[I

.field private m:[I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZZZILjava/lang/String;Ljava/lang/String;III[I[I[I[I)V
    .registers 14

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/ironsource/R1;->a:Z

    .line 4
    iput-boolean p2, p0, Lcom/ironsource/R1;->b:Z

    .line 5
    iput-boolean p3, p0, Lcom/ironsource/R1;->c:Z

    .line 6
    iput p4, p0, Lcom/ironsource/R1;->d:I

    .line 7
    iput-object p5, p0, Lcom/ironsource/R1;->e:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/ironsource/R1;->f:Ljava/lang/String;

    .line 9
    iput p7, p0, Lcom/ironsource/R1;->g:I

    .line 10
    iput p8, p0, Lcom/ironsource/R1;->h:I

    .line 11
    iput p9, p0, Lcom/ironsource/R1;->i:I

    .line 12
    iput-object p10, p0, Lcom/ironsource/R1;->j:[I

    .line 13
    iput-object p11, p0, Lcom/ironsource/R1;->k:[I

    .line 14
    iput-object p12, p0, Lcom/ironsource/R1;->l:[I

    .line 15
    iput-object p13, p0, Lcom/ironsource/R1;->m:[I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/R1;->g:I

    return v0
.end method

.method public b()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/R1;->d:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/R1;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/R1;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/R1;->i:I

    return v0
.end method

.method public f()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/R1;->h:I

    return v0
.end method

.method public g()[I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/R1;->m:[I

    return-object v0
.end method

.method public h()[I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/R1;->k:[I

    return-object v0
.end method

.method public i()[I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/R1;->j:[I

    return-object v0
.end method

.method public j()[I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/R1;->l:[I

    return-object v0
.end method

.method public k()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/R1;->c:Z

    return v0
.end method

.method public l()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/R1;->b:Z

    return v0
.end method

.method public m()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/R1;->a:Z

    return v0
.end method
