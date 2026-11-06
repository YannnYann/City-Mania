###### Class ads_mobile_sdk.ad1 (ads_mobile_sdk.ad1)
.class public final Lads_mobile_sdk/ad1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:F


# direct methods
.method public constructor <init>(Landroid/view/MotionEvent;)V
    .registers 3

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lads_mobile_sdk/ad1;->a:F

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lads_mobile_sdk/ad1;->b:F

    return-void
.end method
