###### Class com.ironsource.adqualitysdk.sdk.i.C0711 (com.ironsource.adqualitysdk.sdk.i.ḟ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ḟ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;

.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/z0;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;Lcom/ironsource/adqualitysdk/sdk/i/z0;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ḟ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ḟ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/z0;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ḟ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;

    .line 2
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;->ﾒ:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_8

    .line 6
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/Ḷ;

    invoke-direct {v2, p0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/Ḷ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ḟ;Landroid/view/View;)V

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    goto :goto_8

    :cond_25
    return-void
.end method
