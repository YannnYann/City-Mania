###### Class info.flowersoft.theotown.util.PluginExporter (info.flowersoft.theotown.util.PluginExporter)
.class public final Linfo/flowersoft/theotown/util/PluginExporter;
.super Ljava/lang/Object;
.source "PluginExporter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPluginExporter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginExporter.kt\ninfo/flowersoft/theotown/util/PluginExporter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,117:1\n1#2:118\n16144#3,2:119\n*S KotlinDebug\n*F\n+ 1 PluginExporter.kt\ninfo/flowersoft/theotown/util/PluginExporter\n*L\n103#1:119,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Linfo/flowersoft/theotown/util/PluginExporter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Linfo/flowersoft/theotown/util/PluginExporter;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/PluginExporter;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/util/PluginExporter;->INSTANCE:Linfo/flowersoft/theotown/util/PluginExporter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic addFileOrDirectory$default(Linfo/flowersoft/theotown/util/PluginExporter;Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/util/Set;Ljava/lang/String;[BILjava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_6

    move-object p3, v0

    :cond_6
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_c

    .line 93
    const-string p4, ""

    :cond_c
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_11

    move-object p5, v0

    .line 92
    :cond_11
    invoke-virtual/range {p0 .. p5}, Linfo/flowersoft/theotown/util/PluginExporter;->addFileOrDirectory(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/util/Set;Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public final addFileOrDirectory(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/util/Set;Ljava/lang/String;[B)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipOutputStream;",
            "Ljava/io/File;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".."

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto/16 :goto_af

    :cond_1a
    const/4 v0, 0x0

    if-eqz p3, :cond_26

    .line 97
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_27

    :cond_26
    move v1, v0

    :goto_27
    if-eqz v1, :cond_2b

    goto/16 :goto_af

    .line 99
    :cond_2b
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p4, 0x2f

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 101
    new-instance p4, Ljava/util/zip/ZipEntry;

    invoke-direct {p4, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 102
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 103
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_af

    .line 16144
    array-length p4, p2

    :goto_5b
    if-ge v0, p4, :cond_af

    aget-object v4, p2, v0

    .line 104
    sget-object v2, Linfo/flowersoft/theotown/util/PluginExporter;->INSTANCE:Linfo/flowersoft/theotown/util/PluginExporter;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, p1

    move-object v5, p3

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/util/PluginExporter;->addFileOrDirectory(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/util/Set;Ljava/lang/String;[B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    :cond_6d
    move-object v3, p1

    .line 108
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_af

    .line 109
    new-instance p1, Ljava/util/zip/ZipEntry;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 110
    new-instance p1, Ljava/io/BufferedInputStream;

    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, p3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 111
    :try_start_99
    invoke-static {p1, v3}, Lio/blueflower/stapel2d/util/StreamCopyUtilKt;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 112
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9e
    .catchall {:try_start_99 .. :try_end_9e} :catchall_a6

    const/4 p2, 0x0

    .line 110
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 113
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    return-void

    :catchall_a6
    move-exception v0

    move-object p2, v0

    .line 110
    :try_start_a8
    throw p2
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a9

    :catchall_a9
    move-exception v0

    move-object p3, v0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3

    :cond_af
    :goto_af
    return-void
.end method

.method public final hasPluginManifest(Ljava/io/File;)Z
    .registers 4

    const-string v0, "pluginDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/io/File;

    const-string v1, "plugin.manifest"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_14

    return v1

    .line 32
    :cond_14
    invoke-static {v0}, Linfo/flowersoft/theotown/util/Files;->readTextFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1b

    return v1

    .line 35
    :cond_1b
    :try_start_1b
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 36
    const-string p1, "id"

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    const-string p1, "version"

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 38
    const-string p1, "title"

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2f
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_1b .. :try_end_2f} :catch_31

    const/4 p1, 0x1

    return p1

    :catch_31
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public final packPlugin(Ljava/io/File;Ljava/io/File;Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 14

    const-string v0, "pluginDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "header"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_9a

    .line 55
    :cond_29
    invoke-virtual {p0, p3, p1}, Linfo/flowersoft/theotown/util/PluginExporter;->putHeaderInfo(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/io/File;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 58
    :try_start_2c
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_36} :catch_81

    .line 59
    :try_start_36
    new-instance p2, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 60
    invoke-virtual {p3}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 61
    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->flush()V

    .line 65
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    new-instance p2, Linfo/flowersoft/theotown/util/EncOutputStream;

    const/4 p3, 0x0

    invoke-direct {p2, v1, p3}, Linfo/flowersoft/theotown/util/EncOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v3, p2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5c
    .catchall {:try_start_36 .. :try_end_5c} :catchall_84

    .line 66
    :try_start_5c
    sget-object v2, Linfo/flowersoft/theotown/util/PluginExporter;->INSTANCE:Linfo/flowersoft/theotown/util/PluginExporter;

    const-string p2, ".git"

    const-string p3, ".nomedia"

    const-string v0, ".DS_Store"

    const-string v4, ".vscode"

    const-string v5, "__MACOSX"

    filled-new-array {p2, p3, v0, v4, v5}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-static/range {v2 .. v9}, Linfo/flowersoft/theotown/util/PluginExporter;->addFileOrDirectory$default(Linfo/flowersoft/theotown/util/PluginExporter;Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/util/Set;Ljava/lang/String;[BILjava/lang/Object;)V
    :try_end_79
    .catchall {:try_start_5c .. :try_end_79} :catchall_87

    const/4 p1, 0x0

    .line 65
    :try_start_7a
    invoke-static {v3, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_84

    .line 58
    :try_start_7d
    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    return-void

    :catch_81
    move-exception v0

    move-object p1, v0

    goto :goto_97

    :catchall_84
    move-exception v0

    move-object p1, v0

    goto :goto_90

    :catchall_87
    move-exception v0

    move-object p1, v0

    .line 65
    :try_start_89
    throw p1
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_8a

    :catchall_8a
    move-exception v0

    move-object p2, v0

    :try_start_8c
    invoke-static {v3, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_90
    .catchall {:try_start_8c .. :try_end_90} :catchall_84

    .line 58
    :goto_90
    :try_start_90
    throw p1
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_91

    :catchall_91
    move-exception v0

    move-object p2, v0

    :try_start_93
    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_97} :catch_81

    .line 70
    :goto_97
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9a
    :goto_9a
    return-void
.end method

.method public final putHeaderInfo(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/io/File;)Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 5

    .line 78
    :try_start_0
    const-string v0, "game version"

    sget v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 79
    const-string v0, "format version"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 80
    const-string v0, "platform"

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 81
    const-string v0, "original name"

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p2

    .line 80
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_29
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_0 .. :try_end_29} :catch_2a

    return-object p2

    :catch_2a
    move-exception p2

    .line 83
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p1
.end method
