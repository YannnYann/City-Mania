###### Class com.explorestack.protobuf.TypeRegistry (com.explorestack.protobuf.TypeRegistry)
.class public Lcom/explorestack/protobuf/TypeRegistry;
.super Ljava/lang/Object;
.source "TypeRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/TypeRegistry$EmptyTypeRegistryHolder;
    }
.end annotation


# static fields
.field public static final logger:Ljava/util/logging/Logger;


# instance fields
.field public final types:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/explorestack/protobuf/Descriptors$Descriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    const-class v0, Lcom/explorestack/protobuf/TypeRegistry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/TypeRegistry;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/explorestack/protobuf/Descriptors$Descriptor;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/explorestack/protobuf/TypeRegistry;->types:Ljava/util/Map;

    return-void
.end method

.method public static getEmptyTypeRegistry()Lcom/explorestack/protobuf/TypeRegistry;
    .registers 1

    .line 55
    invoke-static {}, Lcom/explorestack/protobuf/TypeRegistry$EmptyTypeRegistryHolder;->access$000()Lcom/explorestack/protobuf/TypeRegistry;

    move-result-object v0

    return-object v0
.end method

.method public static getTypeName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 85
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 86
    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_f

    .line 89
    array-length p0, v0

    sub-int/2addr p0, v2

    aget-object p0, v0, p0

    return-object p0

    .line 87
    :cond_f
    new-instance v0, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type url found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public find(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/explorestack/protobuf/TypeRegistry;->types:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object p1
.end method

.method public final getDescriptorForTypeUrl(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 75
    invoke-static {p1}, Lcom/explorestack/protobuf/TypeRegistry;->getTypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/TypeRegistry;->find(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object p1

    return-object p1
.end method

###### Class com.explorestack.protobuf.TypeRegistry.EmptyTypeRegistryHolder (com.explorestack.protobuf.TypeRegistry$EmptyTypeRegistryHolder)
.class public Lcom/explorestack/protobuf/TypeRegistry$EmptyTypeRegistryHolder;
.super Ljava/lang/Object;
.source "TypeRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/TypeRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptyTypeRegistryHolder"
.end annotation


# static fields
.field public static final EMPTY:Lcom/explorestack/protobuf/TypeRegistry;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 50
    new-instance v0, Lcom/explorestack/protobuf/TypeRegistry;

    .line 51
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/TypeRegistry;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/explorestack/protobuf/TypeRegistry$EmptyTypeRegistryHolder;->EMPTY:Lcom/explorestack/protobuf/TypeRegistry;

    return-void
.end method

.method public static synthetic access$000()Lcom/explorestack/protobuf/TypeRegistry;
    .registers 1

    .line 49
    sget-object v0, Lcom/explorestack/protobuf/TypeRegistry$EmptyTypeRegistryHolder;->EMPTY:Lcom/explorestack/protobuf/TypeRegistry;

    return-object v0
.end method
