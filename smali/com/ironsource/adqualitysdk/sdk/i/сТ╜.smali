###### Class com.ironsource.adqualitysdk.sdk.i.C0518 (com.ironsource.adqualitysdk.sdk.i.ᒽ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᒽ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᔇ;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ᔇ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;)V

    return-void
.end method


# virtual methods
.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᔇ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᔇ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    .line 4
    invoke-virtual {v1, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/Ι;->ﾒ:Ljava/lang/Object;

    .line 6
    instance-of v2, v1, Lorg/json/JSONObject;

    if-eqz v2, :cond_22

    .line 7
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    check-cast v1, Lorg/json/JSONObject;

    .line 8
    iget-object p2, v0, Lcom/ironsource/adqualitysdk/sdk/i/Ι;->ﾒ:Ljava/lang/Object;

    .line 9
    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/Ι;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 10
    :cond_22
    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_3a

    .line 11
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/Ι;->ﾇ()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/Ι;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 12
    :cond_3a
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_4c

    .line 13
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    check-cast v1, Ljava/util/Map;

    .line 14
    iget-object p2, v0, Lcom/ironsource/adqualitysdk/sdk/i/Ι;->ﾒ:Ljava/lang/Object;

    .line 15
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/Ι;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 16
    :cond_4c
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_64

    .line 17
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/Ι;->ﾇ()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/Ι;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 18
    :cond_64
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_80

    .line 19
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/Ι;->ﾇ()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    aget-object p2, v1, p2

    invoke-direct {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/Ι;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 21
    :cond_80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2U6uyvv2WYz9UKnE/b9SnbxPqcf6tU6T7Ej8wuyiHJ/kTK7A+qVVlfIc+w==\n"

    const-string v3, "nDzcpYnWPPo=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "+q11sGypVoe6tyGrPqVMjP3MCORxvh+Is7cgqm2lT5my5SGhevBQi7fyNrA+\n"

    const-string v3, "3ZdVxB7QP+k=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ᑦ;

    const/4 v2, 0x0

    .line 23
    invoke-direct {v1, p2, p1, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ᑦ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/İ;Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    throw v1
.end method
