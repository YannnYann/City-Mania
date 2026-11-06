###### Class com.ironsource.adqualitysdk.sdk.i.C0277 (com.ironsource.adqualitysdk.sdk.i.ւ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ւ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ь;

.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ب;

.field public final synthetic ﾇ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ь;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/ب;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ւ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ь;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ւ;->ﾇ:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ւ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ب;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ւ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ь;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ւ;->ﾇ:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ь;->ﾒ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/ח;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 3
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ւ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ب;

    .line 4
    iput-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﱟ:Lcom/ironsource/adqualitysdk/sdk/i/ب;

    .line 5
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/צ;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/צ;

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/צ;)V

    .line 6
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ւ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ь;

    invoke-static {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ь;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ь;Lcom/ironsource/adqualitysdk/sdk/i/ח;)V

    :cond_18
    return-void
.end method
