###### Class com.ironsource.adqualitysdk.sdk.i.C0977 (com.ironsource.adqualitysdk.sdk.i.ｆ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ｆ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;

.field public final synthetic ﾇ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｆ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｆ;->ﾇ:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 3

    .line 1
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/į;->ᔽ:Ljava/util/List;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｆ;->ﾇ:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ｉ;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ｉ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ｆ;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    :cond_12
    return-void
.end method
