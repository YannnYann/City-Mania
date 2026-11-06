###### Class com.ironsource.C3541c5 (com.ironsource.c5)
.class public Lcom/ironsource/c5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static h:Lcom/ironsource/c5;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private final g:Lcom/ironsource/B7;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->a()Lcom/ironsource/B7;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/c5;->g:Lcom/ironsource/B7;

    .line 4
    invoke-interface {v0}, Lcom/ironsource/B7;->q()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/c5;->a:Ljava/lang/String;

    .line 5
    invoke-interface {v0}, Lcom/ironsource/B7;->l()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/c5;->b:Ljava/lang/String;

    .line 6
    invoke-interface {v0}, Lcom/ironsource/B7;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/c5;->c:Ljava/lang/String;

    .line 7
    invoke-interface {v0}, Lcom/ironsource/B7;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/c5;->d:Ljava/lang/String;

    .line 8
    invoke-interface {v0}, Lcom/ironsource/B7;->e()I

    move-result v1

    iput v1, p0, Lcom/ironsource/c5;->e:I

    .line 9
    invoke-interface {v0, p1}, Lcom/ironsource/B7;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/c5;->f:Ljava/lang/String;

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/ironsource/c5;
    .registers 2

    .line 1
    sget-object v0, Lcom/ironsource/c5;->h:Lcom/ironsource/c5;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lcom/ironsource/c5;

    invoke-direct {v0, p0}, Lcom/ironsource/c5;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ironsource/c5;->h:Lcom/ironsource/c5;

    .line 4
    :cond_b
    sget-object p0, Lcom/ironsource/c5;->h:Lcom/ironsource/c5;

    return-object p0
.end method

.method public static g()V
    .registers 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/ironsource/c5;->h:Lcom/ironsource/c5;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)F
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/ironsource/c5;->g:Lcom/ironsource/B7;

    invoke-interface {v0, p1}, Lcom/ironsource/B7;->F(Landroid/content/Context;)F

    move-result p1

    return p1
.end method

.method public a()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/c5;->e:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/ironsource/c5;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/c5;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/c5;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/c5;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/c5;->d:Ljava/lang/String;

    return-object v0
.end method
