###### Class info.flowersoft.theotown.cityfile.Backup (info.flowersoft.theotown.cityfile.Backup)
.class public Linfo/flowersoft/theotown/cityfile/Backup;
.super Ljava/lang/Object;
.source "Backup.java"


# static fields
.field public static final DIR:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 27
    new-instance v0, Ljava/io/File;

    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->APP_DIR:Ljava/io/File;

    const-string v2, "backups"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/cityfile/Backup;->DIR:Ljava/io/File;

    return-void
.end method

.method public static backupFolder(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;Z)V
    .registers 10

    .line 54
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c5

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_c5

    const/4 v1, 0x0

    .line 58
    :goto_18
    array-length v2, p2

    if-ge v1, v2, :cond_93

    .line 59
    aget-object v2, p2, v1

    .line 60
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_90

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_90

    .line 62
    :cond_36
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 63
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_90

    .line 64
    :cond_40
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_90

    if-eqz p3, :cond_60

    .line 65
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".city"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_60

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 67
    :cond_60
    :try_start_60
    new-instance v3, Ljava/util/zip/ZipEntry;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 68
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 69
    invoke-virtual {p0, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 70
    invoke-static {v4, p0}, Lio/blueflower/stapel2d/util/StreamCopyUtil;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 71
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_8b} :catch_8c

    goto :goto_90

    :catch_8c
    move-exception v2

    .line 73
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_90
    :goto_90
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 78
    :cond_93
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_c5

    .line 79
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0, p3}, Linfo/flowersoft/theotown/cityfile/Backup;->backupFolder(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;Z)V

    goto :goto_9d

    :cond_c5
    return-void
.end method

.method public static loadBackup(Ljava/io/File;)Z
    .registers 4

    const/4 v0, 0x0

    .line 100
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_20
    .catchall {:try_start_1 .. :try_end_b} :catchall_1e

    .line 101
    :try_start_b
    invoke-static {v1}, Linfo/flowersoft/theotown/cityfile/Backup;->loadBackup(Ljava/io/InputStream;)Z

    move-result p0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_f} :catch_1b
    .catchall {:try_start_b .. :try_end_f} :catchall_18

    .line 107
    :try_start_f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_13

    return p0

    :catch_13
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return p0

    :catchall_18
    move-exception p0

    move-object v0, v1

    goto :goto_30

    :catch_1b
    move-exception p0

    move-object v0, v1

    goto :goto_21

    :catchall_1e
    move-exception p0

    goto :goto_30

    :catch_20
    move-exception p0

    .line 103
    :goto_21
    :try_start_21
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_1e

    if-eqz v0, :cond_2e

    .line 107
    :try_start_26
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception p0

    .line 109
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2e
    :goto_2e
    const/4 p0, 0x0

    return p0

    :goto_30
    if-eqz v0, :cond_3a

    .line 107
    :try_start_32
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 111
    :cond_3a
    :goto_3a
    throw p0
.end method

.method public static loadBackup(Ljava/io/InputStream;)Z
    .registers 9

    .line 115
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->APP_DIR:Ljava/io/File;

    const/4 v1, 0x0

    .line 118
    :try_start_3
    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    .line 121
    :cond_c
    :goto_c
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_74

    .line 122
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_c

    .line 123
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 125
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3f

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    goto :goto_3f

    :catch_3d
    move-exception p0

    goto :goto_7d

    .line 126
    :cond_3f
    :goto_3f
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 127
    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "Backup"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " already exists"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 129
    :cond_63
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 130
    invoke-static {v2, v3}, Lio/blueflower/stapel2d/util/StreamCopyUtil;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 131
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_c

    .line 137
    :cond_74
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v1, v0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->addLocalPlugins(ZZZ)V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_7c} :catch_3d

    return v0

    .line 141
    :goto_7d
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public static loadBackup(Ljava/lang/String;)Z
    .registers 3

    .line 92
    new-instance v0, Ljava/io/File;

    sget-object v1, Linfo/flowersoft/theotown/cityfile/Backup;->DIR:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    invoke-static {v0}, Linfo/flowersoft/theotown/cityfile/Backup;->loadBackup(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static saveBackup(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 30
    new-instance v0, Ljava/io/File;

    sget-object v1, Linfo/flowersoft/theotown/cityfile/Backup;->DIR:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    invoke-static {v0}, Linfo/flowersoft/theotown/cityfile/Backup;->saveBackup(Ljava/io/File;)V

    return-object v0
.end method

.method public static saveBackup(Ljava/io/File;)V
    .registers 6

    .line 36
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_11

    .line 37
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 41
    :cond_11
    :try_start_11
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 42
    const-string p0, "plugins/"

    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getPluginDir()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Linfo/flowersoft/theotown/cityfile/Backup;->backupFolder(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;Z)V

    .line 43
    const-string p0, "managed plugins/"

    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getManagedPluginsDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, p0, v1, v2}, Linfo/flowersoft/theotown/cityfile/Backup;->backupFolder(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;Z)V

    .line 44
    const-string p0, "maps/"

    new-instance v1, Ljava/io/File;

    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->APP_DIR:Ljava/io/File;

    const-string v3, "maps"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v0, p0, v1, v2}, Linfo/flowersoft/theotown/cityfile/Backup;->backupFolder(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;Z)V

    .line 45
    const-string p0, "scenario/"

    new-instance v1, Ljava/io/File;

    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->APP_DIR:Ljava/io/File;

    const-string v4, "scenarios"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p0, v1, v2}, Linfo/flowersoft/theotown/cityfile/Backup;->backupFolder(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;Z)V

    .line 46
    const-string p0, "regions/"

    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getRegionsDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, p0, v1, v2}, Linfo/flowersoft/theotown/cityfile/Backup;->backupFolder(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;Z)V

    .line 47
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_5c} :catch_5d

    return-void

    :catch_5d
    move-exception p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
