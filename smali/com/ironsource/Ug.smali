###### Class com.ironsource.Ug (com.ironsource.Ug)
.class public final Lcom/ironsource/Ug;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Smash:",
        "Lcom/ironsource/p3<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/ironsource/Zg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ironsource/Zg<",
            "TSmash;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ironsource/Zg;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/Zg<",
            "TSmash;>;)V"
        }
    .end annotation

    const-string v0, "smashPicker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/Ug;->a:Lcom/ironsource/Zg;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TSmash;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ug;->a:Lcom/ironsource/Zg;

    invoke-virtual {v0}, Lcom/ironsource/Zg;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ug;->a:Lcom/ironsource/Zg;

    invoke-virtual {v0}, Lcom/ironsource/Zg;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ironsource/Ug;->a:Lcom/ironsource/Zg;

    invoke-virtual {v0}, Lcom/ironsource/Zg;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ug;->a:Lcom/ironsource/Zg;

    invoke-virtual {v0}, Lcom/ironsource/Zg;->d()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method
