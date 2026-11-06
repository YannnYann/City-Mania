###### Class com.ironsource.adqualitysdk.sdk.i.C0512 (com.ironsource.adqualitysdk.sdk.i.ᒷ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᒷ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﺙ:Ljava/lang/String;

.field public static final ﻏ:Ljava/lang/String;

.field public static final ﻐ:Ljava/lang/String;

.field public static final ﻛ:Ljava/lang/String;


# instance fields
.field public final ｋ:Ljava/lang/String;

.field public final ﾇ:Ljava/util/List;

.field public final ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᒺ;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "Dd0if9G9Ohg89iVi1bwiEg3dInfduQ==\n"

    const-string v1, "TrJMEbTeTnc=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᒷ;->ﻛ:Ljava/lang/String;

    const-string v0, "gihNbw==\n"

    const-string v1, "9lE9CnBESHw=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "Yn4=\n"

    const-string v1, "FBBC3aG4yVY=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "ol6dehQt\n"

    const-string v1, "0Dv8CXtDMRY=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "F+4Kb0A=\n"

    const-string v1, "doxlGSXfpjc=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᒷ;->ﻐ:Ljava/lang/String;

    const-string v0, "S6/7Q/w=\n"

    const-string v1, "KcqXLIvy/64=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᒷ;->ﻏ:Ljava/lang/String;

    const-string v0, "W1X/gjI=\n"

    const-string v1, "Pi2e4UbtP3w=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᒷ;->ﺙ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "PuoiOg==\n"

    const-string v1, "SpNSX8VSb2s=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x585239d

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v1, v2, :cond_39

    const v2, 0x5948c31

    if-eq v1, v2, :cond_2f

    const v2, 0x5c74aff

    if-eq v1, v2, :cond_25

    goto :goto_43

    :cond_25
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ᒷ;->ﺙ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    const/4 v0, 0x0

    goto :goto_44

    :cond_2f
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ᒷ;->ﻏ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    move v0, v4

    goto :goto_44

    :cond_39
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ᒷ;->ﻐ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    move v0, v3

    goto :goto_44

    :cond_43
    :goto_43
    const/4 v0, -0x1

    :goto_44
    if-eqz v0, :cond_53

    if-eq v0, v3, :cond_50

    if-eq v0, v4, :cond_4d

    .line 11
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᒺ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᒺ;

    goto :goto_55

    .line 12
    :cond_4d
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᒺ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᒺ;

    goto :goto_55

    .line 13
    :cond_50
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᒺ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᒺ;

    goto :goto_55

    .line 14
    :cond_53
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᒺ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ᒺ;

    .line 15
    :goto_55
    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒷ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᒺ;

    .line 16
    const-string v0, "1yA=\n"

    const-string v1, "oU6imkwKR6Q=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7e

    .line 19
    const-string v1, "zg==\n"

    const-string v2, "4tjQK7gbf/Y=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 20
    :cond_7e
    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒷ;->ﾇ:Ljava/util/List;

    .line 21
    const-string v0, "6GH5H3mt\n"

    const-string v1, "mgSYbBbDaos=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a0

    const-string v0, "+AuGKA==\n"

    const-string v1, "ln7qRJwxSf4=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    :cond_a0
    const/4 p1, 0x0

    .line 23
    :cond_a1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒷ;->ｋ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒷ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᒺ;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4c

    if-eq v1, v2, :cond_34

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1c

    const/4 v2, 0x3

    if-eq v1, v2, :cond_13

    goto :goto_5a

    .line 5
    :cond_13
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒷ;->ﾇ:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :catch_1a
    move-exception p1

    goto :goto_4d

    .line 7
    :cond_1c
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒷ;->ﾇ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_34

    .line 8
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒷ;->ﾇ:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9
    invoke-static {p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᗮ;->ﾒ(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_33

    return v2

    :cond_33
    return v0

    .line 12
    :cond_34
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒷ;->ﾇ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5a

    .line 13
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒷ;->ﾇ:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 14
    invoke-static {p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᗮ;->ﾒ(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_48} :catch_1a

    if-ltz p1, :cond_4b

    return v2

    :cond_4b
    return v0

    :cond_4c
    return v2

    .line 18
    :goto_4d
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ᒷ;->ﻛ:Ljava/lang/String;

    const-string v2, "2oBRJ5UuOoe/gUsnkmI3rfaBQiqLaw==\n"

    const-string v3, "n/IjSOcOU+k=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_5a
    :goto_5a
    return v0
.end method
