###### Class com.explorestack.protobuf.NewInstanceSchemas (com.explorestack.protobuf.NewInstanceSchemas)
.class public final Lcom/explorestack/protobuf/NewInstanceSchemas;
.super Ljava/lang/Object;
.source "NewInstanceSchemas.java"


# static fields
.field public static final FULL_SCHEMA:Lcom/explorestack/protobuf/NewInstanceSchema;

.field public static final LITE_SCHEMA:Lcom/explorestack/protobuf/NewInstanceSchema;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    invoke-static {}, Lcom/explorestack/protobuf/NewInstanceSchemas;->loadSchemaForFullRuntime()Lcom/explorestack/protobuf/NewInstanceSchema;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/NewInstanceSchemas;->FULL_SCHEMA:Lcom/explorestack/protobuf/NewInstanceSchema;

    .line 35
    new-instance v0, Lcom/explorestack/protobuf/NewInstanceSchemaLite;

    invoke-direct {v0}, Lcom/explorestack/protobuf/NewInstanceSchemaLite;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/NewInstanceSchemas;->LITE_SCHEMA:Lcom/explorestack/protobuf/NewInstanceSchema;

    return-void
.end method

.method public static full()Lcom/explorestack/protobuf/NewInstanceSchema;
    .registers 1

    .line 38
    sget-object v0, Lcom/explorestack/protobuf/NewInstanceSchemas;->FULL_SCHEMA:Lcom/explorestack/protobuf/NewInstanceSchema;

    return-object v0
.end method

.method public static lite()Lcom/explorestack/protobuf/NewInstanceSchema;
    .registers 1

    .line 42
    sget-object v0, Lcom/explorestack/protobuf/NewInstanceSchemas;->LITE_SCHEMA:Lcom/explorestack/protobuf/NewInstanceSchema;

    return-object v0
.end method

.method public static loadSchemaForFullRuntime()Lcom/explorestack/protobuf/NewInstanceSchema;
    .registers 3

    .line 47
    :try_start_0
    const-class v0, Lcom/explorestack/protobuf/NewInstanceSchemaFull;

    const/4 v1, 0x0

    .line 48
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/NewInstanceSchema;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    const/4 v0, 0x0

    return-object v0
.end method
