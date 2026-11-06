###### Class org.chromium.net.impl.AndroidUrlResponseInfoWrapper$$ExternalSyntheticApiModelOutline2 (org.chromium.net.impl.AndroidUrlResponseInfoWrapper$$ExternalSyntheticApiModelOutline2)
.class public final synthetic Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper$$ExternalSyntheticApiModelOutline2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Landroid/net/http/UrlResponseInfo;)Landroid/net/http/HeaderBlock;
    .registers 1

    .line 0
    invoke-virtual {p0}, Landroid/net/http/UrlResponseInfo;->getHeaders()Landroid/net/http/HeaderBlock;

    move-result-object p0

    return-object p0
.end method
