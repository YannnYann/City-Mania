###### Class com.ironsource.A2 (com.ironsource.A2)
.class public Lcom/ironsource/A2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:Z

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z

.field private p:Z

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/A2;->b:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/ironsource/A2;->c:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/ironsource/A2;->d:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/ironsource/A2;->i:J

    .line 6
    iput-wide v0, p0, Lcom/ironsource/A2;->j:J

    .line 7
    iput-wide v0, p0, Lcom/ironsource/A2;->k:J

    .line 8
    iput-wide v0, p0, Lcom/ironsource/A2;->l:J

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/ironsource/A2;->m:Z

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ironsource/A2;->n:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lcom/ironsource/A2;->g:I

    .line 12
    iput-boolean v1, p0, Lcom/ironsource/A2;->o:Z

    .line 13
    iput-boolean v1, p0, Lcom/ironsource/A2;->p:Z

    .line 14
    iput v0, p0, Lcom/ironsource/A2;->q:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJJJJZIZZZIZZZ)V
    .registers 25

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/ironsource/A2;->b:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/ironsource/A2;->c:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/ironsource/A2;->d:Ljava/lang/String;

    .line 19
    iput p4, p0, Lcom/ironsource/A2;->e:I

    .line 20
    iput p5, p0, Lcom/ironsource/A2;->f:I

    .line 21
    iput-wide p6, p0, Lcom/ironsource/A2;->h:J

    move/from16 p1, p20

    .line 22
    iput-boolean p1, p0, Lcom/ironsource/A2;->a:Z

    .line 23
    iput-wide p8, p0, Lcom/ironsource/A2;->i:J

    .line 24
    iput-wide p10, p0, Lcom/ironsource/A2;->j:J

    .line 25
    iput-wide p12, p0, Lcom/ironsource/A2;->k:J

    .line 26
    iput-wide p14, p0, Lcom/ironsource/A2;->l:J

    move/from16 p1, p16

    .line 27
    iput-boolean p1, p0, Lcom/ironsource/A2;->m:Z

    move/from16 p1, p17

    .line 28
    iput p1, p0, Lcom/ironsource/A2;->g:I

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ironsource/A2;->n:Ljava/util/ArrayList;

    move/from16 p1, p18

    .line 30
    iput-boolean p1, p0, Lcom/ironsource/A2;->o:Z

    move/from16 p1, p19

    .line 31
    iput-boolean p1, p0, Lcom/ironsource/A2;->p:Z

    move/from16 p1, p21

    .line 32
    iput p1, p0, Lcom/ironsource/A2;->q:I

    move/from16 p1, p22

    .line 33
    iput-boolean p1, p0, Lcom/ironsource/A2;->r:Z

    move/from16 p1, p23

    .line 34
    iput-boolean p1, p0, Lcom/ironsource/A2;->s:Z

    move/from16 p1, p24

    .line 35
    iput-boolean p1, p0, Lcom/ironsource/A2;->t:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/A2;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Z)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_5

    .line 2
    iget-object p1, p0, Lcom/ironsource/A2;->d:Ljava/lang/String;

    return-object p1

    :cond_5
    iget-object p1, p0, Lcom/ironsource/A2;->c:Ljava/lang/String;

    return-object p1
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 4
    iget-object v0, p0, Lcom/ironsource/A2;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method public b()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/A2;->j:J

    return-wide v0
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/A2;->f:I

    return v0
.end method

.method public d()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/A2;->q:I

    return v0
.end method

.method public e()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/A2;->m:Z

    return v0
.end method

.method public f()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/A2;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method public g()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/A2;->e:I

    return v0
.end method

.method public h()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/A2;->a:Z

    return v0
.end method

.method public i()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/A2;->g:I

    return v0
.end method

.method public j()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/A2;->k:J

    return-wide v0
.end method

.method public k()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/A2;->i:J

    return-wide v0
.end method

.method public l()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/A2;->l:J

    return-wide v0
.end method

.method public m()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/A2;->h:J

    return-wide v0
.end method

.method public n()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/A2;->t:Z

    return v0
.end method

.method public o()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/A2;->o:Z

    return v0
.end method

.method public p()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/A2;->p:Z

    return v0
.end method

.method public q()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/A2;->s:Z

    return v0
.end method

.method public r()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/A2;->r:Z

    return v0
.end method
