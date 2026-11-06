###### Class com.ironsource.adqualitysdk.sdk.i.C0128 (com.ironsource.adqualitysdk.sdk.i.ʎ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ʎ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵋ;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵋ;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "m3CD0fcV\n"

    const-string v1, "+QLmsJwuJ9A=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;
    .registers 3

    .line 1
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/Ι;-><init>(Ljava/lang/Object;)V

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p1, Lcom/ironsource/adqualitysdk/sdk/i/Ι;->ｋ:Z

    return-object p1
.end method
