###### Class com.ironsource.adqualitysdk.sdk.i.C1015 (com.ironsource.adqualitysdk.sdk.i.ﾆ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﾆ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ĺ;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/＿;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/＿;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾆ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/＿;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾆ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/＿;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 5
    :try_start_b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﱟ:Lorg/json/JSONObject;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_12} :catch_12

    :catch_12
    :cond_12
    return-void
.end method
