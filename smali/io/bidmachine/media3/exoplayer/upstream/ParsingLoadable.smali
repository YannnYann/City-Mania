###### Class io.bidmachine.media3.exoplayer.upstream.ParsingLoadable (io.bidmachine.media3.exoplayer.upstream.ParsingLoadable)
.class public final Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;
.super Ljava/lang/Object;
.source "ParsingLoadable.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;"
    }
.end annotation


# instance fields
.field public final dataSource:Lio/bidmachine/media3/datasource/StatsDataSource;

.field public final dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

.field public final loadTaskId:J

.field public final parser:Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public volatile result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final type:I


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/datasource/DataSource;Landroid/net/Uri;ILio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/datasource/DataSource;",
            "Landroid/net/Uri;",
            "I",
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "+TT;>;)V"
        }
    .end annotation

    .line 118
    new-instance v0, Lio/bidmachine/media3/datasource/DataSpec$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/datasource/DataSpec$Builder;-><init>()V

    .line 120
    invoke-virtual {v0, p2}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setUri(Landroid/net/Uri;)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setFlags(I)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->build()Lio/bidmachine/media3/datasource/DataSpec;

    move-result-object p2

    .line 118
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;-><init>(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;ILio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;ILio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/datasource/DataSource;",
            "Lio/bidmachine/media3/datasource/DataSpec;",
            "I",
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "+TT;>;)V"
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Lio/bidmachine/media3/datasource/StatsDataSource;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/datasource/StatsDataSource;-><init>(Lio/bidmachine/media3/datasource/DataSource;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->dataSource:Lio/bidmachine/media3/datasource/StatsDataSource;

    .line 134
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    .line 135
    iput p3, p0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->type:I

    .line 136
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->parser:Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;

    .line 137
    invoke-static {}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;->getNewId()J

    move-result-wide p1

    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    return-void
.end method


# virtual methods
.method public bytesLoaded()J
    .registers 3

    .line 152
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->dataSource:Lio/bidmachine/media3/datasource/StatsDataSource;

    invoke-virtual {v0}, Lio/bidmachine/media3/datasource/StatsDataSource;->getBytesRead()J

    move-result-wide v0

    return-wide v0
.end method

.method public final cancelLoad()V
    .registers 1

    .line 0
    return-void
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

    .line 168
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->dataSource:Lio/bidmachine/media3/datasource/StatsDataSource;

    invoke-virtual {v0}, Lio/bidmachine/media3/datasource/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 160
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->dataSource:Lio/bidmachine/media3/datasource/StatsDataSource;

    invoke-virtual {v0}, Lio/bidmachine/media3/datasource/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final load()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->dataSource:Lio/bidmachine/media3/datasource/StatsDataSource;

    invoke-virtual {v0}, Lio/bidmachine/media3/datasource/StatsDataSource;->resetBytesRead()V

    .line 180
    new-instance v0, Lio/bidmachine/media3/datasource/DataSourceInputStream;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->dataSource:Lio/bidmachine/media3/datasource/StatsDataSource;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    invoke-direct {v0, v1, v2}, Lio/bidmachine/media3/datasource/DataSourceInputStream;-><init>(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;)V

    .line 182
    :try_start_e
    invoke-virtual {v0}, Lio/bidmachine/media3/datasource/DataSourceInputStream;->open()V

    .line 183
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->dataSource:Lio/bidmachine/media3/datasource/StatsDataSource;

    invoke-virtual {v1}, Lio/bidmachine/media3/datasource/StatsDataSource;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 184
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->parser:Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;

    invoke-interface {v2, v1, v0}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->result:Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_29

    .line 186
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_29
    move-exception v1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 187
    throw v1
.end method

###### Class io.bidmachine.media3.exoplayer.upstream.ParsingLoadable.Parser (io.bidmachine.media3.exoplayer.upstream.ParsingLoadable$Parser)
.class public interface abstract Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;
.super Ljava/lang/Object;
.source "ParsingLoadable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Parser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
