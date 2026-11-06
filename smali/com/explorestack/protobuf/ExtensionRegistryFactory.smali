###### Class com.explorestack.protobuf.ExtensionRegistryFactory (com.explorestack.protobuf.ExtensionRegistryFactory)
.class public final Lcom/explorestack/protobuf/ExtensionRegistryFactory;
.super Ljava/lang/Object;
.source "ExtensionRegistryFactory.java"


# static fields
.field public static final EXTENSION_REGISTRY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    invoke-static {}, Lcom/explorestack/protobuf/ExtensionRegistryFactory;->reflectExtensionRegistry()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/ExtensionRegistryFactory;->EXTENSION_REGISTRY_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public static createEmpty()Lcom/explorestack/protobuf/ExtensionRegistryLite;
    .registers 1

    .line 68
    const-string v0, "getEmptyRegistry"

    invoke-static {v0}, Lcom/explorestack/protobuf/ExtensionRegistryFactory;->invokeSubclassFactory(Ljava/lang/String;)Lcom/explorestack/protobuf/ExtensionRegistryLite;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    .line 70
    :cond_9
    sget-object v0, Lcom/explorestack/protobuf/ExtensionRegistryLite;->EMPTY_REGISTRY_LITE:Lcom/explorestack/protobuf/ExtensionRegistryLite;

    return-object v0
.end method

.method public static final invokeSubclassFactory(Ljava/lang/String;)Lcom/explorestack/protobuf/ExtensionRegistryLite;
    .registers 5

    .line 80
    sget-object v0, Lcom/explorestack/protobuf/ExtensionRegistryFactory;->EXTENSION_REGISTRY_CLASS:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    const/4 v2, 0x0

    .line 85
    :try_start_7
    new-array v3, v2, [Ljava/lang/Class;

    .line 86
    invoke-virtual {v0, p0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/ExtensionRegistryLite;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    return-object v1
.end method

.method public static reflectExtensionRegistry()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 51
    :try_start_0
    const-class v0, Lcom/explorestack/protobuf/ExtensionRegistry;

    sget-object v1, Lcom/explorestack/protobuf/ExtensionRegistry;->EMPTY_REGISTRY:Lcom/explorestack/protobuf/ExtensionRegistry;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    const/4 v0, 0x0

    return-object v0
.end method
