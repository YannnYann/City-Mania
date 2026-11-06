###### Class com.ironsource.AbstractC3606ff (com.ironsource.ff)
.class public abstract Lcom/ironsource/ff;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/ironsource/O;


# direct methods
.method public constructor <init>(Lcom/ironsource/O;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/ff;->a:Lcom/ironsource/O;

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/O;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/ff;->a:Lcom/ironsource/O;

    return-object v0
.end method

.method public final a(Lcom/ironsource/Ob;)Lcom/ironsource/v;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/Ob<",
            "Lcom/ironsource/ff;",
            "Lcom/ironsource/v;",
            ">;)",
            "Lcom/ironsource/v;"
        }
    .end annotation

    const-string v0, "mapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1, p0}, Lcom/ironsource/Ob;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/v;

    return-object p1
.end method

.method public abstract b()Lcom/ironsource/mf;
.end method
