###### Class com.ironsource.adqualitysdk.sdk.i.C0111 (com.ironsource.adqualitysdk.sdk.i.ɫ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ɫ;
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
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ɫ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﾝ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;)Ljava/lang/Object;
    .registers 7

    .line 1
    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ɫ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﾝ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v1, 0x2123f1ec

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq p2, v1, :cond_42

    const v0, 0x2124d729

    if-eq p2, v0, :cond_32

    const v0, 0x526e52c0

    if-eq p2, v0, :cond_22

    goto :goto_51

    :cond_22
    const-string p2, "hnsIf54KDKGXYANrjx0YoYl0GX2IFg==\n"

    const-string v0, "xz9XMt9YR/Q=\n"

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    move v0, v3

    goto :goto_52

    :cond_32
    const-string p2, "AakOdbzf7tAQsgVhrcj6zA6gDnKuwus=\n"

    const-string v0, "QO1ROP2NpYU=\n"

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    move v0, v2

    goto :goto_52

    :cond_42
    const-string p2, "WNuCSLae8LVJwIlcp4nkqVfSgk2jgfc=\n"

    const-string v1, "GZ/dBffMu+A=\n"

    invoke-static {p2, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    goto :goto_52

    :cond_51
    :goto_51
    const/4 v0, -0x1

    :goto_52
    if-eqz v0, :cond_60

    if-eq v0, v2, :cond_5d

    if-eq v0, v3, :cond_5a

    const/4 p1, 0x0

    return-object p1

    .line 9
    :cond_5a
    sget-object p1, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_UNKNOWN:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    return-object p1

    .line 10
    :cond_5d
    sget-object p1, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_JSON:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    return-object p1

    .line 11
    :cond_60
    sget-object p1, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_HTML:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    return-object p1
.end method
