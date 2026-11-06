###### Class com.ironsource.adqualitysdk.sdk.i.C0738 (com.ironsource.adqualitysdk.sdk.i.ẏ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ẏ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ẏ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ẏ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    .line 2
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->סּ:Lcom/ironsource/adqualitysdk/sdk/i/Ꮁ;

    .line 3
    const-string v1, "oNxMHD3cUE6n2HIdLA==\n"

    const-string v2, "1KwTb1ivIxE=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/Ꮣ;

    invoke-direct {v2, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/Ꮣ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/Ꮁ;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ｋ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    .line 5
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ẏ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    const-string v1, "jUWa2dcvjxuKQaTYxg==\n"

    const-string v2, "+TXFqrJc/EQ=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﾒ(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
