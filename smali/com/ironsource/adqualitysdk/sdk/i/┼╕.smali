###### Class com.ironsource.adqualitysdk.sdk.i.C0072 (com.ironsource.adqualitysdk.sdk.i.Ÿ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/Ÿ;
.super Lcom/ironsource/adqualitysdk/sdk/i/প;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/প;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;)V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 5

    .line 1
    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_2e

    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_9

    goto :goto_2e

    .line 4
    :cond_9
    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_20

    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_12

    goto :goto_20

    .line 7
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    div-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 8
    :cond_20
    :goto_20
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    div-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2e
    :goto_2e
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    div-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public final ﾒ()Ljava/lang/String;
    .registers 3

    .line 10
    const-string v0, "PQ==\n"

    const-string v1, "Eh9mWTVWZ7Y=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
