###### Class com.ironsource.Ze (com.ironsource.Ze)
.class public Lcom/ironsource/Ze;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/P8$b;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/Ze;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/ironsource/Ze;->b:I

    return-void
.end method


# virtual methods
.method public b()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/Ze;->b:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ze;->a:Ljava/lang/String;

    return-object v0
.end method
