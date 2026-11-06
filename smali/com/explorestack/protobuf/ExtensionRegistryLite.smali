###### Class com.explorestack.protobuf.ExtensionRegistryLite (com.explorestack.protobuf.ExtensionRegistryLite)
.class public Lcom/explorestack/protobuf/ExtensionRegistryLite;
.super Ljava/lang/Object;
.source "ExtensionRegistryLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/ExtensionRegistryLite$ObjectIntPair;
    }
.end annotation


# static fields
.field public static final EMPTY_REGISTRY_LITE:Lcom/explorestack/protobuf/ExtensionRegistryLite;

.field public static doFullRuntimeInheritanceCheck:Z = true

.field public static volatile eagerlyParseMessageSets:Z = false

.field public static volatile emptyRegistry:Lcom/explorestack/protobuf/ExtensionRegistryLite;


# instance fields
.field public final extensionsByNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite$ObjectIntPair;",
            "Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 197
    new-instance v0, Lcom/explorestack/protobuf/ExtensionRegistryLite;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/ExtensionRegistryLite;-><init>(Z)V

    sput-object v0, Lcom/explorestack/protobuf/ExtensionRegistryLite;->EMPTY_REGISTRY_LITE:Lcom/explorestack/protobuf/ExtensionRegistryLite;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/explorestack/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 3

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    sget-object v0, Lcom/explorestack/protobuf/ExtensionRegistryLite;->EMPTY_REGISTRY_LITE:Lcom/explorestack/protobuf/ExtensionRegistryLite;

    if-ne p1, v0, :cond_c

    .line 201
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object p1, p0, Lcom/explorestack/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    return-void

    .line 203
    :cond_c
    iget-object p1, p1, Lcom/explorestack/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object p1, p0, Lcom/explorestack/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    return-void
.end method

.method public static getEmptyRegistry()Lcom/explorestack/protobuf/ExtensionRegistryLite;
    .registers 2

    .line 126
    sget-object v0, Lcom/explorestack/protobuf/ExtensionRegistryLite;->emptyRegistry:Lcom/explorestack/protobuf/ExtensionRegistryLite;

    if-nez v0, :cond_1e

    .line 128
    const-class v1, Lcom/explorestack/protobuf/ExtensionRegistryLite;

    monitor-enter v1

    .line 129
    :try_start_7
    sget-object v0, Lcom/explorestack/protobuf/ExtensionRegistryLite;->emptyRegistry:Lcom/explorestack/protobuf/ExtensionRegistryLite;

    if-nez v0, :cond_1a

    .line 131
    sget-boolean v0, Lcom/explorestack/protobuf/ExtensionRegistryLite;->doFullRuntimeInheritanceCheck:Z

    if-eqz v0, :cond_16

    .line 134
    invoke-static {}, Lcom/explorestack/protobuf/ExtensionRegistryFactory;->createEmpty()Lcom/explorestack/protobuf/ExtensionRegistryLite;

    move-result-object v0

    goto :goto_18

    :catchall_14
    move-exception v0

    goto :goto_1c

    :cond_16
    sget-object v0, Lcom/explorestack/protobuf/ExtensionRegistryLite;->EMPTY_REGISTRY_LITE:Lcom/explorestack/protobuf/ExtensionRegistryLite;

    :goto_18
    sput-object v0, Lcom/explorestack/protobuf/ExtensionRegistryLite;->emptyRegistry:Lcom/explorestack/protobuf/ExtensionRegistryLite;

    .line 137
    :cond_1a
    monitor-exit v1

    return-object v0

    :goto_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_14

    throw v0

    :cond_1e
    return-object v0
.end method

.method public static isEagerlyParseMessageSets()Z
    .registers 1

    .line 100
    sget-boolean v0, Lcom/explorestack/protobuf/ExtensionRegistryLite;->eagerlyParseMessageSets:Z

    return v0
.end method


# virtual methods
.method public findLiteExtensionByNumber(Lcom/explorestack/protobuf/MessageLite;I)Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/explorestack/protobuf/MessageLite;",
            ">(TContainingType;I)",
            "Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TContainingType;*>;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/explorestack/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    new-instance v1, Lcom/explorestack/protobuf/ExtensionRegistryLite$ObjectIntPair;

    invoke-direct {v1, p1, p2}, Lcom/explorestack/protobuf/ExtensionRegistryLite$ObjectIntPair;-><init>(Ljava/lang/Object;I)V

    .line 158
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-object p1
.end method

###### Class com.explorestack.protobuf.ExtensionRegistryLite.ObjectIntPair (com.explorestack.protobuf.ExtensionRegistryLite$ObjectIntPair)
.class public final Lcom/explorestack/protobuf/ExtensionRegistryLite$ObjectIntPair;
.super Ljava/lang/Object;
.source "ExtensionRegistryLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/ExtensionRegistryLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObjectIntPair"
.end annotation


# instance fields
.field public final number:I

.field public final object:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p1, p0, Lcom/explorestack/protobuf/ExtensionRegistryLite$ObjectIntPair;->object:Ljava/lang/Object;

    .line 221
    iput p2, p0, Lcom/explorestack/protobuf/ExtensionRegistryLite$ObjectIntPair;->number:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 231
    instance-of v0, p1, Lcom/explorestack/protobuf/ExtensionRegistryLite$ObjectIntPair;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 234
    :cond_6
    check-cast p1, Lcom/explorestack/protobuf/ExtensionRegistryLite$ObjectIntPair;

    .line 235
    iget-object v0, p0, Lcom/explorestack/protobuf/ExtensionRegistryLite$ObjectIntPair;->object:Ljava/lang/Object;

    iget-object v2, p1, Lcom/explorestack/protobuf/ExtensionRegistryLite$ObjectIntPair;->object:Ljava/lang/Object;

    if-ne v0, v2, :cond_16

    iget v0, p0, Lcom/explorestack/protobuf/ExtensionRegistryLite$ObjectIntPair;->number:I

    iget p1, p1, Lcom/explorestack/protobuf/ExtensionRegistryLite$ObjectIntPair;->number:I

    if-ne v0, p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 226
    iget-object v0, p0, Lcom/explorestack/protobuf/ExtensionRegistryLite$ObjectIntPair;->object:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, 0xffff

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/explorestack/protobuf/ExtensionRegistryLite$ObjectIntPair;->number:I

    add-int/2addr v0, v1

    return v0
.end method
