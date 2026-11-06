###### Class com.ironsource.C3877uc (com.ironsource.uc)
.class public Lcom/ironsource/uc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/ironsource/V6;

.field private final b:Lcom/ironsource/B7;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->a()Lcom/ironsource/B7;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/uc;->b:Lcom/ironsource/B7;

    .line 3
    new-instance v0, Lcom/ironsource/V6;

    invoke-direct {v0}, Lcom/ironsource/V6;-><init>()V

    iput-object v0, p0, Lcom/ironsource/uc;->a:Lcom/ironsource/V6;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 8
    new-instance v0, Lorg/json/JSONObject;

    .line 9
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceQaProperties;->getInstance()Lcom/ironsource/sdk/utils/IronSourceQaProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/sdk/utils/IronSourceQaProperties;->getParameters()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 10
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_1a

    .line 11
    iget-object v1, p0, Lcom/ironsource/uc;->a:Lcom/ironsource/V6;

    const-string v2, "debug"

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/V6;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1a
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 4

    .line 1
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_5

    return-void

    .line 4
    :cond_5
    check-cast p1, Landroid/app/Activity;

    .line 5
    iget-object v0, p0, Lcom/ironsource/uc;->a:Lcom/ironsource/V6;

    iget-object v1, p0, Lcom/ironsource/uc;->b:Lcom/ironsource/B7;

    .line 6
    invoke-interface {v1, p1}, Lcom/ironsource/B7;->a(Landroid/app/Activity;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 7
    const-string v1, "imm"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/ironsource/t8$c;)V
    .registers 4

    .line 13
    iget-object v0, p0, Lcom/ironsource/uc;->a:Lcom/ironsource/V6;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "cte"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/ironsource/uc;->a:Lcom/ironsource/V6;

    const-string v1, "ismao"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 15
    iget-object v1, p0, Lcom/ironsource/uc;->a:Lcom/ironsource/V6;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    :cond_24
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 4

    .line 12
    iget-object v0, p0, Lcom/ironsource/uc;->a:Lcom/ironsource/V6;

    const-string v1, "ctgp"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Z)V
    .registers 4

    .line 17
    iget-object v0, p0, Lcom/ironsource/uc;->a:Lcom/ironsource/V6;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "cnstisn"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerConfig()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_2f

    .line 6
    :cond_b
    :try_start_b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    const-string v0, "chinaCDN"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/ironsource/uc;->a:Lcom/ironsource/V6;

    const-string v2, "cncdn"

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    move-exception v0

    .line 10
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 11
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_2f
    return-void
.end method

.method public c()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/uc;->a:Lcom/ironsource/V6;

    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->isUxt()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "uxt"

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public d()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/uc;->a:Lcom/ironsource/V6;

    const-string v1, "sdkv"

    const-string v2, "9.6.1"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/V6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public e()V
    .registers 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Lcom/ironsource/Nc;->f:Ljava/lang/String;

    const-string v2, "omv"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string v1, "ompv"

    const-string v2, "7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/ironsource/uc;->a:Lcom/ironsource/V6;

    invoke-virtual {v1, v0}, Lcom/ironsource/V6;->a(Ljava/util/Map;)V

    return-void
.end method
