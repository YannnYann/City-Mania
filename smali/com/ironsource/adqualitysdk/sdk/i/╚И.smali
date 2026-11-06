###### Class com.ironsource.adqualitysdk.sdk.i.C0091 (com.ironsource.adqualitysdk.sdk.i.Ȉ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/Ȉ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ｋ:Ljava/util/ArrayList;

.field public final ﾇ:Ljava/lang/String;

.field public final ﾒ:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_c

    .line 3
    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ȉ;->ﾒ:Ljava/lang/Class;

    goto :goto_12

    .line 5
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ȉ;->ﾒ:Ljava/lang/Class;

    .line 7
    :goto_12
    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ȉ;->ﾇ:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ȉ;->ｋ:Ljava/util/ArrayList;

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

    if-eqz p1, :cond_31

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/ironsource/adqualitysdk/sdk/i/Ȉ;

    if-eq v2, v1, :cond_10

    goto :goto_31

    .line 3
    :cond_10
    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/Ȉ;

    .line 5
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ȉ;->ﾒ:Ljava/lang/Class;

    iget-object v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/Ȉ;->ﾒ:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v0

    .line 6
    :cond_1d
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ȉ;->ﾇ:Ljava/lang/String;

    iget-object v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/Ȉ;->ﾇ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    return v0

    .line 7
    :cond_28
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ȉ;->ｋ:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/Ȉ;->ｋ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_31
    :goto_31
    return v0
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ȉ;->ﾒ:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ȉ;->ﾇ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ȉ;->ｋ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "2Sx031NYWxLyIG7eSFVwGe8=\n"

    const-string v2, "lEkAtzw8H3c=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-string v1, "BjLT/PMTmZ0HHMLlqw==\n"

    const-string v2, "a32xlpZw7d4=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ȉ;->ﾒ:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "9EMEHipZNJC8LQg+KhB7\n"

    const-string v2, "2GNpU08tXP8=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ȉ;->ﾇ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    const-string v1, "90Q44V67EU26FybFX+E=\n"

    const-string v2, "22RVoCzcUiE=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ȉ;->ｋ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
