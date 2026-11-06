###### Class io.bidmachine.util.network.FileResponseProcessor (io.bidmachine.util.network.FileResponseProcessor)
.class public final Lio/bidmachine/util/network/FileResponseProcessor;
.super Ljava/lang/Object;
.source "FileResponseProcessor.kt"

# interfaces
.implements Lio/bidmachine/util/network/ResponseProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/util/network/ResponseProcessor<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final applicationContext:Landroid/content/Context;

.field public final file:Ljava/io/File;

.field public final tempDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lio/bidmachine/util/network/FileResponseProcessor;->file:Ljava/io/File;

    .line 20
    iput-object p3, p0, Lio/bidmachine/util/network/FileResponseProcessor;->tempDir:Ljava/io/File;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "context.applicationContext"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/bidmachine/util/network/FileResponseProcessor;->applicationContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public process(Ljava/net/URLConnection;)Ljava/io/File;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "urlConnection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lio/bidmachine/util/network/FileResponseProcessor;->tempDir:Ljava/io/File;

    if-nez v0, :cond_f

    iget-object v0, p0, Lio/bidmachine/util/network/FileResponseProcessor;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    :cond_f
    if-eqz v0, :cond_c0

    .line 34
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 35
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 39
    invoke-static {v0, v1, v2, v1}, Lio/bidmachine/util/file/FileUtilsKt;->createTempFile$default(Ljava/io/File;Ljava/lang/String;ILjava/lang/Object;)Ljava/io/File;

    move-result-object v0

    .line 40
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v3

    int-to-long v3, v3

    .line 42
    :try_start_25
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    const-string v5, "urlConnection.getInputStream()"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lio/bidmachine/util/UtilsKt;->readIntoFile(Ljava/io/InputStream;Ljava/io/File;)J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-nez p1, :cond_95

    .line 47
    iget-object p1, p0, Lio/bidmachine/util/network/FileResponseProcessor;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_44

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    goto :goto_44

    :catchall_42
    move-exception p1

    goto :goto_9d

    .line 48
    :cond_44
    :goto_44
    iget-object p1, p0, Lio/bidmachine/util/network/FileResponseProcessor;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_6e

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-ne p1, v2, :cond_6e

    .line 51
    iget-object p1, p0, Lio/bidmachine/util/network/FileResponseProcessor;->file:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_6b

    .line 53
    iget-object p1, p0, Lio/bidmachine/util/network/FileResponseProcessor;->file:Ljava/io/File;

    invoke-static {p1}, Lio/bidmachine/util/file/FileUtilsKt;->hasContent(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_63

    goto :goto_6b

    .line 54
    :cond_63
    const-string p1, "Can\'t rename temp file"

    .line 53
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6b
    .catchall {:try_start_25 .. :try_end_6b} :catchall_42

    .line 61
    :cond_6b
    :goto_6b
    iget-object p1, p0, Lio/bidmachine/util/network/FileResponseProcessor;->file:Ljava/io/File;

    return-object p1

    .line 49
    :cond_6e
    :try_start_6e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t create target file dir "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bidmachine/util/network/FileResponseProcessor;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_84

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    :cond_84
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 48
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_95
    const-string p1, "The downloaded file size does not match the stated size"

    .line 43
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_9d
    .catchall {:try_start_6e .. :try_end_9d} :catchall_42

    .line 58
    :goto_9d
    invoke-static {v0}, Lio/bidmachine/util/file/FileUtilsKt;->deleteFile(Ljava/io/File;)Z

    .line 59
    throw p1

    .line 36
    :cond_a1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t create temp dir "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_c0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t create temp file, temp dir is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic process(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 2

    .line 17
    invoke-virtual {p0, p1}, Lio/bidmachine/util/network/FileResponseProcessor;->process(Ljava/net/URLConnection;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
