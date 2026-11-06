###### Class com.ironsource.adqualitysdk.sdk.i.C0450 (com.ironsource.adqualitysdk.sdk.i.Ꮣ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/Ꮣ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/Ꮁ;

.field public final synthetic ﾇ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/Ꮁ;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ꮣ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/Ꮁ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ꮣ;->ﾇ:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ꮣ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/Ꮁ;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/Ꮁ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ܕ;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ܕ;->ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/ϛ;

    .line 2
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->ﮌ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    .line 3
    const-string v1, "mh0r3ILtdLmbDjycmfBQp48uONeY6is=\n"

    const-string v2, "/2tOsvaeEdc=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ꮣ;->ﾇ:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﾒ(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
