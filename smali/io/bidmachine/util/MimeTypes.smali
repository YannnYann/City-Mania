###### Class io.bidmachine.util.MimeTypes (io.bidmachine.util.MimeTypes)
.class public final Lio/bidmachine/util/MimeTypes;
.super Ljava/lang/Object;
.source "MimeTypes.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMimeTypes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MimeTypes.kt\nio/bidmachine/util/MimeTypes\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,218:1\n1#2:219\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lio/bidmachine/util/MimeTypes;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/util/MimeTypes;

    invoke-direct {v0}, Lio/bidmachine/util/MimeTypes;-><init>()V

    sput-object v0, Lio/bidmachine/util/MimeTypes;->INSTANCE:Lio/bidmachine/util/MimeTypes;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final varargs getMimeTypeFromContent$matchAt([BI[I)Z
    .registers 8

    const/4 v0, 0x0

    if-ltz p1, :cond_1d

    .line 152
    array-length v1, p0

    array-length v2, p2

    add-int/2addr v2, p1

    if-ge v1, v2, :cond_9

    goto :goto_1d

    .line 153
    :cond_9
    array-length v1, p2

    move v2, v0

    :goto_b
    if-ge v2, v1, :cond_1b

    add-int v3, p1, v2

    .line 154
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    aget v4, p2, v2

    if-eq v3, v4, :cond_18

    return v0

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1b
    const/4 p0, 0x1

    return p0

    :cond_1d
    :goto_1d
    return v0
.end method

.method public static final varargs getMimeTypeFromContent$startsWith([B[I)Z
    .registers 7

    .line 144
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_6

    return v2

    .line 145
    :cond_6
    array-length v0, p1

    move v1, v2

    :goto_8
    if-ge v1, v0, :cond_16

    .line 146
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    aget v4, p1, v1

    if-eq v3, v4, :cond_13

    return v2

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_16
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final getMimeTypeFromContent(Ljava/io/File;)Ljava/lang/String;
    .registers 15

    const/16 v0, 0x20

    const/16 v1, 0xb

    const-string v2, "file"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x10

    .line 131
    new-array v3, v2, [B

    .line 133
    :try_start_d
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_22

    :try_start_12
    invoke-virtual {v4, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result p1
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_1b

    const/4 v5, 0x0

    :try_start_17
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_22

    goto :goto_23

    :catchall_1b
    move-exception p1

    :try_start_1c
    throw p1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1d

    :catchall_1d
    move-exception v5

    :try_start_1e
    invoke-static {v4, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_22} :catch_22

    :catch_22
    const/4 p1, -0x1

    .line 138
    :goto_23
    const-string v4, "application/octet-stream"

    const/4 v5, 0x4

    if-ge p1, v5, :cond_29

    return-object v4

    :cond_29
    if-ge p1, v2, :cond_34

    .line 141
    invoke-static {v3, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    const-string p1, "copyOf(this, newSize)"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_34
    const/16 p1, 0xd8

    const/16 v2, 0xff

    .line 160
    filled-new-array {v2, p1, v2}, [I

    move-result-object p1

    invoke-static {v3, p1}, Lio/bidmachine/util/MimeTypes;->getMimeTypeFromContent$startsWith([B[I)Z

    move-result p1

    if-eqz p1, :cond_45

    .line 161
    const-string p1, "image/jpeg"

    return-object p1

    :cond_45
    const/16 p1, 0x89

    const/16 v6, 0x4e

    const/16 v7, 0x50

    const/16 v8, 0x47

    .line 164
    filled-new-array {p1, v7, v6, v8}, [I

    move-result-object p1

    invoke-static {v3, p1}, Lio/bidmachine/util/MimeTypes;->getMimeTypeFromContent$startsWith([B[I)Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 165
    const-string p1, "image/png"

    return-object p1

    :cond_5a
    const/16 p1, 0x49

    const/16 v6, 0x46

    .line 168
    filled-new-array {v8, p1, v6}, [I

    move-result-object v8

    invoke-static {v3, v8}, Lio/bidmachine/util/MimeTypes;->getMimeTypeFromContent$startsWith([B[I)Z

    move-result v8

    if-eqz v8, :cond_6b

    .line 169
    const-string p1, "image/gif"

    return-object p1

    :cond_6b
    const/16 v8, 0x52

    .line 172
    filled-new-array {v8, p1, v6, v6}, [I

    move-result-object v9

    invoke-static {v3, v9}, Lio/bidmachine/util/MimeTypes;->getMimeTypeFromContent$startsWith([B[I)Z

    move-result v9

    const/16 v10, 0x45

    const/16 v11, 0x8

    if-eqz v9, :cond_8c

    const/16 v9, 0x57

    const/16 v12, 0x42

    filled-new-array {v9, v10, v12, v7}, [I

    move-result-object v9

    invoke-static {v3, v11, v9}, Lio/bidmachine/util/MimeTypes;->getMimeTypeFromContent$matchAt([BI[I)Z

    move-result v9

    if-eqz v9, :cond_8c

    .line 173
    const-string p1, "image/webp"

    return-object p1

    .line 177
    :cond_8c
    new-array v9, v1, [I

    fill-array-data v9, :array_138

    invoke-static {v3, v9}, Lio/bidmachine/util/MimeTypes;->getMimeTypeFromContent$startsWith([B[I)Z

    move-result v9

    if-nez v9, :cond_135

    .line 178
    new-array v1, v1, [I

    fill-array-data v1, :array_152

    invoke-static {v3, v1}, Lio/bidmachine/util/MimeTypes;->getMimeTypeFromContent$startsWith([B[I)Z

    move-result v1

    if-eqz v1, :cond_a4

    goto/16 :goto_135

    :cond_a4
    const/16 v1, 0xdf

    const/16 v9, 0xa3

    const/16 v12, 0x1a

    .line 183
    filled-new-array {v12, v10, v1, v9}, [I

    move-result-object v1

    invoke-static {v3, v1}, Lio/bidmachine/util/MimeTypes;->getMimeTypeFromContent$startsWith([B[I)Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 184
    const-string p1, "video/webm"

    return-object p1

    .line 187
    :cond_b7
    filled-new-array {v8, p1, v6, v6}, [I

    move-result-object v1

    invoke-static {v3, v1}, Lio/bidmachine/util/MimeTypes;->getMimeTypeFromContent$startsWith([B[I)Z

    move-result v1

    if-eqz v1, :cond_d2

    const/16 v1, 0x56

    const/16 v8, 0x41

    filled-new-array {v8, v1, p1, v0}, [I

    move-result-object v0

    invoke-static {v3, v11, v0}, Lio/bidmachine/util/MimeTypes;->getMimeTypeFromContent$matchAt([BI[I)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 188
    const-string p1, "video/avi"

    return-object p1

    :cond_d2
    const/16 v0, 0x33

    const/16 v1, 0x44

    .line 193
    filled-new-array {p1, v1, v0}, [I

    move-result-object p1

    invoke-static {v3, p1}, Lio/bidmachine/util/MimeTypes;->getMimeTypeFromContent$startsWith([B[I)Z

    move-result p1

    const-string v0, "audio/mpeg"

    if-eqz p1, :cond_e3

    return-object v0

    :cond_e3
    const/16 p1, 0xfb

    .line 197
    filled-new-array {v2, p1}, [I

    move-result-object p1

    invoke-static {v3, p1}, Lio/bidmachine/util/MimeTypes;->getMimeTypeFromContent$startsWith([B[I)Z

    move-result p1

    if-nez p1, :cond_134

    const/16 p1, 0xf3

    filled-new-array {v2, p1}, [I

    move-result-object p1

    invoke-static {v3, p1}, Lio/bidmachine/util/MimeTypes;->getMimeTypeFromContent$startsWith([B[I)Z

    move-result p1

    if-eqz p1, :cond_fc

    goto :goto_134

    :cond_fc
    const/16 p1, 0x25

    .line 203
    filled-new-array {p1, v7, v1, v6}, [I

    move-result-object p1

    invoke-static {v3, p1}, Lio/bidmachine/util/MimeTypes;->getMimeTypeFromContent$startsWith([B[I)Z

    move-result p1

    if-eqz p1, :cond_10b

    .line 204
    const-string p1, "application/pdf"

    return-object p1

    :cond_10b
    const/4 p1, 0x3

    const/16 v0, 0x4b

    .line 208
    filled-new-array {v7, v0, p1, v5}, [I

    move-result-object p1

    invoke-static {v3, p1}, Lio/bidmachine/util/MimeTypes;->getMimeTypeFromContent$startsWith([B[I)Z

    move-result p1

    if-nez p1, :cond_131

    const/4 p1, 0x5

    const/4 v1, 0x6

    .line 209
    filled-new-array {v7, v0, p1, v1}, [I

    move-result-object p1

    invoke-static {v3, p1}, Lio/bidmachine/util/MimeTypes;->getMimeTypeFromContent$startsWith([B[I)Z

    move-result p1

    if-nez p1, :cond_131

    const/4 p1, 0x7

    .line 210
    filled-new-array {v7, v0, p1, v11}, [I

    move-result-object p1

    invoke-static {v3, p1}, Lio/bidmachine/util/MimeTypes;->getMimeTypeFromContent$startsWith([B[I)Z

    move-result p1

    if-eqz p1, :cond_130

    goto :goto_131

    :cond_130
    return-object v4

    .line 212
    :cond_131
    :goto_131
    const-string p1, "application/zip"

    return-object p1

    :cond_134
    :goto_134
    return-object v0

    .line 180
    :cond_135
    :goto_135
    const-string p1, "video/mp4"

    return-object p1

    :array_138
    .array-data 4
        0x0
        0x0
        0x0
        0x18
        0x66
        0x74
        0x79
        0x70
        0x6d
        0x70
        0x34
    .end array-data

    :array_152
    .array-data 4
        0x0
        0x0
        0x0
        0x20
        0x66
        0x74
        0x79
        0x70
        0x6d
        0x70
        0x34
    .end array-data
.end method

.method public final getTopLevelType(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    const/4 v5, 0x6

    const/4 v6, 0x0

    const/16 v2, 0x2f

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    .line 123
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_13

    return-object v0

    :cond_13
    const/4 v0, 0x0

    .line 127
    invoke-virtual {v1, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final isImage(Ljava/lang/String;)Z
    .registers 3

    .line 108
    const-string v0, "image"

    invoke-virtual {p0, p1}, Lio/bidmachine/util/MimeTypes;->getTopLevelType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isVideo(Ljava/lang/String;)Z
    .registers 3

    .line 100
    const-string v0, "video"

    invoke-virtual {p0, p1}, Lio/bidmachine/util/MimeTypes;->getTopLevelType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isVisual(Ljava/lang/String;)Z
    .registers 3

    .line 112
    invoke-virtual {p0, p1}, Lio/bidmachine/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Lio/bidmachine/util/MimeTypes;->isImage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    return p1

    :cond_f
    :goto_f
    const/4 p1, 0x1

    return p1
.end method
