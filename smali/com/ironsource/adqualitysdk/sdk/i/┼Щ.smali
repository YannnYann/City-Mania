###### Class com.ironsource.adqualitysdk.sdk.i.C0066 (com.ironsource.adqualitysdk.sdk.i.ř)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ř;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ϯ;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﾝ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ﾝ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ř;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﾝ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;)Ljava/lang/Object;
    .registers 7

    .line 1
    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ř;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﾝ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v1, -0x7d548bef

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p2, v1, :cond_41

    const v1, -0x50ec0476

    if-eq p2, v1, :cond_31

    const v1, 0xe0c0799    # 1.725999E-30f

    if-eq p2, v1, :cond_22

    goto :goto_51

    :cond_22
    const-string p2, "aAQlcpv6audgFj9uneZ79nYVNHqH8Hz9\n"

    const-string v1, "KUB6Mcm/K7M=\n"

    invoke-static {p2, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    goto :goto_52

    :cond_31
    const-string p2, "DjjbL0pNdroGKsEzTFFnqxAqzShdRw==\n"

    const-string v0, "T3yEbBgIN+4=\n"

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    move v0, v3

    goto :goto_52

    :cond_41
    const-string p2, "E+McEVgkkCob8QYNXjiBOw3jCgFaLZAn\n"

    const-string v0, "UqdDUgph0X4=\n"

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    move v0, v2

    goto :goto_52

    :cond_51
    :goto_51
    const/4 v0, -0x1

    :goto_52
    if-eqz v0, :cond_60

    if-eq v0, v3, :cond_5d

    if-eq v0, v2, :cond_5a

    const/4 p1, 0x0

    return-object p1

    .line 9
    :cond_5a
    sget-object p1, Lcom/inmobi/ads/AdUnit$AdCreativeType;->AD_CREATIVE_TYPE_DISPLAY:Lcom/inmobi/ads/AdUnit$AdCreativeType;

    return-object p1

    .line 10
    :cond_5d
    sget-object p1, Lcom/inmobi/ads/AdUnit$AdCreativeType;->AD_CREATIVE_TYPE_VIDEO:Lcom/inmobi/ads/AdUnit$AdCreativeType;

    return-object p1

    .line 11
    :cond_60
    sget-object p1, Lcom/inmobi/ads/AdUnit$AdCreativeType;->AD_CREATIVE_TYPE_UNSUPPORTED_OR_UNKNOWN:Lcom/inmobi/ads/AdUnit$AdCreativeType;

    return-object p1
.end method
