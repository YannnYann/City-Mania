###### Class ads_mobile_sdk.tv3 (ads_mobile_sdk.tv3)
.class public final Lads_mobile_sdk/tv3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/s91;


# instance fields
.field public final a:Landroid/graphics/drawable/Drawable;

.field public final b:Landroid/net/Uri;

.field public final c:D

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V
    .registers 4

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/tv3;->a:Landroid/graphics/drawable/Drawable;

    .line 75
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/tv3;->b:Landroid/net/Uri;

    .line 77
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getScale()D

    move-result-wide v0

    iput-wide v0, p0, Lads_mobile_sdk/tv3;->c:D

    .line 79
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getWidth()I

    move-result v0

    iput v0, p0, Lads_mobile_sdk/tv3;->d:I

    .line 81
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getHeight()I

    move-result p1

    iput p1, p0, Lads_mobile_sdk/tv3;->e:I

    return-void
.end method


# virtual methods
.method public final a()D
    .registers 3

    .line 77
    iget-wide v0, p0, Lads_mobile_sdk/tv3;->c:D

    return-wide v0
.end method

.method public final b()I
    .registers 2

    .line 79
    iget v0, p0, Lads_mobile_sdk/tv3;->d:I

    return v0
.end method

.method public final c()I
    .registers 2

    .line 81
    iget v0, p0, Lads_mobile_sdk/tv3;->e:I

    return v0
.end method

.method public final d()Landroid/net/Uri;
    .registers 2

    .line 75
    iget-object v0, p0, Lads_mobile_sdk/tv3;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public final e()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 73
    iget-object v0, p0, Lads_mobile_sdk/tv3;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
