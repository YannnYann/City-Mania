###### Class com.ironsource.adqualitysdk.sdk.i.C0286 (com.ironsource.adqualitysdk.sdk.i.ח)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ח;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﭴ:Ljava/lang/String;


# instance fields
.field public ﭸ:J

.field public ﮉ:J

.field public ﮌ:J

.field public ﮐ:Z

.field public ﱟ:Lcom/ironsource/adqualitysdk/sdk/i/ب;

.field public ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/צ;

.field public ﺙ:Ljava/lang/String;

.field public ﻏ:Ljava/lang/String;

.field public ﻐ:Ljava/lang/String;

.field public ﻛ:Ljava/lang/String;

.field public ｋ:Ljava/lang/String;

.field public ﾇ:Ljava/lang/String;

.field public ﾒ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "VzdH\n"

    const-string v1, "GRgGCmBVN4Q=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﭴ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/צ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/צ;

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/צ;

    .line 3
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ب;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ب;

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﱟ:Lcom/ironsource/adqualitysdk/sdk/i/ب;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﮌ:J

    .line 7
    iput-wide v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﮉ:J

    .line 8
    iput-wide v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﭸ:J

    .line 12
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﾒ:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﾇ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ب;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_5a

    .line 64
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_5c

    goto :goto_5a

    .line 66
    :pswitch_a
    const-string p1, "rNAiGkUx1GCczDsbWGbVI5rLOwZPIg==\n"

    const-string v0, "+b5JdCpGukA=\n"

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 81
    :pswitch_13
    const-string p1, "bd+2BHvWcqpEnrkNatE6/kjRsQZ70SaxWQ==\n"

    const-string v0, "K77faB6yUt4=\n"

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 82
    :pswitch_1c
    const-string p1, "1g7lcHDtDA3/T+9ucOhYHLAM43J77E8N/x0=\n"

    const-string v0, "kG+MHBWJLHk=\n"

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 83
    :pswitch_25
    const-string p1, "xOi1CfpD2QbtqbUL9lOQE+7gpgC/RJYc7Oy/EfBV\n"

    const-string v0, "goncZZ8n+XI=\n"

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 84
    :pswitch_2e
    const-string p1, "43yK65IXxqijfdnRuTLG+7Uvw8v2Momq5nbPzPYvk662YNjMszjGvL8v3tCzfIWxqGHP26IzlA==\n"

    const-string v0, "xg+quNZc5t4=\n"

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﾇ:Ljava/lang/String;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﻛ:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 85
    :pswitch_43
    const-string p1, "+8EbvFZ0/YG7wEimXXH90q2SSapDarSFu8EbhmFeuaar01emRmb9pJr5G7lXba6esdwb6kE/soX+\n3F64V20=\n"

    const-string v0, "3rI7zzIf3fc=\n"

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﾇ:Ljava/lang/String;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﻛ:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﺙ:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5a
    :goto_5a
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_43
        :pswitch_2e
        :pswitch_25
        :pswitch_1c
        :pswitch_13
        :pswitch_a
    .end packed-switch
.end method

.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/צ;)V
    .registers 10

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/צ;

    .line 2
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/צ;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/צ;

    if-eq p1, v0, :cond_a

    .line 3
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ب;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ب;

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﱟ:Lcom/ironsource/adqualitysdk/sdk/i/ب;

    .line 5
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1b2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1ab

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1f

    const/4 v2, 0x4

    if-eq p1, v2, :cond_25

    const/4 v2, 0x5

    if-eq p1, v2, :cond_25

    goto/16 :goto_1aa

    .line 13
    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﭸ:J

    .line 14
    :cond_25
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﾇ:Ljava/lang/String;

    const-string v2, "E7KFD5Imtw==\n"

    const-string v3, "RNfnWftDwEs=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1aa

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vODqdBT+8P684Op0FP79\n"

    const-string v5, "kc3HWTnT3dM=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﾇ:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string v4, "KU10Uf9Gp8NmXDs=\n"

    const-string v5, "CS4bP5EjxLc=\n"

    invoke-static {v4, v5, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ヾ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 19
    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ｋ:Ljava/lang/String;

    if-eqz v4, :cond_76

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ｋ:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 22
    :cond_76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "+HkR+flAXX/4eRH5+UA=\n"

    const-string v5, "1VQ81NRtcFI=\n"

    invoke-static {v3, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﾇ:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v2, :cond_ce

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﻛ:Ljava/lang/String;

    if-eqz v2, :cond_ce

    .line 26
    sget-object v5, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﭴ:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bb

    iget-object v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/צ;

    sget-object v6, Lcom/ironsource/adqualitysdk/sdk/i/צ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/צ;

    if-eq v5, v6, :cond_bb

    .line 28
    const-string v2, "4VFFHsXUNNnHW1U=\n"

    const-string v5, "rz4xPqOxQLo=\n"

    invoke-static {v2, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 30
    :cond_bb
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﾇ:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v6, "f8OeljX8mpks+bWzL6o=\n"

    const-string v7, "X5Da3RWK/+s=\n"

    invoke-static {v6, v7, v5, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ϙ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_cf

    :cond_ce
    move-object v2, v4

    :goto_cf
    if-eqz v2, :cond_d8

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    :cond_d8
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﻐ:Ljava/lang/String;

    if-eqz v2, :cond_109

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﻏ:Ljava/lang/String;

    if-eqz v2, :cond_109

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "74wp8Dc1/g/VpwyjQSP5DMynEKQENLZc\n"

    const-string v5, "vMhi0GFQjHw=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﻐ:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "dOCm\n"

    const-string v5, "VM2GijOY3lc=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﻏ:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_109
    if-eqz v4, :cond_112

    .line 35
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :cond_112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bNZte+vVnFM=\n"

    const-string v5, "P6IMD56mpnM=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/צ;

    if-ne v4, v0, :cond_12f

    const-string v0, "GRejz5hXFQ==\n"

    const-string v4, "TlbxgdEZUpY=\n"

    invoke-static {v0, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_133

    .line 38
    :cond_12f
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 39
    :goto_133
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/צ;

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/צ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/צ;

    if-eq v0, v2, :cond_19b

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/צ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/צ;

    if-ne v0, v2, :cond_14b

    goto :goto_19b

    .line 43
    :cond_14b
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﱟ:Lcom/ironsource/adqualitysdk/sdk/i/ب;

    invoke-virtual {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ب;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16d

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lvie72mCInhD\n"

    const-string v3, "Y53tnAjlR0I=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    :cond_16d
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 48
    const-string v0, "4e//vnKVGmPZ2OqA\n"

    const-string v1, "oIuuyxP5cxc=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾇ()Z

    move-result v1

    if-eqz v1, :cond_187

    .line 50
    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 51
    :cond_187
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    move-result-object v1

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;->WARNING:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    invoke-virtual {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;->shouldPrintLog(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;)Z

    move-result v1

    if-eqz v1, :cond_1aa

    .line 52
    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 53
    :cond_19b
    :goto_19b
    const-string v0, "SGG+5DJG5ytwVqva\n"

    const-string v2, "CQXvkVMqjl8=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-static {v0, v0, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1aa
    :goto_1aa
    return-void

    .line 55
    :cond_1ab
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﮉ:J

    return-void

    .line 56
    :cond_1b2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﮌ:J

    return-void
.end method
