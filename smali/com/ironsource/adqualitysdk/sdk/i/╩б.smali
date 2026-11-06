###### Class com.ironsource.adqualitysdk.sdk.i.C0136 (com.ironsource.adqualitysdk.sdk.i.ʡ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ʡ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ʈ;

.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ʈ;Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ʡ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ʈ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ʡ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ʡ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ʈ;

    .line 2
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ʈ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    .line 3
    const-string v1, "jc5+Wh6Gcx+OhXVdM5dsFYz7dlIGoH8G\n"

    const-string v2, "4KsaM3/yGnA=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ʡ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ʈ;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ʡ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ʈ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ʈ;Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﾒ(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
