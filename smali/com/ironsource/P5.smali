###### Class com.ironsource.P5 (com.ironsource.P5)
.class public Lcom/ironsource/P5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/ironsource/P5;->c:I

    .line 8
    iput-object p3, p0, Lcom/ironsource/P5;->b:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/ironsource/P5;->a:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/ironsource/P5;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/ironsource/P5;->c:I

    .line 3
    iput-object p2, p0, Lcom/ironsource/P5;->b:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/ironsource/P5;->a:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/ironsource/P5;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/ironsource/I4;->a(Lcom/ironsource/P5;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/P5;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/P5;->c:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/P5;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/P5;->a:Ljava/lang/String;

    return-object v0
.end method
