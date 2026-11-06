###### Class com.ironsource.adqualitysdk.sdk.i.C0648 (com.ironsource.adqualitysdk.sdk.i.ᴫ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᴫ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;
.source "SourceFile"


# instance fields
.field public final ﾒ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᵀ;->ﾒ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴫ;->ﾒ:Ljava/lang/String;

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
    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴫ;

    .line 5
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴫ;->ﾒ:Ljava/lang/String;

    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴫ;->ﾒ:Ljava/lang/String;

    if-eqz v1, :cond_19

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_19
    if-nez p1, :cond_1c

    return v0

    :cond_1c
    return v2
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴫ;->ﾒ:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴫ;->ﾒ:Ljava/lang/String;

    return-object v0
.end method

.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;
    .registers 6

    .line 1
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    .line 2
    iget-object p2, p2, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;

    .line 3
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴫ;->ﾒ:Ljava/lang/String;

    const-string v1, "AFoBSPGo\n"

    const-string v2, "LjltKYLbg1A=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v2, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p2, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ﾒ(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p2

    .line 6
    invoke-direct {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/Ι;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
