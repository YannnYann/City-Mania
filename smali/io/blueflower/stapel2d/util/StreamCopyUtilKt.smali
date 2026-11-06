###### Class io.blueflower.stapel2d.util.StreamCopyUtilKt (io.blueflower.stapel2d.util.StreamCopyUtilKt)
.class public final Lio/blueflower/stapel2d/util/StreamCopyUtilKt;
.super Ljava/lang/Object;
.source "StreamCopyUtil.kt"


# direct methods
.method public static final copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {p0, p1}, Lio/blueflower/stapel2d/util/StreamCopyUtil;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method
