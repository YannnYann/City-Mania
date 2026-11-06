###### Class com.ironsource.adqualitysdk.sdk.i.C0899 (com.ironsource.adqualitysdk.sdk.i.ﮐ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﮐ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ףּ;

.field public final synthetic ﾇ:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ףּ;Landroid/app/Activity;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮐ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ףּ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮐ;->ﾇ:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮐ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ףּ;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮐ;->ﾇ:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ףּ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ףּ;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 2
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ﱟ;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ﱟ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﮐ;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    .line 8
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮐ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ףּ;

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ףּ;->ﮉ:Z

    const/4 v2, 0x1

    .line 10
    iput-boolean v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ףּ;->ﮌ:Z

    .line 11
    iget-boolean v3, v0, Lcom/ironsource/adqualitysdk/sdk/i/ףּ;->ﮐ:Z

    if-eqz v3, :cond_22

    .line 12
    iget-boolean v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ףּ;->ﭸ:Z

    if-eqz v0, :cond_77

    .line 13
    :cond_22
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮐ;->ﾇ:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_77

    .line 14
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮐ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ףּ;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮐ;->ﾇ:Landroid/app/Activity;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 17
    iget-boolean v5, v0, Lcom/ironsource/adqualitysdk/sdk/i/ףּ;->ﮐ:Z

    if-nez v5, :cond_48

    .line 18
    iput-boolean v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ףּ;->ﮐ:Z

    .line 19
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/є;->ﾒ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_77

    .line 20
    :cond_48
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 22
    :try_start_4d
    sget-object v6, Lcom/ironsource/adqualitysdk/sdk/i/į;->ᖩ:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_4d .. :try_end_52} :catch_53

    goto :goto_74

    :catch_53
    move-exception v2

    .line 24
    sget-object v6, Lcom/ironsource/adqualitysdk/sdk/i/ףּ;->ﭖ:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Y3MKi/PMHJRCaBaDoYgSvkl1K4HviF2ESSESl+6CR9A=\n"

    const-string v9, "JgF45IHsffA=\n"

    invoke-static {v8, v9}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﻛ(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :goto_74
    invoke-virtual {v0, v5, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/є;->ﾒ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    :cond_77
    :goto_77
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮐ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ףּ;

    .line 28
    iput-boolean v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ףּ;->ﭸ:Z

    :cond_7b
    return-void
.end method
