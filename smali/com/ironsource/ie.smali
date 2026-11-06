###### Class com.ironsource.C3659ie (com.ironsource.ie)
.class public Lcom/ironsource/ie;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final o:I


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/md;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/ironsource/R1;

.field private c:I

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:J

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Lcom/ironsource/md;

.field private m:Lcom/ironsource/A2;

.field private n:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/ie;->a:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lcom/ironsource/R1;

    invoke-direct {v0}, Lcom/ironsource/R1;-><init>()V

    iput-object v0, p0, Lcom/ironsource/ie;->b:Lcom/ironsource/R1;

    return-void
.end method

.method public constructor <init>(IZIILcom/ironsource/R1;Lcom/ironsource/A2;IZJZZZ)V
    .registers 15

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/ie;->a:Ljava/util/ArrayList;

    .line 6
    iput p1, p0, Lcom/ironsource/ie;->c:I

    .line 7
    iput-boolean p2, p0, Lcom/ironsource/ie;->d:Z

    .line 8
    iput p3, p0, Lcom/ironsource/ie;->e:I

    .line 9
    iput-object p5, p0, Lcom/ironsource/ie;->b:Lcom/ironsource/R1;

    .line 10
    iput p4, p0, Lcom/ironsource/ie;->f:I

    .line 11
    iput-object p6, p0, Lcom/ironsource/ie;->m:Lcom/ironsource/A2;

    .line 12
    iput p7, p0, Lcom/ironsource/ie;->g:I

    .line 13
    iput-boolean p8, p0, Lcom/ironsource/ie;->n:Z

    .line 14
    iput-wide p9, p0, Lcom/ironsource/ie;->h:J

    .line 15
    iput-boolean p11, p0, Lcom/ironsource/ie;->i:Z

    .line 16
    iput-boolean p12, p0, Lcom/ironsource/ie;->j:Z

    .line 17
    iput-boolean p13, p0, Lcom/ironsource/ie;->k:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/ironsource/md;
    .registers 4

    .line 15
    iget-object v0, p0, Lcom/ironsource/ie;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/md;

    .line 16
    invoke-virtual {v1}, Lcom/ironsource/t3;->d()Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    .line 21
    :cond_19
    iget-object v0, p0, Lcom/ironsource/ie;->l:Lcom/ironsource/md;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/ironsource/md;
    .registers 5

    .line 13
    iget-object v0, p0, Lcom/ironsource/ie;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/md;

    .line 14
    invoke-virtual {v1}, Lcom/ironsource/t3;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/ironsource/md;)V
    .registers 3

    if-eqz p1, :cond_17

    .line 1
    iget-object v0, p0, Lcom/ironsource/ie;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lcom/ironsource/ie;->l:Lcom/ironsource/md;

    if-nez v0, :cond_e

    .line 10
    iput-object p1, p0, Lcom/ironsource/ie;->l:Lcom/ironsource/md;

    return-void

    :cond_e
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Lcom/ironsource/t3;->a(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 12
    iput-object p1, p0, Lcom/ironsource/ie;->l:Lcom/ironsource/md;

    :cond_17
    return-void
.end method

.method public b()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/ie;->g:I

    return v0
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/ie;->f:I

    return v0
.end method

.method public d()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/ie;->n:Z

    return v0
.end method

.method public e()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/md;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/ie;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public f()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/ie;->i:Z

    return v0
.end method

.method public g()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/ie;->c:I

    return v0
.end method

.method public h()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/ie;->e:I

    return v0
.end method

.method public i()J
    .registers 4

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, p0, Lcom/ironsource/ie;->e:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public j()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/ie;->d:Z

    return v0
.end method

.method public k()Lcom/ironsource/A2;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/ie;->m:Lcom/ironsource/A2;

    return-object v0
.end method

.method public l()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/ie;->h:J

    return-wide v0
.end method

.method public m()Lcom/ironsource/R1;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/ie;->b:Lcom/ironsource/R1;

    return-object v0
.end method

.method public n()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/ie;->k:Z

    return v0
.end method

.method public o()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/ie;->j:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RewardedVideoConfigurations{parallelLoad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ironsource/ie;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bidderExclusive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ironsource/ie;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
