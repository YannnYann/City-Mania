###### Class com.ironsource.adqualitysdk.sdk.i.RunnableC0268 (com.ironsource.adqualitysdk.sdk.i.ԍ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ԍ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/є;

.field public final synthetic ｋ:Lorg/json/JSONObject;

.field public final synthetic ﾇ:Ljava/util/ArrayList;

.field public final synthetic ﾒ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/є;Ljava/lang/Object;Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ԍ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/є;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ԍ;->ﾒ:Ljava/lang/Object;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ԍ;->ﾇ:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ԍ;->ｋ:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ԍ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/є;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ԍ;->ﾒ:Ljava/lang/Object;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ԍ;->ﾇ:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/є;->ﾒ(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ԍ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/є;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ԍ;->ｋ:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ԍ;->ﾇ:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ԍ;->ﾒ:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/є;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/є;Lorg/json/JSONObject;Landroid/webkit/WebView;Ljava/lang/Object;)V

    return-void
.end method
