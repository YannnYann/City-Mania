###### Class com.ironsource.C3601fa (com.ironsource.fa)
.class public final Lcom/ironsource/fa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/ironsource/u8;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/ironsource/fa;-><init>(Lcom/ironsource/u8;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/u8;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/fa;->a:Lcom/ironsource/u8;

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/u8;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/fa;->a:Lcom/ironsource/u8;

    return-object v0
.end method

.method public final b()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/fa;->a:Lcom/ironsource/u8;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method
