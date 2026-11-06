###### Class com.ironsource.adqualitysdk.sdk.i.C0945 (com.ironsource.adqualitysdk.sdk.i.ﺩ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﺩ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ﺛ;

.field public final synthetic ｋ:Landroid/app/Activity;

.field public final synthetic ﾇ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ﺛ;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺩ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ﺛ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺩ;->ﾇ:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺩ;->ｋ:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺩ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ﺛ;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﺛ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺩ;->ﾇ:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺩ;->ｋ:Landroid/app/Activity;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/İ;Ljava/lang/String;ZZLjava/util/List;)V

    return-void
.end method
