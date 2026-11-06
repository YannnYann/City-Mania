###### Class com.ironsource.adqualitysdk.sdk.i.C0935 (com.ironsource.adqualitysdk.sdk.i.ﺔ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﺔ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﺏ;

.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ｱ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ﺏ;Lcom/ironsource/adqualitysdk/sdk/i/ｱ;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺔ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﺏ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺔ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ｱ;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺔ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﺏ;

    .line 2
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﺏ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ΐ;

    .line 3
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺔ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ｱ;

    .line 4
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/ｱ;->ﾇ:Ljava/lang/String;

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﺏ;->ﾇ:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ΐ;->ﾇ(Ljava/lang/String;)V

    return-void
.end method
