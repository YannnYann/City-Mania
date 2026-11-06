###### Class com.ironsource.adqualitysdk.sdk.i.C3507t (com.ironsource.adqualitysdk.sdk.i.t)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/t;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵋ;
.source "SourceFile"


# instance fields
.field public final ﾒ:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵋ;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_4
    invoke-super {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᵋ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_c
    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/t;

    .line 5
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/t;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0lKDcg==\n"

    const-string v2, "pDPxUtVLjHQ=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "At0=\n"

    const-string v2, "Lv3Z5+hcFLE=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "jQ==\n"

    const-string v2, "tkdyvvOld2w=\n"

    invoke-static {v1, v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ヾ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    .line 3
    instance-of v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/s;

    if-eqz v3, :cond_1b

    .line 4
    move-object v3, v1

    check-cast v3, Lcom/ironsource/adqualitysdk/sdk/i/s;

    goto :goto_26

    .line 5
    :cond_1b
    instance-of v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/দ;

    if-eqz v3, :cond_25

    .line 6
    move-object v3, v1

    check-cast v3, Lcom/ironsource/adqualitysdk/sdk/i/দ;

    .line 7
    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/দ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/s;

    goto :goto_26

    :cond_25
    move-object v3, v2

    :goto_26
    if-eqz v3, :cond_4a

    .line 8
    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/s;->ﾒ:Ljava/lang/String;

    .line 9
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 10
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 11
    iget-object v5, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;->ﾒ:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    .line 12
    :cond_4a
    invoke-virtual {v1, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    goto :goto_6

    .line 14
    :cond_4e
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    invoke-direct {p1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/Ι;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
