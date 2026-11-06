###### Class info.flowersoft.theotown.util.vfs.VirtualFile (info.flowersoft.theotown.util.vfs.VirtualFile)
.class public Linfo/flowersoft/theotown/util/vfs/VirtualFile;
.super Linfo/flowersoft/theotown/util/vfs/AbstractFile;
.source "VirtualFile.java"


# static fields
.field public static loadedSize:J

.field public static volatileSize:J


# instance fields
.field public data:[B

.field public dataLength:I

.field public dataSource:Linfo/flowersoft/theotown/util/vfs/AbstractFile$DataSource;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLinfo/flowersoft/theotown/util/vfs/AbstractFile;)V
    .registers 5

    if-nez p3, :cond_7

    .line 50
    invoke-static {p1}, Linfo/flowersoft/theotown/util/vfs/VirtualFile;->stripPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, p1

    :goto_8
    invoke-static {p1, p3}, Linfo/flowersoft/theotown/util/vfs/VirtualFile;->ensureParentsExists(Ljava/lang/String;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object p1

    invoke-direct {p0, v0, p2, p1}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;-><init>(Ljava/lang/String;ZLinfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    return-void
.end method

.method public static createDirectory(Ljava/lang/String;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)Linfo/flowersoft/theotown/util/vfs/VirtualFile;
    .registers 4

    .line 46
    new-instance v0, Linfo/flowersoft/theotown/util/vfs/VirtualFile;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Linfo/flowersoft/theotown/util/vfs/VirtualFile;-><init>(Ljava/lang/String;ZLinfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    return-object v0
.end method

.method public static createFile(Ljava/lang/String;ILinfo/flowersoft/theotown/util/vfs/AbstractFile$DataSource;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)Linfo/flowersoft/theotown/util/vfs/VirtualFile;
    .registers 6

    .line 39
    new-instance v0, Linfo/flowersoft/theotown/util/vfs/VirtualFile;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p3}, Linfo/flowersoft/theotown/util/vfs/VirtualFile;-><init>(Ljava/lang/String;ZLinfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    .line 40
    iput-object p2, v0, Linfo/flowersoft/theotown/util/vfs/VirtualFile;->dataSource:Linfo/flowersoft/theotown/util/vfs/AbstractFile$DataSource;

    .line 41
    iput p1, v0, Linfo/flowersoft/theotown/util/vfs/VirtualFile;->dataLength:I

    return-object v0
.end method

.method public static createFile(Ljava/lang/String;[BLinfo/flowersoft/theotown/util/vfs/AbstractFile;)Linfo/flowersoft/theotown/util/vfs/VirtualFile;
    .registers 5

    .line 32
    new-instance v0, Linfo/flowersoft/theotown/util/vfs/VirtualFile;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2}, Linfo/flowersoft/theotown/util/vfs/VirtualFile;-><init>(Ljava/lang/String;ZLinfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    .line 33
    iput-object p1, v0, Linfo/flowersoft/theotown/util/vfs/VirtualFile;->data:[B

    .line 34
    array-length p0, p1

    iput p0, v0, Linfo/flowersoft/theotown/util/vfs/VirtualFile;->dataLength:I

    return-object v0
.end method

.method public static ensureParentsExists(Ljava/lang/String;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;
    .registers 4

    .line 62
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    if-nez p1, :cond_1d

    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 64
    :goto_f
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1d

    .line 65
    aget-object v1, p0, v0

    invoke-static {v1, p1}, Linfo/flowersoft/theotown/util/vfs/VirtualFile;->createDirectory(Ljava/lang/String;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)Linfo/flowersoft/theotown/util/vfs/VirtualFile;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1d
    return-object p1
.end method

.method public static stripPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 54
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_12
    return-object p0
.end method


# virtual methods
.method public createDirectoryChild(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;
    .registers 2

    .line 134
    invoke-static {p1, p0}, Linfo/flowersoft/theotown/util/vfs/VirtualFile;->createDirectory(Ljava/lang/String;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)Linfo/flowersoft/theotown/util/vfs/VirtualFile;

    move-result-object p1

    return-object p1
.end method

.method public length()I
    .registers 2

    .line 74
    iget v0, p0, Linfo/flowersoft/theotown/util/vfs/VirtualFile;->dataLength:I

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
    invoke-static {p1, p0}, Linfo/flowersoft/theotown/util/vfs/VirtualFile;->createDirectory(Ljava/lang/String;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)Linfo/flowersoft/theotown/util/vfs/VirtualFile;

    move-result-object p1

    return-object p1
.end method

.method public newFile(Ljava/lang/String;ILinfo/flowersoft/theotown/util/vfs/AbstractFile$DataSource;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;
    .registers 8

    .line 128
    sget-wide v0, Linfo/flowersoft/theotown/util/vfs/VirtualFile;->volatileSize:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    sput-wide v0, Linfo/flowersoft/theotown/util/vfs/VirtualFile;->volatileSize:J

    .line 129
    invoke-static {p1, p2, p3, p0}, Linfo/flowersoft/theotown/util/vfs/VirtualFile;->createFile(Ljava/lang/String;ILinfo/flowersoft/theotown/util/vfs/AbstractFile$DataSource;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)Linfo/flowersoft/theotown/util/vfs/VirtualFile;

    move-result-object p1

    return-object p1
.end method

.method public newFile(Ljava/lang/String;Ljava/io/InputStream;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 121
    invoke-static {p2, v0}, Lio/blueflower/stapel2d/util/StreamCopyUtil;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 122
    sget-wide v1, Linfo/flowersoft/theotown/util/vfs/VirtualFile;->loadedSize:J

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p2

    int-to-long v3, p2

    add-long/2addr v1, v3

    sput-wide v1, Linfo/flowersoft/theotown/util/vfs/VirtualFile;->loadedSize:J

    .line 123
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-static {p1, p2, p0}, Linfo/flowersoft/theotown/util/vfs/VirtualFile;->createFile(Ljava/lang/String;[BLinfo/flowersoft/theotown/util/vfs/AbstractFile;)Linfo/flowersoft/theotown/util/vfs/VirtualFile;

    move-result-object p1

    return-object p1
.end method

.method public read()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_19

    .line 83
    iget-object v0, p0, Linfo/flowersoft/theotown/util/vfs/VirtualFile;->data:[B

    if-nez v0, :cond_11

    .line 84
    iget-object v0, p0, Linfo/flowersoft/theotown/util/vfs/VirtualFile;->dataSource:Linfo/flowersoft/theotown/util/vfs/AbstractFile$DataSource;

    invoke-interface {v0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile$DataSource;->get()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 86
    :cond_11
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Linfo/flowersoft/theotown/util/vfs/VirtualFile;->data:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    .line 80
    :cond_19
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "VF is a directory"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readBytes()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 96
    iget-object v0, p0, Linfo/flowersoft/theotown/util/vfs/VirtualFile;->data:[B

    if-nez v0, :cond_2e

    .line 97
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 98
    iget-object v1, p0, Linfo/flowersoft/theotown/util/vfs/VirtualFile;->dataSource:Linfo/flowersoft/theotown/util/vfs/AbstractFile$DataSource;

    invoke-interface {v1}, Linfo/flowersoft/theotown/util/vfs/AbstractFile$DataSource;->get()Ljava/io/InputStream;

    move-result-object v1

    .line 99
    :try_start_15
    invoke-static {v1, v0}, Lio/blueflower/stapel2d/util/StreamCopyUtil;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_22

    if-eqz v1, :cond_1d

    .line 100
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 101
    :cond_1d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catchall_22
    move-exception v0

    if-eqz v1, :cond_2d

    .line 98
    :try_start_25
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_2d

    :catchall_29
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2d
    :goto_2d
    throw v0

    :cond_2e
    return-object v0

    .line 93
    :cond_2f
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "VF is a directory"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
