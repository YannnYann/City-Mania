###### Class com.ironsource.mediationsdk.adunit.adapter.utility.NativeAdProperties (com.ironsource.mediationsdk.adunit.adapter.utility.NativeAdProperties)
.class public final Lcom/ironsource/mediationsdk/adunit/adapter/utility/NativeAdProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final adOptionsPosition:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;

.field private final defaultAdOptionPosition:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;->BOTTOM_LEFT:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/NativeAdProperties;->defaultAdOptionPosition:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;

    .line 6
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/NativeAdProperties;->getAdOptionsPosition(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/NativeAdProperties;->adOptionsPosition:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;

    return-void
.end method

.method private final getAdOptionsPosition(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;
    .registers 4

    .line 2
    sget-object v0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;->AD_OPTIONS_POSITION_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/NativeAdProperties;->defaultAdOptionPosition:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    :try_start_c
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;->valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;

    move-result-object p1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_13} :catch_14

    return-object p1

    :catch_14
    move-exception p1

    .line 9
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 10
    iget-object p1, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/NativeAdProperties;->defaultAdOptionPosition:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;

    return-object p1
.end method


# virtual methods
.method public final getAdOptionsPosition()Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/NativeAdProperties;->adOptionsPosition:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;

    return-object v0
.end method
