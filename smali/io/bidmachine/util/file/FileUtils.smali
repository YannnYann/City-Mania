###### Class io.bidmachine.util.file.FileUtils (io.bidmachine.util.file.FileUtils)
.class public final Lio/bidmachine/util/file/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.kt"


# static fields
.field public static final INSTANCE:Lio/bidmachine/util/file/FileUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/util/file/FileUtils;

    invoke-direct {v0}, Lio/bidmachine/util/file/FileUtils;-><init>()V

    sput-object v0, Lio/bidmachine/util/file/FileUtils;->INSTANCE:Lio/bidmachine/util/file/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final canUseExternalFilesDir()Z
    .registers 1

    .line 65
    invoke-static {}, Lio/bidmachine/util/Utils;->isExternalMemoryAvailable()Z

    move-result v0

    return v0
.end method

.method public static final deleteFile(Ljava/io/File;)Z
    .registers 1

    .line 62
    invoke-static {p0}, Lio/bidmachine/util/file/FileUtilsKt;->deleteFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static final generateFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v0, "this as java.lang.String).getBytes(charset)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/bidmachine/util/UtilsKt;->applyMD5([B)[B

    move-result-object p0

    if-nez p0, :cond_18

    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_18
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    .line 54
    invoke-virtual {v0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p0

    const/16 v0, 0x24

    .line 55
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
