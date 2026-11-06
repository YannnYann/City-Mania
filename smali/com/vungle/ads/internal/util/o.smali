###### Class com.vungle.ads.internal.util.o (com.vungle.ads.internal.util.o)
.class public abstract Lcom/vungle/ads/internal/util/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/vungle/ads/internal/util/n;

.field public static final b:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/util/o$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/vungle/ads/internal/util/o$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/util/o;->a:Lcom/vungle/ads/internal/util/n;

    .line 8
    const-class v0, Ljava/util/ArrayList;

    const-class v1, Ljava/io/File;

    const-class v2, Ljava/util/LinkedHashSet;

    const-class v3, Ljava/util/HashSet;

    const-class v4, Ljava/util/HashMap;

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/internal/util/o;->b:Ljava/util/List;

    return-void
.end method

.method public static final a(Ljava/io/InputStream;)Ljava/io/ObjectInputStream;
    .registers 3

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/util/y;

    sget-object v1, Lcom/vungle/ads/internal/util/o;->b:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/vungle/ads/internal/util/y;-><init>(Ljava/io/InputStream;Ljava/util/List;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 278
    invoke-static {p0, v0, p1}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "guessFileName(url, null, ext)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 257
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static synthetic a(Ljava/io/File;)V
    .registers 2

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/vungle/ads/internal/util/o;->a(Ljava/io/File;Ljava/util/Set;)V

    return-void
.end method

.method public static final a(Ljava/io/File;Ljava/io/Serializable;)V
    .registers 4

    const-string v0, "file"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/vungle/ads/internal/util/o;->b(Ljava/io/File;)V

    :cond_e
    if-nez p1, :cond_11

    return-void

    :cond_11
    const/4 v0, 0x0

    .line 263
    :try_start_12
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_36
    .catchall {:try_start_12 .. :try_end_17} :catchall_32

    .line 264
    :try_start_17
    new-instance p0, Ljava/io/ObjectOutputStream;

    invoke-direct {p0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1c} :catch_2e
    .catchall {:try_start_17 .. :try_end_1c} :catchall_2b

    .line 265
    :try_start_1c
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 266
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->reset()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_22} :catch_25
    .catchall {:try_start_1c .. :try_end_22} :catchall_23

    goto :goto_49

    :catchall_23
    move-exception p1

    goto :goto_27

    :catch_25
    move-exception p1

    goto :goto_29

    :goto_27
    move-object v0, p0

    goto :goto_53

    :goto_29
    move-object v0, v1

    goto :goto_39

    :catchall_2b
    move-exception p0

    move-object p1, p0

    goto :goto_53

    :catch_2e
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    goto :goto_29

    :catchall_32
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    goto :goto_51

    :catch_36
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 268
    :goto_39
    :try_start_39
    sget-boolean v1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v1, "FileUtility"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_39 .. :try_end_48} :catchall_50

    move-object v1, v0

    .line 270
    :goto_49
    invoke-static {p0}, Lcom/vungle/ads/internal/util/o;->a(Ljava/io/Closeable;)V

    .line 271
    invoke-static {v1}, Lcom/vungle/ads/internal/util/o;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_50
    move-exception p1

    :goto_51
    move-object v1, v0

    goto :goto_27

    .line 272
    :goto_53
    invoke-static {v0}, Lcom/vungle/ads/internal/util/o;->a(Ljava/io/Closeable;)V

    .line 273
    invoke-static {v1}, Lcom/vungle/ads/internal/util/o;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)V
    .registers 3

    const-string v0, "file"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_8

    goto :goto_1e

    .line 274
    :cond_8
    :try_start_8
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, v0}, Lkotlin/io/FilesKt__FileReadWriteKt;->writeText(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    .line 276
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "FileUtility"

    invoke-static {p1, p0}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1e
    return-void
.end method

.method public static final a(Ljava/io/File;Ljava/util/Set;)V
    .registers 9

    const/4 v0, 0x1

    const-string v1, "Failed to delete file: "

    const-string v2, "FileUtility"

    if-eqz p0, :cond_ab

    .line 3
    :try_start_7
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_f

    goto/16 :goto_ab

    .line 4
    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_55

    if-eqz p1, :cond_3e

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v0, :cond_3e

    .line 6
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skipping deletion of directory: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_3c
    move-exception p0

    goto :goto_97

    .line 7
    :cond_3e
    const-string v3, "folder"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_4a

    goto :goto_55

    .line 128
    :cond_4a
    array-length v4, v3

    const/4 v5, 0x0

    :goto_4c
    if-ge v5, v4, :cond_55

    aget-object v6, v3, v5

    .line 129
    invoke-static {v6, p1}, Lcom/vungle/ads/internal/util/o;->a(Ljava/io/File;Ljava/util/Set;)V

    add-int/2addr v5, v0

    goto :goto_4c

    :cond_55
    :goto_55
    if-eqz p1, :cond_7c

    .line 130
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-ne p1, v0, :cond_7c

    .line 131
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skipping deletion of file: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 134
    :cond_7c
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_ab

    .line 135
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_96} :catch_3c

    return-void

    .line 138
    :goto_97
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 139
    invoke-static {v1}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 253
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ab
    :goto_ab
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_13

    .line 277
    :try_start_2
    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_13

    :cond_9
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {v0, p0}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p0
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_13

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    return p0

    :catchall_13
    :cond_13
    :goto_13
    const/4 p0, 0x0

    return p0
.end method

.method public static final b(Ljava/io/File;)V
    .registers 4

    const-string v0, "file"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_15

    .line 2
    invoke-static {p0}, Lcom/unity3d/services/core/misc/Utilities$$ExternalSyntheticApiModelOutline0;->m(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/ads/internal/util/o$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/file/Path;)V

    return-void

    :catch_13
    move-exception v0

    goto :goto_39

    .line 3
    :cond_15
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 4
    new-instance v0, Lcom/vungle/ads/AssetFailedToDeleteError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/ads/AssetFailedToDeleteError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_38} :catch_13

    return-void

    .line 7
    :goto_39
    new-instance v1, Lcom/vungle/ads/AssetFailedToDeleteError;

    .line 8
    const-string v2, "Failed to delete "

    invoke-static {v2}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 143
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with error :"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/vungle/ads/AssetFailedToDeleteError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    :cond_5e
    return-void
.end method

.method public static final c(Ljava/io/File;)Ljava/lang/Object;
    .registers 8

    const-string v0, "FileUtility"

    const-string v1, "file"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_f

    return-object v2

    .line 5
    :cond_f
    :try_start_f
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_46
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_14} :catch_43
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_40
    .catchall {:try_start_f .. :try_end_14} :catchall_3e

    .line 6
    :try_start_14
    sget-object v3, Lcom/vungle/ads/internal/util/o;->a:Lcom/vungle/ads/internal/util/n;

    invoke-interface {v3, v1}, Lcom/vungle/ads/internal/util/n;->a(Ljava/io/InputStream;)Ljava/io/ObjectInputStream;

    move-result-object v3
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1a} :catch_37
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_1a} :catch_34
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1a} :catch_31
    .catchall {:try_start_14 .. :try_end_1a} :catchall_2f

    .line 7
    :try_start_1a
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1e} :catch_2c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1a .. :try_end_1e} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1e} :catch_28
    .catchall {:try_start_1a .. :try_end_1e} :catchall_25

    .line 16
    invoke-static {v3}, Lcom/vungle/ads/internal/util/o;->a(Ljava/io/Closeable;)V

    .line 17
    invoke-static {v1}, Lcom/vungle/ads/internal/util/o;->a(Ljava/io/Closeable;)V

    return-object p0

    :catchall_25
    move-exception p0

    move-object v2, v3

    goto :goto_3a

    :catch_28
    move-exception v4

    goto :goto_4d

    :catch_2a
    move-exception v4

    goto :goto_6a

    :catch_2c
    move-exception v4

    goto/16 :goto_87

    :catchall_2f
    move-exception p0

    goto :goto_3a

    :catch_31
    move-exception v4

    move-object v3, v2

    goto :goto_4d

    :catch_34
    move-exception v4

    move-object v3, v2

    goto :goto_6a

    :catch_37
    move-exception v4

    move-object v3, v2

    goto :goto_87

    :goto_3a
    move-object v0, v2

    move-object v2, v1

    goto/16 :goto_ab

    :catchall_3e
    move-exception p0

    goto :goto_49

    :catch_40
    move-exception v1

    move-object v4, v1

    goto :goto_4b

    :catch_43
    move-exception v1

    move-object v4, v1

    goto :goto_68

    :catch_46
    move-exception v1

    move-object v4, v1

    goto :goto_85

    :goto_49
    move-object v0, v2

    goto :goto_ab

    :goto_4b
    move-object v1, v2

    move-object v3, v1

    .line 18
    :goto_4d
    :try_start_4d
    sget-boolean v5, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot read serializable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a1

    :goto_68
    move-object v1, v2

    move-object v3, v1

    .line 19
    :goto_6a
    sget-boolean v5, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClassNotFoundException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a1

    :goto_85
    move-object v1, v2

    move-object v3, v1

    .line 20
    :goto_87
    sget-boolean v5, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a1
    .catchall {:try_start_4d .. :try_end_a1} :catchall_25

    .line 27
    :goto_a1
    invoke-static {v3}, Lcom/vungle/ads/internal/util/o;->a(Ljava/io/Closeable;)V

    .line 28
    invoke-static {v1}, Lcom/vungle/ads/internal/util/o;->a(Ljava/io/Closeable;)V

    .line 29
    :try_start_a7
    invoke-static {p0, v2}, Lcom/vungle/ads/internal/util/o;->a(Ljava/io/File;Ljava/util/Set;)V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_aa

    :catch_aa
    return-object v2

    .line 30
    :goto_ab
    invoke-static {v0}, Lcom/vungle/ads/internal/util/o;->a(Ljava/io/Closeable;)V

    .line 31
    invoke-static {v2}, Lcom/vungle/ads/internal/util/o;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static d(Ljava/io/File;)Ljava/lang/String;
    .registers 4

    const-string v0, "FileUtility"

    const-string v1, "file"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_f

    return-object v2

    :cond_f
    const/4 v1, 0x1

    .line 3
    :try_start_10
    invoke-static {p0, v2, v1, v2}, Lkotlin/io/FilesKt__FileReadWriteKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_14} :catch_2d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    .line 7
    sget-boolean v1, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 8
    const-string v1, "cannot read string "

    invoke-static {v1}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 221
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_44

    :catch_2d
    move-exception p0

    .line 222
    sget-boolean v1, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 223
    const-string v1, "IOException: "

    invoke-static {v1}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 434
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_44
    return-object v2
.end method

###### Class com.vungle.ads.internal.util.o$$ExternalSyntheticLambda1 (com.vungle.ads.internal.util.o$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/vungle/ads/internal/util/o$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/vungle/ads/internal/util/n;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)Ljava/io/ObjectInputStream;
    .registers 2

    .line 0
    invoke-static {p1}, Lcom/vungle/ads/internal/util/o;->a(Ljava/io/InputStream;)Ljava/io/ObjectInputStream;

    move-result-object p1

    return-object p1
.end method
