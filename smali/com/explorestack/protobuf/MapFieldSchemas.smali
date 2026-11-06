###### Class com.explorestack.protobuf.MapFieldSchemas (com.explorestack.protobuf.MapFieldSchemas)
.class public final Lcom/explorestack/protobuf/MapFieldSchemas;
.super Ljava/lang/Object;
.source "MapFieldSchemas.java"


# static fields
.field public static final FULL_SCHEMA:Lcom/explorestack/protobuf/MapFieldSchema;

.field public static final LITE_SCHEMA:Lcom/explorestack/protobuf/MapFieldSchema;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    invoke-static {}, Lcom/explorestack/protobuf/MapFieldSchemas;->loadSchemaForFullRuntime()Lcom/explorestack/protobuf/MapFieldSchema;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/MapFieldSchemas;->FULL_SCHEMA:Lcom/explorestack/protobuf/MapFieldSchema;

    .line 35
    new-instance v0, Lcom/explorestack/protobuf/MapFieldSchemaLite;

    invoke-direct {v0}, Lcom/explorestack/protobuf/MapFieldSchemaLite;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/MapFieldSchemas;->LITE_SCHEMA:Lcom/explorestack/protobuf/MapFieldSchema;

    return-void
.end method

.method public static full()Lcom/explorestack/protobuf/MapFieldSchema;
    .registers 1

    .line 38
    sget-object v0, Lcom/explorestack/protobuf/MapFieldSchemas;->FULL_SCHEMA:Lcom/explorestack/protobuf/MapFieldSchema;

    return-object v0
.end method

.method public static lite()Lcom/explorestack/protobuf/MapFieldSchema;
    .registers 1

    .line 42
    sget-object v0, Lcom/explorestack/protobuf/MapFieldSchemas;->LITE_SCHEMA:Lcom/explorestack/protobuf/MapFieldSchema;

    return-object v0
.end method

.method public static loadSchemaForFullRuntime()Lcom/explorestack/protobuf/MapFieldSchema;
    .registers 3

    .line 47
    :try_start_0
    const-class v0, Lcom/explorestack/protobuf/MapFieldSchemaFull;

    const/4 v1, 0x0

    .line 48
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/MapFieldSchema;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    const/4 v0, 0x0

    return-object v0
.end method
