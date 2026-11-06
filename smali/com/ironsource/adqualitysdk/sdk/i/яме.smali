###### Class com.ironsource.adqualitysdk.sdk.i.C0849 (com.ironsource.adqualitysdk.sdk.i.ﬥ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﬥ;
.super Ljava/util/HashMap;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/Ꭸ;


# instance fields
.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/宀;

.field public final ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/宀;Ljava/util/HashMap;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﬥ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/宀;

    .line 2
    invoke-direct {p0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 3
    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﬥ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;

    return-void
.end method


# virtual methods
.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/amazon/device/ads/DTBFetchManager;

    .line 2
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﬥ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/宀;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﬥ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;

    const-string v2, "M6WLOfLLY4c6kKce8NpyhD+Quhfa3nDBB4S9\n"

    const-string v3, "d/HJf5e/AO8=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/Ꭸ;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/device/ads/DTBFetchManager;

    return-object p1
.end method

.method public final ﾒ()Ljava/lang/Object;
    .registers 1

    .line 0
    return-object p0
.end method
