###### Class org.chromium.net.impl.AndroidCallbackExceptionWrapper$$ExternalSyntheticApiModelOutline1 (org.chromium.net.impl.AndroidCallbackExceptionWrapper$$ExternalSyntheticApiModelOutline1)
.class public final synthetic Lorg/chromium/net/impl/AndroidCallbackExceptionWrapper$$ExternalSyntheticApiModelOutline1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Landroid/net/http/CallbackException;)Ljava/lang/Throwable;
    .registers 1

    .line 0
    invoke-virtual {p0}, Landroid/net/http/CallbackException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method
