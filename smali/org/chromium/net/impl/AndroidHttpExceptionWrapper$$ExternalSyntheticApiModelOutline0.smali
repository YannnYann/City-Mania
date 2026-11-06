###### Class org.chromium.net.impl.AndroidHttpExceptionWrapper$$ExternalSyntheticApiModelOutline0 (org.chromium.net.impl.AndroidHttpExceptionWrapper$$ExternalSyntheticApiModelOutline0)
.class public final synthetic Lorg/chromium/net/impl/AndroidHttpExceptionWrapper$$ExternalSyntheticApiModelOutline0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Landroid/net/http/HttpException;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-virtual {p0}, Landroid/net/http/HttpException;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
