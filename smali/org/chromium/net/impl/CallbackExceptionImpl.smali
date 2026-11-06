###### Class org.chromium.net.impl.CallbackExceptionImpl (org.chromium.net.impl.CallbackExceptionImpl)
.class public Lorg/chromium/net/impl/CallbackExceptionImpl;
.super Lorg/chromium/net/CallbackException;
.source "CallbackExceptionImpl.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "cause"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Lorg/chromium/net/CallbackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
