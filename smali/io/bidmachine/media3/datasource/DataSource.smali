###### Class io.bidmachine.media3.datasource.DataSource (io.bidmachine.media3.datasource.DataSource)
.class public interface abstract Lio/bidmachine/media3/datasource/DataSource;
.super Ljava/lang/Object;
.source "DataSource.java"

# interfaces
.implements Lio/bidmachine/media3/common/DataReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/datasource/DataSource$Factory;
    }
.end annotation


# virtual methods
.method public abstract addTransferListener(Lio/bidmachine/media3/datasource/TransferListener;)V
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getResponseHeaders()Ljava/util/Map;
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

    .line 99
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public abstract open(Lio/bidmachine/media3/datasource/DataSpec;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class io.bidmachine.media3.datasource.DataSource.Factory (io.bidmachine.media3.datasource.DataSource$Factory)
.class public interface abstract Lio/bidmachine/media3/datasource/DataSource$Factory;
.super Ljava/lang/Object;
.source "DataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/datasource/DataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract createDataSource()Lio/bidmachine/media3/datasource/DataSource;
.end method
