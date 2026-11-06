###### Class com.ironsource.adqualitysdk.sdk.i.C0843 (com.ironsource.adqualitysdk.sdk.i.氵)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/氵;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ধ;

.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᔭ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ᔭ;Lcom/ironsource/adqualitysdk/sdk/i/ধ;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/氵;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᔭ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/氵;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ধ;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/氵;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᔭ;

    if-eqz v0, :cond_9

    .line 2
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᔭ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᖕ;

    .line 3
    iget v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᖕ;->ﾒ:I

    goto :goto_a

    :cond_9
    const/4 v1, -0x1

    .line 4
    :goto_a
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/氵;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ধ;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "4z/LLA8lQAbWJtp+TmBBEcsin2McJUAXxSTKf05mXAfBcNtlCGNWEcE+yywabVINhGKPPE5qQUPK\nP59+C3ZDDMoj2jZO\n"

    const-string v5, "pFC/DG4FM2M=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ধ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᔭ;Ljava/lang/String;)V

    return-void
.end method
