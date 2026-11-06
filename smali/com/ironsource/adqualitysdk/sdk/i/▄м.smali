###### Class com.ironsource.adqualitysdk.sdk.i.C0372 (com.ironsource.adqualitysdk.sdk.i.ܬ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ܬ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ܪ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ܪ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ܬ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ܪ;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ܬ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ܪ;

    iget-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ܪ;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    iget-object v3, v0, Lcom/ironsource/adqualitysdk/sdk/i/ܪ;->ﾇ:Landroid/content/Context;

    iget-object v4, v0, Lcom/ironsource/adqualitysdk/sdk/i/ܪ;->ｋ:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/ironsource/adqualitysdk/sdk/i/ܪ;->ﻛ:Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/ironsource/adqualitysdk/sdk/i/ܪ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/গ;

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﭖ:Ljava/lang/String;

    .line 2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    return-void

    :cond_18
    const/4 v0, 0x0

    .line 6
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/ironsource/adqualitysdk/sdk/i/ғ;

    .line 7
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2d

    goto :goto_33

    :cond_2d
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ܪ;

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/adqualitysdk/sdk/i/ܪ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/গ;)V

    move-object v6, v1

    .line 9
    :goto_33
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ۊ;

    move-object v4, v3

    move-object v5, v7

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/adqualitysdk/sdk/i/ۊ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;Ljava/lang/String;Landroid/content/Context;Lcom/ironsource/adqualitysdk/sdk/i/ғ;Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    return-void
.end method
