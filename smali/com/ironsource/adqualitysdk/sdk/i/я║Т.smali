###### Class com.ironsource.adqualitysdk.sdk.i.C0933 (com.ironsource.adqualitysdk.sdk.i.ﺒ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﺒ;
.super Lcom/ironsource/adqualitysdk/sdk/i/אּ;
.source "SourceFile"


# instance fields
.field public final synthetic ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;

.field public final synthetic ﻛ:Ljava/util/ArrayList;

.field public final synthetic ｋ:Z

.field public final synthetic ﾇ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;Ljava/lang/String;ZLjava/util/ArrayList;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺒ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺒ;->ﾇ:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺒ;->ｋ:Z

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺒ;->ﻛ:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/אּ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺒ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺒ;->ﾇ:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺒ;->ｋ:Z

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺒ;->ﻛ:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/İ;Ljava/lang/String;ZZLjava/util/List;)V

    return-void
.end method
