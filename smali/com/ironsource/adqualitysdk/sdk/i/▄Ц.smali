###### Class com.ironsource.adqualitysdk.sdk.i.C0362 (com.ironsource.adqualitysdk.sdk.i.ܖ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ܖ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ڔ;

.field public final synthetic ｋ:Landroid/content/Intent;

.field public final synthetic ﾇ:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ڔ;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ܖ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ڔ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ܖ;->ﾇ:Landroid/content/Context;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ܖ;->ｋ:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ܖ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ڔ;

    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ڔ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

    iget-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ڔ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;

    iget-object v3, v0, Lcom/ironsource/adqualitysdk/sdk/i/ڔ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

    iget-object v4, v0, Lcom/ironsource/adqualitysdk/sdk/i/ڔ;->ﻐ:Ljava/util/List;

    iget-object v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/ܖ;->ﾇ:Landroid/content/Context;

    iget-object v6, p0, Lcom/ironsource/adqualitysdk/sdk/i/ܖ;->ｋ:Landroid/content/Intent;

    .line 2
    iget-object v7, v0, Lcom/ironsource/adqualitysdk/sdk/i/ڔ;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/ʏ;

    filled-new-array {v0, v5, v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v7, v4, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ʏ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ʏ;Ljava/util/List;[Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v4, v2, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;

    .line 4
    invoke-virtual {v1, v2, v4, v3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    return-void
.end method
