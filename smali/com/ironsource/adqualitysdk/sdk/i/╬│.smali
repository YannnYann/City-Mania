###### Class com.ironsource.adqualitysdk.sdk.i.C0189 (com.ironsource.adqualitysdk.sdk.i.γ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/γ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/Ϋ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/Ϋ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/γ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/Ϋ;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/γ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/Ϋ;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/Ϋ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ʈ;

    .line 2
    iget-boolean v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ʈ;->ﾒ:Z

    if-eqz v1, :cond_24

    .line 3
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ʈ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    .line 4
    const-string v1, "tj71RUEDWqO1dfJARRZdj64o5UNNJVa6\n"

    const-string v2, "21uRLCB3M8w=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﾒ(Ljava/lang/String;Ljava/util/List;)V

    .line 6
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/γ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/Ϋ;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/Ϋ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ʈ;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ʈ;->ﾒ:Z

    :cond_24
    return-void
.end method
