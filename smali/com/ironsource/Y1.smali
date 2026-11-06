###### Class com.ironsource.Y1 (com.ironsource.Y1)
.class public Lcom/ironsource/Y1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/ironsource/Y1;->a:I

    .line 4
    iput p2, p0, Lcom/ironsource/Y1;->b:I

    .line 5
    iput p3, p0, Lcom/ironsource/Y1;->c:I

    .line 6
    iput-boolean p4, p0, Lcom/ironsource/Y1;->d:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/Y1;->c:I

    return v0
.end method

.method public b()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/Y1;->b:I

    return v0
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/Y1;->a:I

    return v0
.end method

.method public d()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/Y1;->d:Z

    return v0
.end method
