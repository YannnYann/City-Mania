###### Class com.ironsource.adqualitysdk.sdk.i.C0264 (com.ironsource.adqualitysdk.sdk.i.ԁ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ԁ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ь;

.field public final synthetic ﻛ:Z

.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;

.field public final synthetic ﾇ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ь;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;Z)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ԁ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ь;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ԁ;->ﾇ:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ԁ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;

    iput-boolean p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ԁ;->ﻛ:Z

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ԁ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ь;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ԁ;->ﾇ:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ь;->ﾒ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/ח;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 3
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ԁ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;

    iget-boolean v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ԁ;->ﻛ:Z

    .line 4
    iget-object v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;

    .line 5
    iget-object v4, v3, Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;->ｋ:Ljava/lang/String;

    .line 6
    iput-object v4, v0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﾒ:Ljava/lang/String;

    .line 7
    iget-object v4, v3, Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;->ﻛ:Ljava/lang/String;

    .line 8
    iput-object v4, v0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﾇ:Ljava/lang/String;

    .line 9
    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;->ﻐ:Ljava/lang/String;

    .line 10
    iput-object v3, v0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ｋ:Ljava/lang/String;

    .line 11
    iget-object v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;

    invoke-virtual {v3}, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ｋ()Ljava/lang/String;

    move-result-object v3

    .line 12
    iput-object v3, v0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﻛ:Ljava/lang/String;

    .line 13
    const-string v3, "4d9JFOR7Yg==\n"

    const-string v4, "pJEIVqg+Jv4=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﻛ:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    const-string v3, "GLL57+bWBiA=\n"

    const-string v4, "XPuqrqSaQ2Q=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﻛ:Ljava/lang/String;

    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 15
    :cond_44
    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﭴ:Ljava/lang/String;

    iput-object v3, v0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﻛ:Ljava/lang/String;

    .line 16
    :cond_48
    iget-object v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;

    .line 17
    iget-object v4, v3, Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;->ﻏ:Ljava/lang/String;

    .line 18
    iput-object v4, v0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﻐ:Ljava/lang/String;

    .line 19
    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;->ﺙ:Ljava/lang/String;

    .line 20
    iput-object v3, v0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﻏ:Ljava/lang/String;

    .line 21
    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ｋ()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﺙ:Ljava/lang/String;

    .line 22
    iput-boolean v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﮐ:Z

    :cond_5a
    return-void
.end method
