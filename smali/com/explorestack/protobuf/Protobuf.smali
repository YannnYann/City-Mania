###### Class com.explorestack.protobuf.Protobuf (com.explorestack.protobuf.Protobuf)
.class public final Lcom/explorestack/protobuf/Protobuf;
.super Ljava/lang/Object;
.source "Protobuf.java"


# static fields
.field public static final INSTANCE:Lcom/explorestack/protobuf/Protobuf;


# instance fields
.field public final schemaCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/explorestack/protobuf/Schema<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final schemaFactory:Lcom/explorestack/protobuf/SchemaFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Lcom/explorestack/protobuf/Protobuf;

    invoke-direct {v0}, Lcom/explorestack/protobuf/Protobuf;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/Protobuf;->INSTANCE:Lcom/explorestack/protobuf/Protobuf;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/explorestack/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    .line 137
    new-instance v0, Lcom/explorestack/protobuf/ManifestSchemaFactory;

    invoke-direct {v0}, Lcom/explorestack/protobuf/ManifestSchemaFactory;-><init>()V

    iput-object v0, p0, Lcom/explorestack/protobuf/Protobuf;->schemaFactory:Lcom/explorestack/protobuf/SchemaFactory;

    return-void
.end method

.method public static getInstance()Lcom/explorestack/protobuf/Protobuf;
    .registers 1

    .line 55
    sget-object v0, Lcom/explorestack/protobuf/Protobuf;->INSTANCE:Lcom/explorestack/protobuf/Protobuf;

    return-object v0
.end method


# virtual methods
.method public mergeFrom(Ljava/lang/Object;Lcom/explorestack/protobuf/Reader;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/explorestack/protobuf/Reader;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/explorestack/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/explorestack/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/explorestack/protobuf/Reader;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public registerSchema(Ljava/lang/Class;Lcom/explorestack/protobuf/Schema;)Lcom/explorestack/protobuf/Schema;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/explorestack/protobuf/Schema<",
            "*>;)",
            "Lcom/explorestack/protobuf/Schema<",
            "*>;"
        }
    .end annotation

    .line 116
    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    const-string v0, "schema"

    invoke-static {p2, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/explorestack/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Schema;

    return-object p1
.end method

.method public schemaFor(Ljava/lang/Class;)Lcom/explorestack/protobuf/Schema;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/explorestack/protobuf/Schema<",
            "TT;>;"
        }
    .end annotation

    .line 86
    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/explorestack/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Schema;

    if-nez v0, :cond_1c

    .line 90
    iget-object v0, p0, Lcom/explorestack/protobuf/Protobuf;->schemaFactory:Lcom/explorestack/protobuf/SchemaFactory;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/SchemaFactory;->createSchema(Ljava/lang/Class;)Lcom/explorestack/protobuf/Schema;

    move-result-object v0

    .line 92
    invoke-virtual {p0, p1, v0}, Lcom/explorestack/protobuf/Protobuf;->registerSchema(Ljava/lang/Class;Lcom/explorestack/protobuf/Schema;)Lcom/explorestack/protobuf/Schema;

    move-result-object p1

    if-eqz p1, :cond_1c

    return-object p1

    :cond_1c
    return-object v0
.end method

.method public schemaFor(Ljava/lang/Object;)Lcom/explorestack/protobuf/Schema;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/explorestack/protobuf/Schema<",
            "TT;>;"
        }
    .end annotation

    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/explorestack/protobuf/Schema;

    move-result-object p1

    return-object p1
.end method
