###### Class com.ironsource.adqualitysdk.sdk.i.C0877 (com.ironsource.adqualitysdk.sdk.i.ﭜ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﭜ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ĭ;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ĭ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;)V

    return-void
.end method


# virtual methods
.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ĭ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ĭ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    .line 4
    invoke-virtual {v1, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    move-result-object p1

    .line 5
    iget-object p2, v0, Lcom/ironsource/adqualitysdk/sdk/i/Ι;->ﾒ:Ljava/lang/Object;

    .line 6
    instance-of p2, p2, Ljava/lang/String;

    if-nez p2, :cond_6c

    .line 7
    iget-object p2, p1, Lcom/ironsource/adqualitysdk/sdk/i/Ι;->ﾒ:Ljava/lang/Object;

    .line 8
    instance-of p2, p2, Ljava/lang/String;

    if-eqz p2, :cond_19

    goto :goto_6c

    .line 11
    :cond_19
    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/Ι;->ﾇ()Ljava/lang/Number;

    move-result-object p2

    .line 12
    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/Ι;->ﾇ()Ljava/lang/Number;

    move-result-object p1

    .line 13
    instance-of v0, p2, Ljava/lang/Double;

    if-nez v0, :cond_59

    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_2a

    goto :goto_59

    .line 16
    :cond_2a
    instance-of v0, p2, Ljava/lang/Long;

    if-nez v0, :cond_46

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_33

    goto :goto_46

    .line 19
    :cond_33
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    add-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/Ι;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 20
    :cond_46
    :goto_46
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    add-long/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/Ι;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 21
    :cond_59
    :goto_59
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    add-double/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/Ι;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 22
    :cond_6c
    :goto_6c
    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/Ι;->ﾒ:Ljava/lang/Object;

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/Ι;->ﾒ:Ljava/lang/Object;

    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/Ι;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method

.method public final ﾒ()Ljava/lang/String;
    .registers 3

    .line 27
    const-string v0, "Yg==\n"

    const-string v1, "Sel0U3Q9t48=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
