###### Class com.facebook.ads.InterstitialAdListener (com.facebook.ads.InterstitialAdListener)
.class public interface abstract Lcom/facebook/ads/InterstitialAdListener;
.super Ljava/lang/Object;
.source "InterstitialAdListener.java"

# interfaces
.implements Lcom/facebook/ads/AdListener;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# virtual methods
.method public abstract onInterstitialDismissed(Lcom/facebook/ads/Ad;)V
.end method

.method public abstract onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V
.end method
