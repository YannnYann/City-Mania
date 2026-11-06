###### Class com.ironsource.adqualitysdk.sdk.i.C0909 (com.ironsource.adqualitysdk.sdk.i.ﱟ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﱟ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﮐ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ﮐ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﱟ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﮐ;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﱟ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﮐ;

    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮐ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ףּ;

    .line 2
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ףּ;->ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/ﻨ;

    .line 3
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮐ;->ﾇ:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﻨ;->onActivityResumed(Landroid/app/Activity;)V

    return-void
.end method
