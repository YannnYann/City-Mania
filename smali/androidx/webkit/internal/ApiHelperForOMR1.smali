###### Class androidx.webkit.internal.ApiHelperForOMR1 (androidx.webkit.internal.ApiHelperForOMR1)
.class public Landroidx/webkit/internal/ApiHelperForOMR1;
.super Ljava/lang/Object;
.source "ApiHelperForOMR1.java"


# direct methods
.method public static getSafeBrowsingPrivacyPolicyUrl()Landroid/net/Uri;
    .registers 1

    .line 87
    invoke-static {}, Landroidx/webkit/internal/ApiHelperForOMR1$$ExternalSyntheticApiModelOutline0;->m()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static setSafeBrowsingWhitelist(Ljava/util/List;Landroid/webkit/ValueCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-static {p0, p1}, Landroidx/webkit/internal/ApiHelperForOMR1$$ExternalSyntheticApiModelOutline1;->m(Ljava/util/List;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public static showInterstitial(Landroid/webkit/SafeBrowsingResponse;Z)V
    .registers 2

    .line 49
    invoke-static {p0, p1}, Landroidx/webkit/internal/ApiHelperForOMR1$$ExternalSyntheticApiModelOutline3;->m(Landroid/webkit/SafeBrowsingResponse;Z)V

    return-void
.end method

.method public static startSafeBrowsing(Landroid/content/Context;Landroid/webkit/ValueCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-static {p0, p1}, Landroidx/webkit/internal/ApiHelperForOMR1$$ExternalSyntheticApiModelOutline2;->m(Landroid/content/Context;Landroid/webkit/ValueCallback;)V

    return-void
.end method
