###### Class com.ironsource.adqualitysdk.sdk.i.C0789 (com.ironsource.adqualitysdk.sdk.i.ℐ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ℐ;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ἲ;

.field public final synthetic ﾒ:Z


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ἲ;Landroid/content/Context;Z)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ℐ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ἲ;

    iput-boolean p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ℐ;->ﾒ:Z

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final getVisibility()I
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ℐ;->ﾒ:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    return v0

    .line 4
    :cond_6
    invoke-super {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ℐ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ἲ;

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ἲ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ἲ;Landroid/view/MotionEvent;)V

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
