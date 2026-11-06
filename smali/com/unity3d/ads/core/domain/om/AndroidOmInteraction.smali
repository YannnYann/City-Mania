###### Class com.unity3d.ads.core.domain.om.AndroidOmInteraction (com.unity3d.ads.core.domain.om.AndroidOmInteraction)
.class public abstract Lcom/unity3d/ads/core/domain/om/AndroidOmInteraction;
.super Ljava/lang/Object;
.source "AndroidOmInteraction.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/om/OmInteraction;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getCreativeType(Lorg/json/JSONObject;)Lcom/iab/omid/library/unity3d/adsession/CreativeType;
    .registers 3

    .line 50
    const-string v0, "creativeType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_29

    const/4 v0, 0x2

    if-eq p1, v0, :cond_26

    const/4 v0, 0x3

    if-eq p1, v0, :cond_23

    const/4 v0, 0x4

    if-eq p1, v0, :cond_20

    const/4 v0, 0x5

    if-ne p1, v0, :cond_18

    .line 55
    sget-object p1, Lcom/iab/omid/library/unity3d/adsession/CreativeType;->AUDIO:Lcom/iab/omid/library/unity3d/adsession/CreativeType;

    return-object p1

    .line 56
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid creativeType"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_20
    sget-object p1, Lcom/iab/omid/library/unity3d/adsession/CreativeType;->VIDEO:Lcom/iab/omid/library/unity3d/adsession/CreativeType;

    return-object p1

    .line 53
    :cond_23
    sget-object p1, Lcom/iab/omid/library/unity3d/adsession/CreativeType;->NATIVE_DISPLAY:Lcom/iab/omid/library/unity3d/adsession/CreativeType;

    return-object p1

    .line 52
    :cond_26
    sget-object p1, Lcom/iab/omid/library/unity3d/adsession/CreativeType;->HTML_DISPLAY:Lcom/iab/omid/library/unity3d/adsession/CreativeType;

    return-object p1

    .line 51
    :cond_29
    sget-object p1, Lcom/iab/omid/library/unity3d/adsession/CreativeType;->DEFINED_BY_JAVASCRIPT:Lcom/iab/omid/library/unity3d/adsession/CreativeType;

    return-object p1
.end method

.method private final getImpressionType(Lorg/json/JSONObject;)Lcom/iab/omid/library/unity3d/adsession/ImpressionType;
    .registers 3

    .line 36
    const-string v0, "impressionType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    packed-switch p1, :pswitch_data_2a

    .line 45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid impressionType"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :pswitch_11
    sget-object p1, Lcom/iab/omid/library/unity3d/adsession/ImpressionType;->OTHER:Lcom/iab/omid/library/unity3d/adsession/ImpressionType;

    return-object p1

    .line 43
    :pswitch_14
    sget-object p1, Lcom/iab/omid/library/unity3d/adsession/ImpressionType;->AUDIBLE:Lcom/iab/omid/library/unity3d/adsession/ImpressionType;

    return-object p1

    .line 42
    :pswitch_17
    sget-object p1, Lcom/iab/omid/library/unity3d/adsession/ImpressionType;->VIEWABLE:Lcom/iab/omid/library/unity3d/adsession/ImpressionType;

    return-object p1

    .line 41
    :pswitch_1a
    sget-object p1, Lcom/iab/omid/library/unity3d/adsession/ImpressionType;->ONE_PIXEL:Lcom/iab/omid/library/unity3d/adsession/ImpressionType;

    return-object p1

    .line 40
    :pswitch_1d
    sget-object p1, Lcom/iab/omid/library/unity3d/adsession/ImpressionType;->BEGIN_TO_RENDER:Lcom/iab/omid/library/unity3d/adsession/ImpressionType;

    return-object p1

    .line 39
    :pswitch_20
    sget-object p1, Lcom/iab/omid/library/unity3d/adsession/ImpressionType;->LOADED:Lcom/iab/omid/library/unity3d/adsession/ImpressionType;

    return-object p1

    .line 38
    :pswitch_23
    sget-object p1, Lcom/iab/omid/library/unity3d/adsession/ImpressionType;->UNSPECIFIED:Lcom/iab/omid/library/unity3d/adsession/ImpressionType;

    return-object p1

    .line 37
    :pswitch_26
    sget-object p1, Lcom/iab/omid/library/unity3d/adsession/ImpressionType;->DEFINED_BY_JAVASCRIPT:Lcom/iab/omid/library/unity3d/adsession/ImpressionType;

    return-object p1

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch
.end method

.method private final getImpressionsOwner(Lorg/json/JSONObject;)Lcom/iab/omid/library/unity3d/adsession/Owner;
    .registers 3

    .line 88
    :try_start_0
    const-string v0, "impressionOwner"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x3

    if-ne p1, v0, :cond_12

    .line 91
    sget-object p1, Lcom/iab/omid/library/unity3d/adsession/Owner;->NONE:Lcom/iab/omid/library/unity3d/adsession/Owner;

    return-object p1

    .line 92
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid impressionOwner"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_1a
    sget-object p1, Lcom/iab/omid/library/unity3d/adsession/Owner;->NATIVE:Lcom/iab/omid/library/unity3d/adsession/Owner;

    return-object p1

    .line 89
    :cond_1d
    sget-object p1, Lcom/iab/omid/library/unity3d/adsession/Owner;->JAVASCRIPT:Lcom/iab/omid/library/unity3d/adsession/Owner;
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_1f} :catch_20

    return-object p1

    .line 95
    :catch_20
    sget-object p1, Lcom/iab/omid/library/unity3d/adsession/Owner;->NONE:Lcom/iab/omid/library/unity3d/adsession/Owner;

    return-object p1
.end method

.method private final getMediaEventsOwner(Lorg/json/JSONObject;)Lcom/iab/omid/library/unity3d/adsession/Owner;
    .registers 3

    .line 75
    :try_start_0
    const-string v0, "mediaEventsOwner"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x3

    if-ne p1, v0, :cond_12

    .line 78
    sget-object p1, Lcom/iab/omid/library/unity3d/adsession/Owner;->NONE:Lcom/iab/omid/library/unity3d/adsession/Owner;

    return-object p1

    .line 79
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid mediaEventsOwner"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_1a
    sget-object p1, Lcom/iab/omid/library/unity3d/adsession/Owner;->NATIVE:Lcom/iab/omid/library/unity3d/adsession/Owner;

    return-object p1

    .line 76
    :cond_1d
    sget-object p1, Lcom/iab/omid/library/unity3d/adsession/Owner;->JAVASCRIPT:Lcom/iab/omid/library/unity3d/adsession/Owner;
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_1f} :catch_20

    return-object p1

    .line 82
    :catch_20
    sget-object p1, Lcom/iab/omid/library/unity3d/adsession/Owner;->NONE:Lcom/iab/omid/library/unity3d/adsession/Owner;

    return-object p1
.end method

.method private final getVideoEventsOwner(Lorg/json/JSONObject;)Lcom/iab/omid/library/unity3d/adsession/Owner;
    .registers 3

    .line 62
    :try_start_0
    const-string v0, "videoEventsOwner"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x3

    if-ne p1, v0, :cond_12

    .line 65
    sget-object p1, Lcom/iab/omid/library/unity3d/adsession/Owner;->NONE:Lcom/iab/omid/library/unity3d/adsession/Owner;

    return-object p1

    .line 66
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid videoEventsOwner"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_1a
    sget-object p1, Lcom/iab/omid/library/unity3d/adsession/Owner;->NATIVE:Lcom/iab/omid/library/unity3d/adsession/Owner;

    return-object p1

    .line 63
    :cond_1d
    sget-object p1, Lcom/iab/omid/library/unity3d/adsession/Owner;->JAVASCRIPT:Lcom/iab/omid/library/unity3d/adsession/Owner;
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_1f} :catch_20

    return-object p1

    .line 69
    :catch_20
    sget-object p1, Lcom/iab/omid/library/unity3d/adsession/Owner;->NONE:Lcom/iab/omid/library/unity3d/adsession/Owner;

    return-object p1
.end method


# virtual methods
.method public getOMidOptions(Lorg/json/JSONObject;)Lcom/unity3d/ads/core/data/model/OmidOptions;
    .registers 11

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v1, Lcom/unity3d/ads/core/data/model/OmidOptions;

    .line 25
    const-string v0, "isolateVerificationScripts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 26
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/domain/om/AndroidOmInteraction;->getImpressionsOwner(Lorg/json/JSONObject;)Lcom/iab/omid/library/unity3d/adsession/Owner;

    move-result-object v3

    .line 27
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/domain/om/AndroidOmInteraction;->getVideoEventsOwner(Lorg/json/JSONObject;)Lcom/iab/omid/library/unity3d/adsession/Owner;

    move-result-object v4

    .line 28
    const-string v0, "customReferenceData"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 29
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/domain/om/AndroidOmInteraction;->getImpressionType(Lorg/json/JSONObject;)Lcom/iab/omid/library/unity3d/adsession/ImpressionType;

    move-result-object v6

    .line 30
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/domain/om/AndroidOmInteraction;->getCreativeType(Lorg/json/JSONObject;)Lcom/iab/omid/library/unity3d/adsession/CreativeType;

    move-result-object v7

    .line 31
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/domain/om/AndroidOmInteraction;->getMediaEventsOwner(Lorg/json/JSONObject;)Lcom/iab/omid/library/unity3d/adsession/Owner;

    move-result-object v8

    .line 24
    invoke-direct/range {v1 .. v8}, Lcom/unity3d/ads/core/data/model/OmidOptions;-><init>(ZLcom/iab/omid/library/unity3d/adsession/Owner;Lcom/iab/omid/library/unity3d/adsession/Owner;Ljava/lang/String;Lcom/iab/omid/library/unity3d/adsession/ImpressionType;Lcom/iab/omid/library/unity3d/adsession/CreativeType;Lcom/iab/omid/library/unity3d/adsession/Owner;)V

    return-object v1
.end method

.method public getWebview(Lcom/unity3d/ads/core/data/model/AdObject;)Landroid/webkit/WebView;
    .registers 3

    const-string v0, "adObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/AdObject;->getAdPlayer()Lcom/unity3d/ads/adplayer/AdPlayer;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-interface {p1}, Lcom/unity3d/ads/adplayer/AdPlayer;->getWebViewContainer()Lcom/unity3d/ads/adplayer/WebViewContainer;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-interface {p1}, Lcom/unity3d/ads/adplayer/WebViewContainer;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    return-object p1

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method
