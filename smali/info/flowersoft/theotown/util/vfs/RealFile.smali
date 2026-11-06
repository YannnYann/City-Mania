###### Class info.flowersoft.theotown.util.vfs.RealFile (info.flowersoft.theotown.util.vfs.RealFile)
.class public Linfo/flowersoft/theotown/util/vfs/RealFile;
.super Linfo/flowersoft/theotown/util/vfs/AbstractFile;
.source "RealFile.java"


# static fields
.field public static final excludeFileNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final file:Ljava/io/File;
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Ljava/util/HashSet;

    const-string v1, ".git"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Linfo/flowersoft/theotown/util/vfs/RealFile;->excludeFileNames:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V
    .registers 5
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation

    .line 83
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;-><init>(Ljava/lang/String;ZLinfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    .line 84
    iput-object p2, p0, Linfo/flowersoft/theotown/util/vfs/RealFile;->file:Ljava/io/File;

    return-void
.end method

.method public static createDirectory(Ljava/io/File;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)Linfo/flowersoft/theotown/util/vfs/RealFile;
    .registers 4
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation

    .line 76
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_15

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Directory is a file"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_15
    :goto_15
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 78
    :cond_1e
    new-instance v0, Linfo/flowersoft/theotown/util/vfs/RealFile;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Linfo/flowersoft/theotown/util/vfs/RealFile;-><init>(Ljava/lang/String;Ljava/io/File;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    return-object v0
.end method

.method public static createFile(Ljava/io/File;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)Linfo/flowersoft/theotown/util/vfs/RealFile;
    .registers 4
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation

    .line 70
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 71
    new-instance v0, Linfo/flowersoft/theotown/util/vfs/RealFile;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Linfo/flowersoft/theotown/util/vfs/RealFile;-><init>(Ljava/lang/String;Ljava/io/File;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    return-object v0

    .line 70
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File does not exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parse(Ljava/io/File;Ljava/lang/String;Z)Linfo/flowersoft/theotown/util/vfs/RealFile;
    .registers 9
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 34
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 36
    :cond_d
    new-instance v1, Linfo/flowersoft/theotown/util/vfs/RealFile;

    invoke-direct {v1, p1, p0, v0}, Linfo/flowersoft/theotown/util/vfs/RealFile;-><init>(Ljava/lang/String;Ljava/io/File;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    .line 37
    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 38
    invoke-interface {p0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_1a
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5c

    .line 40
    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/util/vfs/RealFile;

    .line 41
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/vfs/RealFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 42
    iget-object v0, p1, Linfo/flowersoft/theotown/util/vfs/RealFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/4 v2, 0x0

    .line 44
    :goto_35
    array-length v3, v0

    if-ge v2, v3, :cond_1a

    .line 45
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 47
    sget-object v4, Linfo/flowersoft/theotown/util/vfs/RealFile;->excludeFileNames:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    goto :goto_59

    :cond_47
    if-eqz p2, :cond_4f

    .line 48
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 50
    :cond_4f
    new-instance v4, Linfo/flowersoft/theotown/util/vfs/RealFile;

    aget-object v5, v0, v2

    invoke-direct {v4, v3, v5, p1}, Linfo/flowersoft/theotown/util/vfs/RealFile;-><init>(Ljava/lang/String;Ljava/io/File;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    invoke-interface {p0, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_5c
    return-object v1
.end method


# virtual methods
.method public createDirectoryChild(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;
    .registers 4

    .line 139
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Linfo/flowersoft/theotown/util/vfs/RealFile;->file:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 141
    new-instance v1, Linfo/flowersoft/theotown/util/vfs/RealFile;

    invoke-direct {v1, p1, v0, p0}, Linfo/flowersoft/theotown/util/vfs/RealFile;-><init>(Ljava/lang/String;Ljava/io/File;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 146
    instance-of v0, p1, Linfo/flowersoft/theotown/util/vfs/RealFile;

    if-eqz v0, :cond_f

    .line 147
    iget-object v0, p0, Linfo/flowersoft/theotown/util/vfs/RealFile;->file:Ljava/io/File;

    check-cast p1, Linfo/flowersoft/theotown/util/vfs/RealFile;

    iget-object p1, p1, Linfo/flowersoft/theotown/util/vfs/RealFile;->file:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 149
    :cond_f
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getRealFile()Ljava/io/File;
    .registers 2
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation

    .line 65
    iget-object v0, p0, Linfo/flowersoft/theotown/util/vfs/RealFile;->file:Ljava/io/File;

    return-object v0
.end method

.method public isDirectory()Z
    .registers 2

    .line 60
    iget-object v0, p0, Linfo/flowersoft/theotown/util/vfs/RealFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public length()I
    .registers 5

    .line 89
    iget-object v0, p0, Linfo/flowersoft/theotown/util/vfs/RealFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public newDirectory(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;
    .registers 4

    .line 109
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getFile(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 110
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    :cond_d
    if-eqz v0, :cond_1e

    .line 112
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->isFile()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_1e

    .line 113
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot replace file with dir"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_1e
    :goto_1e
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Linfo/flowersoft/theotown/util/vfs/RealFile;->file:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p0}, Linfo/flowersoft/theotown/util/vfs/RealFile;->createDirectory(Ljava/io/File;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)Linfo/flowersoft/theotown/util/vfs/RealFile;

    move-result-object p1

    return-object p1
.end method

.method public newFile(Ljava/lang/String;ILinfo/flowersoft/theotown/util/vfs/AbstractFile$DataSource;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-interface {p3}, Linfo/flowersoft/theotown/util/vfs/AbstractFile$DataSource;->get()Ljava/io/InputStream;

    move-result-object p2

    .line 133
    :try_start_4
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/util/vfs/RealFile;->newFile(Ljava/lang/String;Ljava/io/InputStream;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_e

    if-eqz p2, :cond_d

    .line 134
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    :cond_d
    return-object p1

    :catchall_e
    move-exception p1

    if-eqz p2, :cond_19

    .line 132
    :try_start_11
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_19

    :catchall_15
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_19
    :goto_19
    throw p1
.end method

.method public newFile(Ljava/lang/String;Ljava/io/InputStream;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Linfo/flowersoft/theotown/util/vfs/RealFile;->file:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 122
    :cond_10
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 123
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 124
    :try_start_21
    invoke-static {p2, v1}, Lio/blueflower/stapel2d/util/StreamCopyUtil;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_2d

    .line 125
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 126
    new-instance p2, Linfo/flowersoft/theotown/util/vfs/RealFile;

    invoke-direct {p2, p1, v0, p0}, Linfo/flowersoft/theotown/util/vfs/RealFile;-><init>(Ljava/lang/String;Ljava/io/File;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    return-object p2

    :catchall_2d
    move-exception p1

    .line 123
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_36

    :catchall_32
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_36
    throw p1
.end method

.method public read()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Linfo/flowersoft/theotown/util/vfs/RealFile;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public readBytes()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Linfo/flowersoft/theotown/util/vfs/RealFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 100
    :cond_a
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Linfo/flowersoft/theotown/util/vfs/RealFile;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 101
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/vfs/RealFile;->read()Ljava/io/InputStream;

    move-result-object v1

    .line 102
    :try_start_1a
    invoke-static {v1, v0}, Lio/blueflower/stapel2d/util/StreamCopyUtil;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_27

    if-eqz v1, :cond_22

    .line 103
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 104
    :cond_22
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catchall_27
    move-exception v0

    if-eqz v1, :cond_32

    .line 101
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_32
    :goto_32
    throw v0
.end method
