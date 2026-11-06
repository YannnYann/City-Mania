###### Class com.ironsource.adqualitysdk.sdk.i.C3493l (com.ironsource.adqualitysdk.sdk.i.l)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/l;
.super Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;
.source "SourceFile"


# static fields
.field public static final 爫:Ljava/lang/String;

.field public static final ﬤ:Ljava/lang/String;

.field public static final טּ:Ljava/lang/String;

.field public static final סּ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "BCaQy/BPNOkxK7PM7UI=\n"

    const-string v1, "RULFpZk7dYo=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/l;->סּ:Ljava/lang/String;

    const-string v0, "QOqYDem8eSBatpEN77diIkrmkFCys3QnDeSRVvK7ZHpi4aBN9aZRN1fsg0roqw==\n"

    const-string v1, "I4X1I5zSEFQ=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/l;->טּ:Ljava/lang/String;

    const-string v0, "PB4/kNwU78sbCA==\n"

    const-string v1, "fn9R/rlmuaI=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/l;->ﬤ:Ljava/lang/String;

    const-string v0, "DHrqtbttSVoWJuO1vWZSWAZ24ujgYUFAAXD16OBBQUABcPXNp2ZX\n"

    const-string v1, "bxWHm84DIC4=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/l;->爫:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final ﻛ()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 3
    const-string v1, "Vg==\n"

    const-string v2, "e2zSKQe7FjE=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public final ﾇ()Ljava/util/HashMap;
    .registers 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public final ﾒ(Ljava/lang/String;)Ljava/lang/Class;
    .registers 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf077c96    # 6.680008E-30f

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v0, v1, :cond_3a

    const v1, 0x39549411

    if-eq v0, v1, :cond_30

    const v1, 0x3f9c6a13

    if-eq v0, v1, :cond_26

    const v1, 0x5b4461a4

    if-eq v0, v1, :cond_1c

    goto :goto_44

    :cond_1c
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/l;->טּ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    move p1, v4

    goto :goto_45

    :cond_26
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/l;->爫:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    move p1, v3

    goto :goto_45

    :cond_30
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/l;->ﬤ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    move p1, v2

    goto :goto_45

    :cond_3a
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/l;->סּ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    const/4 p1, 0x0

    goto :goto_45

    :cond_44
    :goto_44
    const/4 p1, -0x1

    :goto_45
    if-eqz p1, :cond_52

    if-eq p1, v4, :cond_52

    if-eq p1, v2, :cond_4f

    if-eq p1, v3, :cond_4f

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_4f
    const-class p1, Lcom/unity3d/services/banners/BannerView;

    return-object p1

    .line 8
    :cond_52
    const-class p1, Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    return-object p1
.end method
