###### Class com.ironsource.adqualitysdk.sdk.i.C0098 (com.ironsource.adqualitysdk.sdk.i.ț)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ț;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/Ľ;

.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/א;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/Ľ;Lcom/ironsource/adqualitysdk/sdk/i/א;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ț;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/Ľ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ț;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/א;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ț;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/Ľ;

    .line 2
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/Ľ;->ﾇ:Ljava/util/HashMap;

    .line 3
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ț;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/א;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
