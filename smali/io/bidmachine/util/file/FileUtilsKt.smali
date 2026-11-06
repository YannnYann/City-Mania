###### Class io.bidmachine.util.file.FileUtilsKt (io.bidmachine.util.file.FileUtilsKt)
.class public final Lio/bidmachine/util/file/FileUtilsKt;
.super Ljava/lang/Object;
.source "FileUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileUtils.kt\nio/bidmachine/util/file/FileUtilsKt\n+ 2 Utils.kt\nio/bidmachine/util/UtilsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,171:1\n846#2,4:172\n846#2,4:176\n846#2,4:180\n846#2,4:184\n846#2,4:188\n846#2,2:192\n848#2,2:196\n846#2,2:198\n848#2,2:202\n846#2,4:204\n13543#3,2:194\n13543#3,2:200\n*S KotlinDebug\n*F\n+ 1 FileUtils.kt\nio/bidmachine/util/file/FileUtilsKt\n*L\n76#1:172,4\n86#1:176,4\n92#1:180,4\n101#1:184,4\n126#1:188,4\n135#1:192,2\n135#1:196,2\n149#1:198,2\n149#1:202,2\n166#1:204,4\n137#1:194,2\n150#1:200,2\n*E\n"
.end annotation


# direct methods
.method public static final createFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    const-string v0, "childPathname"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final createFileByUrl(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-static {p1}, Lio/bidmachine/util/file/FileUtils;->generateFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 121
    invoke-static {p0, p1}, Lio/bidmachine/util/file/FileUtilsKt;->createFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final createSubDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    const-string v0, "childPathname"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-static {p0, p1}, Lio/bidmachine/util/file/FileUtilsKt;->createFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 110
    invoke-static {p0}, Lio/bidmachine/util/file/FileUtilsKt;->existsSafely(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_17

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_16

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :cond_17
    :goto_17
    return-object p0
.end method

.method public static final createTempFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    const-string v0, "tempFilePrefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/bidmachine/util/file/FileUtilsKt;->createFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createTempFile$default(Ljava/io/File;Ljava/lang/String;ILjava/lang/Object;)Ljava/io/File;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 117
    const-string p1, "temp"

    :cond_6
    invoke-static {p0, p1}, Lio/bidmachine/util/file/FileUtilsKt;->createTempFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final deleteChildFiles(Ljava/io/File;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "canDelete"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_35

    .line 146
    invoke-static {p0}, Lio/bidmachine/util/file/FileUtilsKt;->existsSafely(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_35

    .line 150
    :cond_e
    :try_start_e
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_35

    const-string v0, "listFiles()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    array-length v0, p0

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_33

    aget-object v2, p0, v1

    if-eqz v2, :cond_30

    .line 151
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 152
    invoke-static {v2}, Lio/bidmachine/util/file/FileUtilsKt;->deleteFile(Ljava/io/File;)Z

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 201
    :cond_33
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_35
    .catchall {:try_start_e .. :try_end_35} :catchall_35

    :catchall_35
    :cond_35
    :goto_35
    return-void
.end method

.method public static final deleteFile(Ljava/io/File;)Z
    .registers 5

    if-eqz p0, :cond_37

    .line 132
    invoke-static {p0}, Lio/bidmachine/util/file/FileUtilsKt;->existsSafely(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_37

    .line 136
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 137
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_26

    const-string v1, "listFiles()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_26

    aget-object v3, v0, v2

    .line 138
    invoke-static {v3}, Lio/bidmachine/util/file/FileUtils;->deleteFile(Ljava/io/File;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 141
    :cond_26
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_2f

    goto :goto_30

    :catchall_2f
    const/4 p0, 0x0

    .line 142
    :goto_30
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_37
    :goto_37
    const/4 p0, 0x1

    return p0
.end method

.method public static final existsSafely(Ljava/io/File;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    :try_start_5
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_e

    goto :goto_f

    :catchall_e
    const/4 p0, 0x0

    .line 78
    :goto_f
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final getExternalDir(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lio/bidmachine/util/file/FileUtils;->canUseExternalFilesDir()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return-object v1

    .line 162
    :cond_d
    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final hasContent(Ljava/io/File;)Z
    .registers 5

    if-eqz p0, :cond_14

    .line 81
    invoke-static {p0}, Lio/bidmachine/util/file/FileUtilsKt;->existsSafely(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public static final readSafely(Ljava/io/File;)Ljava/lang/String;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    :try_start_7
    invoke-static {p0, v1, v0, v1}, Lkotlin/io/FilesKt__FileReadWriteKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_c

    return-object p0

    :catchall_c
    return-object v1
.end method

.method public static final toUri(Ljava/io/File;)Landroid/net/Uri;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "fromFile(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toUriSafely(Ljava/io/File;)Landroid/net/Uri;
    .registers 2

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 102
    :try_start_3
    invoke-static {p0}, Lio/bidmachine/util/file/FileUtilsKt;->toUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_7

    :catchall_7
    :cond_7
    return-object v0
.end method
