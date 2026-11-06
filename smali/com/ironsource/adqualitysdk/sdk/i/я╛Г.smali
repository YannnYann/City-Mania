###### Class com.ironsource.adqualitysdk.sdk.i.C1012 (com.ironsource.adqualitysdk.sdk.i.ﾃ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﾃ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;
.source "SourceFile"


# instance fields
.field public final ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/s;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/s;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾃ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/s;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

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
    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ﾃ;

    .line 5
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾃ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/s;

    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﾃ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/s;

    if-eqz v1, :cond_19

    invoke-virtual {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/s;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_19
    if-nez p1, :cond_1c

    return v0

    :cond_1c
    return v2
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/ﾃ;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾃ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/s;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/s;->hashCode()I

    move-result v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾃ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/s;

    .line 2
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/s;->ﾒ:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    const-string v1, "/HE=\n"

    const-string v2, "11rqwd8TcfQ=\n"

    invoke-static {v1, v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ヾ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾃ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/s;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/Ι;->ﾇ()Ljava/lang/Number;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﾃ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/s;

    .line 4
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/s;->ﾒ:Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;->ﾒ(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p2
.end method
