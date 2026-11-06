###### Class com.ironsource.adqualitysdk.sdk.i.C0667 (com.ironsource.adqualitysdk.sdk.i.ᴿ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ﭴ:Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

.field public ﭸ:Z

.field public ﮉ:I

.field public ﮌ:I

.field public ﮐ:I

.field public ﱟ:I

.field public ﱡ:I

.field public ﺙ:I

.field public ﻏ:I

.field public ﻐ:I

.field public ﻛ:Ljava/util/List;

.field public ｋ:Ljava/lang/Class;

.field public ﾇ:Ljava/lang/Class;

.field public ﾒ:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﻏ:I

    .line 9
    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﺙ:I

    .line 10
    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﱡ:I

    .line 11
    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﱟ:I

    const v0, 0x7fffffff

    .line 12
    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﮐ:I

    .line 13
    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﮌ:I

    .line 14
    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﮉ:I

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﭸ:Z

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

    if-eqz p1, :cond_a8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;

    if-eq v3, v2, :cond_11

    goto/16 :goto_a8

    .line 3
    :cond_11
    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;

    .line 5
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﻐ:I

    iget v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﻐ:I

    if-eq v2, v3, :cond_1a

    return v1

    .line 6
    :cond_1a
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﻏ:I

    iget v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﻏ:I

    if-eq v2, v3, :cond_21

    return v1

    .line 7
    :cond_21
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﺙ:I

    iget v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﺙ:I

    if-eq v2, v3, :cond_28

    return v1

    .line 8
    :cond_28
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﱡ:I

    iget v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﱡ:I

    if-eq v2, v3, :cond_2f

    return v1

    .line 9
    :cond_2f
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﱟ:I

    iget v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﱟ:I

    if-eq v2, v3, :cond_36

    return v1

    .line 10
    :cond_36
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﮐ:I

    iget v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﮐ:I

    if-eq v2, v3, :cond_3d

    return v1

    .line 11
    :cond_3d
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﮌ:I

    iget v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﮌ:I

    if-eq v2, v3, :cond_44

    return v1

    .line 12
    :cond_44
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﮉ:I

    iget v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﮉ:I

    if-eq v2, v3, :cond_4b

    return v1

    .line 13
    :cond_4b
    iget-boolean v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﭸ:Z

    iget-boolean v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﭸ:Z

    if-eq v2, v3, :cond_52

    return v1

    .line 14
    :cond_52
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﾒ:Ljava/lang/Class;

    if-eqz v2, :cond_5f

    iget-object v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﾒ:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    goto :goto_63

    :cond_5f
    iget-object v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﾒ:Ljava/lang/Class;

    if-eqz v2, :cond_64

    :goto_63
    return v1

    .line 16
    :cond_64
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﾇ:Ljava/lang/Class;

    if-eqz v2, :cond_71

    iget-object v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﾇ:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_76

    goto :goto_75

    :cond_71
    iget-object v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﾇ:Ljava/lang/Class;

    if-eqz v2, :cond_76

    :goto_75
    return v1

    .line 18
    :cond_76
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ｋ:Ljava/lang/Class;

    if-eqz v2, :cond_83

    iget-object v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ｋ:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_88

    goto :goto_87

    :cond_83
    iget-object v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ｋ:Ljava/lang/Class;

    if-eqz v2, :cond_88

    :goto_87
    return v1

    .line 20
    :cond_88
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﻛ:Ljava/util/List;

    if-eqz v2, :cond_95

    iget-object v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﻛ:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9a

    goto :goto_99

    :cond_95
    iget-object v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﻛ:Ljava/util/List;

    if-eqz v2, :cond_9a

    :goto_99
    return v1

    .line 22
    :cond_9a
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﭴ:Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﭴ:Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

    if-eqz v2, :cond_a5

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_a5
    if-nez p1, :cond_a8

    return v0

    :cond_a8
    :goto_a8
    return v1
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﾒ:Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﾇ:Ljava/lang/Class;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ｋ:Ljava/lang/Class;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_23
    move v2, v1

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﻛ:Ljava/util/List;

    if-eqz v2, :cond_30

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_31

    :cond_30
    move v2, v1

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﻐ:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﻏ:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﺙ:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﱡ:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﱟ:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﮐ:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﮌ:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﮉ:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget-boolean v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﭸ:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﭴ:Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

    if-eqz v2, :cond_69

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_69
    add-int/2addr v0, v1

    return v0
.end method
