###### Class androidx.webkit.ProfileStore (androidx.webkit.ProfileStore)
.class public interface abstract Landroidx/webkit/ProfileStore;
.super Ljava/lang/Object;
.source "ProfileStore.java"


# direct methods
.method public static getInstance()Landroidx/webkit/ProfileStore;
    .registers 1

    .line 56
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->MULTI_PROFILE:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 57
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 58
    invoke-static {}, Landroidx/webkit/internal/ProfileStoreImpl;->getInstance()Landroidx/webkit/ProfileStore;

    move-result-object v0

    return-object v0

    .line 60
    :cond_d
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public abstract getOrCreateProfile(Ljava/lang/String;)Landroidx/webkit/Profile;
.end method
