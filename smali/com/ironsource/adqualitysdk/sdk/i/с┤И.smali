###### Class com.ironsource.adqualitysdk.sdk.i.C0630 (com.ironsource.adqualitysdk.sdk.i.ᴈ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᴈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ϯ;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓚ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ᓚ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴈ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓚ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;)Ljava/lang/Object;
    .registers 8

    .line 1
    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴈ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓚ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v1, -0x51d5b0d4

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq p2, v1, :cond_57

    const v1, 0x19d1382a

    if-eq p2, v1, :cond_48

    const v0, 0x205e3c0e

    if-eq p2, v0, :cond_38

    const v0, 0x7458732c

    if-eq p2, v0, :cond_28

    goto :goto_67

    :cond_28
    const-string p2, "ndwVtzJM\n"

    const-string v0, "351b+XceS8w=\n"

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_67

    move v0, v4

    goto :goto_68

    :cond_38
    const-string p2, "dvnT+4HduJs=\n"

    const-string v0, "JLyEutOZ/d8=\n"

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_67

    move v0, v3

    goto :goto_68

    :cond_48
    const-string p2, "7XMIiPQZSg==\n"

    const-string v1, "uD1DxrtOBJY=\n"

    invoke-static {p2, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_67

    goto :goto_68

    :cond_57
    const-string p2, "TgzxBtgDUwJTC+QP\n"

    const-string v0, "B0KlQ4pQB0s=\n"

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_67

    move v0, v2

    goto :goto_68

    :cond_67
    :goto_67
    const/4 v0, -0x1

    :goto_68
    if-eqz v0, :cond_7b

    if-eq v0, v4, :cond_78

    if-eq v0, v2, :cond_75

    if-eq v0, v3, :cond_72

    const/4 p1, 0x0

    return-object p1

    .line 11
    :cond_72
    sget-object p1, Lcom/fyber/fairbid/internal/Constants$AdType;->REWARDED:Lcom/fyber/fairbid/internal/Constants$AdType;

    return-object p1

    .line 12
    :cond_75
    sget-object p1, Lcom/fyber/fairbid/internal/Constants$AdType;->INTERSTITIAL:Lcom/fyber/fairbid/internal/Constants$AdType;

    return-object p1

    .line 13
    :cond_78
    sget-object p1, Lcom/fyber/fairbid/internal/Constants$AdType;->BANNER:Lcom/fyber/fairbid/internal/Constants$AdType;

    return-object p1

    .line 14
    :cond_7b
    sget-object p1, Lcom/fyber/fairbid/internal/Constants$AdType;->UNKNOWN:Lcom/fyber/fairbid/internal/Constants$AdType;

    return-object p1
.end method
