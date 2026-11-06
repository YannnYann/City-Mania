###### Class com.ironsource.adqualitysdk.sdk.i.C0795 (com.ironsource.adqualitysdk.sdk.i.Ⅰ)
.class public Lcom/ironsource/adqualitysdk/sdk/i/Ⅰ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    const-string v0, "iwFDzw==\n"

    const-string v1, "6G4toagS2D8=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kAjjK+QfiH0=\n"

    const-string v2, "+nuMRcp65h4=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public ﾇ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/Ⅰ;
    .registers 4

    .line 1
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/Ⅰ;

    .line 2
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;->ﾒ:Ljava/lang/String;

    .line 3
    invoke-direct {v0, v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/Ⅰ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;->ﻐ:Z

    .line 5
    iput-boolean p1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;->ﻐ:Z

    .line 6
    iget-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;->ﻏ:Z

    .line 7
    iput-boolean p1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;->ﻏ:Z

    return-object v0
.end method
