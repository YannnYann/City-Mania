###### Class com.ironsource.adqualitysdk.sdk.i.C0645 (com.ironsource.adqualitysdk.sdk.i.ᴦ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᴦ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᴝ;

.field public final synthetic ﾇ:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ᴝ;Landroid/app/Activity;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴦ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᴝ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴦ;->ﾇ:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴦ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᴝ;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᴝ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    .line 2
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->סּ:Lcom/ironsource/adqualitysdk/sdk/i/Ꮁ;

    .line 3
    const-string v1, "EMHAGY3GNekF2swem/0=\n"

    const-string v2, "dq6jbP6ZR4w=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/Ꮣ;

    invoke-direct {v2, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/Ꮣ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/Ꮁ;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ｋ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    .line 5
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴦ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᴝ;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᴝ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    const-string v1, "Ahyo4eK5xgUXB6Tm9II=\n"

    const-string v2, "ZHPLlJHmtGA=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴦ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᴝ;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴦ;->ﾇ:Landroid/app/Activity;

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ᴝ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᴝ;Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﾒ(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
