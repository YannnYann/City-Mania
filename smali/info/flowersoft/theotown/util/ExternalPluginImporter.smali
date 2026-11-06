###### Class info.flowersoft.theotown.util.ExternalPluginImporter (info.flowersoft.theotown.util.ExternalPluginImporter)
.class public final Linfo/flowersoft/theotown/util/ExternalPluginImporter;
.super Ljava/lang/Object;
.source "ExternalPluginImporter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExternalPluginImporter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExternalPluginImporter.kt\ninfo/flowersoft/theotown/util/ExternalPluginImporter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,74:1\n1#2:75\n*E\n"
.end annotation


# instance fields
.field public final decoder:Linfo/flowersoft/theotown/util/PluginFileDecoder;

.field public final signatureVerifier:Linfo/flowersoft/theotown/util/SignatureVerifier;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/SignatureVerifier;Linfo/flowersoft/theotown/util/PluginFileDecoder;)V
    .registers 4

    const-string v0, "signatureVerifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "decoder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Linfo/flowersoft/theotown/util/ExternalPluginImporter;->signatureVerifier:Linfo/flowersoft/theotown/util/SignatureVerifier;

    .line 12
    iput-object p2, p0, Linfo/flowersoft/theotown/util/ExternalPluginImporter;->decoder:Linfo/flowersoft/theotown/util/PluginFileDecoder;

    return-void
.end method


# virtual methods
.method public final load([B)Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;
    .registers 12

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ExternalPluginImporter;->signatureVerifier:Linfo/flowersoft/theotown/util/SignatureVerifier;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/SignatureVerifier;->verify(Ljava/io/InputStream;)Linfo/flowersoft/theotown/util/SignatureVerifier$Result;

    move-result-object v0

    .line 30
    instance-of v1, v0, Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Success;

    if-eqz v1, :cond_f4

    .line 34
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 35
    check-cast v0, Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Success;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Success;->getBytesToSkip()I

    move-result v3

    .line 36
    array-length v4, p1

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SignatureVerifier$Result$Success;->getBytesToSkip()I

    move-result v0

    sub-int/2addr v4, v0

    invoke-direct {v2, p1, v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 34
    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-gt v0, p1, :cond_d9

    const/16 v2, 0x4001

    if-ge p1, v2, :cond_d9

    .line 42
    new-array v2, p1, [B

    .line 43
    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->read([B)I

    move-result v3

    if-ne v3, p1, :cond_be

    .line 47
    new-instance p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    .line 48
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 47
    invoke-direct {p1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50
    const-string v2, "version"

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_a3

    .line 53
    const-string v2, "user"

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 54
    const-string v2, "Failed requirement."

    if-gt v0, v4, :cond_9d

    const v0, 0x7fffffff

    if-gt v4, v0, :cond_9d

    .line 56
    const-string v0, "level"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_97

    const/4 v0, 0x3

    if-ge v5, v0, :cond_97

    .line 59
    const-string v0, "time"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_91

    .line 62
    const-string v0, "manifest"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_8b

    .line 65
    new-instance v3, Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;

    .line 70
    iget-object p1, p0, Linfo/flowersoft/theotown/util/ExternalPluginImporter;->decoder:Linfo/flowersoft/theotown/util/PluginFileDecoder;

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/PluginFileDecoder;->decode(Ljava/io/InputStream;)[B

    move-result-object v9

    .line 65
    invoke-direct/range {v3 .. v9}, Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;-><init>(IIJLinfo/flowersoft/theotown/util/json/JSONObject;[B)V

    return-object v3

    .line 63
    :cond_8b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_91
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_97
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_9d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_a3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid version "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_be
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not read header of length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_d9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid header size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_f4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Plugin signature could not be verified. Ensure the file is not corrupted and up-to-date."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class info.flowersoft.theotown.util.ExternalPluginImporter.ExternalPluginData (info.flowersoft.theotown.util.ExternalPluginImporter$ExternalPluginData)
.class public final Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;
.super Ljava/lang/Object;
.source "ExternalPluginImporter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/util/ExternalPluginImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExternalPluginData"
.end annotation


# instance fields
.field public content:[B

.field public final issueTime:J

.field public final manifest:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public final privilegeLevel:I

.field public final userId:I


# direct methods
.method public constructor <init>(IIJLinfo/flowersoft/theotown/util/json/JSONObject;[B)V
    .registers 8

    const-string v0, "manifest"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;->userId:I

    .line 17
    iput p2, p0, Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;->privilegeLevel:I

    .line 18
    iput-wide p3, p0, Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;->issueTime:J

    .line 19
    iput-object p5, p0, Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;->manifest:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 25
    iput-object p6, p0, Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;->content:[B

    return-void
.end method


# virtual methods
.method public final getContent()[B
    .registers 2

    .line 25
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;->content:[B

    return-object v0
.end method

.method public final getIssueTime()J
    .registers 3

    .line 18
    iget-wide v0, p0, Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;->issueTime:J

    return-wide v0
.end method

.method public final getManifest()Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 2

    .line 19
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;->manifest:Linfo/flowersoft/theotown/util/json/JSONObject;

    return-object v0
.end method

.method public final getPrivilegeLevel()I
    .registers 2

    .line 17
    iget v0, p0, Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;->privilegeLevel:I

    return v0
.end method

.method public final getUserId()I
    .registers 2

    .line 16
    iget v0, p0, Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;->userId:I

    return v0
.end method

.method public final setContent([B)V
    .registers 2

    .line 25
    iput-object p1, p0, Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;->content:[B

    return-void
.end method
