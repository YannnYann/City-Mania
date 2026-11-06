###### Class com.ironsource.adqualitysdk.sdk.i.C0898 (com.ironsource.adqualitysdk.sdk.i.ﮌ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﮌ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ףּ;

.field public final synthetic ｋ:Landroid/os/Bundle;

.field public final synthetic ﾇ:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ףּ;Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮌ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ףּ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮌ;->ﾇ:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮌ;->ｋ:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮌ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ףּ;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮌ;->ﾇ:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ףּ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ףּ;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮌ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ףּ;

    .line 3
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ףּ;->ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/ﻨ;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮌ;->ｋ:Landroid/os/Bundle;

    if-eqz v0, :cond_1e

    .line 6
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ףּ;->ףּ:Ljava/lang/String;

    .line 7
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮌ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ףּ;

    .line 8
    iget-boolean v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/ףּ;->ﮐ:Z

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    :cond_1e
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮌ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ףּ;

    const/4 v1, 0x1

    .line 12
    iput-boolean v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ףּ;->ﮉ:Z

    :cond_23
    return-void
.end method
