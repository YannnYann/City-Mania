###### Class com.ironsource.adqualitysdk.sdk.i.C0560 (com.ironsource.adqualitysdk.sdk.i.ᔈ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᔈ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "PKQcmQTOur4lrB6LH8Q=\n"

    const-string v1, "SsFu6m2h1P0=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "Ok0/tW8wJ1MvQSWTcA==\n"

    const-string v1, "XShL9ANcdCc=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "5i8MV2a6YkDmLwBba6JTTeQ5\n"

    const-string v1, "gUp4FgrWMCU=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "lGFAvpdQrPyhYVOdhm++/JBs\n"

    const-string v1, "8wQ0+P4i34g=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "IuVTIrh01Jgm5mYdonfykxjiZhG/Yw==\n"

    const-string v1, "S5YUeNEEl/c=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "ETBrE4sv69UGJk8mjy/KxAc8Zhs=\n"

    const-string v1, "dVUIfOZfmbA=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;-><init>()V

    return-void
.end method

.method public static ﻏ(Ljava/util/ArrayList;)I
    .registers 4

    const/4 v0, 0x0

    .line 1
    const-class v1, Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    .line 2
    invoke-static {p0, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 3
    invoke-static {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᗮ;->ﾒ(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static ﻐ(Ljava/util/ArrayList;)Z
    .registers 3

    const/4 v0, 0x0

    .line 1
    const-class v1, Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2
    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᗮ;->ﾇ(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static ﻛ(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    .line 1
    const-class v1, Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-le v3, v5, :cond_1e

    .line 4
    const-class v3, Ljava/lang/Boolean;

    invoke-static {p0, v5, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_1f

    :cond_1e
    move v3, v4

    .line 6
    :goto_1f
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_32

    .line 7
    invoke-static {p0, v4, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 8
    invoke-static {v2, p0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ᗮ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :cond_32
    new-instance v1, Lorg/json/JSONArray;

    const-class v5, Ljava/util/List;

    invoke-static {p0, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 11
    :goto_3f
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-ge v0, p0, :cond_53

    .line 12
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ᗮ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_50

    return-object p0

    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :cond_53
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ｋ(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 10

    .line 1
    const-class v0, Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    const-class v2, Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {p0, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v4, 0x2

    .line 3
    const-class v5, Ljava/lang/Integer;

    invoke-static {p0, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 4
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ṛ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ṛ;

    move-result-object v4

    .line 5
    iget-object v4, v4, Lcom/ironsource/adqualitysdk/sdk/i/ṛ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᔥ;

    .line 6
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    new-instance v5, Lcom/ironsource/adqualitysdk/sdk/i/ᖦ;

    invoke-direct {v5}, Lcom/ironsource/adqualitysdk/sdk/i/ᖦ;-><init>()V

    .line 8
    new-instance v6, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;

    invoke-direct {v6}, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;-><init>()V

    .line 9
    iget-object v7, v6, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;

    const/4 v8, -0x1

    .line 10
    iput v8, v7, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﮐ:I

    .line 11
    iput v8, v7, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﮌ:I

    .line 12
    iput v8, v7, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﮉ:I

    .line 13
    iput v8, v7, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﱡ:I

    .line 14
    iput-object v5, v6, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ḷ;

    const/4 v5, 0x0

    .line 15
    iput-object v5, v6, Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/t0;

    .line 17
    iput-object v2, v7, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﻛ:Ljava/util/List;

    .line 18
    iput p0, v7, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﻐ:I

    .line 19
    const-class p0, Lcom/ironsource/adqualitysdk/sdk/i/ᖦ;

    .line 20
    iput-object p0, v7, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﾇ:Ljava/lang/Class;

    .line 22
    iput-object v5, v7, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ｋ:Ljava/lang/Class;

    .line 23
    new-instance p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;

    invoke-direct {p0, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ᴴ;)V

    .line 24
    iput-boolean v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;->ﻛ:Z

    .line 25
    invoke-virtual {v4, v0, p0, v1, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ᔥ;->ﾒ(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;ILcom/ironsource/adqualitysdk/sdk/i/ᵖ;)Lcom/ironsource/adqualitysdk/sdk/i/ṙ;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴗ;->ﻐ:Ljava/util/HashSet;

    .line 28
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static ﾇ(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 6

    const/4 v0, 0x0

    .line 1
    const-class v1, Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    .line 2
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_1d

    .line 3
    invoke-static {p0, v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 4
    invoke-static {v2, p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᗮ;->ﾇ(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1d
    new-instance v1, Lorg/json/JSONArray;

    const-class v4, Ljava/util/List;

    invoke-static {p0, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 6
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    move v3, v0

    .line 7
    :goto_30
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_44

    .line 8
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᗮ;->ﾇ(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_44
    return-object p0
.end method

.method public static ﾒ(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 1
    const-class v1, Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2
    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᗮ;->ﾒ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
