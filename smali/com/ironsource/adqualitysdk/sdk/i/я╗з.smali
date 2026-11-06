###### Class com.ironsource.adqualitysdk.sdk.i.C0965 (com.ironsource.adqualitysdk.sdk.i.ﻧ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﻧ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ｋ:Ljava/util/List;

.field public final ﾇ:Z

.field public final ﾒ:Z


# direct methods
.method public constructor <init>(ZZLjava/util/ArrayList;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻧ;->ﾒ:Z

    .line 3
    iput-boolean p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻧ;->ﾇ:Z

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻧ;->ｋ:Ljava/util/List;

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

    if-eqz p1, :cond_29

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/ironsource/adqualitysdk/sdk/i/ﻧ;

    if-eq v2, v1, :cond_10

    goto :goto_29

    .line 2
    :cond_10
    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ﻧ;

    .line 3
    iget-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻧ;->ﾒ:Z

    iget-boolean v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﻧ;->ﾒ:Z

    if-eq v1, v2, :cond_19

    return v0

    .line 4
    :cond_19
    iget-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻧ;->ﾇ:Z

    iget-boolean v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﻧ;->ﾇ:Z

    if-eq v1, v2, :cond_20

    return v0

    .line 5
    :cond_20
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻧ;->ｋ:Ljava/util/List;

    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﻧ;->ｋ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_29
    :goto_29
    return v0
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻧ;->ﾒ:Z

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻧ;->ﾇ:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻧ;->ｋ:Ljava/util/List;

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

    const-string v1, "FyHA/3qEZnQmOsbkULN3YjAi2/BXkkB+KjrK7wM=\n"

    const-string v2, "RU6viz7hEhE=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻧ;->ﾒ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "aZv4luwoV+Qkz/6XlA==\n"

    const-string v2, "RbuR5alFIog=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻧ;->ﾇ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "j8cGxOHycz7Q2g==\n"

    const-string v2, "o+d1rYacElI=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻧ;->ｋ:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
