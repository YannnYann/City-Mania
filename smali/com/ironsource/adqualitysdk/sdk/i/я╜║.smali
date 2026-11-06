###### Class com.ironsource.adqualitysdk.sdk.i.C1007 (com.ironsource.adqualitysdk.sdk.i.ｺ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ｺ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᚆ;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ᚆ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;)V

    return-void
.end method


# virtual methods
.method public final ﾒ()Ljava/lang/String;
    .registers 3

    .line 4
    const-string v0, "aWQ=\n"

    const-string v1, "VFlyBksJJfE=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﾒ(I)Z
    .registers 2

    .line 0
    if-nez p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public final ﾒ(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    .line 0
    if-ne p1, p2, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public final ﾒ(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
