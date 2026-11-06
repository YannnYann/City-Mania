###### Class io.bidmachine.rendering.utils.Utils (io.bidmachine.rendering.utils.Utils)
.class public Lio/bidmachine/rendering/utils/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static write(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputStream",
            "outputStream"
        }
    .end annotation

    const/16 v0, 0x400

    .line 1
    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    .line 3
    :goto_6
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_13

    const/4 v4, 0x0

    .line 4
    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_6

    :cond_13
    return-wide v1
.end method
