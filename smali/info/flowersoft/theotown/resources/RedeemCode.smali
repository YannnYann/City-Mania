###### Class info.flowersoft.theotown.resources.RedeemCode (info.flowersoft.theotown.resources.RedeemCode)
.class public Linfo/flowersoft/theotown/resources/RedeemCode;
.super Ljava/lang/Object;
.source "RedeemCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/resources/RedeemCode$CheckResult;
    }
.end annotation


# instance fields
.field public code:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$k6E39Dofugyg43y1arbckm3ELUI(Linfo/flowersoft/theotown/resources/RedeemCode;Linfo/flowersoft/theotown/resources/RedeemCode$CheckResult;)V
    .registers 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x10

    .line 49
    :try_start_5
    invoke-static {v0}, Linfo/flowersoft/theotown/util/RandomUtil;->generateRandomString(I)Ljava/lang/String;

    move-result-object v1

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "?code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Linfo/flowersoft/theotown/resources/RedeemCode;->code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&payload="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 51
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://api.theotown.com/gift/redeem"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    :goto_4f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5f

    .line 54
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    :catch_59
    move-exception p0

    goto/16 :goto_120

    :catch_5c
    move-exception p0

    goto/16 :goto_12f

    .line 56
    :cond_5f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 58
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x6

    const/4 v5, 0x0

    if-lt v3, v4, :cond_10d

    .line 59
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    .line 60
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x5

    .line 61
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-lez v4, :cond_123

    .line 63
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v0, :cond_123

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/resources/RedeemCode;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Linfo/flowersoft/theotown/resources/RedeemCode;->normalizeCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v5, p0, Linfo/flowersoft/theotown/resources/RedeemCode;->code:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    const-string v5, "saXYPCh6PsdvTS7xvI7d9MrV"

    invoke-static {v5}, Lcom/badlogic/gdx/utils/Base64Coder;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EDJX"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v3

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "95ZB"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/resources/RedeemCode;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    const-string v3, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-static {v1, v3}, Linfo/flowersoft/theotown/resources/RedeemCode;->normalizeCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    iget-object p0, p0, Linfo/flowersoft/theotown/resources/RedeemCode;->code:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_123

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_123

    .line 77
    invoke-interface {p1, v4}, Linfo/flowersoft/theotown/resources/RedeemCode$CheckResult;->onSuccess(I)V

    return-void

    .line 82
    :cond_10d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_11a

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_11c

    :cond_11a
    const-string p0, "Empty answer"

    :goto_11c
    invoke-interface {p1, p0}, Linfo/flowersoft/theotown/resources/RedeemCode$CheckResult;->onFailure(Ljava/lang/String;)V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_11f} :catch_5c
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_11f} :catch_129
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_11f} :catch_59

    return-void

    .line 92
    :goto_120
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    :cond_123
    const-string p0, "unkown"

    invoke-interface {p1, p0}, Linfo/flowersoft/theotown/resources/RedeemCode$CheckResult;->onFailure(Ljava/lang/String;)V

    goto :goto_136

    .line 89
    :catch_129
    const-string p0, "Malformed diamonds"

    invoke-interface {p1, p0}, Linfo/flowersoft/theotown/resources/RedeemCode$CheckResult;->onFailure(Ljava/lang/String;)V

    goto :goto_136

    .line 86
    :goto_12f
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Linfo/flowersoft/theotown/resources/RedeemCode$CheckResult;->onFailure(Ljava/lang/String;)V

    :goto_136
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/resources/RedeemCode;->code:Ljava/lang/String;

    return-void
.end method

.method public static normalizeCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 109
    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyz"

    invoke-static {p0, v0}, Linfo/flowersoft/theotown/resources/RedeemCode;->normalizeCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static normalizeCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    .line 116
    :goto_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2c

    add-int/lit8 v3, v2, 0x2

    .line 117
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 118
    rem-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    goto :goto_e

    .line 121
    :cond_2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public check(Linfo/flowersoft/theotown/resources/RedeemCode$CheckResult;)V
    .registers 4

    .line 47
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Linfo/flowersoft/theotown/resources/RedeemCode$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/resources/RedeemCode$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/resources/RedeemCode;Linfo/flowersoft/theotown/resources/RedeemCode$CheckResult;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 96
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public isValid()Z
    .registers 4

    .line 37
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/RedeemCode;->code:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_30

    iget-object v0, p0, Linfo/flowersoft/theotown/resources/RedeemCode;->code:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_15

    goto :goto_30

    :cond_15
    move v0, v2

    .line 38
    :goto_16
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/RedeemCode;->code:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 39
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/RedeemCode;->code:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-nez v1, :cond_2b

    return v2

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_2e
    const/4 v0, 0x1

    return v0

    :cond_30
    :goto_30
    return v2
.end method

.method public final md5(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 100
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 101
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 102
    :goto_14
    array-length v2, p1

    if-ge v1, v2, :cond_2d

    .line 103
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    or-int/lit16 v2, v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 105
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.resources.RedeemCode.CheckResult (info.flowersoft.theotown.resources.RedeemCode$CheckResult)
.class public interface abstract Linfo/flowersoft/theotown/resources/RedeemCode$CheckResult;
.super Ljava/lang/Object;
.source "RedeemCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/resources/RedeemCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CheckResult"
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/lang/String;)V
.end method

.method public abstract onSuccess(I)V
.end method

###### Class info.flowersoft.theotown.resources.RedeemCode$$ExternalSyntheticLambda0 (info.flowersoft.theotown.resources.RedeemCode$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/resources/RedeemCode$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/resources/RedeemCode;

.field public final synthetic f$1:Linfo/flowersoft/theotown/resources/RedeemCode$CheckResult;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/resources/RedeemCode;Linfo/flowersoft/theotown/resources/RedeemCode$CheckResult;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/resources/RedeemCode$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/resources/RedeemCode;

    iput-object p2, p0, Linfo/flowersoft/theotown/resources/RedeemCode$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/resources/RedeemCode$CheckResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/RedeemCode$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/resources/RedeemCode;

    iget-object v1, p0, Linfo/flowersoft/theotown/resources/RedeemCode$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/resources/RedeemCode$CheckResult;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/RedeemCode;->$r8$lambda$k6E39Dofugyg43y1arbckm3ELUI(Linfo/flowersoft/theotown/resources/RedeemCode;Linfo/flowersoft/theotown/resources/RedeemCode$CheckResult;)V

    return-void
.end method
