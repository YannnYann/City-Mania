###### Class com.ironsource.C3694ke (com.ironsource.ke)
.class public Lcom/ironsource/ke;
.super Lcom/ironsource/r3;
.source "SourceFile"


# static fields
.field private static R:Lcom/ironsource/ke;


# instance fields
.field private P:Ljava/lang/String;

.field private final Q:Lcom/ironsource/Q8;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/ironsource/r3;-><init>()V

    .line 4
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->s()Lcom/ironsource/Q8;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/ke;->Q:Lcom/ironsource/Q8;

    .line 6
    const-string v0, "outcome"

    iput-object v0, p0, Lcom/ironsource/r3;->H:Ljava/lang/String;

    const/4 v0, 0x3

    .line 7
    iput v0, p0, Lcom/ironsource/r3;->G:I

    .line 8
    const-string v0, "RV"

    iput-object v0, p0, Lcom/ironsource/r3;->I:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/ke;->P:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized i()Lcom/ironsource/ke;
    .registers 2

    const-class v0, Lcom/ironsource/ke;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/ironsource/ke;->R:Lcom/ironsource/ke;

    if-nez v1, :cond_14

    .line 2
    new-instance v1, Lcom/ironsource/ke;

    invoke-direct {v1}, Lcom/ironsource/ke;-><init>()V

    sput-object v1, Lcom/ironsource/ke;->R:Lcom/ironsource/ke;

    .line 3
    invoke-virtual {v1}, Lcom/ironsource/r3;->e()V

    goto :goto_14

    :catchall_12
    move-exception v1

    goto :goto_18

    .line 5
    :cond_14
    :goto_14
    sget-object v1, Lcom/ironsource/ke;->R:Lcom/ironsource/ke;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_12

    monitor-exit v0

    return-object v1

    :goto_18
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_12

    throw v1
.end method


# virtual methods
.method public c(Lcom/ironsource/C5;)I
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/ironsource/ke;->Q:Lcom/ironsource/Q8;

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$a;->b:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-interface {p1, v0}, Lcom/ironsource/Q8;->a(Lcom/ironsource/mediationsdk/IronSource$a;)I

    move-result p1

    return p1
.end method

.method public d()V
    .registers 3

    .line 12
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->X:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->Y:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->Z:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->a0:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->v0:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->E0:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->F0:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->G0:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->H0:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->I0:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->J0:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Lcom/ironsource/C5;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/ironsource/C5;->c()I

    move-result p1

    .line 2
    sget-object v0, Lcom/ironsource/D5;->b:Lcom/ironsource/D5;

    invoke-virtual {v0}, Lcom/ironsource/D5;->c()I

    move-result v0

    if-eq p1, v0, :cond_57

    sget-object v0, Lcom/ironsource/D5;->Q:Lcom/ironsource/D5;

    .line 3
    invoke-virtual {v0}, Lcom/ironsource/D5;->c()I

    move-result v0

    if-eq p1, v0, :cond_57

    sget-object v0, Lcom/ironsource/D5;->R:Lcom/ironsource/D5;

    .line 4
    invoke-virtual {v0}, Lcom/ironsource/D5;->c()I

    move-result v0

    if-eq p1, v0, :cond_57

    sget-object v0, Lcom/ironsource/D5;->S:Lcom/ironsource/D5;

    .line 5
    invoke-virtual {v0}, Lcom/ironsource/D5;->c()I

    move-result v0

    if-eq p1, v0, :cond_57

    sget-object v0, Lcom/ironsource/D5;->a0:Lcom/ironsource/D5;

    .line 6
    invoke-virtual {v0}, Lcom/ironsource/D5;->c()I

    move-result v0

    if-eq p1, v0, :cond_57

    sget-object v0, Lcom/ironsource/D5;->b0:Lcom/ironsource/D5;

    .line 7
    invoke-virtual {v0}, Lcom/ironsource/D5;->c()I

    move-result v0

    if-eq p1, v0, :cond_57

    sget-object v0, Lcom/ironsource/D5;->y0:Lcom/ironsource/D5;

    .line 8
    invoke-virtual {v0}, Lcom/ironsource/D5;->c()I

    move-result v0

    if-eq p1, v0, :cond_57

    sget-object v0, Lcom/ironsource/D5;->d0:Lcom/ironsource/D5;

    .line 9
    invoke-virtual {v0}, Lcom/ironsource/D5;->c()I

    move-result v0

    if-eq p1, v0, :cond_57

    sget-object v0, Lcom/ironsource/D5;->L0:Lcom/ironsource/D5;

    .line 10
    invoke-virtual {v0}, Lcom/ironsource/D5;->c()I

    move-result v0

    if-eq p1, v0, :cond_57

    sget-object v0, Lcom/ironsource/D5;->M0:Lcom/ironsource/D5;

    .line 11
    invoke-virtual {v0}, Lcom/ironsource/D5;->c()I

    move-result v0

    if-ne p1, v0, :cond_55

    goto :goto_57

    :cond_55
    const/4 p1, 0x0

    return p1

    :cond_57
    :goto_57
    const/4 p1, 0x1

    return p1
.end method

.method public e(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0xf

    if-eq p1, v0, :cond_10

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_d

    const/16 v0, 0x190

    if-ge p1, v0, :cond_d

    goto :goto_10

    .line 1
    :cond_d
    const-string p1, ""

    return-object p1

    .line 2
    :cond_10
    :goto_10
    iget-object p1, p0, Lcom/ironsource/ke;->P:Ljava/lang/String;

    return-object p1
.end method

.method public f(Lcom/ironsource/C5;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/ironsource/C5;->c()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1a

    invoke-virtual {p1}, Lcom/ironsource/C5;->c()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_19

    invoke-virtual {p1}, Lcom/ironsource/C5;->c()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_19

    goto :goto_1a

    :cond_19
    return-void

    .line 2
    :cond_1a
    :goto_1a
    invoke-virtual {p1}, Lcom/ironsource/C5;->b()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "placement"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/ke;->P:Ljava/lang/String;

    return-void
.end method

.method public j(Lcom/ironsource/C5;)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method
