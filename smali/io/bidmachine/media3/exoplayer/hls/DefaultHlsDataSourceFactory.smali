###### Class io.bidmachine.media3.exoplayer.hls.DefaultHlsDataSourceFactory (io.bidmachine.media3.exoplayer.hls.DefaultHlsDataSourceFactory)
.class public final Lio/bidmachine/media3/exoplayer/hls/DefaultHlsDataSourceFactory;
.super Ljava/lang/Object;
.source "DefaultHlsDataSourceFactory.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;


# instance fields
.field public final dataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/datasource/DataSource$Factory;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsDataSourceFactory;->dataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

    return-void
.end method


# virtual methods
.method public createDataSource(I)Lio/bidmachine/media3/datasource/DataSource;
    .registers 2

    .line 37
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsDataSourceFactory;->dataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

    invoke-interface {p1}, Lio/bidmachine/media3/datasource/DataSource$Factory;->createDataSource()Lio/bidmachine/media3/datasource/DataSource;

    move-result-object p1

    return-object p1
.end method
