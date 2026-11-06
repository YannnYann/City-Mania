###### Class com.ironsource.C3675jd (com.ironsource.jd)
.class public final Lcom/ironsource/jd;
.super Lcom/ironsource/r3;
.source "SourceFile"


# static fields
.field public static final P:Lcom/ironsource/jd;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ironsource/jd;

    invoke-direct {v0}, Lcom/ironsource/jd;-><init>()V

    sput-object v0, Lcom/ironsource/jd;->P:Lcom/ironsource/jd;

    .line 1
    const-string v1, "outcome"

    iput-object v1, v0, Lcom/ironsource/r3;->H:Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lcom/ironsource/r3;->G:I

    .line 3
    const-string v1, "PXL"

    iput-object v1, v0, Lcom/ironsource/r3;->I:Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Lcom/ironsource/r3;->e()V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/ironsource/r3;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/C5;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public c(Lcom/ironsource/C5;)I
    .registers 2

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public d()V
    .registers 1

    .line 0
    return-void
.end method

.method public d(Lcom/ironsource/C5;)Z
    .registers 2

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public e(I)Ljava/lang/String;
    .registers 2

    .line 1
    const-string p1, ""

    return-object p1
.end method

.method public f(Lcom/ironsource/C5;)V
    .registers 2

    .line 0
    return-void
.end method

.method public g(Lcom/ironsource/C5;)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public h(Lcom/ironsource/C5;)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public final i()V
    .registers 4

    .line 1
    new-instance v0, Lcom/ironsource/ba;

    invoke-direct {v0}, Lcom/ironsource/ba;-><init>()V

    .line 2
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/ba;->b(Landroid/content/Context;)V

    .line 3
    new-instance v0, Lcom/ironsource/h9;

    invoke-direct {v0}, Lcom/ironsource/h9;-><init>()V

    invoke-virtual {v0}, Lcom/ironsource/h9;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/ironsource/C5;

    sget-object v2, Lcom/ironsource/D5;->T:Lcom/ironsource/D5;

    invoke-direct {v1, v2, v0}, Lcom/ironsource/C5;-><init>(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    .line 5
    invoke-virtual {p0, v1}, Lcom/ironsource/r3;->a(Lcom/ironsource/C5;)V

    return-void
.end method

.method public j(Lcom/ironsource/C5;)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method
