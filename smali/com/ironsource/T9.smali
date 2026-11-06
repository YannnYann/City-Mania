###### Class com.ironsource.T9 (com.ironsource.T9)
.class public final Lcom/ironsource/T9;
.super Lcom/ironsource/qe;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/ironsource/qe;)V
    .registers 3

    const-string v0, "sdkConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/ironsource/qe;-><init>(Lcom/ironsource/qe;)V

    return-void
.end method
