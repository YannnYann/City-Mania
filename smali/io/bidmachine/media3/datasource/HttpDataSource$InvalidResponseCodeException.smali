###### Class io.bidmachine.media3.datasource.HttpDataSource$InvalidResponseCodeException (io.bidmachine.media3.datasource.HttpDataSource$InvalidResponseCodeException)
.class public final Lio/bidmachine/media3/datasource/HttpDataSource$InvalidResponseCodeException;
.super Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;
.source "HttpDataSource.java"


# instance fields
.field public final headerFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final responseBody:[B

.field public final responseCode:I

.field public final responseMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lio/bidmachine/media3/datasource/DataSpec;[B)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/io/IOException;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lio/bidmachine/media3/datasource/DataSpec;",
            "[B)V"
        }
    .end annotation

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x7d4

    const/4 v7, 0x1

    move-object v2, p0

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v2 .. v7}, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Lio/bidmachine/media3/datasource/DataSpec;II)V

    .line 443
    iput p1, v2, Lio/bidmachine/media3/datasource/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    .line 444
    iput-object p2, v2, Lio/bidmachine/media3/datasource/HttpDataSource$InvalidResponseCodeException;->responseMessage:Ljava/lang/String;

    .line 445
    iput-object p4, v2, Lio/bidmachine/media3/datasource/HttpDataSource$InvalidResponseCodeException;->headerFields:Ljava/util/Map;

    .line 446
    iput-object p6, v2, Lio/bidmachine/media3/datasource/HttpDataSource$InvalidResponseCodeException;->responseBody:[B

    return-void
.end method
