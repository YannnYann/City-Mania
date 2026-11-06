###### Class com.ironsource.adqualitysdk.sdk.i.C0788 (com.ironsource.adqualitysdk.sdk.i.ⁿ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ⁿ;
.super Lcom/ironsource/adqualitysdk/sdk/i/Ⅰ;
.source "SourceFile"


# instance fields
.field public final ﱟ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/Ⅰ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ⁿ;->ﱟ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ﾇ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/Ⅰ;
    .registers 5

    .line 1
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ⁿ;

    .line 2
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;->ﾒ:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ⁿ;->ﱟ:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ⁿ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

.method public final ﾒ()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ⁿ;->ﱟ:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;->ﾒ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
