###### Class com.ironsource.adqualitysdk.sdk.i.C0873 (com.ironsource.adqualitysdk.sdk.i.ﭕ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ﻛ:Ljava/lang/String;

.field public final ｋ:Ljava/lang/String;

.field public final ﾇ:Ljava/util/List;

.field public final ﾒ:Z


# direct methods
.method public constructor <init>(ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;->ﾒ:Z

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;->ﾇ:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;->ｋ:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;->ﻛ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_44

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;

    if-eq v3, v2, :cond_10

    goto :goto_44

    .line 2
    :cond_10
    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;

    .line 3
    iget-boolean v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;->ﾒ:Z

    iget-boolean v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;->ﾒ:Z

    if-eq v2, v3, :cond_19

    return v1

    .line 4
    :cond_19
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;->ﾇ:Ljava/util/List;

    iget-object v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;->ﾇ:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    return v1

    .line 5
    :cond_24
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;->ｋ:Ljava/lang/String;

    if-eqz v2, :cond_31

    iget-object v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;->ｋ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    goto :goto_35

    :cond_31
    iget-object v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;->ｋ:Ljava/lang/String;

    if-eqz v2, :cond_36

    :goto_35
    return v1

    .line 6
    :cond_36
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;->ﻛ:Ljava/lang/String;

    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;->ﻛ:Ljava/lang/String;

    if-eqz v2, :cond_41

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_41
    if-nez p1, :cond_44

    return v0

    :cond_44
    :goto_44
    return v1
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;->ﾒ:Z

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;->ﾇ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;->ｋ:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_18

    :cond_17
    move v0, v2

    :goto_18
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;->ﻛ:Ljava/lang/String;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_23
    add-int/2addr v1, v2

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zE2FUyjLL4jOWplQLdsxielciUAy3Hc=\n"

    const-string v2, "nD/qJUGvSvo=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;->ﾒ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "Da1wcJqUTo9SsA==\n"

    const-string v2, "IY0DGf36L+M=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;->ﾇ:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "LI+2227iZwMn\n"

    const-string v2, "AK/CtAWHCT4=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;->ｋ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "EwUsq7pKGuMY\n"

    const-string v2, "PyVJ2cglaN4=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;->ﻛ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
