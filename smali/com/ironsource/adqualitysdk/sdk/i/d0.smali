###### Class com.ironsource.adqualitysdk.sdk.i.C3478d0 (com.ironsource.adqualitysdk.sdk.i.d0)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/d0;
.super Lcom/ironsource/adqualitysdk/sdk/i/b0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾇ(Landroid/webkit/WebView;)Ljava/lang/Object;
    .registers 3

    .line 1
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/C;->ﾒ:Landroid/graphics/Rect;

    .line 2
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_11

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_2

    :cond_11
    return-object p1
.end method
