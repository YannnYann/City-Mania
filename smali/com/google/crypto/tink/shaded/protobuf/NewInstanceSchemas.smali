###### Class com.google.crypto.tink.shaded.protobuf.NewInstanceSchemas (com.google.crypto.tink.shaded.protobuf.NewInstanceSchemas)
.class public final Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchemas;
.super Ljava/lang/Object;
.source "NewInstanceSchemas.java"


# static fields
.field public static final FULL_SCHEMA:Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;

.field public static final LITE_SCHEMA:Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchemas;->loadSchemaForFullRuntime()Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchemas;->FULL_SCHEMA:Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;

    .line 13
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchemaLite;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchemaLite;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchemas;->LITE_SCHEMA:Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;

    return-void
.end method

.method public static full()Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;
    .registers 1

    .line 16
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchemas;->FULL_SCHEMA:Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;

    return-object v0
.end method

.method public static lite()Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;
    .registers 1

    .line 20
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchemas;->LITE_SCHEMA:Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;

    return-object v0
.end method

.method public static loadSchemaForFullRuntime()Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;
    .registers 4

    .line 24
    sget-boolean v0, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->assumeLiteRuntime:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    .line 28
    :cond_6
    :try_start_6
    const-string v0, "com.google.crypto.tink.shaded.protobuf.NewInstanceSchemaFull"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    .line 29
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1b} :catch_1c

    return-object v0

    :catch_1c
    return-object v1
.end method
