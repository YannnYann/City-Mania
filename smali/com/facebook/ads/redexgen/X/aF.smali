###### Class com.facebook.ads.redexgen.X.AbstractC2113aF (com.facebook.ads.redexgen.X.aF)
.class public abstract Lcom/facebook/ads/redexgen/X/aF;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/aG;
    }
.end annotation


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1821
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "OYqwHlihVMxQOTlDB2wo5cgOdPrlMGlW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "T1eh4CMZduYba8apMuSOXCCbquKH"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0tuUhf3hQpyWioPakUTqf6tXEL8R9lZP"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1BWgCT1HIg0IUvJJfiG6SDytJXNyG8Jb"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7wbNHwTc8I"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "pZ4jIBnlNxD99qUdgxqwJD6zqbci"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "HrHpXYU72KMMy2vFLGWAH9yKZkIU"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YbFtQi0BfJN5RJ9hmknGsnf8ewj5AB"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/aF;->A00:[Ljava/lang/String;

    return-void
.end method

.method public static A00(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z
    .registers 7
    .param p0    # Lorg/json/JSONArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 80109
    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_b

    .line 80110
    :cond_6
    if-ne p0, p1, :cond_9

    :goto_8
    return v4

    :cond_9
    const/4 v4, 0x0

    goto :goto_8

    .line 80111
    :cond_b
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eq v1, v0, :cond_16

    .line 80112
    return v3

    .line 80113
    :cond_16
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_32

    .line 80114
    invoke-static {p0, v2}, Lcom/facebook/ads/redexgen/X/aG;->A00(Lorg/json/JSONArray;I)Lcom/facebook/ads/redexgen/X/aG;

    move-result-object v1

    .line 80115
    .local v3, "t1":Lcom/facebook/ads/redexgen/X/aG;
    invoke-static {p1, v2}, Lcom/facebook/ads/redexgen/X/aG;->A00(Lorg/json/JSONArray;I)Lcom/facebook/ads/redexgen/X/aG;

    move-result-object v0

    .line 80116
    .local v4, "t2":Lcom/facebook/ads/redexgen/X/aG;
    if-eq v1, v0, :cond_28

    .line 80117
    return v3

    .line 80118
    :cond_28
    invoke-virtual {v1, p0, p1, v2}, Lcom/facebook/ads/redexgen/X/aG;->A06(Lorg/json/JSONArray;Lorg/json/JSONArray;I)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 80119
    return v3

    .line 80120
    .end local v3    # "t1":Lcom/facebook/ads/redexgen/X/aG;
    .end local v4    # "t2":Lcom/facebook/ads/redexgen/X/aG;
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 80121
    .end local v2    # "i":I
    :cond_32
    return v4
.end method

.method public static synthetic A01(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z
    .registers 2

    .line 80122
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/aF;->A00(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result p0

    return p0
.end method

.method public static A02(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 9
    .param p0    # Lorg/json/JSONObject;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 80123
    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_b

    .line 80124
    :cond_6
    if-ne p0, p1, :cond_9

    :goto_8
    return v6

    :cond_9
    const/4 v6, 0x0

    goto :goto_8

    .line 80125
    :cond_b
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eq v1, v0, :cond_16

    .line 80126
    return v5

    .line 80127
    :cond_16
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 80128
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 80129
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 80130
    return v5

    .line 80131
    :cond_2d
    invoke-static {p0, v2}, Lcom/facebook/ads/redexgen/X/aG;->A01(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/aG;

    move-result-object v1

    .line 80132
    .local v4, "type1":Lcom/facebook/ads/redexgen/X/aG;
    invoke-static {p1, v2}, Lcom/facebook/ads/redexgen/X/aG;->A01(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/aG;

    move-result-object v0

    .line 80133
    .local v5, "type2":Lcom/facebook/ads/redexgen/X/aG;
    if-eq v1, v0, :cond_38

    .line 80134
    return v5

    .line 80135
    :cond_38
    invoke-virtual {v1, p0, p1, v2}, Lcom/facebook/ads/redexgen/X/aG;->A08(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/aF;->A00:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_51

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_51
    sget-object v2, Lcom/facebook/ads/redexgen/X/aF;->A00:[Ljava/lang/String;

    const-string v1, "m3OiOmRnKxmEGnjBOVE11A4zbLg3"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v3, :cond_1a

    .line 80136
    return v5

    .line 80137
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5b
    return v6
.end method
