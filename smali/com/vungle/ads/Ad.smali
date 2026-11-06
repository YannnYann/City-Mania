###### Class com.vungle.ads.Ad (com.vungle.ads.Ad)
.class public interface abstract Lcom/vungle/ads/Ad;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/Ad$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract canPlayAd()Ljava/lang/Boolean;
.end method

.method public abstract load()V
.end method

.method public abstract load(Lcom/vungle/ads/VungleCSBData;)V
.end method

.method public abstract load(Ljava/lang/String;)V
.end method

###### Class com.vungle.ads.Ad.DefaultImpls (com.vungle.ads.Ad$DefaultImpls)
.class public final Lcom/vungle/ads/Ad$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/Ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic load$default(Lcom/vungle/ads/Ad;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 4

    if-nez p3, :cond_b

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_7

    const/4 p1, 0x0

    .line 1
    :cond_7
    invoke-interface {p0, p1}, Lcom/vungle/ads/Ad;->load(Ljava/lang/String;)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: load"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
