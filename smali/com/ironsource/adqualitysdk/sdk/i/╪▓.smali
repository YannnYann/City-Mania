###### Class com.ironsource.adqualitysdk.sdk.i.C0314 (com.ironsource.adqualitysdk.sdk.i.ز)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ز;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/א;


# instance fields
.field public final synthetic ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;

.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

.field public final synthetic ﾒ:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ز;->ﾒ:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ز;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ز;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ز;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ز;->ﾒ:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ز;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ز;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ز;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ز;->ﾒ:Ljava/util/ArrayList;

    .line 3
    iget-object v5, v2, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;

    .line 4
    invoke-virtual {v0, v2, v5, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    .line 5
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ز;->ﾒ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method
