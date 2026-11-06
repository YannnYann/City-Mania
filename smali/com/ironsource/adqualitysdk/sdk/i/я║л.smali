###### Class com.ironsource.adqualitysdk.sdk.i.C0947 (com.ironsource.adqualitysdk.sdk.i.ﺫ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﺫ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;
.source "SourceFile"


# instance fields
.field public final ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺫ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

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
    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ﺫ;

    .line 5
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺫ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﺫ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    if-eqz v1, :cond_19

    invoke-virtual {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;->equals(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺫ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;->hashCode()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mw==\n"

    const-string v2, "s24mqGjU38g=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺫ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "rg==\n"

    const-string v2, "h219SOqFte0=\n"

    invoke-static {v1, v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ヾ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺫ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    move-result-object p1

    return-object p1
.end method
