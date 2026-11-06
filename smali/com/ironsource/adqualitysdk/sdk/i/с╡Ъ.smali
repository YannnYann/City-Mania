###### Class com.ironsource.adqualitysdk.sdk.i.C0694 (com.ironsource.adqualitysdk.sdk.i.ᵚ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᵚ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ﻐ:Ljava/util/List;

.field public final ﻛ:Z

.field public final ｋ:Z

.field public final ﾇ:Z

.field public final ﾒ:Z


# direct methods
.method public constructor <init>(ZZZZLjava/util/ArrayList;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵚ;->ﾒ:Z

    .line 3
    iput-boolean p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵚ;->ﾇ:Z

    .line 4
    iput-boolean p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵚ;->ｋ:Z

    .line 5
    iput-boolean p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵚ;->ﻛ:Z

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵚ;->ﻐ:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_37

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/ironsource/adqualitysdk/sdk/i/ᵚ;

    if-eq v2, v1, :cond_10

    goto :goto_37

    .line 2
    :cond_10
    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ᵚ;

    .line 3
    iget-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵚ;->ﾒ:Z

    iget-boolean v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᵚ;->ﾒ:Z

    if-eq v1, v2, :cond_19

    return v0

    .line 4
    :cond_19
    iget-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵚ;->ﾇ:Z

    iget-boolean v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᵚ;->ﾇ:Z

    if-eq v1, v2, :cond_20

    return v0

    .line 5
    :cond_20
    iget-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵚ;->ｋ:Z

    iget-boolean v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᵚ;->ｋ:Z

    if-eq v1, v2, :cond_27

    return v0

    .line 6
    :cond_27
    iget-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵚ;->ﻛ:Z

    iget-boolean v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᵚ;->ﻛ:Z

    if-eq v1, v2, :cond_2e

    return v0

    .line 7
    :cond_2e
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵚ;->ﻐ:Ljava/util/List;

    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᵚ;->ﻐ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_37
    :goto_37
    return v0
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵚ;->ﾒ:Z

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵚ;->ﾇ:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵚ;->ｋ:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵚ;->ﻛ:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵚ;->ﻐ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JoiIk73w6UYBkpqTpurqcQqVjou7/u1QKZSSg67B4VcKhY+Cq7g=\n"

    const-string v2, "b+b758+FhCM=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵚ;->ﾒ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "ccycpLIzylU4iLGynibGUjiIyA==\n"

    const-string v2, "Xez11+pDpSY=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵚ;->ﾇ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "ckzQTu9jv2o5C9xP6nKpfj0E3FmW\n"

    const-string v2, "Xmy5PasG3R8=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵚ;->ｋ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "KdkxCL/UWVV2khwehtBdSGCdZQ==\n"

    const-string v2, "BflYe/K1Pjw=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵚ;->ﻛ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "Orys653XZNxloQ==\n"

    const-string v2, "Fpzfgvq5BbA=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵚ;->ﻐ:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
