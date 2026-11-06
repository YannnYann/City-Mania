###### Class ads_mobile_sdk.s9 (ads_mobile_sdk.s9)
.class public final Lads_mobile_sdk/s9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/u9;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/u9;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lads_mobile_sdk/s9;->a:Lads_mobile_sdk/u9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3

    .line 29
    iget-object v0, p0, Lads_mobile_sdk/s9;->a:Lads_mobile_sdk/u9;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/u9;->a(Landroid/view/View;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    .line 34
    iget-object v0, p0, Lads_mobile_sdk/s9;->a:Lads_mobile_sdk/u9;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/u9;->c(Landroid/view/View;)V

    return-void
.end method
