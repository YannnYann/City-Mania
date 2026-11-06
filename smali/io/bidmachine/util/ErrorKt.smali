###### Class io.bidmachine.util.ErrorKt (io.bidmachine.util.ErrorKt)
.class public final Lio/bidmachine/util/ErrorKt;
.super Ljava/lang/Object;
.source "Error.kt"


# direct methods
.method public static final toError(Ljava/lang/Throwable;)Lio/bidmachine/util/Error;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lio/bidmachine/util/Error;

    invoke-direct {v0, p0}, Lio/bidmachine/util/Error;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method
