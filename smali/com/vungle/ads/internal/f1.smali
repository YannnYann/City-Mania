###### Class com.vungle.ads.internal.f1 (com.vungle.ads.internal.f1)
.class public final Lcom/vungle/ads/internal/f1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroid/widget/ImageView;

.field public final synthetic b:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/internal/f1;->a:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/vungle/ads/internal/f1;->b:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/f1;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vungle/ads/internal/f1;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
