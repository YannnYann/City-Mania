###### Class info.flowersoft.theotown.resources.TPCModule (info.flowersoft.theotown.resources.TPCModule)
.class public Linfo/flowersoft/theotown/resources/TPCModule;
.super Ljava/lang/Object;
.source "TPCModule.java"


# static fields
.field public static instance:Linfo/flowersoft/theotown/resources/TPCModule;


# instance fields
.field public trustedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public trustedUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Linfo/flowersoft/theotown/resources/TPCModule;
    .registers 1

    .line 82
    sget-object v0, Linfo/flowersoft/theotown/resources/TPCModule;->instance:Linfo/flowersoft/theotown/resources/TPCModule;

    if-nez v0, :cond_b

    .line 83
    new-instance v0, Linfo/flowersoft/theotown/resources/TPCModule;

    invoke-direct {v0}, Linfo/flowersoft/theotown/resources/TPCModule;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/resources/TPCModule;->instance:Linfo/flowersoft/theotown/resources/TPCModule;

    .line 85
    :cond_b
    sget-object v0, Linfo/flowersoft/theotown/resources/TPCModule;->instance:Linfo/flowersoft/theotown/resources/TPCModule;

    return-object v0
.end method


# virtual methods
.method public getCurrentUserTrustLevel()I
    .registers 5

    .line 108
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v0, 0x0

    return v0

    .line 110
    :cond_10
    invoke-static {}, Linfo/flowersoft/theotown/resources/TPCModule;->getInstance()Linfo/flowersoft/theotown/resources/TPCModule;

    move-result-object v1

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getForumId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/resources/TPCModule;->getUserTrustLevel(J)I

    move-result v0

    return v0
.end method

.method public getUserTrustLevel(J)I
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gtz v0, :cond_8

    return v1

    .line 32
    :cond_8
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/TPCModule;->trustedUsers:Ljava/util/Set;

    if-nez v0, :cond_14

    .line 33
    const-string v0, "tpus"

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/resources/TPCModule;->readKeys(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/TPCModule;->trustedUsers:Ljava/util/Set;

    .line 37
    :cond_14
    :try_start_14
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x76

    .line 38
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v2, 0x30

    .line 39
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v2, 0x3a

    .line 40
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "7w3egQelzCHqyDO9sWbxEE6EKLgUXBnH:user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Linfo/flowersoft/theotown/util/Hashing;->sha([B)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 42
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([B)[C

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    .line 43
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/TPCModule;->trustedUsers:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_57} :catch_70

    if-eqz v0, :cond_70

    const-wide/16 v0, 0xf

    cmp-long v0, p1, v0

    if-eqz v0, :cond_6e

    const-wide/16 v0, 0x758

    cmp-long v0, p1, v0

    if-eqz v0, :cond_6e

    const-wide/16 v0, 0x73f

    cmp-long p1, p1, v0

    if-nez p1, :cond_6c

    goto :goto_6e

    :cond_6c
    const/4 p1, 0x1

    return p1

    :cond_6e
    :goto_6e
    const/4 p1, 0x2

    return p1

    :catch_70
    :cond_70
    return v1
.end method

.method public isTrusted(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_5d

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_5d

    .line 57
    :cond_a
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/TPCModule;->trustedKeys:Ljava/util/Set;

    if-nez v1, :cond_16

    .line 58
    const-string v1, "trusted keys"

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/resources/TPCModule;->readKeys(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Linfo/flowersoft/theotown/resources/TPCModule;->trustedKeys:Ljava/util/Set;

    .line 66
    :cond_16
    :try_start_16
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x76

    .line 67
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v2, 0x32

    .line 68
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v2, 0x3a

    .line 69
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "F8CE16993D646545CE673FC51A2DC:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Linfo/flowersoft/theotown/util/Hashing;->sha([B)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 71
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([B)[C

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([C)V

    .line 72
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/TPCModule;->trustedKeys:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_59} :catch_5d

    if-eqz p1, :cond_5d

    const/4 p1, 0x1

    return p1

    :catch_5d
    :cond_5d
    :goto_5d
    return v0
.end method

.method public final declared-synchronized readKeys(Ljava/lang/String;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 89
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 90
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "plugin"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 92
    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 93
    :goto_15
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 94
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 95
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 96
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2d

    goto :goto_2f

    :catchall_2d
    move-exception p1

    goto :goto_34

    :cond_2f
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 100
    :cond_32
    monitor-exit p0

    return-object v0

    :goto_34
    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_2d

    throw p1
.end method
