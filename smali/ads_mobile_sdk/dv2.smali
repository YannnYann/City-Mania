###### Class ads_mobile_sdk.dv2 (ads_mobile_sdk.dv2)
.class public abstract Lads_mobile_sdk/dv2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_25

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_25

    .line 97
    :cond_e
    new-instance v0, Ljava/io/File;

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_21

    .line 101
    :cond_17
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {v1, p0}, Lads_mobile_sdk/dv2;->a(Ljava/io/File;Z)Ljava/io/File;

    move-result-object v1

    .line 102
    :goto_21
    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_25
    :goto_25
    return-object v1
.end method

.method public static a(Ljava/io/File;Z)Ljava/io/File;
    .registers 2

    if-eqz p1, :cond_11

    .line 88
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_11

    .line 89
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 91
    :cond_11
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1a

    .line 92
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_1a
    return-object p0
.end method

.method public static a(Ljava/io/File;)Z
    .registers 8

    .line 209
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 214
    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_26

    .line 216
    array-length v3, v0

    move v5, v1

    move v4, v2

    :goto_12
    if-ge v4, v3, :cond_27

    aget-object v6, v0, v4

    if-eqz v6, :cond_22

    .line 218
    invoke-static {v6}, Lads_mobile_sdk/dv2;->a(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_22

    if-eqz v5, :cond_22

    move v5, v1

    goto :goto_23

    :cond_22
    move v5, v2

    :goto_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_26
    move v5, v1

    .line 224
    :cond_27
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_30

    if-eqz v5, :cond_30

    return v1

    :cond_30
    return v2
.end method

.method public static a(Ljava/io/File;[B)Z
    .registers 5

    const/4 v0, 0x0

    .line 274
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_26
    .catchall {:try_start_1 .. :try_end_6} :catchall_21

    .line 275
    :try_start_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v0, v2, :cond_12

    .line 278
    invoke-virtual {p0}, Ljava/io/File;->setReadOnly()Z

    goto :goto_12

    :catchall_10
    move-exception p0

    goto :goto_1d

    .line 280
    :cond_12
    :goto_12
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 281
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_18} :catch_1f
    .catchall {:try_start_6 .. :try_end_18} :catchall_10

    .line 287
    invoke-static {v1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    return p0

    :goto_1d
    move-object v0, v1

    goto :goto_22

    :catch_1f
    move-object v0, v1

    goto :goto_26

    :catchall_21
    move-exception p0

    .line 288
    :goto_22
    invoke-static {v0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 289
    throw p0

    .line 290
    :catch_26
    :goto_26
    invoke-static {v0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 p0, 0x0

    return p0
.end method
