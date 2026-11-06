###### Class com.google.android.libraries.ads.mobile.sdk.common.Image (com.google.android.libraries.ads.mobile.sdk.common.Image)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/common/Image;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/drawable/Drawable;

.field public final b:Landroid/net/Uri;

.field public final c:D


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V
    .registers 6

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/Image;->a:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/Image;->b:Landroid/net/Uri;

    iput-wide p3, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/Image;->c:D

    return-void
.end method


# virtual methods
.method public final getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/Image;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/Image;->b:Landroid/net/Uri;

    return-object v0
.end method
