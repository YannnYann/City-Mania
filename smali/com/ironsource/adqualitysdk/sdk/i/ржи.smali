###### Class com.ironsource.adqualitysdk.sdk.i.C0388 (com.ironsource.adqualitysdk.sdk.i.ন)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ন;
.super Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;
.source "SourceFile"


# instance fields
.field public final ﾒ:[Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ন;->ﾒ:[Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

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
    invoke-super {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_c
    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ন;

    .line 6
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ন;->ﾒ:[Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ন;->ﾒ:[Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ন;->ﾒ:[Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "8Q==\n"

    const-string v2, "qmn8L4N8Q6M=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ন;->ﾒ:[Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;->ﾒ([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "mg==\n"

    const-string v2, "xzQ8NaxE/+w=\n"

    invoke-static {v1, v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ヾ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;
    .registers 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ন;->ﾒ:[Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_19

    aget-object v4, v1, v3

    .line 3
    invoke-virtual {v4, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    move-result-object v4

    .line 4
    iget-object v4, v4, Lcom/ironsource/adqualitysdk/sdk/i/Ι;->ﾒ:Ljava/lang/Object;

    .line 5
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 7
    :cond_19
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    invoke-direct {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/Ι;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
