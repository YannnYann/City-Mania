###### Class com.ironsource.adqualitysdk.sdk.i.C0626 (com.ironsource.adqualitysdk.sdk.i.ᚁ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ｪ;
.source "SourceFile"


# instance fields
.field public final ﾇ:[Lcom/ironsource/adqualitysdk/sdk/i/ᵋ;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;B)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ｪ;-><init>(B)V

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Lcom/ironsource/adqualitysdk/sdk/i/ᵋ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;->ﾇ:[Lcom/ironsource/adqualitysdk/sdk/i/ᵋ;

    .line 3
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

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
    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;

    .line 5
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;->ﾇ:[Lcom/ironsource/adqualitysdk/sdk/i/ᵋ;

    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;->ﾇ:[Lcom/ironsource/adqualitysdk/sdk/i/ᵋ;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;->ﾇ:[Lcom/ironsource/adqualitysdk/sdk/i/ᵋ;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    const-string v1, "KeM=\n"

    const-string v2, "Uuk3D6Ng238=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;->ﾇ:[Lcom/ironsource/adqualitysdk/sdk/i/ᵋ;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    const-string v5, "  "

    if-ge v4, v2, :cond_35

    aget-object v6, v1, v4

    .line 4
    iget-byte v7, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｪ;->ﾒ:B

    move v8, v3

    :goto_1e
    if-ge v8, v7, :cond_26

    .line 5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    .line 6
    :cond_26
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 8
    :cond_35
    iget-byte v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｪ;->ﾒ:B

    add-int/lit8 v1, v1, -0x1

    :goto_39
    if-ge v3, v1, :cond_41

    .line 9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 10
    :cond_41
    const-string v1, "kQ==\n"

    const-string v2, "7GMUK/ybMGE=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﾒ()I
    .registers 6

    .line 15
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;->ﾇ:[Lcom/ironsource/adqualitysdk/sdk/i/ᵋ;

    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_11

    aget-object v4, v0, v3

    .line 16
    invoke-virtual {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ᵋ;->ﾒ()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_11
    return v2
.end method

.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;)I
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 17
    :goto_2
    iget v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;->ﱟ:I

    if-ge v1, v2, :cond_12

    .line 18
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;->ﾇ:[Lcom/ironsource/adqualitysdk/sdk/i/ᵋ;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ᵋ;->ﾒ()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    return v0
.end method

.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;
    .registers 10

    .line 1
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/Ι;-><init>(Ljava/lang/Object;)V

    .line 2
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;

    .line 3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    .line 4
    invoke-direct {v1, v2, p1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;-><init>(Ljava/util/HashMap;Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Z)V

    .line 5
    iget v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;->ﱟ:I

    .line 6
    iput v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;->ﱟ:I

    .line 7
    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;->ﾇ:[Lcom/ironsource/adqualitysdk/sdk/i/ᵋ;

    array-length v5, v4

    :goto_18
    if-ge v3, v5, :cond_39

    aget-object v0, v4, v3

    .line 8
    invoke-virtual {v0, v1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ᵋ;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    move-result-object v0

    .line 9
    iget-boolean v6, v0, Lcom/ironsource/adqualitysdk/sdk/i/Ι;->ﾇ:Z

    if-nez v6, :cond_36

    .line 10
    iget-boolean v6, v0, Lcom/ironsource/adqualitysdk/sdk/i/Ι;->ｋ:Z

    if-nez v6, :cond_36

    .line 11
    iget-boolean v6, v0, Lcom/ironsource/adqualitysdk/sdk/i/Ι;->ﻛ:Z

    if-eqz v6, :cond_2d

    goto :goto_36

    .line 12
    :cond_2d
    iget v6, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;->ﱟ:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;->ﱟ:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 13
    :cond_36
    :goto_36
    iput v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;->ﱟ:I

    return-object v0

    .line 14
    :cond_39
    iput v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;->ﱟ:I

    return-object v0
.end method
