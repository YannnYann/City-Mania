###### Class org.chromium.net.impl.AndroidNetworkExceptionWrapper$$ExternalSyntheticApiModelOutline2 (org.chromium.net.impl.AndroidNetworkExceptionWrapper$$ExternalSyntheticApiModelOutline2)
.class public final synthetic Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper$$ExternalSyntheticApiModelOutline2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Landroid/net/http/NetworkException;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-virtual {p0}, Landroid/net/http/NetworkException;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
