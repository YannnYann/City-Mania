###### Class com.ironsource.adqualitysdk.sdk.i.C0114 (com.ironsource.adqualitysdk.sdk.i.ɹ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ɹ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﻐ:Landroid/view/KeyEvent$Callback;

.field public final synthetic ﻛ:Landroid/view/View;

.field public final synthetic ｋ:Lorg/json/JSONObject;

.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᐜ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ᐜ;Lorg/json/JSONObject;Landroid/view/View;Landroid/view/KeyEvent$Callback;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ɹ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᐜ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ɹ;->ｋ:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ɹ;->ﻛ:Landroid/view/View;

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ɹ;->ﻐ:Landroid/view/KeyEvent$Callback;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ɹ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᐜ;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ɹ;->ｋ:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ɹ;->ﻛ:Landroid/view/View;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ɹ;->ﻐ:Landroid/view/KeyEvent$Callback;

    invoke-interface {v0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ᐜ;->ﾒ(Lorg/json/JSONObject;Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method
