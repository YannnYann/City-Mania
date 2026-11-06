###### Class com.ironsource.adqualitysdk.sdk.i.C0639 (com.ironsource.adqualitysdk.sdk.i.ᴘ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᴘ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ḻ;
.source "SourceFile"


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴘ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ḻ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾇ(Landroid/app/Activity;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴘ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    .line 2
    iget-boolean v0, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﺙ:Z

    if-eqz v0, :cond_e

    .line 3
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ẏ;

    invoke-direct {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ẏ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ｋ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    :cond_e
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﺙ:Z

    return-void
.end method

.method public final ﾒ(Landroid/app/Activity;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴘ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﻛ()V

    return-void
.end method
