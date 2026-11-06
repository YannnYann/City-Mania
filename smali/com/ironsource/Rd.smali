###### Class com.ironsource.Rd (com.ironsource.Rd)
.class public Lcom/ironsource/Rd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/ironsource/Rd;->a:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ironsource/Rd;->b:[B

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/ironsource/Rd;->a:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_d

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method
