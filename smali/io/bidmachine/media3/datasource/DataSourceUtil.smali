###### Class io.bidmachine.media3.datasource.DataSourceUtil (io.bidmachine.media3.datasource.DataSourceUtil)
.class public final Lio/bidmachine/media3/datasource/DataSourceUtil;
.super Ljava/lang/Object;
.source "DataSourceUtil.java"


# direct methods
.method public static closeQuietly(Lio/bidmachine/media3/datasource/DataSource;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 87
    :try_start_2
    invoke-interface {p0}, Lio/bidmachine/media3/datasource/DataSource;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method
