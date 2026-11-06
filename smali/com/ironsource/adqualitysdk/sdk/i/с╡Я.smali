###### Class com.ironsource.adqualitysdk.sdk.i.C0698 (com.ironsource.adqualitysdk.sdk.i.ᵟ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᵟ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;
.source "SourceFile"


# instance fields
.field public final ﾇ:Ljava/lang/String;

.field public final ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵟ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    .line 3
    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵟ;->ﾇ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    invoke-super {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 3
    :cond_c
    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ᵟ;

    .line 5
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵟ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    if-eqz v1, :cond_1b

    iget-object v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᵟ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    invoke-virtual {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_1f

    :cond_1b
    iget-object v1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᵟ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    if-eqz v1, :cond_20

    :goto_1f
    return v2

    .line 7
    :cond_20
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵟ;->ﾇ:Ljava/lang/String;

    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᵟ;->ﾇ:Ljava/lang/String;

    if-eqz v1, :cond_2b

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2b
    if-nez p1, :cond_2e

    return v0

    :cond_2e
    return v2
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵟ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵟ;->ﾇ:Ljava/lang/String;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_15
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵟ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Gg==\n"

    const-string v2, "NNfX5f1Fk9o=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵟ;->ﾇ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵟ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/Ι;->ﾒ:Ljava/lang/Object;

    .line 3
    instance-of v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/İ;

    if-eqz v1, :cond_23

    .line 4
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/İ;

    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵟ;->ﾇ:Ljava/lang/String;

    if-eqz p2, :cond_1b

    .line 5
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;

    .line 6
    invoke-virtual {v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;->ﾇ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

    move-result-object p2

    goto :goto_1f

    .line 7
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x0

    :goto_1f
    invoke-direct {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/Ι;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 10
    :cond_23
    :try_start_23
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵟ;->ﾇ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/Ι;-><init>(Ljava/lang/Object;)V
    :try_end_36
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_36} :catch_39
    .catch Ljava/lang/NoSuchFieldException; {:try_start_23 .. :try_end_36} :catch_37

    return-object v1

    :catch_37
    move-exception v0

    goto :goto_3a

    :catch_39
    move-exception v0

    .line 12
    :goto_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "4EXIi9nNoCrEW8+F34SrO4VR04HHieU9xlTfl9jN4g==\n"

    const-string v3, "pTe65KvtxVw=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string v2, "dA==\n"

    const-string v3, "UwnzWJF/3JQ=\n"

    invoke-static {v2, v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ヾ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 41
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ᑦ;

    invoke-direct {v2, p2, p1, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᑦ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/İ;Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
