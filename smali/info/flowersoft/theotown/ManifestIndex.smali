###### Class info.flowersoft.theotown.ManifestIndex (info.flowersoft.theotown.ManifestIndex)
.class public final Linfo/flowersoft/theotown/ManifestIndex;
.super Ljava/lang/Object;
.source "ManifestIndex.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nManifestIndex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManifestIndex.kt\ninfo/flowersoft/theotown/ManifestIndex\n+ 2 Hashing.kt\ninfo/flowersoft/theotown/util/Hashing\n*L\n1#1,57:1\n22#2:58\n74#2,16:59\n*S KotlinDebug\n*F\n+ 1 ManifestIndex.kt\ninfo/flowersoft/theotown/ManifestIndex\n*L\n26#1:58\n26#1:59,16\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Linfo/flowersoft/theotown/ManifestIndex;

.field public static sha256ToManifestMapping:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$00HP5raNJsdhjN0HkIbyMknXaZU()Ljava/util/Map;
    .registers 1

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/ManifestIndex;->sha256ToManifestMapping$lambda$0()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$4-W-ePbmR4Olb3v1CDLUtOhlln4()Ljava/util/Map;
    .registers 1

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/ManifestIndex;->unload$lambda$0()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Linfo/flowersoft/theotown/ManifestIndex;

    invoke-direct {v0}, Linfo/flowersoft/theotown/ManifestIndex;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/ManifestIndex;->INSTANCE:Linfo/flowersoft/theotown/ManifestIndex;

    .line 19
    new-instance v0, Linfo/flowersoft/theotown/ManifestIndex$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Linfo/flowersoft/theotown/ManifestIndex$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/ManifestIndex;->sha256ToManifestMapping:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final sha256ToManifestMapping$lambda$0()Ljava/util/Map;
    .registers 1

    .line 19
    sget-object v0, Linfo/flowersoft/theotown/ManifestIndex;->INSTANCE:Linfo/flowersoft/theotown/ManifestIndex;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ManifestIndex;->load()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static final unload$lambda$0()Ljava/util/Map;
    .registers 1

    .line 54
    sget-object v0, Linfo/flowersoft/theotown/ManifestIndex;->INSTANCE:Linfo/flowersoft/theotown/ManifestIndex;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ManifestIndex;->load()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final load()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 25
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manifests.cjson"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "ae6bb9dcccb3ee65a2a5e1964c8ca37b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 75
    :try_start_1b
    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    const-string v4, "forName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v3, "getBytes(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1b .. :try_end_2f} :catch_3f

    .line 85
    :try_start_2f
    const-string v3, "md5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 86
    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    const-string v3, "digest(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2f .. :try_end_3e} :catch_41
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2f .. :try_end_3e} :catch_3f

    goto :goto_47

    :catch_3f
    move-exception v1

    goto :goto_51

    :catch_41
    move-exception v1

    .line 88
    :try_start_42
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    new-array v1, v2, [B

    .line 75
    :goto_47
    invoke-static {v1}, Linfo/flowersoft/theotown/util/Hex;->bin2hex([B)Ljava/lang/String;

    move-result-object v1

    const-string v3, "bin2hex(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_42 .. :try_end_50} :catch_3f

    goto :goto_56

    .line 77
    :goto_51
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    const-string v1, ""

    .line 25
    :goto_56
    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 28
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 29
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-static {v3}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 32
    invoke-static {}, Lkotlin/collections/MapsKt__MapsJVMKt;->createMapBuilder()Ljava/util/Map;

    move-result-object v1

    .line 33
    const-string v3, "manifests"

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->names()Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v3

    .line 36
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v4

    :goto_88
    if-ge v2, v4, :cond_a0

    .line 37
    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 38
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v6

    const-string v7, "getJSONObject(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_88

    .line 32
    :cond_a0
    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->build(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final resolve(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 3

    const-string v0, "sha256"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Linfo/flowersoft/theotown/ManifestIndex;->sha256ToManifestMapping:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    return-object p1
.end method

.method public final unload()V
    .registers 2

    .line 54
    new-instance v0, Linfo/flowersoft/theotown/ManifestIndex$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Linfo/flowersoft/theotown/ManifestIndex$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/ManifestIndex;->sha256ToManifestMapping:Lkotlin/Lazy;

    return-void
.end method

###### Class info.flowersoft.theotown.ManifestIndex$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ManifestIndex$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ManifestIndex$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/ManifestIndex;->$r8$lambda$00HP5raNJsdhjN0HkIbyMknXaZU()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.ManifestIndex$$ExternalSyntheticLambda1 (info.flowersoft.theotown.ManifestIndex$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/ManifestIndex$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/ManifestIndex;->$r8$lambda$4-W-ePbmR4Olb3v1CDLUtOhlln4()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
