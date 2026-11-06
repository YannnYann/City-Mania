###### Class org.chromium.net.impl.AndroidHttpEngineWrapper$$ExternalSyntheticApiModelOutline23 (org.chromium.net.impl.AndroidHttpEngineWrapper$$ExternalSyntheticApiModelOutline23)
.class public final synthetic Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticApiModelOutline23;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Landroid/net/http/HttpEngine;Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Landroid/net/http/HttpEngine;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p0

    return-object p0
.end method
