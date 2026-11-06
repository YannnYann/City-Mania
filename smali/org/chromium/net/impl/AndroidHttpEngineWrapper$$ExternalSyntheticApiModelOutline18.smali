###### Class org.chromium.net.impl.AndroidHttpEngineWrapper$$ExternalSyntheticApiModelOutline18 (org.chromium.net.impl.AndroidHttpEngineWrapper$$ExternalSyntheticApiModelOutline18)
.class public final synthetic Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticApiModelOutline18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Landroid/net/http/HttpEngine;)Ljava/net/URLStreamHandlerFactory;
    .registers 1

    .line 0
    invoke-virtual {p0}, Landroid/net/http/HttpEngine;->createUrlStreamHandlerFactory()Ljava/net/URLStreamHandlerFactory;

    move-result-object p0

    return-object p0
.end method
