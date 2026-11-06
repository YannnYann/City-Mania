###### Class info.flowersoft.theotown.resources.ManagedCache (info.flowersoft.theotown.resources.ManagedCache)
.class public final Linfo/flowersoft/theotown/resources/ManagedCache;
.super Ljava/lang/Object;
.source "ManagedCache.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/resources/ManagedCache$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nManagedCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManagedCache.kt\ninfo/flowersoft/theotown/resources/ManagedCache\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,109:1\n16144#2,2:110\n1#3:112\n460#4,7:113\n777#5:120\n873#5,2:121\n2199#5,2:123\n*S KotlinDebug\n*F\n+ 1 ManagedCache.kt\ninfo/flowersoft/theotown/resources/ManagedCache\n*L\n34#1:110,2\n55#1:113,7\n98#1:120\n98#1:121,2\n98#1:123,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Linfo/flowersoft/theotown/resources/ManagedCache;

.field public static final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/resources/ManagedCache$Entry;",
            ">;>;"
        }
    .end annotation
.end field

.field public static file:Ljava/io/File;

.field public static final identRegex:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Linfo/flowersoft/theotown/resources/ManagedCache;

    invoke-direct {v0}, Linfo/flowersoft/theotown/resources/ManagedCache;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/resources/ManagedCache;->INSTANCE:Linfo/flowersoft/theotown/resources/ManagedCache;

    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/resources/ManagedCache;->entries:Ljava/util/Map;

    .line 48
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "[a-zA-Z0-9+]+"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/resources/ManagedCache;->identRegex:Lkotlin/text/Regex;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/resources/ManagedCache$Entry;
    .registers 6

    .line 55
    new-instance v0, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;

    invoke-direct {v0, p1, p2, p3}, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Linfo/flowersoft/theotown/resources/ManagedCache;->entries:Ljava/util/Map;

    .line 460
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_15

    .line 55
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 463
    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    :cond_15
    check-cast v1, Ljava/util/Map;

    .line 55
    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final dispose()V
    .registers 2

    .line 106
    sget-object v0, Linfo/flowersoft/theotown/resources/ManagedCache;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 6

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/resources/ManagedCache;->requireIdentifier(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/resources/ManagedCache;->requireIdentifier(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, p3}, Linfo/flowersoft/theotown/resources/ManagedCache;->requireIdentifier(Ljava/lang/String;)V

    .line 62
    sget-object v0, Linfo/flowersoft/theotown/resources/ManagedCache;->entries:Ljava/util/Map;

    monitor-enter v0

    .line 63
    :try_start_1b
    sget-object v1, Linfo/flowersoft/theotown/resources/ManagedCache;->INSTANCE:Linfo/flowersoft/theotown/resources/ManagedCache;

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/resources/ManagedCache;->getEntry(Ljava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/resources/ManagedCache$Entry;

    move-result-object p1

    if-eqz p1, :cond_4b

    .line 64
    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;->getVersion()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4b

    .line 65
    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/resources/ManagedCache;->getCacheFile(Linfo/flowersoft/theotown/resources/ManagedCache$Entry;)Ljava/io/File;

    move-result-object p2

    .line 66
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result p3

    if-eqz p3, :cond_4b

    .line 67
    invoke-static {p2}, Lkotlin/io/FilesKt__FileReadWriteKt;->readBytes(Ljava/io/File;)[B

    move-result-object p2

    .line 68
    array-length p3, p2

    const/4 v1, 0x1

    if-nez p3, :cond_41

    move p3, v1

    goto :goto_42

    :cond_41
    const/4 p3, 0x0

    :goto_42
    if-nez p3, :cond_4b

    .line 69
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;->setUsed(Z)V
    :try_end_47
    .catchall {:try_start_1b .. :try_end_47} :catchall_49

    .line 62
    monitor-exit v0

    return-object p2

    :catchall_49
    move-exception p1

    goto :goto_50

    .line 74
    :cond_4b
    :try_start_4b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4d
    .catchall {:try_start_4b .. :try_end_4d} :catchall_49

    .line 62
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :goto_50
    monitor-exit v0

    throw p1
.end method

.method public final getCacheFile(Linfo/flowersoft/theotown/resources/ManagedCache$Entry;)Ljava/io/File;
    .registers 7

    .line 27
    new-instance v0, Ljava/io/File;

    sget-object v1, Linfo/flowersoft/theotown/resources/ManagedCache;->file:Ljava/io/File;

    if-nez v1, :cond_c

    const-string v1, "file"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getEntry(Ljava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/resources/ManagedCache$Entry;
    .registers 4

    .line 53
    sget-object v0, Linfo/flowersoft/theotown/resources/ManagedCache;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_11

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;

    return-object p1

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method public final load(Ljava/io/File;)V
    .registers 13

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sput-object p1, Linfo/flowersoft/theotown/resources/ManagedCache;->file:Ljava/io/File;

    .line 31
    sget-object v0, Linfo/flowersoft/theotown/resources/ManagedCache;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 32
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 33
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 34
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_80

    .line 16144
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_1e
    if-ge v2, v0, :cond_80

    aget-object v3, p1, v2

    .line 35
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_7d

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_7d

    .line 36
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/io/FilesKt__UtilsKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "_"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 37
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_7d

    .line 38
    sget-object v5, Linfo/flowersoft/theotown/resources/ManagedCache;->INSTANCE:Linfo/flowersoft/theotown/resources/ManagedCache;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x1

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v6, v8}, Linfo/flowersoft/theotown/resources/ManagedCache;->getEntry(Ljava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/resources/ManagedCache$Entry;

    move-result-object v6

    if-eqz v6, :cond_67

    .line 39
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_7d

    .line 41
    :cond_67
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x2

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v3, v6, v4}, Linfo/flowersoft/theotown/resources/ManagedCache;->addEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/resources/ManagedCache$Entry;

    :cond_7d
    :goto_7d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_80
    return-void

    .line 33
    :cond_81
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create managed cache folder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 8

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/resources/ManagedCache;->requireIdentifier(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/resources/ManagedCache;->requireIdentifier(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, p3}, Linfo/flowersoft/theotown/resources/ManagedCache;->requireIdentifier(Ljava/lang/String;)V

    .line 84
    sget-object v0, Linfo/flowersoft/theotown/resources/ManagedCache;->entries:Ljava/util/Map;

    monitor-enter v0

    .line 85
    :try_start_20
    sget-object v1, Linfo/flowersoft/theotown/resources/ManagedCache;->INSTANCE:Linfo/flowersoft/theotown/resources/ManagedCache;

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/resources/ManagedCache;->getEntry(Ljava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/resources/ManagedCache$Entry;

    move-result-object v2

    if-eqz v2, :cond_34

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/resources/ManagedCache;->getCacheFile(Linfo/flowersoft/theotown/resources/ManagedCache$Entry;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_34

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_34

    :catchall_32
    move-exception p1

    goto :goto_47

    .line 87
    :cond_34
    :goto_34
    invoke-virtual {v1, p1, p2, p3}, Linfo/flowersoft/theotown/resources/ManagedCache;->addEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/resources/ManagedCache$Entry;

    move-result-object p1

    const/4 p2, 0x1

    .line 88
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;->setUsed(Z)V

    .line 89
    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/resources/ManagedCache;->getCacheFile(Linfo/flowersoft/theotown/resources/ManagedCache$Entry;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1, p4}, Lkotlin/io/FilesKt__FileReadWriteKt;->writeBytes(Ljava/io/File;[B)V

    .line 90
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_45
    .catchall {:try_start_20 .. :try_end_45} :catchall_32

    .line 84
    monitor-exit v0

    return-void

    :goto_47
    monitor-exit v0

    throw p1
.end method

.method public final removeUnusedOfType(Ljava/lang/String;)V
    .registers 7

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/resources/ManagedCache;->requireIdentifier(Ljava/lang/String;)V

    .line 96
    sget-object v0, Linfo/flowersoft/theotown/resources/ManagedCache;->entries:Ljava/util/Map;

    monitor-enter v0

    .line 97
    :try_start_b
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_68

    .line 98
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_68

    check-cast v1, Ljava/lang/Iterable;

    .line 777
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 873
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;

    .line 98
    invoke-virtual {v4}, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;->getUsed()Z

    move-result v4

    if-nez v4, :cond_24

    .line 873
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :catchall_3b
    move-exception p1

    goto :goto_6a

    .line 98
    :cond_3d
    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_68

    check-cast v1, Ljava/lang/Iterable;

    .line 2199
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;

    .line 99
    sget-object v3, Linfo/flowersoft/theotown/resources/ManagedCache;->INSTANCE:Linfo/flowersoft/theotown/resources/ManagedCache;

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/resources/ManagedCache;->getCacheFile(Linfo/flowersoft/theotown/resources/ManagedCache$Entry;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 100
    invoke-virtual {v2}, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    .line 2200
    :cond_66
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_68
    .catchall {:try_start_b .. :try_end_68} :catchall_3b

    .line 96
    :cond_68
    monitor-exit v0

    return-void

    :goto_6a
    monitor-exit v0

    throw p1
.end method

.method public final requireIdentifier(Ljava/lang/String;)V
    .registers 4

    .line 49
    sget-object v0, Linfo/flowersoft/theotown/resources/ManagedCache;->identRegex:Lkotlin/text/Regex;

    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 50
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected identifier but got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class info.flowersoft.theotown.resources.ManagedCache.Entry (info.flowersoft.theotown.resources.ManagedCache$Entry)
.class public final Linfo/flowersoft/theotown/resources/ManagedCache$Entry;
.super Ljava/lang/Object;
.source "ManagedCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/resources/ManagedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public final id:Ljava/lang/String;

.field public final type:Ljava/lang/String;

.field public used:Z

.field public final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;->type:Ljava/lang/String;

    iput-object p2, p0, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;->id:Ljava/lang/String;

    iput-object p3, p0, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;->version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;

    iget-object v1, p0, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;->type:Ljava/lang/String;

    iget-object v3, p1, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;->id:Ljava/lang/String;

    iget-object v3, p1, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;->version:Ljava/lang/String;

    iget-object p1, p1, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;->version:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public final getId()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final getUsed()Z
    .registers 2

    .line 25
    iget-boolean v0, p0, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;->used:Z

    return v0
.end method

.method public final getVersion()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;->version:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setUsed(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;->used:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entry(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/resources/ManagedCache$Entry;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
