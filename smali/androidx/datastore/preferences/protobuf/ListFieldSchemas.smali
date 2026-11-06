###### Class androidx.datastore.preferences.protobuf.ListFieldSchemas (androidx.datastore.preferences.protobuf.ListFieldSchemas)
.class public final Landroidx/datastore/preferences/protobuf/ListFieldSchemas;
.super Ljava/lang/Object;
.source "ListFieldSchemas.java"


# static fields
.field public static final FULL_SCHEMA:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

.field public static final LITE_SCHEMA:Landroidx/datastore/preferences/protobuf/ListFieldSchema;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    invoke-static {}, Landroidx/datastore/preferences/protobuf/ListFieldSchemas;->loadSchemaForFullRuntime()Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/ListFieldSchemas;->FULL_SCHEMA:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 13
    new-instance v0, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;-><init>()V

    sput-object v0, Landroidx/datastore/preferences/protobuf/ListFieldSchemas;->LITE_SCHEMA:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    return-void
.end method

.method public static full()Landroidx/datastore/preferences/protobuf/ListFieldSchema;
    .registers 1

    .line 16
    sget-object v0, Landroidx/datastore/preferences/protobuf/ListFieldSchemas;->FULL_SCHEMA:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    return-object v0
.end method

.method public static lite()Landroidx/datastore/preferences/protobuf/ListFieldSchema;
    .registers 1

    .line 20
    sget-object v0, Landroidx/datastore/preferences/protobuf/ListFieldSchemas;->LITE_SCHEMA:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    return-object v0
.end method

.method public static loadSchemaForFullRuntime()Landroidx/datastore/preferences/protobuf/ListFieldSchema;
    .registers 4

    .line 24
    sget-boolean v0, Landroidx/datastore/preferences/protobuf/Protobuf;->assumeLiteRuntime:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    .line 28
    :cond_6
    :try_start_6
    const-string v0, "androidx.datastore.preferences.protobuf.ListFieldSchemaFull"

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

    check-cast v0, Landroidx/datastore/preferences/protobuf/ListFieldSchema;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1b} :catch_1c

    return-object v0

    :catch_1c
    return-object v1
.end method
