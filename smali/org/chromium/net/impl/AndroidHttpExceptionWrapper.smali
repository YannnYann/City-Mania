###### Class org.chromium.net.impl.AndroidHttpExceptionWrapper (org.chromium.net.impl.AndroidHttpExceptionWrapper)
.class public Lorg/chromium/net/impl/AndroidHttpExceptionWrapper;
.super Lorg/chromium/net/CronetException;
.source "AndroidHttpExceptionWrapper.java"


# direct methods
.method public constructor <init>(Landroid/net/http/HttpException;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 19
    invoke-static {p1}, Lorg/chromium/net/impl/AndroidHttpExceptionWrapper$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/http/HttpException;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/chromium/net/CronetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
