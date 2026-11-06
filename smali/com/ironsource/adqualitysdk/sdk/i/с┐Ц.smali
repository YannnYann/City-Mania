###### Class com.ironsource.adqualitysdk.sdk.i.C0774 (com.ironsource.adqualitysdk.sdk.i.ῖ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ῖ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/〱;

.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ℐ;

.field public final synthetic ﾇ:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/ironsource/adqualitysdk/sdk/i/ℐ;Lcom/ironsource/adqualitysdk/sdk/i/〱;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ῖ;->ﾇ:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ῖ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ℐ;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ῖ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/〱;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ῖ;->ﾇ:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ῖ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ℐ;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ῖ;->ﾇ:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ῖ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/〱;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ῖ;->ﾇ:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ῖ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/〱;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
