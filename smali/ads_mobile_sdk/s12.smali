###### Class ads_mobile_sdk.s12 (ads_mobile_sdk.s12)
.class public final Lads_mobile_sdk/s12;
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
.method public constructor <init>(Lcom/google/android/gms/ads/nativead/NativeAd$Image;)V
    .registers 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/s12;->a:Landroid/graphics/drawable/Drawable;

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/s12;->b:Landroid/net/Uri;

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->getScale()D

    move-result-wide v0

    iput-wide v0, p0, Lads_mobile_sdk/s12;->c:D

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->getWidth()I

    move-result v0

    iput v0, p0, Lads_mobile_sdk/s12;->d:I

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->getHeight()I

    move-result p1

    iput p1, p0, Lads_mobile_sdk/s12;->e:I

    return-void
.end method


# virtual methods
.method public final a()D
    .registers 3

    .line 23
    iget-wide v0, p0, Lads_mobile_sdk/s12;->c:D

    return-wide v0
.end method

.method public final b()I
    .registers 2

    .line 25
    iget v0, p0, Lads_mobile_sdk/s12;->d:I

    return v0
.end method

.method public final c()I
    .registers 2

    .line 27
    iget v0, p0, Lads_mobile_sdk/s12;->e:I

    return v0
.end method

.method public final d()Landroid/net/Uri;
    .registers 2

    .line 21
    iget-object v0, p0, Lads_mobile_sdk/s12;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public final e()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 19
    iget-object v0, p0, Lads_mobile_sdk/s12;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
