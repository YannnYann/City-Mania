###### Class com.ironsource.adqualitysdk.sdk.i.C0180 (com.ironsource.adqualitysdk.sdk.i.Ι)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/Ι;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ﻛ:Z

.field public ｋ:Z

.field public ﾇ:Z

.field public final ﾒ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ι;->ﾒ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ι;->ﾒ:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gw==\n"

    const-string v2, "OdAS6mWYMic=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ι;->ﾒ:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "IQ==\n"

    const-string v2, "A1tL1wayQt0=\n"

    invoke-static {v1, v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ヾ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 90
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ι;->ﾒ:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﾇ()Ljava/lang/Number;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ι;->ﾒ:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_9

    .line 2
    check-cast v0, Ljava/lang/Integer;

    return-object v0

    .line 4
    :cond_9
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_10

    .line 5
    check-cast v0, Ljava/lang/Long;

    return-object v0

    .line 7
    :cond_10
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_17

    .line 8
    check-cast v0, Ljava/lang/Double;

    return-object v0

    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public final ﾒ()Z
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ι;->ﾒ:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 4
    :cond_6
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 7
    :cond_11
    instance-of v2, v0, Ljava/lang/Integer;

    const/4 v3, 0x1

    if-eqz v2, :cond_20

    .line 8
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1f

    return v3

    :cond_1f
    return v1

    .line 10
    :cond_20
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_32

    .line 11
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_31

    return v3

    :cond_31
    return v1

    .line 13
    :cond_32
    instance-of v2, v0, Ljava/lang/Double;

    if-eqz v2, :cond_44

    .line 14
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_43

    return v3

    :cond_43
    return v1

    .line 16
    :cond_44
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_50

    .line 17
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v3

    return v0

    :cond_50
    return v3
.end method
