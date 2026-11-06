###### Class com.ironsource.adqualitysdk.sdk.i.Y (com.ironsource.adqualitysdk.sdk.i.Y)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/Y;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/Z;

.field public final synthetic ｋ:Ljava/lang/Object;

.field public final synthetic ﾇ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/Z;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/Y;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/Z;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/Y;->ﾇ:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/Y;->ｋ:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 7

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_5
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/į;->טּ:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/Y;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/Z;

    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/Z;->ｋ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/į;->ﬤ:Ljava/lang/String;

    const-string v2, "X7Y4\n"

    const-string v3, "KMBbtUEhW9U=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/į;->ﺙ:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/Y;->ﾇ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/Y;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/Z;

    iget-boolean v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/Z;->ﻛ:Z

    if-eqz v1, :cond_56

    .line 7
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/į;->ﱡ:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2e} :catch_2f

    goto :goto_56

    :catch_2f
    move-exception v1

    .line 10
    const-string v2, "ZvWT33xeYe5V2JDncVdz3Q==\n"

    const-string v3, "MZDxiRU7Fq8=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FYa5Nd8OGGI1lb8zw0lbczydqDGNRAh/Ps7r\n"

    const-string v5, "UPTLWq0uexA=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﻛ(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_56
    :goto_56
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/Y;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/Z;

    iget-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/Z;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/a0;

    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/a0;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/b0;

    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/Z;->ﾇ:Landroid/webkit/WebView;

    .line 13
    iget-object v3, v2, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/n0;

    if-eqz v3, :cond_6f

    .line 14
    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/n0;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/g0;

    .line 15
    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/g0;->ﾇ:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_6f

    .line 16
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/adqualitysdk/sdk/i/f0;

    goto :goto_70

    :cond_6f
    const/4 v3, 0x0

    .line 17
    :goto_70
    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/Y;->ｋ:Ljava/lang/Object;

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ト;->ﾒ(Lorg/json/JSONObject;Landroid/view/View;Lcom/ironsource/adqualitysdk/sdk/i/f0;Ljava/lang/Object;)V

    return-void
.end method
