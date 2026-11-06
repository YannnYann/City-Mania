###### Class com.explorestack.protobuf.ManifestSchemaFactory (com.explorestack.protobuf.ManifestSchemaFactory)
.class public final Lcom/explorestack/protobuf/ManifestSchemaFactory;
.super Ljava/lang/Object;
.source "ManifestSchemaFactory.java"

# interfaces
.implements Lcom/explorestack/protobuf/SchemaFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;
    }
.end annotation


# static fields
.field public static final EMPTY_FACTORY:Lcom/explorestack/protobuf/MessageInfoFactory;


# instance fields
.field public final messageInfoFactory:Lcom/explorestack/protobuf/MessageInfoFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 151
    new-instance v0, Lcom/explorestack/protobuf/ManifestSchemaFactory$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/ManifestSchemaFactory$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/ManifestSchemaFactory;->EMPTY_FACTORY:Lcom/explorestack/protobuf/MessageInfoFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-static {}, Lcom/explorestack/protobuf/ManifestSchemaFactory;->getDefaultMessageInfoFactory()Lcom/explorestack/protobuf/MessageInfoFactory;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/ManifestSchemaFactory;-><init>(Lcom/explorestack/protobuf/MessageInfoFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/explorestack/protobuf/MessageInfoFactory;)V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "messageInfoFactory"

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/MessageInfoFactory;

    iput-object p1, p0, Lcom/explorestack/protobuf/ManifestSchemaFactory;->messageInfoFactory:Lcom/explorestack/protobuf/MessageInfoFactory;

    return-void
.end method

.method public static getDefaultMessageInfoFactory()Lcom/explorestack/protobuf/MessageInfoFactory;
    .registers 5

    .line 118
    new-instance v0, Lcom/explorestack/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;

    .line 119
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageInfoFactory;->getInstance()Lcom/explorestack/protobuf/GeneratedMessageInfoFactory;

    move-result-object v1

    invoke-static {}, Lcom/explorestack/protobuf/ManifestSchemaFactory;->getDescriptorMessageInfoFactory()Lcom/explorestack/protobuf/MessageInfoFactory;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/explorestack/protobuf/MessageInfoFactory;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Lcom/explorestack/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;-><init>([Lcom/explorestack/protobuf/MessageInfoFactory;)V

    return-object v0
.end method

.method public static getDescriptorMessageInfoFactory()Lcom/explorestack/protobuf/MessageInfoFactory;
    .registers 4

    .line 166
    :try_start_0
    const-class v0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;

    sget-object v1, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->instance:Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;

    .line 167
    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/MessageInfoFactory;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return-object v0

    .line 169
    :catch_17
    sget-object v0, Lcom/explorestack/protobuf/ManifestSchemaFactory;->EMPTY_FACTORY:Lcom/explorestack/protobuf/MessageInfoFactory;

    return-object v0
.end method

.method public static isProto2(Lcom/explorestack/protobuf/MessageInfo;)Z
    .registers 2

    .line 114
    invoke-interface {p0}, Lcom/explorestack/protobuf/MessageInfo;->getSyntax()Lcom/explorestack/protobuf/ProtoSyntax;

    move-result-object p0

    sget-object v0, Lcom/explorestack/protobuf/ProtoSyntax;->PROTO2:Lcom/explorestack/protobuf/ProtoSyntax;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static newSchema(Ljava/lang/Class;Lcom/explorestack/protobuf/MessageInfo;)Lcom/explorestack/protobuf/Schema;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/explorestack/protobuf/MessageInfo;",
            ")",
            "Lcom/explorestack/protobuf/Schema<",
            "TT;>;"
        }
    .end annotation

    .line 75
    const-class v0, Lcom/explorestack/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 76
    invoke-static {p1}, Lcom/explorestack/protobuf/ManifestSchemaFactory;->isProto2(Lcom/explorestack/protobuf/MessageInfo;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 80
    invoke-static {}, Lcom/explorestack/protobuf/NewInstanceSchemas;->lite()Lcom/explorestack/protobuf/NewInstanceSchema;

    move-result-object v3

    .line 81
    invoke-static {}, Lcom/explorestack/protobuf/ListFieldSchema;->lite()Lcom/explorestack/protobuf/ListFieldSchema;

    move-result-object v4

    .line 82
    invoke-static {}, Lcom/explorestack/protobuf/SchemaUtil;->unknownFieldSetLiteSchema()Lcom/explorestack/protobuf/UnknownFieldSchema;

    move-result-object v5

    .line 83
    invoke-static {}, Lcom/explorestack/protobuf/ExtensionSchemas;->lite()Lcom/explorestack/protobuf/ExtensionSchema;

    move-result-object v6

    .line 84
    invoke-static {}, Lcom/explorestack/protobuf/MapFieldSchemas;->lite()Lcom/explorestack/protobuf/MapFieldSchema;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    .line 77
    invoke-static/range {v1 .. v7}, Lcom/explorestack/protobuf/MessageSchema;->newSchema(Ljava/lang/Class;Lcom/explorestack/protobuf/MessageInfo;Lcom/explorestack/protobuf/NewInstanceSchema;Lcom/explorestack/protobuf/ListFieldSchema;Lcom/explorestack/protobuf/UnknownFieldSchema;Lcom/explorestack/protobuf/ExtensionSchema;Lcom/explorestack/protobuf/MapFieldSchema;)Lcom/explorestack/protobuf/MessageSchema;

    move-result-object p0

    return-object p0

    :cond_29
    move-object v0, p0

    move-object v1, p1

    .line 88
    invoke-static {}, Lcom/explorestack/protobuf/NewInstanceSchemas;->lite()Lcom/explorestack/protobuf/NewInstanceSchema;

    move-result-object v2

    .line 89
    invoke-static {}, Lcom/explorestack/protobuf/ListFieldSchema;->lite()Lcom/explorestack/protobuf/ListFieldSchema;

    move-result-object v3

    .line 90
    invoke-static {}, Lcom/explorestack/protobuf/SchemaUtil;->unknownFieldSetLiteSchema()Lcom/explorestack/protobuf/UnknownFieldSchema;

    move-result-object v4

    const/4 v5, 0x0

    .line 92
    invoke-static {}, Lcom/explorestack/protobuf/MapFieldSchemas;->lite()Lcom/explorestack/protobuf/MapFieldSchema;

    move-result-object v6

    .line 85
    invoke-static/range {v0 .. v6}, Lcom/explorestack/protobuf/MessageSchema;->newSchema(Ljava/lang/Class;Lcom/explorestack/protobuf/MessageInfo;Lcom/explorestack/protobuf/NewInstanceSchema;Lcom/explorestack/protobuf/ListFieldSchema;Lcom/explorestack/protobuf/UnknownFieldSchema;Lcom/explorestack/protobuf/ExtensionSchema;Lcom/explorestack/protobuf/MapFieldSchema;)Lcom/explorestack/protobuf/MessageSchema;

    move-result-object p0

    return-object p0

    :cond_41
    move-object v0, p0

    move-object v1, p1

    .line 94
    invoke-static {v1}, Lcom/explorestack/protobuf/ManifestSchemaFactory;->isProto2(Lcom/explorestack/protobuf/MessageInfo;)Z

    move-result p0

    if-eqz p0, :cond_62

    .line 98
    invoke-static {}, Lcom/explorestack/protobuf/NewInstanceSchemas;->full()Lcom/explorestack/protobuf/NewInstanceSchema;

    move-result-object v2

    .line 99
    invoke-static {}, Lcom/explorestack/protobuf/ListFieldSchema;->full()Lcom/explorestack/protobuf/ListFieldSchema;

    move-result-object v3

    .line 100
    invoke-static {}, Lcom/explorestack/protobuf/SchemaUtil;->proto2UnknownFieldSetSchema()Lcom/explorestack/protobuf/UnknownFieldSchema;

    move-result-object v4

    .line 101
    invoke-static {}, Lcom/explorestack/protobuf/ExtensionSchemas;->full()Lcom/explorestack/protobuf/ExtensionSchema;

    move-result-object v5

    .line 102
    invoke-static {}, Lcom/explorestack/protobuf/MapFieldSchemas;->full()Lcom/explorestack/protobuf/MapFieldSchema;

    move-result-object v6

    .line 95
    invoke-static/range {v0 .. v6}, Lcom/explorestack/protobuf/MessageSchema;->newSchema(Ljava/lang/Class;Lcom/explorestack/protobuf/MessageInfo;Lcom/explorestack/protobuf/NewInstanceSchema;Lcom/explorestack/protobuf/ListFieldSchema;Lcom/explorestack/protobuf/UnknownFieldSchema;Lcom/explorestack/protobuf/ExtensionSchema;Lcom/explorestack/protobuf/MapFieldSchema;)Lcom/explorestack/protobuf/MessageSchema;

    move-result-object p0

    return-object p0

    .line 106
    :cond_62
    invoke-static {}, Lcom/explorestack/protobuf/NewInstanceSchemas;->full()Lcom/explorestack/protobuf/NewInstanceSchema;

    move-result-object v2

    .line 107
    invoke-static {}, Lcom/explorestack/protobuf/ListFieldSchema;->full()Lcom/explorestack/protobuf/ListFieldSchema;

    move-result-object v3

    .line 108
    invoke-static {}, Lcom/explorestack/protobuf/SchemaUtil;->proto3UnknownFieldSetSchema()Lcom/explorestack/protobuf/UnknownFieldSchema;

    move-result-object v4

    const/4 v5, 0x0

    .line 110
    invoke-static {}, Lcom/explorestack/protobuf/MapFieldSchemas;->full()Lcom/explorestack/protobuf/MapFieldSchema;

    move-result-object v6

    .line 103
    invoke-static/range {v0 .. v6}, Lcom/explorestack/protobuf/MessageSchema;->newSchema(Ljava/lang/Class;Lcom/explorestack/protobuf/MessageInfo;Lcom/explorestack/protobuf/NewInstanceSchema;Lcom/explorestack/protobuf/ListFieldSchema;Lcom/explorestack/protobuf/UnknownFieldSchema;Lcom/explorestack/protobuf/ExtensionSchema;Lcom/explorestack/protobuf/MapFieldSchema;)Lcom/explorestack/protobuf/MessageSchema;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createSchema(Ljava/lang/Class;)Lcom/explorestack/protobuf/Schema;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/explorestack/protobuf/Schema<",
            "TT;>;"
        }
    .end annotation

    .line 53
    invoke-static {p1}, Lcom/explorestack/protobuf/SchemaUtil;->requireGeneratedMessage(Ljava/lang/Class;)V

    .line 55
    iget-object v0, p0, Lcom/explorestack/protobuf/ManifestSchemaFactory;->messageInfoFactory:Lcom/explorestack/protobuf/MessageInfoFactory;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/MessageInfoFactory;->messageInfoFor(Ljava/lang/Class;)Lcom/explorestack/protobuf/MessageInfo;

    move-result-object v0

    .line 58
    invoke-interface {v0}, Lcom/explorestack/protobuf/MessageInfo;->isMessageSetWireFormat()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 59
    const-class v1, Lcom/explorestack/protobuf/GeneratedMessageLite;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 61
    invoke-static {}, Lcom/explorestack/protobuf/SchemaUtil;->unknownFieldSetLiteSchema()Lcom/explorestack/protobuf/UnknownFieldSchema;

    move-result-object p1

    .line 62
    invoke-static {}, Lcom/explorestack/protobuf/ExtensionSchemas;->lite()Lcom/explorestack/protobuf/ExtensionSchema;

    move-result-object v1

    .line 63
    invoke-interface {v0}, Lcom/explorestack/protobuf/MessageInfo;->getDefaultInstance()Lcom/explorestack/protobuf/MessageLite;

    move-result-object v0

    .line 60
    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/MessageSetSchema;->newSchema(Lcom/explorestack/protobuf/UnknownFieldSchema;Lcom/explorestack/protobuf/ExtensionSchema;Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageSetSchema;

    move-result-object p1

    return-object p1

    .line 66
    :cond_28
    invoke-static {}, Lcom/explorestack/protobuf/SchemaUtil;->proto2UnknownFieldSetSchema()Lcom/explorestack/protobuf/UnknownFieldSchema;

    move-result-object p1

    .line 67
    invoke-static {}, Lcom/explorestack/protobuf/ExtensionSchemas;->full()Lcom/explorestack/protobuf/ExtensionSchema;

    move-result-object v1

    .line 68
    invoke-interface {v0}, Lcom/explorestack/protobuf/MessageInfo;->getDefaultInstance()Lcom/explorestack/protobuf/MessageLite;

    move-result-object v0

    .line 65
    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/MessageSetSchema;->newSchema(Lcom/explorestack/protobuf/UnknownFieldSchema;Lcom/explorestack/protobuf/ExtensionSchema;Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageSetSchema;

    move-result-object p1

    return-object p1

    .line 71
    :cond_39
    invoke-static {p1, v0}, Lcom/explorestack/protobuf/ManifestSchemaFactory;->newSchema(Ljava/lang/Class;Lcom/explorestack/protobuf/MessageInfo;)Lcom/explorestack/protobuf/Schema;

    move-result-object p1

    return-object p1
.end method

###### Class com.explorestack.protobuf.ManifestSchemaFactory.AnonymousClass1 (com.explorestack.protobuf.ManifestSchemaFactory$1)
.class public final Lcom/explorestack/protobuf/ManifestSchemaFactory$1;
.super Ljava/lang/Object;
.source "ManifestSchemaFactory.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageInfoFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/ManifestSchemaFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSupported(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public messageInfoFor(Ljava/lang/Class;)Lcom/explorestack/protobuf/MessageInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/explorestack/protobuf/MessageInfo;"
        }
    .end annotation

    .line 160
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This should never be called."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class com.explorestack.protobuf.ManifestSchemaFactory.CompositeMessageInfoFactory (com.explorestack.protobuf.ManifestSchemaFactory$CompositeMessageInfoFactory)
.class public Lcom/explorestack/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;
.super Ljava/lang/Object;
.source "ManifestSchemaFactory.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageInfoFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/ManifestSchemaFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompositeMessageInfoFactory"
.end annotation


# instance fields
.field public factories:[Lcom/explorestack/protobuf/MessageInfoFactory;


# direct methods
.method public varargs constructor <init>([Lcom/explorestack/protobuf/MessageInfoFactory;)V
    .registers 2

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/explorestack/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;->factories:[Lcom/explorestack/protobuf/MessageInfoFactory;

    return-void
.end method


# virtual methods
.method public isSupported(Ljava/lang/Class;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/explorestack/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;->factories:[Lcom/explorestack/protobuf/MessageInfoFactory;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 132
    invoke-interface {v4, p1}, Lcom/explorestack/protobuf/MessageInfoFactory;->isSupported(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_14
    return v2
.end method

.method public messageInfoFor(Ljava/lang/Class;)Lcom/explorestack/protobuf/MessageInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/explorestack/protobuf/MessageInfo;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/explorestack/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;->factories:[Lcom/explorestack/protobuf/MessageInfoFactory;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 142
    invoke-interface {v3, p1}, Lcom/explorestack/protobuf/MessageInfoFactory;->isSupported(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 143
    invoke-interface {v3, p1}, Lcom/explorestack/protobuf/MessageInfoFactory;->messageInfoFor(Ljava/lang/Class;)Lcom/explorestack/protobuf/MessageInfo;

    move-result-object p1

    return-object p1

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 146
    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No factory is available for message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
