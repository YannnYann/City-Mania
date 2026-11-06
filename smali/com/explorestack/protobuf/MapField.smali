###### Class com.explorestack.protobuf.MapField (com.explorestack.protobuf.MapField)
.class public Lcom/explorestack/protobuf/MapField;
.super Ljava/lang/Object;
.source "MapField.java"

# interfaces
.implements Lcom/explorestack/protobuf/MutabilityOracle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;,
        Lcom/explorestack/protobuf/MapField$ImmutableMessageConverter;,
        Lcom/explorestack/protobuf/MapField$Converter;,
        Lcom/explorestack/protobuf/MapField$StorageMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/MutabilityOracle;"
    }
.end annotation


# instance fields
.field public final converter:Lcom/explorestack/protobuf/MapField$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapField$Converter<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public volatile isMutable:Z

.field public listData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Message;",
            ">;"
        }
    .end annotation
.end field

.field public mapData:Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public volatile mode:Lcom/explorestack/protobuf/MapField$StorageMode;


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/MapEntry;Lcom/explorestack/protobuf/MapField$StorageMode;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/MapEntry<",
            "TK;TV;>;",
            "Lcom/explorestack/protobuf/MapField$StorageMode;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 137
    new-instance v0, Lcom/explorestack/protobuf/MapField$ImmutableMessageConverter;

    invoke-direct {v0, p1}, Lcom/explorestack/protobuf/MapField$ImmutableMessageConverter;-><init>(Lcom/explorestack/protobuf/MapEntry;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/explorestack/protobuf/MapField;-><init>(Lcom/explorestack/protobuf/MapField$Converter;Lcom/explorestack/protobuf/MapField$StorageMode;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lcom/explorestack/protobuf/MapField$Converter;Lcom/explorestack/protobuf/MapField$StorageMode;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/MapField$Converter<",
            "TK;TV;>;",
            "Lcom/explorestack/protobuf/MapField$StorageMode;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/explorestack/protobuf/MapField;->converter:Lcom/explorestack/protobuf/MapField$Converter;

    const/4 p1, 0x1

    .line 130
    iput-boolean p1, p0, Lcom/explorestack/protobuf/MapField;->isMutable:Z

    .line 131
    iput-object p2, p0, Lcom/explorestack/protobuf/MapField;->mode:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 132
    new-instance p1, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;

    invoke-direct {p1, p0, p3}, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;-><init>(Lcom/explorestack/protobuf/MutabilityOracle;Ljava/util/Map;)V

    iput-object p1, p0, Lcom/explorestack/protobuf/MapField;->mapData:Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;

    const/4 p1, 0x0

    .line 133
    iput-object p1, p0, Lcom/explorestack/protobuf/MapField;->listData:Ljava/util/List;

    return-void
.end method

.method public static emptyMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/MapEntry<",
            "TK;TV;>;)",
            "Lcom/explorestack/protobuf/MapField<",
            "TK;TV;>;"
        }
    .end annotation

    .line 143
    new-instance v0, Lcom/explorestack/protobuf/MapField;

    sget-object v1, Lcom/explorestack/protobuf/MapField$StorageMode;->MAP:Lcom/explorestack/protobuf/MapField$StorageMode;

    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v0, p0, v1, v2}, Lcom/explorestack/protobuf/MapField;-><init>(Lcom/explorestack/protobuf/MapEntry;Lcom/explorestack/protobuf/MapField$StorageMode;Ljava/util/Map;)V

    return-object v0
.end method

.method public static newMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/MapEntry<",
            "TK;TV;>;)",
            "Lcom/explorestack/protobuf/MapField<",
            "TK;TV;>;"
        }
    .end annotation

    .line 149
    new-instance v0, Lcom/explorestack/protobuf/MapField;

    sget-object v1, Lcom/explorestack/protobuf/MapField$StorageMode;->MAP:Lcom/explorestack/protobuf/MapField$StorageMode;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/explorestack/protobuf/MapField;-><init>(Lcom/explorestack/protobuf/MapEntry;Lcom/explorestack/protobuf/MapField$StorageMode;Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 208
    new-instance v0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;-><init>(Lcom/explorestack/protobuf/MutabilityOracle;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/MapField;->mapData:Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;

    .line 209
    sget-object v0, Lcom/explorestack/protobuf/MapField$StorageMode;->MAP:Lcom/explorestack/protobuf/MapField$StorageMode;

    iput-object v0, p0, Lcom/explorestack/protobuf/MapField;->mode:Lcom/explorestack/protobuf/MapField$StorageMode;

    return-void
.end method

.method public final convertKeyAndValueToMessage(Ljava/lang/Object;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/explorestack/protobuf/Message;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->converter:Lcom/explorestack/protobuf/MapField$Converter;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/MapField$Converter;->convertKeyAndValueToMessage(Ljava/lang/Object;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message;

    move-result-object p1

    return-object p1
.end method

.method public final convertListToMap(Ljava/util/List;)Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Message;",
            ">;)",
            "Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 172
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Message;

    .line 173
    invoke-virtual {p0, v1, v0}, Lcom/explorestack/protobuf/MapField;->convertMessageToKeyAndValue(Lcom/explorestack/protobuf/Message;Ljava/util/Map;)V

    goto :goto_9

    .line 175
    :cond_19
    new-instance p1, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;

    invoke-direct {p1, p0, v0}, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;-><init>(Lcom/explorestack/protobuf/MutabilityOracle;Ljava/util/Map;)V

    return-object p1
.end method

.method public final convertMapToList(Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap<",
            "TK;TV;>;)",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Message;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 165
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/explorestack/protobuf/MapField;->convertKeyAndValueToMessage(Ljava/lang/Object;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_29
    return-object v0
.end method

.method public final convertMessageToKeyAndValue(Lcom/explorestack/protobuf/Message;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Message;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->converter:Lcom/explorestack/protobuf/MapField$Converter;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/MapField$Converter;->convertMessageToKeyAndValue(Lcom/explorestack/protobuf/Message;Ljava/util/Map;)V

    return-void
.end method

.method public copy()Lcom/explorestack/protobuf/MapField;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapField<",
            "TK;TV;>;"
        }
    .end annotation

    .line 229
    new-instance v0, Lcom/explorestack/protobuf/MapField;

    iget-object v1, p0, Lcom/explorestack/protobuf/MapField;->converter:Lcom/explorestack/protobuf/MapField$Converter;

    sget-object v2, Lcom/explorestack/protobuf/MapField$StorageMode;->MAP:Lcom/explorestack/protobuf/MapField$StorageMode;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/explorestack/protobuf/MapFieldLite;->copy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/MapField;-><init>(Lcom/explorestack/protobuf/MapField$Converter;Lcom/explorestack/protobuf/MapField$StorageMode;Ljava/util/Map;)V

    return-object v0
.end method

.method public ensureMutable()V
    .registers 2

    .line 280
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapField;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 281
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 215
    instance-of v0, p1, Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 218
    :cond_6
    check-cast p1, Lcom/explorestack/protobuf/MapField;

    .line 219
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/MapFieldLite;->equals(Ljava/util/Map;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public getList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Message;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->mode:Lcom/explorestack/protobuf/MapField$StorageMode;

    sget-object v1, Lcom/explorestack/protobuf/MapField$StorageMode;->MAP:Lcom/explorestack/protobuf/MapField$StorageMode;

    if-ne v0, v1, :cond_1e

    .line 235
    monitor-enter p0

    .line 236
    :try_start_7
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->mode:Lcom/explorestack/protobuf/MapField$StorageMode;

    if-ne v0, v1, :cond_1a

    .line 237
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->mapData:Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/MapField;->convertMapToList(Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/MapField;->listData:Ljava/util/List;

    .line 238
    sget-object v0, Lcom/explorestack/protobuf/MapField$StorageMode;->BOTH:Lcom/explorestack/protobuf/MapField$StorageMode;

    iput-object v0, p0, Lcom/explorestack/protobuf/MapField;->mode:Lcom/explorestack/protobuf/MapField$StorageMode;

    goto :goto_1a

    :catchall_18
    move-exception v0

    goto :goto_1c

    .line 240
    :cond_1a
    :goto_1a
    monitor-exit p0

    goto :goto_1e

    :goto_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_18

    throw v0

    .line 242
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->listData:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->mode:Lcom/explorestack/protobuf/MapField$StorageMode;

    sget-object v1, Lcom/explorestack/protobuf/MapField$StorageMode;->LIST:Lcom/explorestack/protobuf/MapField$StorageMode;

    if-ne v0, v1, :cond_1e

    .line 181
    monitor-enter p0

    .line 182
    :try_start_7
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->mode:Lcom/explorestack/protobuf/MapField$StorageMode;

    if-ne v0, v1, :cond_1a

    .line 183
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->listData:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/MapField;->convertListToMap(Ljava/util/List;)Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/MapField;->mapData:Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;

    .line 184
    sget-object v0, Lcom/explorestack/protobuf/MapField$StorageMode;->BOTH:Lcom/explorestack/protobuf/MapField$StorageMode;

    iput-object v0, p0, Lcom/explorestack/protobuf/MapField;->mode:Lcom/explorestack/protobuf/MapField$StorageMode;

    goto :goto_1a

    :catchall_18
    move-exception v0

    goto :goto_1c

    .line 186
    :cond_1a
    :goto_1a
    monitor-exit p0

    goto :goto_1e

    :goto_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_18

    throw v0

    .line 188
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->mapData:Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMapEntryMessageDefaultInstance()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 259
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->converter:Lcom/explorestack/protobuf/MapField$Converter;

    invoke-interface {v0}, Lcom/explorestack/protobuf/MapField$Converter;->getMessageDefaultInstance()Lcom/explorestack/protobuf/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMutableList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Message;",
            ">;"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->mode:Lcom/explorestack/protobuf/MapField$StorageMode;

    sget-object v1, Lcom/explorestack/protobuf/MapField$StorageMode;->LIST:Lcom/explorestack/protobuf/MapField$StorageMode;

    if-eq v0, v1, :cond_19

    .line 248
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->mode:Lcom/explorestack/protobuf/MapField$StorageMode;

    sget-object v2, Lcom/explorestack/protobuf/MapField$StorageMode;->MAP:Lcom/explorestack/protobuf/MapField$StorageMode;

    if-ne v0, v2, :cond_14

    .line 249
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->mapData:Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/MapField;->convertMapToList(Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/MapField;->listData:Ljava/util/List;

    :cond_14
    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Lcom/explorestack/protobuf/MapField;->mapData:Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;

    .line 252
    iput-object v1, p0, Lcom/explorestack/protobuf/MapField;->mode:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 254
    :cond_19
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->listData:Ljava/util/List;

    return-object v0
.end method

.method public getMutableMap()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->mode:Lcom/explorestack/protobuf/MapField$StorageMode;

    sget-object v1, Lcom/explorestack/protobuf/MapField$StorageMode;->MAP:Lcom/explorestack/protobuf/MapField$StorageMode;

    if-eq v0, v1, :cond_19

    .line 194
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->mode:Lcom/explorestack/protobuf/MapField$StorageMode;

    sget-object v2, Lcom/explorestack/protobuf/MapField$StorageMode;->LIST:Lcom/explorestack/protobuf/MapField$StorageMode;

    if-ne v0, v2, :cond_14

    .line 195
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->listData:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/MapField;->convertListToMap(Ljava/util/List;)Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/MapField;->mapData:Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;

    :cond_14
    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/explorestack/protobuf/MapField;->listData:Ljava/util/List;

    .line 198
    iput-object v1, p0, Lcom/explorestack/protobuf/MapField;->mode:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 200
    :cond_19
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->mapData:Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 224
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/protobuf/MapFieldLite;->calculateHashCodeForMap(Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public isMutable()Z
    .registers 2

    .line 272
    iget-boolean v0, p0, Lcom/explorestack/protobuf/MapField;->isMutable:Z

    return v0
.end method

.method public makeImmutable()V
    .registers 2

    const/4 v0, 0x0

    .line 267
    iput-boolean v0, p0, Lcom/explorestack/protobuf/MapField;->isMutable:Z

    return-void
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/MapField;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/MapField<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/explorestack/protobuf/MapFieldLite;->copy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

###### Class com.explorestack.protobuf.MapField.Converter (com.explorestack.protobuf.MapField$Converter)
.class public interface abstract Lcom/explorestack/protobuf/MapField$Converter;
.super Ljava/lang/Object;
.source "MapField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/MapField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Converter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract convertKeyAndValueToMessage(Ljava/lang/Object;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/explorestack/protobuf/Message;"
        }
    .end annotation
.end method

.method public abstract convertMessageToKeyAndValue(Lcom/explorestack/protobuf/Message;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Message;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation
.end method

.method public abstract getMessageDefaultInstance()Lcom/explorestack/protobuf/Message;
.end method

###### Class com.explorestack.protobuf.MapField.ImmutableMessageConverter (com.explorestack.protobuf.MapField$ImmutableMessageConverter)
.class public Lcom/explorestack/protobuf/MapField$ImmutableMessageConverter;
.super Ljava/lang/Object;
.source "MapField.java"

# interfaces
.implements Lcom/explorestack/protobuf/MapField$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/MapField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImmutableMessageConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/MapField$Converter<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final defaultEntry:Lcom/explorestack/protobuf/MapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/MapEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/MapEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/explorestack/protobuf/MapField$ImmutableMessageConverter;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    return-void
.end method


# virtual methods
.method public convertKeyAndValueToMessage(Ljava/lang/Object;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/explorestack/protobuf/Message;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$ImmutableMessageConverter;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapEntry;->newBuilderForType()Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/MapEntry$Builder;->setKey(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/MapEntry$Builder;->setValue(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapEntry$Builder;->buildPartial()Lcom/explorestack/protobuf/MapEntry;

    move-result-object p1

    return-object p1
.end method

.method public convertMessageToKeyAndValue(Lcom/explorestack/protobuf/Message;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Message;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 115
    check-cast p1, Lcom/explorestack/protobuf/MapEntry;

    .line 116
    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getMessageDefaultInstance()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$ImmutableMessageConverter;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    return-object v0
.end method

###### Class com.explorestack.protobuf.MapField.MutatabilityAwareMap (com.explorestack.protobuf.MapField$MutatabilityAwareMap)
.class public Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;
.super Ljava/lang/Object;
.source "MapField.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/MapField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MutatabilityAwareMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareIterator;,
        Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;,
        Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareCollection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final delegate:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final mutabilityOracle:Lcom/explorestack/protobuf/MutabilityOracle;


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/MutabilityOracle;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/MutabilityOracle;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p1, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;->mutabilityOracle:Lcom/explorestack/protobuf/MutabilityOracle;

    .line 292
    iput-object p2, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 346
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;->mutabilityOracle:Lcom/explorestack/protobuf/MutabilityOracle;

    invoke-interface {v0}, Lcom/explorestack/protobuf/MutabilityOracle;->ensureMutable()V

    .line 347
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    .line 307
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3

    .line 312
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 362
    new-instance v0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;

    iget-object v1, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;->mutabilityOracle:Lcom/explorestack/protobuf/MutabilityOracle;

    iget-object v2, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;-><init>(Lcom/explorestack/protobuf/MutabilityOracle;Ljava/util/Set;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 367
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .registers 2

    .line 372
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 302
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 352
    new-instance v0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;

    iget-object v1, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;->mutabilityOracle:Lcom/explorestack/protobuf/MutabilityOracle;

    iget-object v2, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;-><init>(Lcom/explorestack/protobuf/MutabilityOracle;Ljava/util/Set;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;->mutabilityOracle:Lcom/explorestack/protobuf/MutabilityOracle;

    invoke-interface {v0}, Lcom/explorestack/protobuf/MutabilityOracle;->ensureMutable()V

    .line 323
    invoke-static {p1}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    invoke-static {p2}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;->mutabilityOracle:Lcom/explorestack/protobuf/MutabilityOracle;

    invoke-interface {v0}, Lcom/explorestack/protobuf/MutabilityOracle;->ensureMutable()V

    .line 337
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 338
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 341
    :cond_22
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;->mutabilityOracle:Lcom/explorestack/protobuf/MutabilityOracle;

    invoke-interface {v0}, Lcom/explorestack/protobuf/MutabilityOracle;->ensureMutable()V

    .line 331
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 2

    .line 297
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 377
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 357
    new-instance v0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareCollection;

    iget-object v1, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;->mutabilityOracle:Lcom/explorestack/protobuf/MutabilityOracle;

    iget-object v2, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareCollection;-><init>(Lcom/explorestack/protobuf/MutabilityOracle;Ljava/util/Collection;)V

    return-object v0
.end method

###### Class com.explorestack.protobuf.MapField.MutatabilityAwareMap.MutatabilityAwareCollection (com.explorestack.protobuf.MapField$MutatabilityAwareMap$MutatabilityAwareCollection)
.class public Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareCollection;
.super Ljava/lang/Object;
.source "MapField.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MutatabilityAwareCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final delegate:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final mutabilityOracle:Lcom/explorestack/protobuf/MutabilityOracle;


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/MutabilityOracle;Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/MutabilityOracle;",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput-object p1, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareCollection;->mutabilityOracle:Lcom/explorestack/protobuf/MutabilityOracle;

    .line 387
    iput-object p2, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareCollection;->delegate:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 423
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 440
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .registers 2

    .line 457
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareCollection;->mutabilityOracle:Lcom/explorestack/protobuf/MutabilityOracle;

    invoke-interface {v0}, Lcom/explorestack/protobuf/MutabilityOracle;->ensureMutable()V

    .line 458
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .line 402
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 463
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 468
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 397
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 407
    new-instance v0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareIterator;

    iget-object v1, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareCollection;->mutabilityOracle:Lcom/explorestack/protobuf/MutabilityOracle;

    iget-object v2, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareIterator;-><init>(Lcom/explorestack/protobuf/MutabilityOracle;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    .line 428
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareCollection;->mutabilityOracle:Lcom/explorestack/protobuf/MutabilityOracle;

    invoke-interface {v0}, Lcom/explorestack/protobuf/MutabilityOracle;->ensureMutable()V

    .line 429
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareCollection;->mutabilityOracle:Lcom/explorestack/protobuf/MutabilityOracle;

    invoke-interface {v0}, Lcom/explorestack/protobuf/MutabilityOracle;->ensureMutable()V

    .line 446
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareCollection;->mutabilityOracle:Lcom/explorestack/protobuf/MutabilityOracle;

    invoke-interface {v0}, Lcom/explorestack/protobuf/MutabilityOracle;->ensureMutable()V

    .line 452
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .registers 2

    .line 392
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .line 412
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 473
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareCollection;->delegate:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.explorestack.protobuf.MapField.MutatabilityAwareMap.MutatabilityAwareIterator (com.explorestack.protobuf.MapField$MutatabilityAwareMap$MutatabilityAwareIterator)
.class public Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareIterator;
.super Ljava/lang/Object;
.source "MapField.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MutatabilityAwareIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final mutabilityOracle:Lcom/explorestack/protobuf/MutabilityOracle;


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/MutabilityOracle;Ljava/util/Iterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/MutabilityOracle;",
            "Ljava/util/Iterator<",
            "TE;>;)V"
        }
    .end annotation

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 580
    iput-object p1, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareIterator;->mutabilityOracle:Lcom/explorestack/protobuf/MutabilityOracle;

    .line 581
    iput-object p2, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareIterator;->delegate:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 602
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareIterator;->delegate:Ljava/util/Iterator;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasNext()Z
    .registers 2

    .line 586
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareIterator;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 607
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareIterator;->delegate:Ljava/util/Iterator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 591
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareIterator;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .line 596
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareIterator;->mutabilityOracle:Lcom/explorestack/protobuf/MutabilityOracle;

    invoke-interface {v0}, Lcom/explorestack/protobuf/MutabilityOracle;->ensureMutable()V

    .line 597
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareIterator;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 612
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareIterator;->delegate:Ljava/util/Iterator;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.explorestack.protobuf.MapField.MutatabilityAwareMap.MutatabilityAwareSet (com.explorestack.protobuf.MapField$MutatabilityAwareMap$MutatabilityAwareSet)
.class public Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;
.super Ljava/lang/Object;
.source "MapField.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MutatabilityAwareSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final delegate:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final mutabilityOracle:Lcom/explorestack/protobuf/MutabilityOracle;


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/MutabilityOracle;Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/MutabilityOracle;",
            "Ljava/util/Set<",
            "TE;>;)V"
        }
    .end annotation

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    iput-object p1, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;->mutabilityOracle:Lcom/explorestack/protobuf/MutabilityOracle;

    .line 484
    iput-object p2, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;->delegate:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 519
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;->mutabilityOracle:Lcom/explorestack/protobuf/MutabilityOracle;

    invoke-interface {v0}, Lcom/explorestack/protobuf/MutabilityOracle;->ensureMutable()V

    .line 520
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 536
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;->mutabilityOracle:Lcom/explorestack/protobuf/MutabilityOracle;

    invoke-interface {v0}, Lcom/explorestack/protobuf/MutabilityOracle;->ensureMutable()V

    .line 537
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .registers 2

    .line 554
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;->mutabilityOracle:Lcom/explorestack/protobuf/MutabilityOracle;

    invoke-interface {v0}, Lcom/explorestack/protobuf/MutabilityOracle;->ensureMutable()V

    .line 555
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;->delegate:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .line 499
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 531
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 560
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 565
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;->delegate:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 494
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;->delegate:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 504
    new-instance v0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareIterator;

    iget-object v1, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;->mutabilityOracle:Lcom/explorestack/protobuf/MutabilityOracle;

    iget-object v2, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;->delegate:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareIterator;-><init>(Lcom/explorestack/protobuf/MutabilityOracle;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    .line 525
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;->mutabilityOracle:Lcom/explorestack/protobuf/MutabilityOracle;

    invoke-interface {v0}, Lcom/explorestack/protobuf/MutabilityOracle;->ensureMutable()V

    .line 526
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 548
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;->mutabilityOracle:Lcom/explorestack/protobuf/MutabilityOracle;

    invoke-interface {v0}, Lcom/explorestack/protobuf/MutabilityOracle;->ensureMutable()V

    .line 549
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;->mutabilityOracle:Lcom/explorestack/protobuf/MutabilityOracle;

    invoke-interface {v0}, Lcom/explorestack/protobuf/MutabilityOracle;->ensureMutable()V

    .line 543
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .registers 2

    .line 489
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;->delegate:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .line 509
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;->delegate:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 514
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 570
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;->delegate:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.explorestack.protobuf.MapField.StorageMode (com.explorestack.protobuf.MapField$StorageMode)
.class public final enum Lcom/explorestack/protobuf/MapField$StorageMode;
.super Ljava/lang/Enum;
.source "MapField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/MapField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StorageMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/MapField$StorageMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/explorestack/protobuf/MapField$StorageMode;

.field public static final enum BOTH:Lcom/explorestack/protobuf/MapField$StorageMode;

.field public static final enum LIST:Lcom/explorestack/protobuf/MapField$StorageMode;

.field public static final enum MAP:Lcom/explorestack/protobuf/MapField$StorageMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 81
    new-instance v0, Lcom/explorestack/protobuf/MapField$StorageMode;

    const-string v1, "MAP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/MapField$StorageMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/explorestack/protobuf/MapField$StorageMode;->MAP:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 82
    new-instance v1, Lcom/explorestack/protobuf/MapField$StorageMode;

    const-string v2, "LIST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/explorestack/protobuf/MapField$StorageMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/explorestack/protobuf/MapField$StorageMode;->LIST:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 83
    new-instance v2, Lcom/explorestack/protobuf/MapField$StorageMode;

    const-string v3, "BOTH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/explorestack/protobuf/MapField$StorageMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/explorestack/protobuf/MapField$StorageMode;->BOTH:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 80
    filled-new-array {v0, v1, v2}, [Lcom/explorestack/protobuf/MapField$StorageMode;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/MapField$StorageMode;->$VALUES:[Lcom/explorestack/protobuf/MapField$StorageMode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/MapField$StorageMode;
    .registers 2

    .line 80
    const-class v0, Lcom/explorestack/protobuf/MapField$StorageMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/MapField$StorageMode;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/MapField$StorageMode;
    .registers 1

    .line 80
    sget-object v0, Lcom/explorestack/protobuf/MapField$StorageMode;->$VALUES:[Lcom/explorestack/protobuf/MapField$StorageMode;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/MapField$StorageMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/MapField$StorageMode;

    return-object v0
.end method
