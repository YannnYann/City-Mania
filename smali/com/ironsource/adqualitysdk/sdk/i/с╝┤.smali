###### Class com.ironsource.adqualitysdk.sdk.i.C0754 (com.ironsource.adqualitysdk.sdk.i.ἴ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ἴ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ἲ;

.field public final synthetic ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/〱;

.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ἵ;

.field public final synthetic ﾇ:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ἲ;Landroid/view/ViewGroup;Lcom/ironsource/adqualitysdk/sdk/i/ἵ;Lcom/ironsource/adqualitysdk/sdk/i/〱;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ἴ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ἲ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ἴ;->ﾇ:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ἴ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ἵ;

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ἴ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/〱;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ἴ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ἲ;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ἴ;->ﾇ:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ἴ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ἵ;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᖨ;->ｋ(Landroid/view/View;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    .line 4
    instance-of v3, v0, Lcom/ironsource/adqualitysdk/sdk/i/ļ;

    if-nez v3, :cond_19

    .line 5
    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/ļ;

    invoke-direct {v3, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ļ;-><init>(Landroid/view/View$OnTouchListener;Lcom/ironsource/adqualitysdk/sdk/i/ŀ;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_19
    const/4 v0, 0x0

    .line 6
    :goto_1a
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ἴ;->ﾇ:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_66

    .line 7
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ἴ;->ﾇ:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4c

    .line 9
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ἴ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ἲ;

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ἴ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/〱;

    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/ἵ;

    invoke-direct {v4, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ἵ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ἲ;)V

    .line 18
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v6, Lcom/ironsource/adqualitysdk/sdk/i/ἴ;

    invoke-direct {v6, v2, v1, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ἴ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ἲ;Landroid/view/ViewGroup;Lcom/ironsource/adqualitysdk/sdk/i/ἵ;Lcom/ironsource/adqualitysdk/sdk/i/〱;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_63

    .line 19
    :cond_4c
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ἴ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ἲ;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ἴ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ἵ;

    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᖨ;->ｋ(Landroid/view/View;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    .line 22
    instance-of v4, v2, Lcom/ironsource/adqualitysdk/sdk/i/ļ;

    if-nez v4, :cond_63

    .line 23
    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/ļ;

    invoke-direct {v4, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ļ;-><init>(Landroid/view/View$OnTouchListener;Lcom/ironsource/adqualitysdk/sdk/i/ŀ;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_63
    :goto_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 24
    :cond_66
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ἴ;->ﾇ:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ἴ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/〱;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 25
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ἴ;->ﾇ:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ἴ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/〱;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
