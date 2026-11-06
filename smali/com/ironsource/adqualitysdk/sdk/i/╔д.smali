###### Class com.ironsource.adqualitysdk.sdk.i.C0107 (com.ironsource.adqualitysdk.sdk.i.ɤ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ɤ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/Ľ;

.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/א;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/Ľ;Lcom/ironsource/adqualitysdk/sdk/i/א;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ɤ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/Ľ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ɤ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/א;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ɤ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/Ľ;

    .line 2
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/Ľ;->ﾇ:Ljava/util/HashMap;

    .line 3
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ɤ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/א;

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ɬ;

    invoke-direct {v2, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ɬ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ɤ;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ɤ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/Ľ;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/Ľ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/Ľ;)V

    return-void
.end method
