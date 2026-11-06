###### Class ads_mobile_sdk.co2 (ads_mobile_sdk.co2)
.class public final Lads_mobile_sdk/co2;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:F


# direct methods
.method public constructor <init>(IIF)V
    .registers 4

    .line 1
    iput p1, p0, Lads_mobile_sdk/co2;->a:I

    iput p2, p0, Lads_mobile_sdk/co2;->b:I

    iput p3, p0, Lads_mobile_sdk/co2;->c:F

    .line 313
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 9

    .line 1
    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "outline"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    iget v3, p0, Lads_mobile_sdk/co2;->a:I

    iget v4, p0, Lads_mobile_sdk/co2;->b:I

    iget v5, p0, Lads_mobile_sdk/co2;->c:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
