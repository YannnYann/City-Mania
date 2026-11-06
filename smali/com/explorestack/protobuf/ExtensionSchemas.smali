###### Class com.explorestack.protobuf.ExtensionSchemas (com.explorestack.protobuf.ExtensionSchemas)
.class public final Lcom/explorestack/protobuf/ExtensionSchemas;
.super Ljava/lang/Object;
.source "ExtensionSchemas.java"


# static fields
.field public static final FULL_SCHEMA:Lcom/explorestack/protobuf/ExtensionSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation
.end field

.field public static final LITE_SCHEMA:Lcom/explorestack/protobuf/ExtensionSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lcom/explorestack/protobuf/ExtensionSchemaLite;

    invoke-direct {v0}, Lcom/explorestack/protobuf/ExtensionSchemaLite;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/ExtensionSchemas;->LITE_SCHEMA:Lcom/explorestack/protobuf/ExtensionSchema;

    .line 35
    invoke-static {}, Lcom/explorestack/protobuf/ExtensionSchemas;->loadSchemaForFullRuntime()Lcom/explorestack/protobuf/ExtensionSchema;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/ExtensionSchemas;->FULL_SCHEMA:Lcom/explorestack/protobuf/ExtensionSchema;

    return-void
.end method

.method public static full()Lcom/explorestack/protobuf/ExtensionSchema;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation

    .line 51
    sget-object v0, Lcom/explorestack/protobuf/ExtensionSchemas;->FULL_SCHEMA:Lcom/explorestack/protobuf/ExtensionSchema;

    if-eqz v0, :cond_5

    return-object v0

    .line 52
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Protobuf runtime is not correctly loaded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static lite()Lcom/explorestack/protobuf/ExtensionSchema;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/explorestack/protobuf/ExtensionSchemas;->LITE_SCHEMA:Lcom/explorestack/protobuf/ExtensionSchema;

    return-object v0
.end method

.method public static loadSchemaForFullRuntime()Lcom/explorestack/protobuf/ExtensionSchema;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation

    .line 39
    :try_start_0
    const-class v0, Lcom/explorestack/protobuf/ExtensionSchemaFull;

    sget v1, Lcom/explorestack/protobuf/ExtensionSchemaFull;->$r8$clinit:I

    const/4 v1, 0x0

    .line 40
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/ExtensionSchema;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    const/4 v0, 0x0

    return-object v0
.end method
