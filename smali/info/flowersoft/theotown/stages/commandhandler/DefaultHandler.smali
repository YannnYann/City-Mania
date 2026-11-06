###### Class info.flowersoft.theotown.stages.commandhandler.DefaultHandler (info.flowersoft.theotown.stages.commandhandler.DefaultHandler)
.class public Linfo/flowersoft/theotown/stages/commandhandler/DefaultHandler;
.super Ljava/lang/Object;
.source "DefaultHandler.java"

# interfaces
.implements Linfo/flowersoft/theotown/stages/commandhandler/CommandHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canHandle(Ljava/lang/String;)Z
    .registers 3

    .line 22
    invoke-static {}, Linfo/flowersoft/theotown/crossplatform/TheoTown;->isPickleMode()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p1}, Linfo/flowersoft/theotown/util/Hashing;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "8bcaa19b51ed9c413661c0543bde4c39"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public handle(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            "Ljava/lang/String;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 27
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getTheoTownDir()Ljava/io/File;

    move-result-object p2

    .line 29
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/io/File;

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_40

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_2f

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_40

    .line 32
    :cond_2f
    new-instance p1, Linfo/flowersoft/theotown/resources/ContentCollector;

    invoke-direct {p1}, Linfo/flowersoft/theotown/resources/ContentCollector;-><init>()V

    const/4 p2, 0x0

    .line 33
    invoke-static {p3, p2}, Linfo/flowersoft/theotown/util/vfs/RealFile;->createFile(Ljava/io/File;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)Linfo/flowersoft/theotown/util/vfs/RealFile;

    move-result-object p3

    invoke-static {v0, p2}, Linfo/flowersoft/theotown/util/vfs/RealFile;->createDirectory(Ljava/io/File;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)Linfo/flowersoft/theotown/util/vfs/RealFile;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Linfo/flowersoft/theotown/resources/ContentCollector;->defaultFileHandler(Linfo/flowersoft/theotown/util/vfs/AbstractFile;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    :cond_40
    return-void
.end method
