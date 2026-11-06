###### Class com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdDataInterface (com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdDataInterface)
.class public interface abstract Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdDataInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdDataInterface$Image;
    }
.end annotation


# virtual methods
.method public abstract getAdvertiser()Ljava/lang/String;
.end method

.method public abstract getBody()Ljava/lang/String;
.end method

.method public abstract getCallToAction()Ljava/lang/String;
.end method

.method public abstract getIcon()Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdDataInterface$Image;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

###### Class com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdDataInterface.Image (com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdDataInterface$Image)
.class public Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdDataInterface$Image;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdDataInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Image"
.end annotation


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable;

.field private final b:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdDataInterface$Image;->a:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdDataInterface$Image;->b:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdDataInterface$Image;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdDataInterface$Image;->b:Landroid/net/Uri;

    return-object v0
.end method
