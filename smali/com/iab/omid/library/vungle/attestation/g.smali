###### Class com.iab.omid.library.vungle.attestation.g (com.iab.omid.library.vungle.attestation.g)
.class public Lcom/iab/omid/library/vungle/attestation/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/webkit/WebView;)Z
    .registers 2

    .line 0
    :try_start_0
    const-string v0, "WEB_MESSAGE_LISTENER"

    invoke-static {v0}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/iab/omid/library/vungle/internal/g;->b()Lcom/iab/omid/library/vungle/internal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/vungle/internal/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iab/omid/library/vungle/attestation/c;->a(Landroid/content/Context;)Lcom/iab/omid/library/vungle/attestation/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/vungle/attestation/c;->b()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {p0}, Lcom/iab/omid/library/vungle/attestation/f;->a(Landroid/webkit/WebView;)Lcom/iab/omid/library/vungle/attestation/f;
    :try_end_1d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_1d} :catch_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1f

    const/4 p0, 0x1

    return p0

    :catch_1f
    move-exception p0

    const-string v0, "Error during initialization of AttestationMessageListener"

    invoke-static {v0, p0}, Lcom/iab/omid/library/vungle/utils/d;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2b

    :catch_26
    const-string p0, "androidx.webkit not available, skipping attestation listener initialization"

    invoke-static {p0}, Lcom/iab/omid/library/vungle/utils/d;->a(Ljava/lang/String;)V

    :cond_2b
    :goto_2b
    const/4 p0, 0x0

    return p0
.end method
