###### Class com.explorestack.protobuf.ListFieldSchema (com.explorestack.protobuf.ListFieldSchema)
.class public abstract Lcom/explorestack/protobuf/ListFieldSchema;
.super Ljava/lang/Object;
.source "ListFieldSchema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/ListFieldSchema$ListFieldSchemaLite;,
        Lcom/explorestack/protobuf/ListFieldSchema$ListFieldSchemaFull;
    }
.end annotation


# static fields
.field public static final FULL_INSTANCE:Lcom/explorestack/protobuf/ListFieldSchema;

.field public static final LITE_INSTANCE:Lcom/explorestack/protobuf/ListFieldSchema;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Lcom/explorestack/protobuf/ListFieldSchema$ListFieldSchemaFull;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/ListFieldSchema$ListFieldSchemaFull;-><init>(Lcom/explorestack/protobuf/ListFieldSchema$1;)V

    sput-object v0, Lcom/explorestack/protobuf/ListFieldSchema;->FULL_INSTANCE:Lcom/explorestack/protobuf/ListFieldSchema;

    .line 46
    new-instance v0, Lcom/explorestack/protobuf/ListFieldSchema$ListFieldSchemaLite;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/ListFieldSchema$ListFieldSchemaLite;-><init>(Lcom/explorestack/protobuf/ListFieldSchema$1;)V

    sput-object v0, Lcom/explorestack/protobuf/ListFieldSchema;->LITE_INSTANCE:Lcom/explorestack/protobuf/ListFieldSchema;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/ListFieldSchema$1;)V
    .registers 2

    .line 41
    invoke-direct {p0}, Lcom/explorestack/protobuf/ListFieldSchema;-><init>()V

    return-void
.end method

.method public static full()Lcom/explorestack/protobuf/ListFieldSchema;
    .registers 1

    .line 55
    sget-object v0, Lcom/explorestack/protobuf/ListFieldSchema;->FULL_INSTANCE:Lcom/explorestack/protobuf/ListFieldSchema;

    return-object v0
.end method

.method public static lite()Lcom/explorestack/protobuf/ListFieldSchema;
    .registers 1

    .line 59
    sget-object v0, Lcom/explorestack/protobuf/ListFieldSchema;->LITE_INSTANCE:Lcom/explorestack/protobuf/ListFieldSchema;

    return-object v0
.end method


# virtual methods
.method public abstract makeImmutableListAt(Ljava/lang/Object;J)V
.end method

.method public abstract mergeListsAt(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method

.method public abstract mutableListAt(Ljava/lang/Object;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end method

###### Class com.explorestack.protobuf.ListFieldSchema.AnonymousClass1 (com.explorestack.protobuf.ListFieldSchema$1)
.class public synthetic Lcom/explorestack/protobuf/ListFieldSchema$1;
.super Ljava/lang/Object;
.source "ListFieldSchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/ListFieldSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class com.explorestack.protobuf.ListFieldSchema.ListFieldSchemaFull (com.explorestack.protobuf.ListFieldSchema$ListFieldSchemaFull)
.class public final Lcom/explorestack/protobuf/ListFieldSchema$ListFieldSchemaFull;
.super Lcom/explorestack/protobuf/ListFieldSchema;
.source "ListFieldSchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/ListFieldSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListFieldSchemaFull"
.end annotation


# static fields
.field public static final UNMODIFIABLE_LIST_CLASS:Ljava/lang/Class;
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

    .line 66
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/ListFieldSchema$ListFieldSchemaFull;->UNMODIFIABLE_LIST_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/ListFieldSchema;-><init>(Lcom/explorestack/protobuf/ListFieldSchema$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/ListFieldSchema$1;)V
    .registers 2

    .line 63
    invoke-direct {p0}, Lcom/explorestack/protobuf/ListFieldSchema$ListFieldSchemaFull;-><init>()V

    return-void
.end method

.method public static getList(Ljava/lang/Object;J)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 141
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static mutableListAt(Ljava/lang/Object;JI)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "JI)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 95
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/ListFieldSchema$ListFieldSchemaFull;->getList(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 97
    instance-of v1, v0, Lcom/explorestack/protobuf/LazyStringList;

    if-eqz v1, :cond_14

    .line 98
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v0, p3}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(I)V

    goto :goto_28

    .line 99
    :cond_14
    instance-of v1, v0, Lcom/explorestack/protobuf/PrimitiveNonBoxingCollection;

    if-eqz v1, :cond_23

    instance-of v1, v0, Lcom/explorestack/protobuf/Internal$ProtobufList;

    if-eqz v1, :cond_23

    .line 100
    check-cast v0, Lcom/explorestack/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p3}, Lcom/explorestack/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/explorestack/protobuf/Internal$ProtobufList;

    move-result-object v0

    goto :goto_28

    .line 102
    :cond_23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    :goto_28
    invoke-static {p0, p1, p2, v0}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-object v0

    .line 105
    :cond_2c
    sget-object v1, Lcom/explorestack/protobuf/ListFieldSchema$ListFieldSchemaFull;->UNMODIFIABLE_LIST_CLASS:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 109
    invoke-static {p0, p1, p2, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-object v1

    .line 110
    :cond_49
    instance-of v1, v0, Lcom/explorestack/protobuf/UnmodifiableLazyStringList;

    if-eqz v1, :cond_60

    .line 111
    new-instance v1, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, v2}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(I)V

    .line 112
    check-cast v0, Lcom/explorestack/protobuf/UnmodifiableLazyStringList;

    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/LazyStringArrayList;->addAll(Ljava/util/Collection;)Z

    .line 114
    invoke-static {p0, p1, p2, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-object v1

    .line 115
    :cond_60
    instance-of v1, v0, Lcom/explorestack/protobuf/PrimitiveNonBoxingCollection;

    if-eqz v1, :cond_7e

    instance-of v1, v0, Lcom/explorestack/protobuf/Internal$ProtobufList;

    if-eqz v1, :cond_7e

    move-object v1, v0

    check-cast v1, Lcom/explorestack/protobuf/Internal$ProtobufList;

    .line 117
    invoke-interface {v1}, Lcom/explorestack/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_7e

    .line 118
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p3

    invoke-interface {v1, v0}, Lcom/explorestack/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/explorestack/protobuf/Internal$ProtobufList;

    move-result-object p3

    .line 119
    invoke-static {p0, p1, p2, p3}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-object p3

    :cond_7e
    return-object v0
.end method


# virtual methods
.method public makeImmutableListAt(Ljava/lang/Object;J)V
    .registers 7

    .line 75
    invoke-static {p1, p2, p3}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 77
    instance-of v1, v0, Lcom/explorestack/protobuf/LazyStringList;

    if-eqz v1, :cond_11

    .line 78
    check-cast v0, Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    goto :goto_36

    .line 79
    :cond_11
    sget-object v1, Lcom/explorestack/protobuf/ListFieldSchema$ListFieldSchemaFull;->UNMODIFIABLE_LIST_CLASS:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_31

    .line 82
    :cond_1e
    instance-of v1, v0, Lcom/explorestack/protobuf/PrimitiveNonBoxingCollection;

    if-eqz v1, :cond_32

    instance-of v1, v0, Lcom/explorestack/protobuf/Internal$ProtobufList;

    if-eqz v1, :cond_32

    .line 83
    check-cast v0, Lcom/explorestack/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 84
    invoke-interface {v0}, Lcom/explorestack/protobuf/Internal$ProtobufList;->makeImmutable()V

    :cond_31
    :goto_31
    return-void

    .line 88
    :cond_32
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 90
    :goto_36
    invoke-static {p1, p2, p3, v0}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public mergeListsAt(Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 126
    invoke-static {p2, p3, p4}, Lcom/explorestack/protobuf/ListFieldSchema$ListFieldSchemaFull;->getList(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p2

    .line 127
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, p3, p4, v0}, Lcom/explorestack/protobuf/ListFieldSchema$ListFieldSchemaFull;->mutableListAt(Ljava/lang/Object;JI)Ljava/util/List;

    move-result-object v0

    .line 129
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 130
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v1, :cond_1b

    if-lez v2, :cond_1b

    .line 132
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1b
    if-lez v1, :cond_1e

    move-object p2, v0

    .line 136
    :cond_1e
    invoke-static {p1, p3, p4, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public mutableListAt(Ljava/lang/Object;J)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xa

    .line 70
    invoke-static {p1, p2, p3, v0}, Lcom/explorestack/protobuf/ListFieldSchema$ListFieldSchemaFull;->mutableListAt(Ljava/lang/Object;JI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

###### Class com.explorestack.protobuf.ListFieldSchema.ListFieldSchemaLite (com.explorestack.protobuf.ListFieldSchema$ListFieldSchemaLite)
.class public final Lcom/explorestack/protobuf/ListFieldSchema$ListFieldSchemaLite;
.super Lcom/explorestack/protobuf/ListFieldSchema;
.source "ListFieldSchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/ListFieldSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListFieldSchemaLite"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/ListFieldSchema;-><init>(Lcom/explorestack/protobuf/ListFieldSchema$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/ListFieldSchema$1;)V
    .registers 2

    .line 146
    invoke-direct {p0}, Lcom/explorestack/protobuf/ListFieldSchema$ListFieldSchemaLite;-><init>()V

    return-void
.end method

.method public static getProtobufList(Ljava/lang/Object;J)Lcom/explorestack/protobuf/Internal$ProtobufList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Lcom/explorestack/protobuf/Internal$ProtobufList<",
            "TE;>;"
        }
    .end annotation

    .line 187
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Internal$ProtobufList;

    return-object p0
.end method


# virtual methods
.method public makeImmutableListAt(Ljava/lang/Object;J)V
    .registers 4

    .line 163
    invoke-static {p1, p2, p3}, Lcom/explorestack/protobuf/ListFieldSchema$ListFieldSchemaLite;->getProtobufList(Ljava/lang/Object;J)Lcom/explorestack/protobuf/Internal$ProtobufList;

    move-result-object p1

    .line 164
    invoke-interface {p1}, Lcom/explorestack/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-void
.end method

.method public mergeListsAt(Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 169
    invoke-static {p1, p3, p4}, Lcom/explorestack/protobuf/ListFieldSchema$ListFieldSchemaLite;->getProtobufList(Ljava/lang/Object;J)Lcom/explorestack/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 170
    invoke-static {p2, p3, p4}, Lcom/explorestack/protobuf/ListFieldSchema$ListFieldSchemaLite;->getProtobufList(Ljava/lang/Object;J)Lcom/explorestack/protobuf/Internal$ProtobufList;

    move-result-object p2

    .line 172
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 173
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v1, :cond_22

    if-lez v2, :cond_22

    .line 175
    invoke-interface {v0}, Lcom/explorestack/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v3

    if-nez v3, :cond_1f

    add-int/2addr v2, v1

    .line 176
    invoke-interface {v0, v2}, Lcom/explorestack/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/explorestack/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 178
    :cond_1f
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_22
    if-lez v1, :cond_25

    move-object p2, v0

    .line 182
    :cond_25
    invoke-static {p1, p3, p4, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public mutableListAt(Ljava/lang/Object;J)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 150
    invoke-static {p1, p2, p3}, Lcom/explorestack/protobuf/ListFieldSchema$ListFieldSchemaLite;->getProtobufList(Ljava/lang/Object;J)Lcom/explorestack/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Lcom/explorestack/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 152
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_13

    const/16 v1, 0xa

    goto :goto_15

    :cond_13
    mul-int/lit8 v1, v1, 0x2

    .line 154
    :goto_15
    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/explorestack/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 156
    invoke-static {p1, p2, p3, v0}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1c
    return-object v0
.end method
