###### Class org.chromium.net.impl.AndroidCallbackExceptionWrapper (org.chromium.net.impl.AndroidCallbackExceptionWrapper)
.class public Lorg/chromium/net/impl/AndroidCallbackExceptionWrapper;
.super Lorg/chromium/net/CallbackException;
.source "AndroidCallbackExceptionWrapper.java"


# direct methods
.method public constructor <init>(Landroid/net/http/CallbackException;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 17
    invoke-static {p1}, Lorg/chromium/net/impl/AndroidCallbackExceptionWrapper$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/http/CallbackException;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lorg/chromium/net/impl/AndroidCallbackExceptionWrapper$$ExternalSyntheticApiModelOutline1;->m(Landroid/net/http/CallbackException;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/chromium/net/CallbackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
