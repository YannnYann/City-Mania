###### Class info.flowersoft.theotown.resources.HeightMapManager (info.flowersoft.theotown.resources.HeightMapManager)
.class public Linfo/flowersoft/theotown/resources/HeightMapManager;
.super Ljava/lang/Object;
.source "HeightMapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;
    }
.end annotation


# instance fields
.field public final heightmapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public final heightmapMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$sqwSafXB7FMiBRhGWkqWR1mUP0g(Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;)I
    .registers 2

    .line 93
    iget-object p0, p0, Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;->name:Ljava/lang/String;

    iget-object p1, p1, Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 8

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/HeightMapManager;->heightmapMapping:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/HeightMapManager;->heightmapList:Ljava/util/List;

    .line 53
    const-string v0, "sand"

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/resources/HeightMapManager;->addNoSource(Ljava/lang/String;)V

    .line 54
    const-string v0, "grass"

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/resources/HeightMapManager;->addNoSource(Ljava/lang/String;)V

    .line 55
    const-string v0, "snow"

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/resources/HeightMapManager;->addNoSource(Ljava/lang/String;)V

    .line 56
    const-string v0, "sandonly"

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/resources/HeightMapManager;->addNoSource(Ljava/lang/String;)V

    .line 57
    const-string v0, "grassonly"

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/resources/HeightMapManager;->addNoSource(Ljava/lang/String;)V

    .line 58
    const-string v0, "snowonly"

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/resources/HeightMapManager;->addNoSource(Ljava/lang/String;)V

    .line 59
    const-string v0, "wateronly"

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/resources/HeightMapManager;->addNoSource(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/HeightMapManager;->getZipStream()Ljava/util/zip/ZipInputStream;

    move-result-object v0

    :cond_38
    :goto_38
    const/4 v1, 0x1

    .line 65
    :try_start_39
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_5b

    .line 66
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_38

    .line 67
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/resources/HeightMapManager;->transformFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    iget-object v3, p0, Linfo/flowersoft/theotown/resources/HeightMapManager;->heightmapMapping:Ljava/util/Map;

    new-instance v4, Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v1}, Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;-><init>(Ljava/lang/String;Linfo/flowersoft/theotown/draft/HeightMapDraft;Z)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    :catch_59
    move-exception v0

    goto :goto_5f

    .line 71
    :cond_5b
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_5e} :catch_59

    goto :goto_62

    .line 73
    :goto_5f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    :goto_62
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/HeightMapManager;->heightmapMapping:Ljava/util/Map;

    const-string v2, "justanyone"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;

    iput-boolean v1, v0, Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;->hidden:Z

    .line 78
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/HeightMapManager;->heightmapMapping:Ljava/util/Map;

    const-string v2, "remainsstay"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;

    iput-boolean v1, v0, Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;->hidden:Z

    .line 79
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/HeightMapManager;->heightmapMapping:Ljava/util/Map;

    const-string v2, "allearth"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;

    iput-boolean v1, v0, Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;->hidden:Z

    .line 81
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;)V

    const/4 p1, 0x0

    move v1, p1

    .line 82
    :goto_8f
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->HEIGHTMAPS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_b4

    .line 83
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->HEIGHTMAPS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/HeightMapDraft;

    .line 84
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v3

    .line 85
    new-instance v4, Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;

    invoke-direct {v4, v3, v2, p1}, Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;-><init>(Ljava/lang/String;Linfo/flowersoft/theotown/draft/HeightMapDraft;Z)V

    .line 86
    iget-boolean v2, v2, Linfo/flowersoft/theotown/draft/Draft;->hidden:Z

    iput-boolean v2, v4, Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;->hidden:Z

    .line 87
    iget-object v2, p0, Linfo/flowersoft/theotown/resources/HeightMapManager;->heightmapMapping:Ljava/util/Map;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8f

    .line 90
    :cond_b4
    iget-object p1, p0, Linfo/flowersoft/theotown/resources/HeightMapManager;->heightmapList:Ljava/util/List;

    iget-object v0, p0, Linfo/flowersoft/theotown/resources/HeightMapManager;->heightmapMapping:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 91
    iget-object p1, p0, Linfo/flowersoft/theotown/resources/HeightMapManager;->heightmapList:Ljava/util/List;

    new-instance v0, Linfo/flowersoft/theotown/resources/HeightMapManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Linfo/flowersoft/theotown/resources/HeightMapManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public final addNoSource(Ljava/lang/String;)V
    .registers 6

    .line 111
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/HeightMapManager;->heightmapMapping:Ljava/util/Map;

    new-instance v1, Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;-><init>(Ljava/lang/String;Linfo/flowersoft/theotown/draft/HeightMapDraft;Z)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final extractFile(Ljava/lang/String;Ljava/io/File;)Z
    .registers 6

    .line 115
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 116
    :cond_9
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 p1, 0x0

    return p1

    .line 120
    :cond_11
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/HeightMapManager;->getZipStream()Ljava/util/zip/ZipInputStream;

    move-result-object v0

    .line 123
    :cond_15
    :try_start_15
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 124
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/resources/HeightMapManager;->transformFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 125
    new-instance p1, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 126
    invoke-static {v0, p1}, Lio/blueflower/stapel2d/util/StreamCopyUtil;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 127
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    goto :goto_42

    :catch_40
    move-exception p1

    goto :goto_46

    .line 131
    :cond_42
    :goto_42
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_45} :catch_40

    goto :goto_49

    .line 133
    :goto_46
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    :goto_49
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/String;I)Linfo/flowersoft/theotown/creation/HeightMap;
    .registers 7

    .line 163
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/HeightMapManager;->heightmapMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 166
    :cond_c
    iget-boolean v2, v0, Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;->inZipFile:Z

    if-eqz v2, :cond_34

    .line 168
    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getTempFile()Ljava/io/File;

    move-result-object v2

    .line 169
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Linfo/flowersoft/theotown/resources/HeightMapManager;->extractFile(Ljava/lang/String;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 170
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->loadHeightMap(Lcom/badlogic/gdx/files/FileHandle;I)Linfo/flowersoft/theotown/creation/HeightMap;

    move-result-object p1

    .line 171
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    return-object p1

    .line 176
    :cond_34
    iget-object p1, v0, Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;->draft:Linfo/flowersoft/theotown/draft/HeightMapDraft;

    if-eqz p1, :cond_63

    .line 178
    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getTempFile()Ljava/io/File;

    move-result-object p1

    .line 180
    :try_start_3c
    iget-object v0, v0, Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;->draft:Linfo/flowersoft/theotown/draft/HeightMapDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/HeightMapDraft;->getFile()Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->readBytes()[B

    move-result-object v0

    if-eqz v0, :cond_63

    .line 182
    invoke-static {p1, v0}, Linfo/flowersoft/theotown/util/Files;->writeBinaryFile(Ljava/io/File;[B)Z

    .line 183
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->loadHeightMap(Lcom/badlogic/gdx/files/FileHandle;I)Linfo/flowersoft/theotown/creation/HeightMap;

    move-result-object p2

    .line 184
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_5e} :catch_5f

    return-object p2

    :catch_5f
    move-exception p1

    .line 188
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_63
    return-object v1
.end method

.method public getAvailableMaps()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/HeightMapManager;->heightmapList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;

    .line 154
    iget-boolean v3, v2, Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;->hidden:Z

    if-nez v3, :cond_b

    .line 155
    iget-object v2, v2, Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_21
    return-object v0
.end method

.method public final getZipStream()Ljava/util/zip/ZipInputStream;
    .registers 4

    .line 106
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "heightmaps.zip"

    const-string v2, "ae6bb9dcccb3ee65a2a5e1964c8ca37b"

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/Hashing;->internalName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 107
    new-instance v1, Ljava/util/zip/ZipInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v1
.end method

.method public isPlugin(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_1f

    .line 146
    :cond_a
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/HeightMapManager;->heightmapMapping:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;

    if-nez p1, :cond_15

    return v0

    .line 148
    :cond_15
    iget-object p1, p1, Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;->draft:Linfo/flowersoft/theotown/draft/HeightMapDraft;

    if-eqz p1, :cond_1f

    iget-boolean p1, p1, Linfo/flowersoft/theotown/draft/Draft;->plugin:Z

    if-eqz p1, :cond_1f

    const/4 p1, 0x1

    return p1

    :cond_1f
    :goto_1f
    return v0
.end method

.method public final transformFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 98
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2e

    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_17

    const/4 v1, 0x0

    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_17
    return-object p1
.end method

###### Class info.flowersoft.theotown.resources.HeightMapManager.HeightMapDescriptor (info.flowersoft.theotown.resources.HeightMapManager$HeightMapDescriptor)
.class public Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;
.super Ljava/lang/Object;
.source "HeightMapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/resources/HeightMapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeightMapDescriptor"
.end annotation


# instance fields
.field public draft:Linfo/flowersoft/theotown/draft/HeightMapDraft;

.field public hidden:Z

.field public inZipFile:Z

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Linfo/flowersoft/theotown/draft/HeightMapDraft;Z)V
    .registers 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_10

    if-nez p3, :cond_8

    goto :goto_10

    .line 40
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HeightMap may not be defined in draft and zip file at the same time"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_10
    :goto_10
    iput-object p1, p0, Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;->name:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;->draft:Linfo/flowersoft/theotown/draft/HeightMapDraft;

    .line 44
    iput-boolean p3, p0, Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;->inZipFile:Z

    return-void
.end method

###### Class info.flowersoft.theotown.resources.HeightMapManager$$ExternalSyntheticLambda0 (info.flowersoft.theotown.resources.HeightMapManager$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/resources/HeightMapManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;

    check-cast p2, Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/resources/HeightMapManager;->$r8$lambda$sqwSafXB7FMiBRhGWkqWR1mUP0g(Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;Linfo/flowersoft/theotown/resources/HeightMapManager$HeightMapDescriptor;)I

    move-result p1

    return p1
.end method
