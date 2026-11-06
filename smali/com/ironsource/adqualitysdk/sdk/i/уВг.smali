###### Class com.ironsource.adqualitysdk.sdk.i.C0818 (com.ironsource.adqualitysdk.sdk.i.ィ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ィ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ΐ;

.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ڗ;

.field public final synthetic ﾇ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ΐ;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/ڗ;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ィ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ΐ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ィ;->ﾇ:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ィ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ڗ;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ィ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ΐ;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ィ;->ﾇ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ΐ;->ﾒ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ךּ;

    invoke-direct {v1, p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ךּ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ィ;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    return-void
.end method
