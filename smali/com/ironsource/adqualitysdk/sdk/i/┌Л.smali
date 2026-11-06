###### Class com.ironsource.adqualitysdk.sdk.i.C0332 (com.ironsource.adqualitysdk.sdk.i.ڋ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ڋ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

.field public final synthetic ｋ:Ljava/util/LinkedHashMap;

.field public final synthetic ﾇ:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;Landroid/content/Context;Ljava/util/LinkedHashMap;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ڋ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ڋ;->ﾇ:Landroid/content/Context;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ڋ;->ｋ:Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ڋ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﻏ()Ljava/util/HashMap;

    move-result-object v1

    .line 2
    iput-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﱟ:Ljava/util/HashMap;

    .line 3
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ڋ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ڋ;->ﾇ:Landroid/content/Context;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ڋ;->ｋ:Ljava/util/LinkedHashMap;

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/ڕ;

    invoke-direct {v3, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ڕ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ڋ;)V

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﾒ(Landroid/content/Context;Ljava/util/LinkedHashMap;Lcom/ironsource/adqualitysdk/sdk/i/ڕ;)V

    .line 5
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v0

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ڒ;

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ڒ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ڋ;)V

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 6
    iget-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->Ↄ:Landroid/os/Handler;

    if-eqz v2, :cond_31

    .line 7
    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/ﮣ;

    invoke-direct {v3, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﮣ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;Lcom/ironsource/adqualitysdk/sdk/i/ſ;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_31
    return-void
.end method
