###### Class com.ironsource.adqualitysdk.sdk.i.C0642 (com.ironsource.adqualitysdk.sdk.i.ᴠ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᴠ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᘄ;

.field public final synthetic ﾇ:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ᘄ;Ljava/util/ArrayList;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴠ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᘄ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴠ;->ﾇ:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴠ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᘄ;

    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘄ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

    iget-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘄ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘄ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴠ;->ﾇ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v4, v2, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;

    .line 3
    invoke-virtual {v1, v2, v4, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    return-void
.end method
