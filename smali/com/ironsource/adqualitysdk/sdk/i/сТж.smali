###### Class com.ironsource.adqualitysdk.sdk.i.C0495 (com.ironsource.adqualitysdk.sdk.i.ᒦ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᒦ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ſ;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ܕ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ܕ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒦ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ܕ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 8

    .line 1
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒦ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ܕ;

    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ܕ;->ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/ϛ;

    .line 2
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->ףּ:Lcom/ironsource/adqualitysdk/sdk/i/ﭔ;

    .line 3
    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 4
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘢ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/＿;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string v2, "a2p3lR3PQ0F0\n"

    const-string v3, "HxgW9nitIiI=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TrCU\n"

    const-string v4, "eZ6kj3AD2ZU=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/ﾆ;

    invoke-direct {v4, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﾆ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/＿;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    new-instance v5, Lcom/ironsource/adqualitysdk/sdk/i/丶;

    invoke-direct {v5, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/丶;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v6

    check-cast v6, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 9
    iget-object v6, v6, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->Ύ:Lcom/ironsource/adqualitysdk/sdk/i/م;

    .line 10
    invoke-virtual {v6}, Lcom/ironsource/adqualitysdk/sdk/i/م;->ﾇ()Z

    move-result v6

    if-eqz v6, :cond_56

    .line 11
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v5

    check-cast v5, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 12
    iget-object v5, v5, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->Ύ:Lcom/ironsource/adqualitysdk/sdk/i/م;

    .line 13
    invoke-virtual {v5, v2}, Lcom/ironsource/adqualitysdk/sdk/i/م;->ﾒ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_50

    const/4 v1, 0x0

    goto :goto_5a

    .line 17
    :cond_50
    new-instance v6, Lcom/ironsource/adqualitysdk/sdk/i/ⅰ;

    invoke-direct {v6, v2, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ⅰ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 19
    :cond_56
    invoke-virtual {v1, v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ﭔ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;Lcom/ironsource/adqualitysdk/sdk/i/ĺ;)Ljava/lang/String;

    move-result-object v1

    .line 20
    :goto_5a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_67

    .line 22
    :try_start_60
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﱟ:Lorg/json/JSONObject;
    :try_end_67
    .catch Lorg/json/JSONException; {:try_start_60 .. :try_end_67} :catch_67

    :catch_67
    :cond_67
    return-void
.end method
