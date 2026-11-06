###### Class com.ironsource.adqualitysdk.sdk.i.C0833 (com.ironsource.adqualitysdk.sdk.i.丶)
.class public Lcom/ironsource/adqualitysdk/sdk/i/丶;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    const-string v0, "GnXhtw==\n"

    const-string v1, "eRqP0T+LSng=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nGYja8sicYA=\n"

    const-string v2, "9hVMBeVHH+M=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
