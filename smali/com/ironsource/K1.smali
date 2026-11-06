###### Class com.ironsource.K1 (com.ironsource.K1)
.class public Lcom/ironsource/K1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/ironsource/Y1;

.field private b:Lcom/ironsource/Ve;

.field private c:Lcom/ironsource/og;

.field private d:Z

.field private e:Lcom/ironsource/O1;

.field private f:Lcom/ironsource/U1;

.field private g:Lcom/ironsource/T1;

.field private h:Lcom/ironsource/kd;

.field private i:Lcom/ironsource/I1;

.field private j:Ljava/lang/String;

.field private k:Lcom/ironsource/R1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ironsource/Y1;

    invoke-direct {v0}, Lcom/ironsource/Y1;-><init>()V

    iput-object v0, p0, Lcom/ironsource/K1;->a:Lcom/ironsource/Y1;

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/Y1;Lcom/ironsource/Ve;Lcom/ironsource/og;ZLcom/ironsource/O1;Lcom/ironsource/U1;Lcom/ironsource/T1;Lcom/ironsource/kd;Lcom/ironsource/I1;Ljava/lang/String;Lcom/ironsource/R1;)V
    .registers 12

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/ironsource/K1;->a:Lcom/ironsource/Y1;

    .line 5
    iput-object p2, p0, Lcom/ironsource/K1;->b:Lcom/ironsource/Ve;

    .line 6
    iput-object p3, p0, Lcom/ironsource/K1;->c:Lcom/ironsource/og;

    .line 7
    iput-boolean p4, p0, Lcom/ironsource/K1;->d:Z

    .line 8
    iput-object p5, p0, Lcom/ironsource/K1;->e:Lcom/ironsource/O1;

    .line 9
    iput-object p6, p0, Lcom/ironsource/K1;->f:Lcom/ironsource/U1;

    .line 10
    iput-object p7, p0, Lcom/ironsource/K1;->g:Lcom/ironsource/T1;

    .line 11
    iput-object p8, p0, Lcom/ironsource/K1;->h:Lcom/ironsource/kd;

    .line 12
    iput-object p9, p0, Lcom/ironsource/K1;->i:Lcom/ironsource/I1;

    .line 13
    iput-object p10, p0, Lcom/ironsource/K1;->j:Ljava/lang/String;

    .line 14
    iput-object p11, p0, Lcom/ironsource/K1;->k:Lcom/ironsource/R1;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/K1;->j:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/ironsource/R1;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/K1;->k:Lcom/ironsource/R1;

    return-object v0
.end method

.method public c()Lcom/ironsource/I1;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/K1;->i:Lcom/ironsource/I1;

    return-object v0
.end method

.method public d()Lcom/ironsource/O1;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/K1;->e:Lcom/ironsource/O1;

    return-object v0
.end method

.method public e()Lcom/ironsource/T1;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/K1;->g:Lcom/ironsource/T1;

    return-object v0
.end method

.method public f()Lcom/ironsource/U1;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/K1;->f:Lcom/ironsource/U1;

    return-object v0
.end method

.method public g()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/K1;->d:Z

    return v0
.end method

.method public h()Lcom/ironsource/Y1;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/K1;->a:Lcom/ironsource/Y1;

    return-object v0
.end method

.method public i()Lcom/ironsource/kd;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/K1;->h:Lcom/ironsource/kd;

    return-object v0
.end method

.method public j()Lcom/ironsource/Ve;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/K1;->b:Lcom/ironsource/Ve;

    return-object v0
.end method

.method public k()Lcom/ironsource/og;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/K1;->c:Lcom/ironsource/og;

    return-object v0
.end method
