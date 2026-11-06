###### Class io.bidmachine.media3.datasource.DefaultHttpDataSource (io.bidmachine.media3.datasource.DefaultHttpDataSource)
.class public Lio/bidmachine/media3/datasource/DefaultHttpDataSource;
.super Lio/bidmachine/media3/datasource/BaseDataSource;
.source "DefaultHttpDataSource.java"

# interfaces
.implements Lio/bidmachine/media3/datasource/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;,
        Lio/bidmachine/media3/datasource/DefaultHttpDataSource$Factory;
    }
.end annotation


# instance fields
.field public final allowCrossProtocolRedirects:Z

.field public bytesRead:J

.field public bytesToRead:J

.field public final connectTimeoutMillis:I

.field public connection:Ljava/net/HttpURLConnection;

.field public final contentTypePredicate:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final crossProtocolRedirectsForceOriginal:Z

.field public dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

.field public final defaultRequestProperties:Lio/bidmachine/media3/datasource/HttpDataSource$RequestProperties;

.field public inputStream:Ljava/io/InputStream;

.field public final keepPostFor302Redirects:Z

.field public final readTimeoutMillis:I

.field public final requestProperties:Lio/bidmachine/media3/datasource/HttpDataSource$RequestProperties;

.field public responseCode:I

.field public transferStarted:Z

.field public final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZZLio/bidmachine/media3/datasource/HttpDataSource$RequestProperties;Lcom/google/common/base/Predicate;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZZ",
            "Lio/bidmachine/media3/datasource/HttpDataSource$RequestProperties;",
            "Lcom/google/common/base/Predicate<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 278
    invoke-direct {p0, v0}, Lio/bidmachine/media3/datasource/BaseDataSource;-><init>(Z)V

    .line 279
    iput-object p1, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->userAgent:Ljava/lang/String;

    .line 280
    iput p2, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->connectTimeoutMillis:I

    .line 281
    iput p3, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->readTimeoutMillis:I

    .line 282
    iput-boolean p4, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->allowCrossProtocolRedirects:Z

    .line 283
    iput-boolean p5, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->crossProtocolRedirectsForceOriginal:Z

    if-eqz p4, :cond_1b

    if-nez p5, :cond_13

    goto :goto_1b

    .line 285
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "crossProtocolRedirectsForceOriginal should not be set if allowCrossProtocolRedirects is true"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 289
    :cond_1b
    :goto_1b
    iput-object p6, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->defaultRequestProperties:Lio/bidmachine/media3/datasource/HttpDataSource$RequestProperties;

    .line 290
    iput-object p7, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->contentTypePredicate:Lcom/google/common/base/Predicate;

    .line 291
    new-instance p1, Lio/bidmachine/media3/datasource/HttpDataSource$RequestProperties;

    invoke-direct {p1}, Lio/bidmachine/media3/datasource/HttpDataSource$RequestProperties;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->requestProperties:Lio/bidmachine/media3/datasource/HttpDataSource$RequestProperties;

    .line 292
    iput-boolean p8, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->keepPostFor302Redirects:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIZZLio/bidmachine/media3/datasource/HttpDataSource$RequestProperties;Lcom/google/common/base/Predicate;ZLio/bidmachine/media3/datasource/DefaultHttpDataSource$1;)V
    .registers 10

    .line 64
    invoke-direct/range {p0 .. p8}, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;-><init>(Ljava/lang/String;IIZZLio/bidmachine/media3/datasource/HttpDataSource$RequestProperties;Lcom/google/common/base/Predicate;Z)V

    return-void
.end method

.method public static isCompressed(Ljava/net/HttpURLConnection;)Z
    .registers 2

    .line 802
    const-string v0, "Content-Encoding"

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 803
    const-string v0, "gzip"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public close()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 487
    :try_start_2
    iget-object v2, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_a

    if-eqz v2, :cond_1e

    .line 490
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_c
    .catchall {:try_start_6 .. :try_end_9} :catchall_a

    goto :goto_1e

    :catchall_a
    move-exception v2

    goto :goto_31

    :catch_c
    move-exception v2

    .line 492
    :try_start_d
    new-instance v3, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;

    iget-object v4, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    .line 494
    invoke-static {v4}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/datasource/DataSpec;

    const/16 v5, 0x7d0

    const/4 v6, 0x3

    invoke-direct {v3, v2, v4, v5, v6}, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lio/bidmachine/media3/datasource/DataSpec;II)V

    throw v3
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_a

    .line 500
    :cond_1e
    :goto_1e
    iput-object v1, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 501
    invoke-virtual {p0}, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 502
    iget-boolean v2, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->transferStarted:Z

    if-eqz v2, :cond_2c

    .line 503
    iput-boolean v0, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->transferStarted:Z

    .line 504
    invoke-virtual {p0}, Lio/bidmachine/media3/datasource/BaseDataSource;->transferEnded()V

    .line 506
    :cond_2c
    iput-object v1, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    .line 507
    iput-object v1, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    return-void

    .line 500
    :goto_31
    iput-object v1, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 501
    invoke-virtual {p0}, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 502
    iget-boolean v3, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->transferStarted:Z

    if-eqz v3, :cond_3f

    .line 503
    iput-boolean v0, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->transferStarted:Z

    .line 504
    invoke-virtual {p0}, Lio/bidmachine/media3/datasource/BaseDataSource;->transferEnded()V

    .line 506
    :cond_3f
    iput-object v1, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    .line 507
    iput-object v1, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    .line 508
    throw v2
.end method

.method public final closeConnectionQuietly()V
    .registers 4

    .line 792
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_10

    .line 794
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    .line 796
    const-string v1, "DefaultHttpDataSource"

    const-string v2, "Unexpected error while disconnecting"

    invoke-static {v1, v2, v0}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    return-void
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_9

    .line 318
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    .line 328
    :cond_9
    new-instance v1, Lio/bidmachine/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/bidmachine/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 299
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_11

    .line 300
    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 301
    :cond_11
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    if-eqz v0, :cond_18

    .line 302
    iget-object v0, v0, Lio/bidmachine/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    return-object v0

    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public final handleRedirect(Ljava/net/URL;Ljava/lang/String;Lio/bidmachine/media3/datasource/DataSpec;)Ljava/net/URL;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x7d1

    if-eqz p2, :cond_91

    .line 676
    :try_start_5
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_a} :catch_8a

    .line 686
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    .line 687
    const-string v3, "https"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    const-string v3, "http"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_36

    .line 688
    :cond_1f
    new-instance p1, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported protocol redirect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p3, v1, v0}, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Lio/bidmachine/media3/datasource/DataSpec;II)V

    throw p1

    .line 694
    :cond_36
    :goto_36
    iget-boolean v3, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->allowCrossProtocolRedirects:Z

    if-nez v3, :cond_89

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_89

    .line 695
    iget-boolean v3, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->crossProtocolRedirectsForceOriginal:Z

    if-eqz v3, :cond_61

    .line 707
    :try_start_48
    new-instance v3, Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/net/MalformedURLException; {:try_start_48 .. :try_end_59} :catch_5a

    return-object v3

    :catch_5a
    move-exception p1

    .line 709
    new-instance p2, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;

    invoke-direct {p2, p1, p3, v1, v0}, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lio/bidmachine/media3/datasource/DataSpec;II)V

    throw p2

    .line 696
    :cond_61
    new-instance v2, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disallowed cross-protocol redirect ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, p3, v1, v0}, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Lio/bidmachine/media3/datasource/DataSpec;II)V

    throw v2

    :cond_89
    return-object v2

    :catch_8a
    move-exception p1

    .line 678
    new-instance p2, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;

    invoke-direct {p2, p1, p3, v1, v0}, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lio/bidmachine/media3/datasource/DataSpec;II)V

    throw p2

    .line 667
    :cond_91
    new-instance p1, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;

    const-string p2, "Null location redirect"

    invoke-direct {p1, p2, p3, v1, v0}, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Lio/bidmachine/media3/datasource/DataSpec;II)V

    throw p1
.end method

.method public final makeConnection(Lio/bidmachine/media3/datasource/DataSpec;)Ljava/net/HttpURLConnection;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    .line 513
    new-instance v1, Ljava/net/URL;

    iget-object v2, v11, Lio/bidmachine/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 514
    iget v2, v11, Lio/bidmachine/media3/datasource/DataSpec;->httpMethod:I

    .line 515
    iget-object v3, v11, Lio/bidmachine/media3/datasource/DataSpec;->httpBody:[B

    .line 516
    iget-wide v4, v11, Lio/bidmachine/media3/datasource/DataSpec;->position:J

    .line 517
    iget-wide v6, v11, Lio/bidmachine/media3/datasource/DataSpec;->length:J

    const/4 v12, 0x1

    .line 518
    invoke-virtual {v11, v12}, Lio/bidmachine/media3/datasource/DataSpec;->isFlagSet(I)Z

    move-result v8

    .line 520
    iget-boolean v9, v0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->allowCrossProtocolRedirects:Z

    if-nez v9, :cond_30

    iget-boolean v9, v0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->crossProtocolRedirectsForceOriginal:Z

    if-nez v9, :cond_30

    iget-boolean v9, v0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->keepPostFor302Redirects:Z

    if-nez v9, :cond_30

    const/4 v9, 0x1

    .line 525
    iget-object v10, v11, Lio/bidmachine/media3/datasource/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    invoke-virtual/range {v0 .. v10}, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->makeConnection(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v1

    return-object v1

    :cond_30
    const/4 v0, 0x0

    :goto_31
    add-int/lit8 v13, v0, 0x1

    const/16 v9, 0x14

    if-gt v0, v9, :cond_95

    const/4 v9, 0x0

    .line 540
    iget-object v10, v11, Lio/bidmachine/media3/datasource/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    move-object/from16 v0, p0

    .line 541
    invoke-virtual/range {v0 .. v10}, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->makeConnection(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v9

    .line 550
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .line 551
    const-string v14, "Location"

    invoke-virtual {v9, v14}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x12e

    if-eq v2, v12, :cond_51

    const/4 v12, 0x3

    if-ne v2, v12, :cond_68

    :cond_51
    const/16 v12, 0x12c

    if-eq v10, v12, :cond_8b

    const/16 v12, 0x12d

    if-eq v10, v12, :cond_8b

    if-eq v10, v15, :cond_8b

    const/16 v12, 0x12f

    if-eq v10, v12, :cond_8b

    const/16 v12, 0x133

    if-eq v10, v12, :cond_8b

    const/16 v12, 0x134

    if-ne v10, v12, :cond_68

    goto :goto_8b

    :cond_68
    const/4 v12, 0x2

    if-ne v2, v12, :cond_8a

    const/16 v12, 0x12c

    if-eq v10, v12, :cond_79

    const/16 v12, 0x12d

    if-eq v10, v12, :cond_79

    if-eq v10, v15, :cond_79

    const/16 v12, 0x12f

    if-ne v10, v12, :cond_8a

    .line 566
    :cond_79
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 567
    iget-boolean v9, v0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->keepPostFor302Redirects:Z

    if-eqz v9, :cond_83

    if-ne v10, v15, :cond_83

    goto :goto_85

    :cond_83
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 574
    :goto_85
    invoke-virtual {v0, v1, v14, v11}, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->handleRedirect(Ljava/net/URL;Ljava/lang/String;Lio/bidmachine/media3/datasource/DataSpec;)Ljava/net/URL;

    move-result-object v1

    goto :goto_92

    :cond_8a
    return-object v9

    .line 559
    :cond_8b
    :goto_8b
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 560
    invoke-virtual {v0, v1, v14, v11}, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->handleRedirect(Ljava/net/URL;Ljava/lang/String;Lio/bidmachine/media3/datasource/DataSpec;)Ljava/net/URL;

    move-result-object v1

    :goto_92
    move v0, v13

    const/4 v12, 0x1

    goto :goto_31

    :cond_95
    move-object/from16 v0, p0

    .line 581
    new-instance v1, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;

    new-instance v2, Ljava/net/NoRouteToHostException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many redirects: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x7d1

    const/4 v4, 0x1

    invoke-direct {v1, v2, v11, v3, v4}, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lio/bidmachine/media3/datasource/DataSpec;II)V

    throw v1
.end method

.method public final makeConnection(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "I[BJJZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 610
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 611
    iget v0, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->connectTimeoutMillis:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 612
    iget v0, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->readTimeoutMillis:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 614
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 615
    iget-object v1, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->defaultRequestProperties:Lio/bidmachine/media3/datasource/HttpDataSource$RequestProperties;

    if-eqz v1, :cond_1e

    .line 616
    invoke-virtual {v1}, Lio/bidmachine/media3/datasource/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 618
    :cond_1e
    iget-object v1, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->requestProperties:Lio/bidmachine/media3/datasource/HttpDataSource$RequestProperties;

    invoke-virtual {v1}, Lio/bidmachine/media3/datasource/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 619
    invoke-interface {v0, p10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 621
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p10

    invoke-interface {p10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p10

    :goto_32
    invoke-interface {p10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {p10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 622
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    .line 625
    :cond_4e
    invoke-static {p4, p5, p6, p7}, Lio/bidmachine/media3/datasource/HttpUtil;->buildRangeRequestHeader(JJ)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_59

    .line 627
    const-string p5, "Range"

    invoke-virtual {p1, p5, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_59
    iget-object p4, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->userAgent:Ljava/lang/String;

    if-eqz p4, :cond_62

    .line 630
    const-string p5, "User-Agent"

    invoke-virtual {p1, p5, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_62
    if-eqz p8, :cond_67

    .line 632
    const-string p4, "gzip"

    goto :goto_69

    :cond_67
    const-string p4, "identity"

    :goto_69
    const-string p5, "Accept-Encoding"

    invoke-virtual {p1, p5, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-virtual {p1, p9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eqz p3, :cond_75

    const/4 p4, 0x1

    goto :goto_76

    :cond_75
    const/4 p4, 0x0

    .line 634
    :goto_76
    invoke-virtual {p1, p4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 635
    invoke-static {p2}, Lio/bidmachine/media3/datasource/DataSpec;->getStringForHttpMethod(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_94

    .line 638
    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 639
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 640
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 641
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    .line 642
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    return-object p1

    .line 644
    :cond_94
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    return-object p1
.end method

.method public open(Lio/bidmachine/media3/datasource/DataSpec;)J
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 356
    iput-object p1, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    const-wide/16 v0, 0x0

    .line 357
    iput-wide v0, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->bytesRead:J

    .line 358
    iput-wide v0, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->bytesToRead:J

    .line 359
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/datasource/BaseDataSource;->transferInitializing(Lio/bidmachine/media3/datasource/DataSpec;)V

    const/4 v2, 0x1

    .line 364
    :try_start_c
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->makeConnection(Lio/bidmachine/media3/datasource/DataSpec;)Ljava/net/HttpURLConnection;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    .line 366
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    iput v4, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->responseCode:I

    .line 367
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1c} :catch_107

    .line 375
    iget v4, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->responseCode:I

    const-string v5, "Content-Range"

    const/16 v6, 0xc8

    const-wide/16 v8, -0x1

    if-lt v4, v6, :cond_2a

    const/16 v10, 0x12b

    if-le v4, v10, :cond_2d

    :cond_2a
    move-wide v10, v8

    goto/16 :goto_b5

    .line 406
    :cond_2d
    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    .line 407
    iget-object v7, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->contentTypePredicate:Lcom/google/common/base/Predicate;

    if-eqz v7, :cond_45

    invoke-interface {v7, v4}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    goto :goto_45

    .line 408
    :cond_3c
    invoke-virtual {p0}, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 409
    new-instance v0, Lio/bidmachine/media3/datasource/HttpDataSource$InvalidContentTypeException;

    invoke-direct {v0, v4, p1}, Lio/bidmachine/media3/datasource/HttpDataSource$InvalidContentTypeException;-><init>(Ljava/lang/String;Lio/bidmachine/media3/datasource/DataSpec;)V

    throw v0

    .line 415
    :cond_45
    :goto_45
    iget v4, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->responseCode:I

    if-ne v4, v6, :cond_50

    iget-wide v6, p1, Lio/bidmachine/media3/datasource/DataSpec;->position:J

    cmp-long v4, v6, v0

    if-eqz v4, :cond_50

    move-wide v0, v6

    .line 418
    :cond_50
    invoke-static {v3}, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->isCompressed(Ljava/net/HttpURLConnection;)Z

    move-result v4

    if-nez v4, :cond_76

    .line 420
    iget-wide v6, p1, Lio/bidmachine/media3/datasource/DataSpec;->length:J

    cmp-long v10, v6, v8

    if-eqz v10, :cond_5f

    .line 421
    iput-wide v6, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->bytesToRead:J

    goto :goto_7a

    .line 423
    :cond_5f
    const-string v6, "Content-Length"

    .line 425
    invoke-virtual {v3, v6}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 426
    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 424
    invoke-static {v6, v5}, Lio/bidmachine/media3/datasource/HttpUtil;->getContentLength(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v7, v5, v8

    if-eqz v7, :cond_73

    sub-long v8, v5, v0

    .line 428
    :cond_73
    iput-wide v8, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->bytesToRead:J

    goto :goto_7a

    .line 434
    :cond_76
    iget-wide v5, p1, Lio/bidmachine/media3/datasource/DataSpec;->length:J

    iput-wide v5, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->bytesToRead:J

    :goto_7a
    const/16 v5, 0x7d0

    .line 438
    :try_start_7c
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v4, :cond_90

    .line 440
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    iget-object v4, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_8d} :catch_8e

    goto :goto_90

    :catch_8e
    move-exception v0

    goto :goto_ac

    .line 451
    :cond_90
    :goto_90
    iput-boolean v2, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->transferStarted:Z

    .line 452
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/datasource/BaseDataSource;->transferStarted(Lio/bidmachine/media3/datasource/DataSpec;)V

    .line 455
    :try_start_95
    invoke-virtual {p0, v0, v1, p1}, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->skipFully(JLio/bidmachine/media3/datasource/DataSpec;)V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_9b

    .line 469
    iget-wide v0, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->bytesToRead:J

    return-wide v0

    :catch_9b
    move-exception v0

    .line 457
    invoke-virtual {p0}, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 459
    instance-of v1, v0, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;

    if-eqz v1, :cond_a6

    .line 460
    check-cast v0, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;

    throw v0

    .line 462
    :cond_a6
    new-instance v1, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;

    invoke-direct {v1, v0, p1, v5, v2}, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lio/bidmachine/media3/datasource/DataSpec;II)V

    throw v1

    .line 443
    :goto_ac
    invoke-virtual {p0}, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 444
    new-instance v1, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;

    invoke-direct {v1, v0, p1, v5, v2}, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lio/bidmachine/media3/datasource/DataSpec;II)V

    throw v1

    .line 376
    :goto_b5
    invoke-virtual {v3}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v9

    .line 377
    iget v4, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->responseCode:I

    const/16 v6, 0x1a0

    if-ne v4, v6, :cond_da

    .line 379
    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/bidmachine/media3/datasource/HttpUtil;->getDocumentSize(Ljava/lang/String;)J

    move-result-wide v4

    .line 380
    iget-wide v12, p1, Lio/bidmachine/media3/datasource/DataSpec;->position:J

    cmp-long v4, v12, v4

    if-nez v4, :cond_da

    .line 381
    iput-boolean v2, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->transferStarted:Z

    .line 382
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/datasource/BaseDataSource;->transferStarted(Lio/bidmachine/media3/datasource/DataSpec;)V

    .line 383
    iget-wide v2, p1, Lio/bidmachine/media3/datasource/DataSpec;->length:J

    cmp-long p1, v2, v10

    if-eqz p1, :cond_d9

    return-wide v2

    :cond_d9
    return-wide v0

    .line 387
    :cond_da
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_e5

    .line 391
    :try_start_e0
    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    goto :goto_e7

    :cond_e5
    sget-object v0, Lio/bidmachine/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e7} :catch_e9

    :goto_e7
    move-object v11, v0

    goto :goto_ec

    .line 393
    :catch_e9
    sget-object v0, Lio/bidmachine/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    goto :goto_e7

    .line 395
    :goto_ec
    invoke-virtual {p0}, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 398
    iget v0, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->responseCode:I

    if-ne v0, v6, :cond_fc

    .line 399
    new-instance v0, Lio/bidmachine/media3/datasource/DataSourceException;

    const/16 v1, 0x7d8

    invoke-direct {v0, v1}, Lio/bidmachine/media3/datasource/DataSourceException;-><init>(I)V

    :goto_fa
    move-object v8, v0

    goto :goto_fe

    :cond_fc
    const/4 v0, 0x0

    goto :goto_fa

    .line 401
    :goto_fe
    new-instance v5, Lio/bidmachine/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    iget v6, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->responseCode:I

    move-object v10, p1

    invoke-direct/range {v5 .. v11}, Lio/bidmachine/media3/datasource/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lio/bidmachine/media3/datasource/DataSpec;[B)V

    throw v5

    :catch_107
    move-exception v0

    move-object v10, p1

    move-object p1, v0

    .line 369
    invoke-virtual {p0}, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 370
    invoke-static {p1, v10, v2}, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;->createForIOException(Ljava/io/IOException;Lio/bidmachine/media3/datasource/DataSpec;I)Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;

    move-result-object p1

    throw p1
.end method

.method public openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 652
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method public read([BII)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 476
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->readInternal([BII)I

    move-result p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return p1

    :catch_5
    move-exception p1

    .line 478
    iget-object p2, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    .line 479
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/bidmachine/media3/datasource/DataSpec;

    const/4 p3, 0x2

    .line 478
    invoke-static {p1, p2, p3}, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;->createForIOException(Ljava/io/IOException;Lio/bidmachine/media3/datasource/DataSpec;I)Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;

    move-result-object p1

    throw p1
.end method

.method public final readInternal([BII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    .line 772
    :cond_4
    iget-wide v0, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->bytesToRead:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1d

    .line 773
    iget-wide v4, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->bytesRead:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-nez v2, :cond_17

    return v3

    :cond_17
    int-to-long v4, p3

    .line 777
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 780
    :cond_1d
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v3, :cond_2c

    return v3

    .line 785
    :cond_2c
    iget-wide p2, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->bytesRead:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->bytesRead:J

    .line 786
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/datasource/BaseDataSource;->bytesTransferred(I)V

    return p1
.end method

.method public final skipFully(JLio/bidmachine/media3/datasource/DataSpec;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    goto :goto_4b

    :cond_7
    const/16 v2, 0x1000

    .line 732
    new-array v3, v2, [B

    :goto_b
    cmp-long v4, p1, v0

    if-lez v4, :cond_4b

    int-to-long v4, v2

    .line 734
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 735
    iget-object v5, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-static {v5}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 736
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_3e

    const/4 v5, -0x1

    if-eq v4, v5, :cond_36

    int-to-long v5, v4

    sub-long/2addr p1, v5

    .line 750
    invoke-virtual {p0, v4}, Lio/bidmachine/media3/datasource/BaseDataSource;->bytesTransferred(I)V

    goto :goto_b

    .line 744
    :cond_36
    new-instance p1, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;

    const/16 p2, 0x7d8

    invoke-direct {p1, p3, p2, v6}, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Lio/bidmachine/media3/datasource/DataSpec;II)V

    throw p1

    .line 737
    :cond_3e
    new-instance p1, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;

    new-instance p2, Ljava/io/InterruptedIOException;

    invoke-direct {p2}, Ljava/io/InterruptedIOException;-><init>()V

    const/16 v0, 0x7d0

    invoke-direct {p1, p2, p3, v0, v6}, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lio/bidmachine/media3/datasource/DataSpec;II)V

    throw p1

    :cond_4b
    :goto_4b
    return-void
.end method

###### Class io.bidmachine.media3.datasource.DefaultHttpDataSource.AnonymousClass1 (io.bidmachine.media3.datasource.DefaultHttpDataSource$1)
.class public synthetic Lio/bidmachine/media3/datasource/DefaultHttpDataSource$1;
.super Ljava/lang/Object;
.source "DefaultHttpDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/datasource/DefaultHttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.datasource.DefaultHttpDataSource.Factory (io.bidmachine.media3.datasource.DefaultHttpDataSource$Factory)
.class public final Lio/bidmachine/media3/datasource/DefaultHttpDataSource$Factory;
.super Ljava/lang/Object;
.source "DefaultHttpDataSource.java"

# interfaces
.implements Lio/bidmachine/media3/datasource/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/datasource/DefaultHttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public allowCrossProtocolRedirects:Z

.field public connectTimeoutMs:I

.field public contentTypePredicate:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public crossProtocolRedirectsForceOriginal:Z

.field public final defaultRequestProperties:Lio/bidmachine/media3/datasource/HttpDataSource$RequestProperties;

.field public keepPostFor302Redirects:Z

.field public readTimeoutMs:I

.field public transferListener:Lio/bidmachine/media3/datasource/TransferListener;

.field public userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lio/bidmachine/media3/datasource/HttpDataSource$RequestProperties;

    invoke-direct {v0}, Lio/bidmachine/media3/datasource/HttpDataSource$RequestProperties;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource$Factory;->defaultRequestProperties:Lio/bidmachine/media3/datasource/HttpDataSource$RequestProperties;

    const/16 v0, 0x1f40

    .line 83
    iput v0, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource$Factory;->connectTimeoutMs:I

    .line 84
    iput v0, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource$Factory;->readTimeoutMs:I

    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Lio/bidmachine/media3/datasource/DataSource;
    .registers 2

    .line 67
    invoke-virtual {p0}, Lio/bidmachine/media3/datasource/DefaultHttpDataSource$Factory;->createDataSource()Lio/bidmachine/media3/datasource/DefaultHttpDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSource()Lio/bidmachine/media3/datasource/DefaultHttpDataSource;
    .registers 11

    .line 223
    new-instance v0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;

    iget-object v1, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource$Factory;->userAgent:Ljava/lang/String;

    iget v2, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource$Factory;->connectTimeoutMs:I

    iget v3, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource$Factory;->readTimeoutMs:I

    iget-boolean v4, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource$Factory;->allowCrossProtocolRedirects:Z

    iget-boolean v5, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource$Factory;->crossProtocolRedirectsForceOriginal:Z

    iget-object v6, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource$Factory;->defaultRequestProperties:Lio/bidmachine/media3/datasource/HttpDataSource$RequestProperties;

    iget-object v7, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource$Factory;->contentTypePredicate:Lcom/google/common/base/Predicate;

    iget-boolean v8, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource$Factory;->keepPostFor302Redirects:Z

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lio/bidmachine/media3/datasource/DefaultHttpDataSource;-><init>(Ljava/lang/String;IIZZLio/bidmachine/media3/datasource/HttpDataSource$RequestProperties;Lcom/google/common/base/Predicate;ZLio/bidmachine/media3/datasource/DefaultHttpDataSource$1;)V

    .line 233
    iget-object v1, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource$Factory;->transferListener:Lio/bidmachine/media3/datasource/TransferListener;

    if-eqz v1, :cond_1d

    .line 234
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/datasource/BaseDataSource;->addTransferListener(Lio/bidmachine/media3/datasource/TransferListener;)V

    :cond_1d
    return-object v0
.end method

.method public setUserAgent(Ljava/lang/String;)Lio/bidmachine/media3/datasource/DefaultHttpDataSource$Factory;
    .registers 2

    .line 108
    iput-object p1, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource$Factory;->userAgent:Ljava/lang/String;

    return-object p0
.end method

###### Class io.bidmachine.media3.datasource.DefaultHttpDataSource.NullFilteringHeadersMap (io.bidmachine.media3.datasource.DefaultHttpDataSource$NullFilteringHeadersMap)
.class public Lio/bidmachine/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;
.super Lcom/google/common/collect/ForwardingMap;
.source "DefaultHttpDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/datasource/DefaultHttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NullFilteringHeadersMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingMap<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final headers:Ljava/util/Map;
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


# direct methods
.method public static synthetic $r8$lambda$QRpdsJ0ULTcgnTsC6EfYi2ZhIW8(Ljava/lang/String;)Z
    .registers 1

    .line 0
    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$fJNkrTPql9cNHe5MRJGwklEZH6E(Ljava/util/Map$Entry;)Z
    .registers 1

    .line 837
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 810
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    .line 811
    iput-object p1, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;->headers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .registers 2

    if-eqz p1, :cond_a

    .line 821
    invoke-super {p0, p1}, Lcom/google/common/collect/ForwardingMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 2

    .line 852
    invoke-super {p0, p1}, Lcom/google/common/collect/ForwardingMap;->standardContainsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .line 806
    invoke-virtual {p0}, Lio/bidmachine/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public delegate()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 816
    iget-object v0, p0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 837
    invoke-super {p0}, Lcom/google/common/collect/ForwardingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lio/bidmachine/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/bidmachine/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->filter(Ljava/util/Set;Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    if-eqz p1, :cond_a

    .line 857
    invoke-super {p0, p1}, Lcom/google/common/collect/ForwardingMap;->standardEquals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 806
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 827
    :cond_4
    invoke-super {p0, p1}, Lcom/google/common/collect/ForwardingMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public hashCode()I
    .registers 2

    .line 862
    invoke-super {p0}, Lcom/google/common/collect/ForwardingMap;->standardHashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 3

    .line 847
    invoke-super {p0}, Lcom/google/common/collect/ForwardingMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_17

    invoke-super {p0}, Lcom/google/common/collect/ForwardingMap;->size()I

    move-result v0

    if-ne v0, v1, :cond_15

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/google/common/collect/ForwardingMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    return v0

    :cond_17
    :goto_17
    return v1
.end method

.method public keySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 832
    invoke-super {p0}, Lcom/google/common/collect/ForwardingMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lio/bidmachine/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lio/bidmachine/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->filter(Ljava/util/Set;Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 3

    .line 842
    invoke-super {p0}, Lcom/google/common/collect/ForwardingMap;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/google/common/collect/ForwardingMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

###### Class io.bidmachine.media3.datasource.DefaultHttpDataSource$NullFilteringHeadersMap$$ExternalSyntheticLambda0 (io.bidmachine.media3.datasource.DefaultHttpDataSource$NullFilteringHeadersMap$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lio/bidmachine/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;->$r8$lambda$fJNkrTPql9cNHe5MRJGwklEZH6E(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.datasource.DefaultHttpDataSource$NullFilteringHeadersMap$$ExternalSyntheticLambda1 (io.bidmachine.media3.datasource.DefaultHttpDataSource$NullFilteringHeadersMap$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lio/bidmachine/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;->$r8$lambda$QRpdsJ0ULTcgnTsC6EfYi2ZhIW8(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.datasource.HttpDataSource$InvalidContentTypeException (io.bidmachine.media3.datasource.HttpDataSource$InvalidContentTypeException)
.class public final Lio/bidmachine/media3/datasource/HttpDataSource$InvalidContentTypeException;
.super Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;
.source "HttpDataSource.java"


# instance fields
.field public final contentType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/bidmachine/media3/datasource/DataSpec;)V
    .registers 6

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid content type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7d3

    const/4 v2, 0x1

    invoke-direct {p0, v0, p2, v1, v2}, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Lio/bidmachine/media3/datasource/DataSpec;II)V

    .line 408
    iput-object p1, p0, Lio/bidmachine/media3/datasource/HttpDataSource$InvalidContentTypeException;->contentType:Ljava/lang/String;

    return-void
.end method
