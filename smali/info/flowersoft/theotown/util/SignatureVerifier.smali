###### Class info.flowersoft.theotown.util.SignatureVerifier (info.flowersoft.theotown.util.SignatureVerifier)
.class public final Linfo/flowersoft/theotown/util/SignatureVerifier;
.super Ljava/lang/Object;
.source "SignatureVerifier.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/util/SignatureVerifier$Companion;,
        Linfo/flowersoft/theotown/util/SignatureVerifier$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSignatureVerifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SignatureVerifier.kt\ninfo/flowersoft/theotown/util/SignatureVerifier\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,109:1\n1745#2:110\n1820#2,3:111\n1745#2:115\n1820#2,3:116\n2199#2,2:119\n2208#2,3:121\n1#3:114\n*S KotlinDebug\n*F\n+ 1 SignatureVerifier.kt\ninfo/flowersoft/theotown/util/SignatureVerifier\n*L\n23#1:110\n23#1:111,3\n90#1:115\n90#1:116,3\n97#1:119,2\n100#1:121,3\n*E\n"
.end annotation


# static fields
.field public static final Companion:Linfo/flowersoft/theotown/util/SignatureVerifier$Companion;

.field public static final DEFAULT_MAGIC_BYTES:[B

.field public static final DEFAULT_PUBLIC_KEY:[B


# instance fields
.field public final magicBytes:[B

.field public final publicKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Linfo/flowersoft/theotown/util/SignatureVerifier$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SignatureVerifier$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Linfo/flowersoft/theotown/util/SignatureVerifier;->Companion:Linfo/flowersoft/theotown/util/SignatureVerifier$Companion;

    .line 57
    const-string v0, "305c300d06092a864886f70d0101010500034b003048024100d0e2136f978bf5a73beb35db436288984dc8806eb55bbacf1aa5573cf4c32da3e24415502e194590fcd0863ee302225f663128164a1a77764ed3e4709fe58e450203010001"

    invoke-static {v0}, Linfo/flowersoft/theotown/util/Hex;->hex2bin(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/util/SignatureVerifier;->DEFAULT_PUBLIC_KEY:[B

    .line 60
    const-string v0, "TTSIG"

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/util/SignatureVerifier;->DEFAULT_MAGIC_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Linfo/flowersoft/theotown/util/SignatureVerifier;-><init>(Ljava/util/List;[BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;[B)V"
        }
    .end annotation

    const-string v0, "publicKeys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "magicBytes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p2, p0, Linfo/flowersoft/theotown/util/SignatureVerifier;->magicBytes:[B

    .line 23
    check-cast p1, Ljava/lang/Iterable;

    .line 1745
    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1820
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1821
    check-cast v0, [B

    .line 23
    sget-object v1, Linfo/flowersoft/theotown/util/SignatureVerifier;->Companion:Linfo/flowersoft/theotown/util/SignatureVerifier$Companion;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/util/SignatureVerifier$Companion;->getPublicKey([B)Ljava/security/PublicKey;

    move-result-object v0

    .line 1821
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 23
    :cond_36
    iput-object p2, p0, Linfo/flowersoft/theotown/util/SignatureVerifier;->publicKeys:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;[BILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_a

    .line 12
    sget-object p1, Linfo/flowersoft/theotown/util/SignatureVerifier;->DEFAULT_PUBLIC_KEY:[B

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :cond_a
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_10

    .line 17
    sget-object p2, Linfo/flowersoft/theotown/util/SignatureVerifier;->DEFAULT_MAGIC_BYTES:[B

    .line 11
    :cond_10
    invoke-direct {p0, p1, p2}, Linfo/flowersoft/theotown/util/SignatureVerifier;-><init>(Ljava/util/List;[B)V

    return-void
.end method

.method public static final synthetic access$getDEFAULT_MAGIC_BYTES$cp()[B
    .registers 1

    .line 11
    sget-object v0, Linfo/flowersoft/theotown/util/SignatureVerifier;->DEFAULT_MAGIC_BYTES:[B

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_PUBLIC_KEY$cp()[B
    .registers 1

    .line 11
    sget-object v0, Linfo/flowersoft/theotown/util/SignatureVerifier;->DEFAULT_PUBLIC_KEY:[B

    return-object v0
.end method


# virtual methods
.method public final verify(Ljava/io/InputStream;)Linfo/flowersoft/theotown/util/SignatureVerifier$Result;
    .registers 11

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    :try_start_5
    iget-object v0, p0, Linfo/flowersoft/theotown/util/SignatureVerifier;->magicBytes:[B

    array-length v0, v0

    new-array v1, v0, [B

    .line 75
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ne v2, v0, :cond_e1

    .line 76
    iget-object v0, p0, Linfo/flowersoft/theotown/util/SignatureVerifier;->magicBytes:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 78
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b6

    const/16 v0, 0x40

    .line 85
    new-array v2, v0, [B

    .line 86
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ne v3, v0, :cond_ae

    .line 90
    iget-object v0, p0, Linfo/flowersoft/theotown/util/SignatureVerifier;->publicKeys:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 1745
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1820
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1821
    check-cast v4, Ljava/security/PublicKey;

    .line 91
    const-string v5, "SHA256withRSA"

    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 1821
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    :catchall_58
    move-exception v0

    goto/16 :goto_e9

    :cond_5b
    const/16 v0, 0x1000

    .line 94
    new-array v4, v0, [B

    :cond_5f
    const/4 v5, 0x0

    .line 96
    invoke-virtual {p1, v4, v5, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-eq v6, v1, :cond_7a

    .line 2199
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/Signature;

    .line 97
    invoke-virtual {v8, v4, v5, v6}, Ljava/security/Signature;->update([BII)V

    goto :goto_6a

    .line 2209
    :cond_7a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_a8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v4, v5, 0x1

    if-gez v5, :cond_90

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    :cond_90
    check-cast v1, Ljava/security/Signature;

    .line 101
    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 102
    new-instance v0, Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Success;

    iget-object v1, p0, Linfo/flowersoft/theotown/util/SignatureVerifier;->magicBytes:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x41

    invoke-direct {v0, v1, v5}, Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Success;-><init>(II)V
    :try_end_a2
    .catchall {:try_start_5 .. :try_end_a2} :catchall_58

    .line 73
    invoke-static {p1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :cond_a6
    move v5, v4

    goto :goto_7e

    .line 105
    :cond_a8
    :try_start_a8
    sget-object v0, Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Failure;->INSTANCE:Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Failure;
    :try_end_aa
    .catchall {:try_start_a8 .. :try_end_aa} :catchall_58

    .line 73
    invoke-static {p1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 87
    :cond_ae
    :try_start_ae
    const-string v0, "Could not read signature"

    .line 86
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_b6
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported signature version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_d1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 80
    const-string v1, "Eof"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_d9
    const-string v0, "File does not have signature"

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_e1
    const-string v0, "Magic could not be read"

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_e9
    .catchall {:try_start_ae .. :try_end_e9} :catchall_58

    .line 73
    :goto_e9
    :try_start_e9
    throw v0
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_ea

    :catchall_ea
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

###### Class info.flowersoft.theotown.util.SignatureVerifier.Companion (info.flowersoft.theotown.util.SignatureVerifier$Companion)
.class public final Linfo/flowersoft/theotown/util/SignatureVerifier$Companion;
.super Ljava/lang/Object;
.source "SignatureVerifier.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/util/SignatureVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Linfo/flowersoft/theotown/util/SignatureVerifier$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDEFAULT_MAGIC_BYTES()[B
    .registers 2

    .line 60
    invoke-static {}, Linfo/flowersoft/theotown/util/SignatureVerifier;->access$getDEFAULT_MAGIC_BYTES$cp()[B

    move-result-object v0

    return-object v0
.end method

.method public final getDEFAULT_PUBLIC_KEY()[B
    .registers 2

    .line 57
    invoke-static {}, Linfo/flowersoft/theotown/util/SignatureVerifier;->access$getDEFAULT_PUBLIC_KEY$cp()[B

    move-result-object v0

    return-object v0
.end method

.method public final getPublicKey([B)Ljava/security/PublicKey;
    .registers 4

    const-string v0, "hexPublicKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 64
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 63
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.util.SignatureVerifier.Result (info.flowersoft.theotown.util.SignatureVerifier$Result)
.class public interface abstract Linfo/flowersoft/theotown/util/SignatureVerifier$Result;
.super Ljava/lang/Object;
.source "SignatureVerifier.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/util/SignatureVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Failure;,
        Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Success;
    }
.end annotation

###### Class info.flowersoft.theotown.util.SignatureVerifier.Result.Failure (info.flowersoft.theotown.util.SignatureVerifier$Result$Failure)
.class public final Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Failure;
.super Ljava/lang/Object;
.source "SignatureVerifier.kt"

# interfaces
.implements Linfo/flowersoft/theotown/util/SignatureVerifier$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/util/SignatureVerifier$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Failure"
.end annotation


# static fields
.field public static final INSTANCE:Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Failure;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Failure;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Failure;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Failure;->INSTANCE:Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Failure;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of p1, p1, Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Failure;

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    const v0, -0x6a114770

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 0
    const-string v0, "Failure"

    return-object v0
.end method

###### Class info.flowersoft.theotown.util.SignatureVerifier.Result.Success (info.flowersoft.theotown.util.SignatureVerifier$Result$Success)
.class public final Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Success;
.super Ljava/lang/Object;
.source "SignatureVerifier.kt"

# interfaces
.implements Linfo/flowersoft/theotown/util/SignatureVerifier$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/util/SignatureVerifier$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
.end annotation


# instance fields
.field public final bytesToSkip:I

.field public final keyIndex:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Success;->bytesToSkip:I

    .line 42
    iput p2, p0, Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Success;->keyIndex:I

    return-void
.end method

.method public static synthetic copy$default(Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Success;IIILjava/lang/Object;)Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Success;
    .registers 5

    .line 0
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget p1, p0, Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Success;->bytesToSkip:I

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget p2, p0, Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Success;->keyIndex:I

    :cond_c
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Success;->copy(II)Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Success;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 2

    .line 0
    iget v0, p0, Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Success;->bytesToSkip:I

    return v0
.end method

.method public final component2()I
    .registers 2

    .line 0
    iget v0, p0, Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Success;->keyIndex:I

    return v0
.end method

.method public final copy(II)Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Success;
    .registers 4

    .line 0
    new-instance v0, Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Success;

    invoke-direct {v0, p1, p2}, Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Success;-><init>(II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Success;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Success;

    iget v1, p0, Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Success;->bytesToSkip:I

    iget v3, p1, Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Success;->bytesToSkip:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Success;->keyIndex:I

    iget p1, p1, Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Success;->keyIndex:I

    if-eq v1, p1, :cond_1a

    return v2

    :cond_1a
    return v0
.end method

.method public final getBytesToSkip()I
    .registers 2

    .line 38
    iget v0, p0, Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Success;->bytesToSkip:I

    return v0
.end method

.method public final getKeyIndex()I
    .registers 2

    .line 42
    iget v0, p0, Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Success;->keyIndex:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget v0, p0, Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Success;->bytesToSkip:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Success;->keyIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Success(bytesToSkip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Success;->bytesToSkip:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", keyIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Success;->keyIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
