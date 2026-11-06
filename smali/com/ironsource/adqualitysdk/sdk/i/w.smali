###### Class com.ironsource.adqualitysdk.sdk.i.C3510w (com.ironsource.adqualitysdk.sdk.i.w)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/z0;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/B;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/B;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/w;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾇ(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/w;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/B;

    .line 2
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/v;

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 4
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/w;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/B;

    .line 5
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﱟ:Ljava/util/WeakHashMap;

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final ﾒ(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/w;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/B;

    .line 2
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/v;

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 4
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/w;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/B;

    .line 5
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﱟ:Ljava/util/WeakHashMap;

    .line 6
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/B;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/v;

    .line 7
    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
