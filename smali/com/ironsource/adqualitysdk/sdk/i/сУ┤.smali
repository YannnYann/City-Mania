###### Class com.ironsource.adqualitysdk.sdk.i.C0540 (com.ironsource.adqualitysdk.sdk.i.ᓴ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᓴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ḷ;


# instance fields
.field public final synthetic ﻛ:Ljava/util/List;

.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;

.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ײ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ײ;Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;Ljava/util/List;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᓴ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ײ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᓴ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᓴ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᓴ;->ﻛ:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ṙ;)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᓴ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ײ;

    .line 2
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ײ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᓪ;

    .line 3
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᓴ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᓴ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᓴ;->ﻛ:Ljava/util/List;

    .line 4
    iget-object v4, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᓪ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᕐ;

    const/4 v5, 0x0

    if-eqz v4, :cond_16

    .line 5
    invoke-virtual {v4, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᕐ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ṙ;)Z

    move-result v4

    if-nez v4, :cond_16

    return v5

    .line 9
    :cond_16
    iget-object v4, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᓪ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

    if-eqz v4, :cond_32

    .line 10
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11
    invoke-virtual {v4, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 12
    iget-object p1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᓪ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iget-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;

    .line 14
    invoke-virtual {p1, v1, v0, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/Ι;->ﾒ()Z

    move-result p1

    return p1

    :cond_32
    const/4 p1, 0x1

    return p1
.end method
