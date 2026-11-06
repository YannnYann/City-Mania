###### Class com.ironsource.adqualitysdk.sdk.i.C0966 (com.ironsource.adqualitysdk.sdk.i.ﻨ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﻨ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ḻ;
.source "SourceFile"


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/İ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/İ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻨ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ḻ;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻨ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/į;->Ṿ:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/İ;Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﾒ(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻨ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/į;->Ḽ:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/İ;Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﾒ(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
