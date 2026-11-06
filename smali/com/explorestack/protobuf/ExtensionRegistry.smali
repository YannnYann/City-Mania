###### Class com.explorestack.protobuf.ExtensionRegistry (com.explorestack.protobuf.ExtensionRegistry)
.class public Lcom/explorestack/protobuf/ExtensionRegistry;
.super Lcom/explorestack/protobuf/ExtensionRegistryLite;
.source "ExtensionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/ExtensionRegistry$DescriptorIntPair;,
        Lcom/explorestack/protobuf/ExtensionRegistry$ExtensionInfo;
    }
.end annotation


# static fields
.field public static final EMPTY_REGISTRY:Lcom/explorestack/protobuf/ExtensionRegistry;


# instance fields
.field public final immutableExtensionsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/explorestack/protobuf/ExtensionRegistry$ExtensionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final immutableExtensionsByNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/explorestack/protobuf/ExtensionRegistry$DescriptorIntPair;",
            "Lcom/explorestack/protobuf/ExtensionRegistry$ExtensionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mutableExtensionsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/explorestack/protobuf/ExtensionRegistry$ExtensionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mutableExtensionsByNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/explorestack/protobuf/ExtensionRegistry$DescriptorIntPair;",
            "Lcom/explorestack/protobuf/ExtensionRegistry$ExtensionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 299
    new-instance v0, Lcom/explorestack/protobuf/ExtensionRegistry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/ExtensionRegistry;-><init>(Z)V

    sput-object v0, Lcom/explorestack/protobuf/ExtensionRegistry;->EMPTY_REGISTRY:Lcom/explorestack/protobuf/ExtensionRegistry;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 270
    invoke-direct {p0}, Lcom/explorestack/protobuf/ExtensionRegistryLite;-><init>()V

    .line 271
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/explorestack/protobuf/ExtensionRegistry;->immutableExtensionsByName:Ljava/util/Map;

    .line 272
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/explorestack/protobuf/ExtensionRegistry;->mutableExtensionsByName:Ljava/util/Map;

    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/explorestack/protobuf/ExtensionRegistry;->immutableExtensionsByNumber:Ljava/util/Map;

    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/explorestack/protobuf/ExtensionRegistry;->mutableExtensionsByNumber:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 292
    sget-object p1, Lcom/explorestack/protobuf/ExtensionRegistryLite;->EMPTY_REGISTRY_LITE:Lcom/explorestack/protobuf/ExtensionRegistryLite;

    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/ExtensionRegistryLite;-><init>(Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    .line 293
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object p1, p0, Lcom/explorestack/protobuf/ExtensionRegistry;->immutableExtensionsByName:Ljava/util/Map;

    .line 294
    iput-object p1, p0, Lcom/explorestack/protobuf/ExtensionRegistry;->mutableExtensionsByName:Ljava/util/Map;

    .line 295
    iput-object p1, p0, Lcom/explorestack/protobuf/ExtensionRegistry;->immutableExtensionsByNumber:Ljava/util/Map;

    .line 296
    iput-object p1, p0, Lcom/explorestack/protobuf/ExtensionRegistry;->mutableExtensionsByNumber:Ljava/util/Map;

    return-void
.end method

.method public static getEmptyRegistry()Lcom/explorestack/protobuf/ExtensionRegistry;
    .registers 1

    .line 99
    sget-object v0, Lcom/explorestack/protobuf/ExtensionRegistry;->EMPTY_REGISTRY:Lcom/explorestack/protobuf/ExtensionRegistry;

    return-object v0
.end method


# virtual methods
.method public findExtensionByNumber(Lcom/explorestack/protobuf/Descriptors$Descriptor;I)Lcom/explorestack/protobuf/ExtensionRegistry$ExtensionInfo;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/ExtensionRegistry;->findImmutableExtensionByNumber(Lcom/explorestack/protobuf/Descriptors$Descriptor;I)Lcom/explorestack/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object p1

    return-object p1
.end method

.method public findImmutableExtensionByName(Ljava/lang/String;)Lcom/explorestack/protobuf/ExtensionRegistry$ExtensionInfo;
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/explorestack/protobuf/ExtensionRegistry;->immutableExtensionsByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/ExtensionRegistry$ExtensionInfo;

    return-object p1
.end method

.method public findImmutableExtensionByNumber(Lcom/explorestack/protobuf/Descriptors$Descriptor;I)Lcom/explorestack/protobuf/ExtensionRegistry$ExtensionInfo;
    .registers 5

    .line 171
    iget-object v0, p0, Lcom/explorestack/protobuf/ExtensionRegistry;->immutableExtensionsByNumber:Ljava/util/Map;

    new-instance v1, Lcom/explorestack/protobuf/ExtensionRegistry$DescriptorIntPair;

    invoke-direct {v1, p1, p2}, Lcom/explorestack/protobuf/ExtensionRegistry$DescriptorIntPair;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/ExtensionRegistry$ExtensionInfo;

    return-object p1
.end method

###### Class com.explorestack.protobuf.ExtensionRegistry.DescriptorIntPair (com.explorestack.protobuf.ExtensionRegistry$DescriptorIntPair)
.class public final Lcom/explorestack/protobuf/ExtensionRegistry$DescriptorIntPair;
.super Ljava/lang/Object;
.source "ExtensionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/ExtensionRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DescriptorIntPair"
.end annotation


# instance fields
.field public final descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field public final number:I


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;I)V
    .registers 3

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-object p1, p0, Lcom/explorestack/protobuf/ExtensionRegistry$DescriptorIntPair;->descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 349
    iput p2, p0, Lcom/explorestack/protobuf/ExtensionRegistry$DescriptorIntPair;->number:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 359
    instance-of v0, p1, Lcom/explorestack/protobuf/ExtensionRegistry$DescriptorIntPair;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 362
    :cond_6
    check-cast p1, Lcom/explorestack/protobuf/ExtensionRegistry$DescriptorIntPair;

    .line 363
    iget-object v0, p0, Lcom/explorestack/protobuf/ExtensionRegistry$DescriptorIntPair;->descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    iget-object v2, p1, Lcom/explorestack/protobuf/ExtensionRegistry$DescriptorIntPair;->descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    if-ne v0, v2, :cond_16

    iget v0, p0, Lcom/explorestack/protobuf/ExtensionRegistry$DescriptorIntPair;->number:I

    iget p1, p1, Lcom/explorestack/protobuf/ExtensionRegistry$DescriptorIntPair;->number:I

    if-ne v0, p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 354
    iget-object v0, p0, Lcom/explorestack/protobuf/ExtensionRegistry$DescriptorIntPair;->descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xffff

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/explorestack/protobuf/ExtensionRegistry$DescriptorIntPair;->number:I

    add-int/2addr v0, v1

    return v0
.end method

###### Class com.explorestack.protobuf.ExtensionRegistry.ExtensionInfo (com.explorestack.protobuf.ExtensionRegistry$ExtensionInfo)
.class public final Lcom/explorestack/protobuf/ExtensionRegistry$ExtensionInfo;
.super Ljava/lang/Object;
.source "ExtensionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/ExtensionRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtensionInfo"
.end annotation


# instance fields
.field public final defaultInstance:Lcom/explorestack/protobuf/Message;

.field public final descriptor:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
