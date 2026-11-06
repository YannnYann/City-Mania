###### Class org.chromium.net.impl.AndroidNetworkExceptionWrapper$$ExternalSyntheticApiModelOutline0 (org.chromium.net.impl.AndroidNetworkExceptionWrapper$$ExternalSyntheticApiModelOutline0)
.class public final synthetic Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper$$ExternalSyntheticApiModelOutline0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Landroid/net/http/NetworkException;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Landroid/net/http/NetworkException;->getErrorCode()I

    move-result p0

    return p0
.end method
