###### Class com.ironsource.Y2 (com.ironsource.Y2)
.class public final Lcom/ironsource/Y2;
.super Lcom/ironsource/j1;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/ironsource/m1;)V
    .registers 10

    const-string v0, "eventBaseData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/ironsource/N9;->i()Lcom/ironsource/N9;

    move-result-object v3

    const-string v0, "getInstance(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/ironsource/e3$c;

    invoke-direct {v4}, Lcom/ironsource/e3$c;-><init>()V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/ironsource/j1;-><init>(Lcom/ironsource/m1;Lcom/ironsource/F7;Lcom/ironsource/Ob;Lcom/ironsource/t4;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
