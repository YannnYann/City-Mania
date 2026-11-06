###### Class com.ironsource.adqualitysdk.sdk.i.C0370 (com.ironsource.adqualitysdk.sdk.i.ܪ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ܪ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

.field public final synthetic ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/গ;

.field public final synthetic ﻛ:Ljava/util/ArrayList;

.field public final synthetic ｋ:Ljava/util/ArrayList;

.field public final synthetic ﾇ:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/গ;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ܪ;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ܪ;->ﾇ:Landroid/content/Context;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ܪ;->ｋ:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ܪ;->ﻛ:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/ironsource/adqualitysdk/sdk/i/ܪ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/গ;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 4

    .line 1
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ܬ;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ܬ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ܪ;)V

    .line 6
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﻐ()I

    move-result v1

    int-to-long v1, v1

    .line 7
    invoke-static {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;J)V

    return-void
.end method
