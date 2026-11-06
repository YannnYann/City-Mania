###### Class info.flowersoft.theotown.util.PluginFileDecoder (info.flowersoft.theotown.util.PluginFileDecoder)
.class public final Linfo/flowersoft/theotown/util/PluginFileDecoder;
.super Ljava/lang/Object;
.source "PluginFileDecoder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/util/PluginFileDecoder$KeyImplementation;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPluginFileDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginFileDecoder.kt\ninfo/flowersoft/theotown/util/PluginFileDecoder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,133:1\n1#2:134\n*E\n"
.end annotation


# instance fields
.field public final keyProvider:Linfo/flowersoft/theotown/util/PluginFileDecoder$KeyImplementation;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/PluginFileDecoder$KeyImplementation;)V
    .registers 3

    const-string v0, "keyProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Linfo/flowersoft/theotown/util/PluginFileDecoder;->keyProvider:Linfo/flowersoft/theotown/util/PluginFileDecoder$KeyImplementation;

    return-void
.end method


# virtual methods
.method public final decode(Ljava/io/InputStream;)[B
    .registers 8

    const-string v0, "inputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 31
    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_56

    const/4 v1, -0x1

    .line 35
    const-string v2, "eof"

    if-eq p1, v1, :cond_7f

    const/4 v1, 0x1

    if-ne p1, v1, :cond_64

    const/16 p1, 0x20

    .line 44
    :try_start_18
    new-array v1, p1, [B

    const/16 v3, 0x10

    .line 45
    new-array v4, v3, [B

    .line 46
    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->read([B)I

    move-result v5

    if-ne v5, p1, :cond_5e

    .line 47
    invoke-virtual {v0, v4}, Ljava/io/DataInputStream;->read([B)I

    move-result p1

    if-ne p1, v3, :cond_58

    .line 49
    iget-object p1, p0, Linfo/flowersoft/theotown/util/PluginFileDecoder;->keyProvider:Linfo/flowersoft/theotown/util/PluginFileDecoder$KeyImplementation;

    invoke-interface {p1, v1}, Linfo/flowersoft/theotown/util/PluginFileDecoder$KeyImplementation;->getKey([B)[B

    move-result-object p1

    .line 51
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 52
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p1, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 54
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/PluginFileDecoder;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x2

    .line 55
    invoke-virtual {v2, v3, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 56
    invoke-static {v0}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 57
    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const-string v1, "doFinal(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_18 .. :try_end_51} :catchall_56

    const/4 v1, 0x0

    .line 30
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_56
    move-exception p1

    goto :goto_85

    .line 47
    :cond_58
    :try_start_58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_5e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_64
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unkown version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_7f
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 40
    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_85
    .catchall {:try_start_58 .. :try_end_85} :catchall_56

    .line 30
    :goto_85
    :try_start_85
    throw p1
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_86

    :catchall_86
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final getCipher()Ljavax/crypto/Cipher;
    .registers 2

    .line 28
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.util.PluginFileDecoder.KeyImplementation (info.flowersoft.theotown.util.PluginFileDecoder$KeyImplementation)
.class public interface abstract Linfo/flowersoft/theotown/util/PluginFileDecoder$KeyImplementation;
.super Ljava/lang/Object;
.source "PluginFileDecoder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/util/PluginFileDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "KeyImplementation"
.end annotation


# virtual methods
.method public abstract getKey([B)[B
.end method
