###### Class com.explorestack.protobuf.Descriptors (com.explorestack.protobuf.Descriptors)
.class public final Lcom/explorestack/protobuf/Descriptors;
.super Ljava/lang/Object;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;,
        Lcom/explorestack/protobuf/Descriptors$DescriptorPool;,
        Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;,
        Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;,
        Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;,
        Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;,
        Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;,
        Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;,
        Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;,
        Lcom/explorestack/protobuf/Descriptors$Descriptor;,
        Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 81
    const-class v0, Lcom/explorestack/protobuf/Descriptors;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/Descriptors;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Ljava/util/logging/Logger;
    .registers 1

    .line 80
    sget-object v0, Lcom/explorestack/protobuf/Descriptors;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static synthetic access$1700(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 80
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/Descriptors;->computeFullName(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static computeFullName(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x2e

    if-eqz p1, :cond_1b

    .line 2165
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2168
    :cond_1b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object p0

    .line 2169
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_38

    .line 2170
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_38
    return-object p2
.end method

###### Class com.explorestack.protobuf.Descriptors.AnonymousClass1 (com.explorestack.protobuf.Descriptors$1)
.class synthetic Lcom/explorestack/protobuf/Descriptors$1;
.super Ljava/lang/Object;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$JavaType:[I

.field static final synthetic $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1591
    invoke-static {}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->values()[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/explorestack/protobuf/Descriptors$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$JavaType:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/explorestack/protobuf/Descriptors$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$JavaType:[I

    sget-object v3, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    .line 1516
    :catch_1d
    invoke-static {}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->values()[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/explorestack/protobuf/Descriptors$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    :try_start_26
    sget-object v3, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->INT32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2e
    sget-object v1, Lcom/explorestack/protobuf/Descriptors$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    sget-object v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->SINT32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_38} :catch_38

    :catch_38
    :try_start_38
    sget-object v0, Lcom/explorestack/protobuf/Descriptors$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->SFIXED32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_43} :catch_43

    :catch_43
    :try_start_43
    sget-object v0, Lcom/explorestack/protobuf/Descriptors$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->UINT32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_4e} :catch_4e

    :catch_4e
    :try_start_4e
    sget-object v0, Lcom/explorestack/protobuf/Descriptors$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->FIXED32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_59} :catch_59

    :catch_59
    :try_start_59
    sget-object v0, Lcom/explorestack/protobuf/Descriptors$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->INT64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_64} :catch_64

    :catch_64
    :try_start_64
    sget-object v0, Lcom/explorestack/protobuf/Descriptors$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->SINT64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_6f} :catch_6f

    :catch_6f
    :try_start_6f
    sget-object v0, Lcom/explorestack/protobuf/Descriptors$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->SFIXED64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_7b} :catch_7b

    :catch_7b
    :try_start_7b
    sget-object v0, Lcom/explorestack/protobuf/Descriptors$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->UINT64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_87
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7b .. :try_end_87} :catch_87

    :catch_87
    :try_start_87
    sget-object v0, Lcom/explorestack/protobuf/Descriptors$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->FIXED64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87 .. :try_end_93} :catch_93

    :catch_93
    :try_start_93
    sget-object v0, Lcom/explorestack/protobuf/Descriptors$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->FLOAT:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_9f} :catch_9f

    :catch_9f
    :try_start_9f
    sget-object v0, Lcom/explorestack/protobuf/Descriptors$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->DOUBLE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_ab} :catch_ab

    :catch_ab
    :try_start_ab
    sget-object v0, Lcom/explorestack/protobuf/Descriptors$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->BOOL:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ab .. :try_end_b7} :catch_b7

    :catch_b7
    :try_start_b7
    sget-object v0, Lcom/explorestack/protobuf/Descriptors$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->STRING:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_c3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b7 .. :try_end_c3} :catch_c3

    :catch_c3
    :try_start_c3
    sget-object v0, Lcom/explorestack/protobuf/Descriptors$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->BYTES:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c3 .. :try_end_cf} :catch_cf

    :catch_cf
    :try_start_cf
    sget-object v0, Lcom/explorestack/protobuf/Descriptors$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_db
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cf .. :try_end_db} :catch_db

    :catch_db
    :try_start_db
    sget-object v0, Lcom/explorestack/protobuf/Descriptors$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_e7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_db .. :try_end_e7} :catch_e7

    :catch_e7
    :try_start_e7
    sget-object v0, Lcom/explorestack/protobuf/Descriptors$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_f3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e7 .. :try_end_f3} :catch_f3

    :catch_f3
    return-void
.end method

###### Class com.explorestack.protobuf.Descriptors.Descriptor (com.explorestack.protobuf.Descriptors$Descriptor)
.class public final Lcom/explorestack/protobuf/Descriptors$Descriptor;
.super Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Descriptor"
.end annotation


# instance fields
.field private final containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private final enumTypes:[Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

.field private final extensions:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

.field private final fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

.field private final file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

.field private final fullName:Ljava/lang/String;

.field private final index:I

.field private final nestedTypes:[Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private final oneofs:[Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

.field private proto:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

.field private final realOneofCount:I


# direct methods
.method private constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v7, 0x0

    .line 869
    invoke-direct {p0, v7}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;-><init>(Lcom/explorestack/protobuf/Descriptors$1;)V

    .line 870
    iput p4, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->index:I

    .line 871
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    .line 872
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3, v1}, Lcom/explorestack/protobuf/Descriptors;->access$1700(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->fullName:Ljava/lang/String;

    .line 873
    iput-object p2, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 874
    iput-object p3, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 876
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getOneofDeclCount()I

    move-result v0

    new-array v0, v0, [Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->oneofs:[Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    const/4 v8, 0x0

    move v4, v8

    .line 877
    :goto_20
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getOneofDeclCount()I

    move-result v0

    if-ge v4, v0, :cond_39

    .line 878
    iget-object v6, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->oneofs:[Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    new-instance v0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getOneofDecl(I)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object v1

    const/4 v5, 0x0

    move-object v3, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;ILcom/explorestack/protobuf/Descriptors$1;)V

    aput-object v0, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 881
    :cond_39
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getNestedTypeCount()I

    move-result v0

    new-array v0, v0, [Lcom/explorestack/protobuf/Descriptors$Descriptor;

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->nestedTypes:[Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move v0, v8

    .line 882
    :goto_42
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getNestedTypeCount()I

    move-result v1

    if-ge v0, v1, :cond_58

    .line 883
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->nestedTypes:[Lcom/explorestack/protobuf/Descriptors$Descriptor;

    new-instance v4, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getNestedType(I)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v5

    invoke-direct {v4, v5, p2, p0, v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;I)V

    aput-object v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 886
    :cond_58
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getEnumTypeCount()I

    move-result v0

    new-array v0, v0, [Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->enumTypes:[Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move v4, v8

    .line 887
    :goto_61
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getEnumTypeCount()I

    move-result v0

    if-ge v4, v0, :cond_7a

    .line 888
    iget-object v6, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->enumTypes:[Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    new-instance v0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getEnumType(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v1

    const/4 v5, 0x0

    move-object v3, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;ILcom/explorestack/protobuf/Descriptors$1;)V

    aput-object v0, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_61

    .line 891
    :cond_7a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getFieldCount()I

    move-result v0

    new-array v0, v0, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move v4, v8

    .line 892
    :goto_83
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getFieldCount()I

    move-result v0

    if-ge v4, v0, :cond_9d

    .line 893
    iget-object v9, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    new-instance v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getField(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;IZLcom/explorestack/protobuf/Descriptors$1;)V

    aput-object v0, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_83

    .line 896
    :cond_9d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getExtensionCount()I

    move-result v0

    new-array v0, v0, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->extensions:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move v4, v8

    .line 897
    :goto_a6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getExtensionCount()I

    move-result v0

    if-ge v4, v0, :cond_c0

    .line 898
    iget-object v9, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->extensions:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    new-instance v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getExtension(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;IZLcom/explorestack/protobuf/Descriptors$1;)V

    aput-object v0, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a6

    :cond_c0
    move v0, v8

    .line 901
    :goto_c1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getOneofDeclCount()I

    move-result v1

    if-ge v0, v1, :cond_de

    .line 902
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->oneofs:[Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getFieldCount()I

    move-result v2

    new-array v2, v2, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->access$1902(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 903
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->oneofs:[Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    aget-object v1, v1, v0

    invoke-static {v1, v8}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->access$2002(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;I)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_c1

    :cond_de
    move v0, v8

    .line 905
    :goto_df
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getFieldCount()I

    move-result v1

    if-ge v0, v1, :cond_100

    .line 906
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingOneof()Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    move-result-object v1

    if-eqz v1, :cond_fd

    .line 908
    invoke-static {v1}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->access$1900(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object v2

    invoke-static {v1}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->access$2008(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)I

    move-result v1

    iget-object v4, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    aget-object v4, v4, v0

    aput-object v4, v2, v1

    :cond_fd
    add-int/lit8 v0, v0, 0x1

    goto :goto_df

    .line 913
    :cond_100
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->oneofs:[Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    array-length v1, v0

    move v2, v8

    :goto_104
    if-ge v8, v1, :cond_11e

    aget-object v4, v0, v8

    .line 914
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->isSynthetic()Z

    move-result v4

    if-eqz v4, :cond_111

    add-int/lit8 v2, v2, 0x1

    goto :goto_113

    :cond_111
    if-gtz v2, :cond_116

    :goto_113
    add-int/lit8 v8, v8, 0x1

    goto :goto_104

    .line 918
    :cond_116
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Synthetic oneofs must come last."

    invoke-direct {v0, p0, v1, v7}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0

    .line 922
    :cond_11e
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->oneofs:[Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    array-length v0, v0

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->realOneofCount:I

    .line 924
    invoke-static {p2}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->addSymbol(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;ILcom/explorestack/protobuf/Descriptors$1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 629
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/Descriptors$Descriptor;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 835
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;-><init>(Lcom/explorestack/protobuf/Descriptors$1;)V

    const/16 v1, 0x2e

    .line 838
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_19

    add-int/lit8 v2, v1, 0x1

    .line 840
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 841
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    .line 839
    :cond_19
    const-string v1, ""

    move-object v2, p1

    .line 843
    :goto_1c
    iput v3, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->index:I

    .line 845
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->newBuilder()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v4

    .line 846
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v2

    .line 848
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilder()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->setStart(I)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v4

    const/high16 v5, 0x20000000

    invoke-virtual {v4, v5}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->setEnd(I)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v4

    .line 847
    invoke-virtual {v2, v4}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;->addExtensionRange(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v2

    .line 849
    invoke-virtual {v2}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v2

    iput-object v2, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    .line 850
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->fullName:Ljava/lang/String;

    .line 851
    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 853
    new-array p1, v3, [Lcom/explorestack/protobuf/Descriptors$Descriptor;

    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->nestedTypes:[Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 854
    new-array p1, v3, [Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->enumTypes:[Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    .line 855
    new-array p1, v3, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 856
    new-array p1, v3, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->extensions:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 857
    new-array p1, v3, [Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->oneofs:[Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    .line 858
    iput v3, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->realOneofCount:I

    .line 861
    new-instance p1, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    invoke-direct {p1, v1, p0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;-><init>(Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$Descriptor;)V

    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static synthetic access$1100(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;)V
    .registers 2

    .line 629
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->setProto(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/explorestack/protobuf/Descriptors$Descriptor;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 629
    invoke-direct {p0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->crossLink()V

    return-void
.end method

.method private crossLink()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 929
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->nestedTypes:[Lcom/explorestack/protobuf/Descriptors$Descriptor;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_f

    aget-object v4, v0, v3

    .line 930
    invoke-direct {v4}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->crossLink()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 933
    :cond_f
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    array-length v1, v0

    move v3, v2

    :goto_13
    if-ge v3, v1, :cond_1d

    aget-object v4, v0, v3

    .line 934
    invoke-static {v4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->access$1000(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 937
    :cond_1d
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->extensions:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    array-length v1, v0

    :goto_20
    if-ge v2, v1, :cond_2a

    aget-object v3, v0, v2

    .line 938
    invoke-static {v3}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->access$1000(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_2a
    return-void
.end method

.method private setProto(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;)V
    .registers 6

    .line 944
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    const/4 v0, 0x0

    move v1, v0

    .line 946
    :goto_4
    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->nestedTypes:[Lcom/explorestack/protobuf/Descriptors$Descriptor;

    array-length v3, v2

    if-ge v1, v3, :cond_15

    .line 947
    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getNestedType(I)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->setProto(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_15
    move v1, v0

    .line 950
    :goto_16
    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->oneofs:[Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    array-length v3, v2

    if-ge v1, v3, :cond_27

    .line 951
    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getOneofDecl(I)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->access$2200(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_27
    move v1, v0

    .line 954
    :goto_28
    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->enumTypes:[Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    array-length v3, v2

    if-ge v1, v3, :cond_39

    .line 955
    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getEnumType(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->access$1200(Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_39
    move v1, v0

    .line 958
    :goto_3a
    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    array-length v3, v2

    if-ge v1, v3, :cond_4b

    .line 959
    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getField(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->access$1400(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 962
    :cond_4b
    :goto_4b
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->extensions:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    array-length v2, v1

    if-ge v0, v2, :cond_5c

    .line 963
    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getExtension(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->access$1400(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    :cond_5c
    return-void
.end method


# virtual methods
.method public findEnumTypeByName(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 5

    .line 814
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    move-result-object p1

    .line 815
    instance-of v0, p1, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    if-eqz v0, :cond_27

    .line 816
    check-cast p1, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    return-object p1

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method public findFieldByName(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .registers 5

    .line 774
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    move-result-object p1

    .line 775
    instance-of v0, p1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    if-eqz v0, :cond_27

    .line 776
    check-cast p1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    return-object p1

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method public findFieldByNumber(I)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .registers 4

    .line 789
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->access$1600(Lcom/explorestack/protobuf/Descriptors$DescriptorPool;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;

    invoke-direct {v1, p0, p1}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    return-object p1
.end method

.method public findNestedTypeByName(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 5

    .line 799
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    move-result-object p1

    .line 800
    instance-of v0, p1, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    if-eqz v0, :cond_27

    .line 801
    check-cast p1, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object p1

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method public getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 687
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getEnumTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;",
            ">;"
        }
    .end annotation

    .line 722
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->enumTypes:[Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtensions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation

    .line 712
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->extensions:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFields()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation

    .line 697
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
    .registers 2

    .line 682
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 2

    .line 676
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .registers 2

    .line 647
    iget v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 659
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNestedTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Descriptors$Descriptor;",
            ">;"
        }
    .end annotation

    .line 717
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->nestedTypes:[Lcom/explorestack/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOneofs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;",
            ">;"
        }
    .end annotation

    .line 702
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->oneofs:[Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;
    .registers 2

    .line 692
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public getRealOneofs()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;",
            ">;"
        }
    .end annotation

    .line 707
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->oneofs:[Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->realOneofCount:I

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isExtendable()Z
    .registers 2

    .line 761
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getExtensionRangeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isExtensionNumber(I)Z
    .registers 5

    .line 727
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getExtensionRangeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    .line 728
    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->getStart()I

    move-result v2

    if-gt v2, p1, :cond_a

    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->getEnd()I

    move-result v1

    if-ge p1, v1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_24
    const/4 p1, 0x0

    return p1
.end method

.method public isReservedName(Ljava/lang/String;)Z
    .registers 4

    .line 747
    invoke-static {p1}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getReservedNameList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 749
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 p1, 0x1

    return p1

    :cond_21
    const/4 p1, 0x0

    return p1
.end method

.method public isReservedNumber(I)Z
    .registers 5

    .line 737
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getReservedRangeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    .line 738
    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->getStart()I

    move-result v2

    if-gt v2, p1, :cond_a

    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->getEnd()I

    move-result v1

    if-ge p1, v1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_24
    const/4 p1, 0x0

    return p1
.end method

.method public toProto()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;
    .registers 2

    .line 653
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$Descriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    return-object v0
.end method

.method public bridge synthetic toProto()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 629
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->toProto()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

###### Class com.explorestack.protobuf.Descriptors.DescriptorPool (com.explorestack.protobuf.Descriptors$DescriptorPool)
.class final Lcom/explorestack/protobuf/Descriptors$DescriptorPool;
.super Ljava/lang/Object;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DescriptorPool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;,
        Lcom/explorestack/protobuf/Descriptors$DescriptorPool$PackageDescriptor;,
        Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;
    }
.end annotation


# instance fields
.field private allowUnknownDependencies:Z

.field private final dependencies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/explorestack/protobuf/Descriptors$FileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final descriptorsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final enumValuesByNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;",
            "Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldsByNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Z)V
    .registers 6

    .line 2267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2300
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    .line 2301
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->fieldsByNumber:Ljava/util/Map;

    .line 2302
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->enumValuesByNumber:Ljava/util/Map;

    .line 2268
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->dependencies:Ljava/util/Set;

    .line 2269
    iput-boolean p2, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->allowUnknownDependencies:Z

    .line 2271
    array-length p2, p1

    const/4 v0, 0x0

    :goto_23
    if-ge v0, p2, :cond_32

    aget-object v1, p1, v0

    .line 2272
    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->dependencies:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2273
    invoke-direct {p0, v1}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->importPublicDependencies(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 2276
    :cond_32
    iget-object p1, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->dependencies:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_38
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_53

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 2278
    :try_start_44
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->addPackage(Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)V
    :try_end_4b
    .catch Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException; {:try_start_44 .. :try_end_4b} :catch_4c

    goto :goto_38

    :catch_4c
    move-exception p1

    .line 2283
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :cond_53
    return-void
.end method

.method public static synthetic access$1600(Lcom/explorestack/protobuf/Descriptors$DescriptorPool;)Ljava/util/Map;
    .registers 1

    .line 2258
    iget-object p0, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->fieldsByNumber:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$2500(Lcom/explorestack/protobuf/Descriptors$DescriptorPool;)Ljava/util/Map;
    .registers 1

    .line 2258
    iget-object p0, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->enumValuesByNumber:Ljava/util/Map;

    return-object p0
.end method

.method private importPublicDependencies(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)V
    .registers 4

    .line 2290
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getPublicDependencies()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 2291
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->dependencies:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2292
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->importPublicDependencies(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)V

    goto :goto_8

    :cond_20
    return-void
.end method

.method public static validateSymbolName(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 2629
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2630
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_55

    const/4 v1, 0x0

    .line 2638
    :goto_c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_54

    .line 2639
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x61

    if-gt v4, v3, :cond_1e

    const/16 v4, 0x7a

    if-le v3, v4, :cond_51

    :cond_1e
    const/16 v4, 0x41

    if-gt v4, v3, :cond_26

    const/16 v4, 0x5a

    if-le v3, v4, :cond_51

    :cond_26
    const/16 v4, 0x5f

    if-eq v3, v4, :cond_51

    const/16 v4, 0x30

    if-gt v4, v3, :cond_35

    const/16 v4, 0x39

    if-gt v3, v4, :cond_35

    if-lez v1, :cond_35

    goto :goto_51

    .line 2646
    :cond_35
    new-instance v1, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" is not a valid identifier."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0, v2}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v1

    :cond_51
    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_54
    return-void

    .line 2631
    :cond_55
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Missing name."

    invoke-direct {v0, p0, v1, v2}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0
.end method


# virtual methods
.method public addEnumValueByNumber(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)V
    .registers 5

    .line 2614
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getNumber()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;I)V

    .line 2615
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->enumValuesByNumber:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    if-eqz p1, :cond_1c

    .line 2617
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->enumValuesByNumber:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    return-void
.end method

.method public addFieldByNumber(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 2591
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;

    .line 2592
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;I)V

    .line 2593
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->fieldsByNumber:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    if-nez v1, :cond_18

    return-void

    .line 2595
    :cond_18
    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->fieldsByNumber:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2596
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2599
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has already been used in \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2601
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" by field \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2603
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0
.end method

.method public addPackage(Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/16 v0, 0x2e

    .line 2535
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    move-object v0, p1

    goto :goto_19

    :cond_b
    const/4 v1, 0x0

    .line 2540
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->addPackage(Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)V

    add-int/lit8 v0, v0, 0x1

    .line 2541
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2544
    :goto_19
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    new-instance v2, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$PackageDescriptor;

    invoke-direct {v2, v0, p1, p2}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$PackageDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)V

    .line 2545
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    if-eqz v1, :cond_5f

    .line 2547
    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2548
    instance-of p1, v1, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$PackageDescriptor;

    if-eqz p1, :cond_32

    goto :goto_5f

    .line 2549
    :cond_32
    new-instance p1, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" is already defined (as something other than a package) in file \""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2555
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw p1

    :cond_5f
    :goto_5f
    return-void
.end method

.method public addSymbol(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 2457
    invoke-static {p1}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->validateSymbolName(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;)V

    .line 2459
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    .line 2461
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    if-eqz v1, :cond_9b

    .line 2463
    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2465
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const-string v4, "\"."

    const/4 v5, 0x0

    const/16 v6, 0x22

    if-ne v2, v3, :cond_73

    const/16 v1, 0x2e

    .line 2466
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_48

    .line 2468
    new-instance v1, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" is already defined."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0, v5}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v1

    .line 2471
    :cond_48
    new-instance v2, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v1, 0x1

    .line 2474
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" is already defined in \""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    .line 2476
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p1, v0, v5}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v2

    .line 2480
    :cond_73
    new-instance v2, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" is already defined in file \""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2485
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p1, v0, v5}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v2

    :cond_9b
    return-void
.end method

.method public findSymbol(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;
    .registers 3

    .line 2306
    sget-object v0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;->ALL_SYMBOLS:Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;

    invoke-virtual {p0, p1, v0}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public findSymbol(Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;
    .registers 6

    .line 2314
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    if-eqz v0, :cond_23

    .line 2316
    sget-object v1, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;->ALL_SYMBOLS:Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;

    if-eq p2, v1, :cond_22

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;->TYPES_ONLY:Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;

    if-ne p2, v1, :cond_18

    .line 2317
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->isType(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;)Z

    move-result v1

    if-nez v1, :cond_22

    :cond_18
    sget-object v1, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;->AGGREGATES_ONLY:Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;

    if-ne p2, v1, :cond_23

    .line 2318
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->isAggregate(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_23

    :cond_22
    return-object v0

    .line 2323
    :cond_23
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->dependencies:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 2324
    invoke-static {v1}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object v1

    iget-object v1, v1, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    if-eqz v1, :cond_29

    .line 2326
    sget-object v2, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;->ALL_SYMBOLS:Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;

    if-eq p2, v2, :cond_5b

    sget-object v2, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;->TYPES_ONLY:Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;

    if-ne p2, v2, :cond_51

    .line 2327
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->isType(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;)Z

    move-result v2

    if-nez v2, :cond_5b

    :cond_51
    sget-object v2, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;->AGGREGATES_ONLY:Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;

    if-ne p2, v2, :cond_29

    .line 2328
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->isAggregate(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_29

    :cond_5b
    return-object v1

    :cond_5c
    const/4 p1, 0x0

    return-object p1
.end method

.method public isAggregate(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;)Z
    .registers 3

    .line 2344
    instance-of v0, p1, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    if-nez v0, :cond_13

    instance-of v0, p1, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    if-nez v0, :cond_13

    instance-of v0, p1, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$PackageDescriptor;

    if-nez v0, :cond_13

    instance-of p1, p1, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    return p1

    :cond_13
    :goto_13
    const/4 p1, 0x1

    return p1
.end method

.method public isType(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;)Z
    .registers 3

    .line 2339
    instance-of v0, p1, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    if-nez v0, :cond_b

    instance-of p1, p1, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    if-eqz p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    return p1

    :cond_b
    :goto_b
    const/4 p1, 0x1

    return p1
.end method

.method public lookupSymbol(Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 2364
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    .line 2366
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2367
    invoke-virtual {p0, v0, p3}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    move-result-object v1

    goto :goto_62

    :cond_12
    const/16 v1, 0x2e

    .line 2382
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1d

    move-object v3, p1

    goto :goto_22

    :cond_1d
    const/4 v3, 0x0

    .line 2387
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2392
    :goto_22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2396
    :goto_2b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v2, :cond_37

    .line 2399
    invoke-virtual {p0, p1, p3}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    move-result-object v1

    move-object v0, p1

    goto :goto_62

    :cond_37
    add-int/lit8 v6, v5, 0x1

    .line 2402
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2405
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2406
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;->AGGREGATES_ONLY:Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;

    invoke-virtual {p0, v7, v8}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    move-result-object v7

    if-eqz v7, :cond_b6

    if-eq v1, v2, :cond_5d

    .line 2413
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2414
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2415
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    move-object v1, v0

    goto :goto_5e

    :cond_5d
    move-object v1, v7

    .line 2417
    :goto_5e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_62
    if-nez v1, :cond_b5

    .line 2428
    iget-boolean v1, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->allowUnknownDependencies:Z

    if-eqz v1, :cond_98

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;->TYPES_ONLY:Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;

    if-ne p3, v1, :cond_98

    .line 2429
    invoke-static {}, Lcom/explorestack/protobuf/Descriptors;->access$100()Ljava/util/logging/Logger;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The descriptor for message type \""

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" can not be found and a placeholder is created for it"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 2439
    new-instance p1, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    invoke-direct {p1, v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;-><init>(Ljava/lang/String;)V

    .line 2442
    iget-object p2, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->dependencies:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 2445
    :cond_98
    new-instance p3, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" is not defined."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p3, p2, p1, v0}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw p3

    :cond_b5
    return-object v1

    .line 2422
    :cond_b6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_2b
.end method

###### Class com.explorestack.protobuf.Descriptors.DescriptorPool.DescriptorIntPair (com.explorestack.protobuf.Descriptors$DescriptorPool$DescriptorIntPair)
.class final Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;
.super Ljava/lang/Object;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Descriptors$DescriptorPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DescriptorIntPair"
.end annotation


# instance fields
.field private final descriptor:Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

.field private final number:I


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;I)V
    .registers 3

    .line 2566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2567
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;->descriptor:Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    .line 2568
    iput p2, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;->number:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 2578
    instance-of v0, p1, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2581
    :cond_6
    check-cast p1, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;

    .line 2582
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;->descriptor:Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    iget-object v2, p1, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;->descriptor:Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    if-ne v0, v2, :cond_16

    iget v0, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;->number:I

    iget p1, p1, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;->number:I

    if-ne v0, p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 2573
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;->descriptor:Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xffff

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;->number:I

    add-int/2addr v0, v1

    return v0
.end method

###### Class com.explorestack.protobuf.Descriptors.DescriptorPool.PackageDescriptor (com.explorestack.protobuf.Descriptors$DescriptorPool$PackageDescriptor)
.class final Lcom/explorestack/protobuf/Descriptors$DescriptorPool$PackageDescriptor;
.super Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Descriptors$DescriptorPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageDescriptor"
.end annotation


# instance fields
.field private final file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

.field private final fullName:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)V
    .registers 5

    const/4 v0, 0x0

    .line 2517
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;-><init>(Lcom/explorestack/protobuf/Descriptors$1;)V

    .line 2518
    iput-object p3, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 2519
    iput-object p2, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->fullName:Ljava/lang/String;

    .line 2520
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
    .registers 2

    .line 2514
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 2

    .line 2509
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 2504
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toProto()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2499
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->toProto()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

###### Class com.explorestack.protobuf.Descriptors.DescriptorPool.SearchFilter (com.explorestack.protobuf.Descriptors$DescriptorPool$SearchFilter)
.class final enum Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;
.super Ljava/lang/Enum;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Descriptors$DescriptorPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;

.field public static final enum AGGREGATES_ONLY:Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;

.field public static final enum ALL_SYMBOLS:Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;

.field public static final enum TYPES_ONLY:Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 2262
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;

    const-string v1, "TYPES_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;->TYPES_ONLY:Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;

    .line 2263
    new-instance v1, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;

    const-string v2, "AGGREGATES_ONLY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;->AGGREGATES_ONLY:Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;

    .line 2264
    new-instance v2, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;

    const-string v3, "ALL_SYMBOLS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;->ALL_SYMBOLS:Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;

    .line 2261
    filled-new-array {v0, v1, v2}, [Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;->$VALUES:[Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2261
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;
    .registers 2

    .line 2261
    const-class v0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;
    .registers 1

    .line 2261
    sget-object v0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;->$VALUES:[Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;

    return-object v0
.end method

###### Class com.explorestack.protobuf.Descriptors.DescriptorValidationException (com.explorestack.protobuf.Descriptors$DescriptorValidationException)
.class public Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
.super Ljava/lang/Exception;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DescriptorValidationException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4fccd5afd98283ccL


# instance fields
.field private final description:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final proto:Lcom/explorestack/protobuf/Message;


# direct methods
.method private constructor <init>(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Ljava/lang/String;)V
    .registers 5

    .line 2241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2246
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;->name:Ljava/lang/String;

    .line 2247
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->toProto()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;->proto:Lcom/explorestack/protobuf/Message;

    .line 2248
    iput-object p2, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;->description:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V
    .registers 4

    .line 2197
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;)V
    .registers 5

    .line 2221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2226
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;->name:Ljava/lang/String;

    .line 2227
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;->toProto()Lcom/explorestack/protobuf/Message;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;->proto:Lcom/explorestack/protobuf/Message;

    .line 2228
    iput-object p2, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;->description:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V
    .registers 4

    .line 2197
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 2235
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;)V

    .line 2236
    invoke-virtual {p0, p3}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Ljava/lang/Throwable;Lcom/explorestack/protobuf/Descriptors$1;)V
    .registers 5

    .line 2197
    invoke-direct {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 2212
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getProblemProto()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2207
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;->proto:Lcom/explorestack/protobuf/Message;

    return-object v0
.end method

.method public getProblemSymbolName()Ljava/lang/String;
    .registers 2

    .line 2202
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;->name:Ljava/lang/String;

    return-object v0
.end method

###### Class com.explorestack.protobuf.Descriptors.EnumDescriptor (com.explorestack.protobuf.Descriptors$EnumDescriptor)
.class public final Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
.super Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;
.source "Descriptors.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumDescriptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;",
        "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
        "Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private final file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

.field private final fullName:Ljava/lang/String;

.field private final index:I

.field private proto:Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

.field private final unknownValues:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;",
            ">;>;"
        }
    .end annotation
.end field

.field private values:[Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;


# direct methods
.method private constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1795
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;-><init>(Lcom/explorestack/protobuf/Descriptors$1;)V

    .line 1787
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->unknownValues:Ljava/util/WeakHashMap;

    .line 1796
    iput p4, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->index:I

    .line 1797
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    .line 1798
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lcom/explorestack/protobuf/Descriptors;->access$1700(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->fullName:Ljava/lang/String;

    .line 1799
    iput-object p2, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 1800
    iput-object p3, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 1802
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->getValueCount()I

    move-result p3

    if-eqz p3, :cond_50

    .line 1808
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->getValueCount()I

    move-result p3

    new-array p3, p3, [Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    iput-object p3, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->values:[Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    const/4 p3, 0x0

    move v4, p3

    .line 1809
    :goto_2d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->getValueCount()I

    move-result p3

    if-ge v4, p3, :cond_46

    .line 1810
    iget-object p3, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->values:[Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    new-instance v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->getValue(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v1

    const/4 v5, 0x0

    move-object v3, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;ILcom/explorestack/protobuf/Descriptors$1;)V

    aput-object v0, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_46
    move-object v3, p0

    move-object v2, p2

    .line 1813
    invoke-static {v2}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->addSymbol(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;)V

    return-void

    :cond_50
    move-object v3, p0

    .line 1805
    new-instance p1, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "Enums must contain at least one value."

    invoke-direct {p1, p0, p2, v0}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;ILcom/explorestack/protobuf/Descriptors$1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 1642
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;I)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)V
    .registers 2

    .line 1642
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->setProto(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)V

    return-void
.end method

.method private setProto(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)V
    .registers 5

    .line 1818
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v0, 0x0

    .line 1820
    :goto_3
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->values:[Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    array-length v2, v1

    if-ge v0, v2, :cond_14

    .line 1821
    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->getValue(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->access$2800(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_14
    return-void
.end method


# virtual methods
.method public findValueByName(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .registers 5

    .line 1703
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    move-result-object p1

    .line 1704
    instance-of v0, p1, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    if-eqz v0, :cond_27

    .line 1705
    check-cast p1, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object p1

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method public findValueByNumber(I)Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .registers 4

    .line 1720
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->access$2500(Lcom/explorestack/protobuf/Descriptors$DescriptorPool;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;

    invoke-direct {v1, p0, p1}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/explorestack/protobuf/Internal$EnumLite;
    .registers 2

    .line 1642
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->findValueByNumber(I)Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumberCreatingIfUnknown(I)Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .registers 5

    .line 1728
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->findValueByNumber(I)Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 1733
    :cond_7
    monitor-enter p0

    .line 1763
    :try_start_8
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1764
    iget-object p1, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->unknownValues:Ljava/util/WeakHashMap;

    invoke-virtual {p1, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_21

    .line 1766
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    goto :goto_21

    :catchall_1f
    move-exception p1

    goto :goto_37

    :cond_21
    :goto_21
    if-nez v0, :cond_35

    .line 1769
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    iget-object p1, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;-><init>(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;Ljava/lang/Integer;Lcom/explorestack/protobuf/Descriptors$1;)V

    .line 1770
    iget-object p1, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->unknownValues:Ljava/util/WeakHashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1772
    :cond_35
    monitor-exit p0

    return-object v0

    :goto_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_1f

    throw p1
.end method

.method public getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 1683
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
    .registers 2

    .line 1678
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 2

    .line 1672
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .registers 2

    .line 1650
    iget v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1662
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;
    .registers 2

    .line 1688
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public getUnknownEnumValueDescriptorCount()I
    .registers 2

    .line 1778
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->unknownValues:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    return v0
.end method

.method public getValues()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;",
            ">;"
        }
    .end annotation

    .line 1693
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->values:[Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toProto()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;
    .registers 2

    .line 1656
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic toProto()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1642
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->toProto()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

###### Class com.explorestack.protobuf.Descriptors.EnumValueDescriptor (com.explorestack.protobuf.Descriptors$EnumValueDescriptor)
.class public final Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
.super Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;
.source "Descriptors.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumValueDescriptor"
.end annotation


# instance fields
.field private final file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

.field private final fullName:Ljava/lang/String;

.field private final index:I

.field private proto:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

.field private final type:Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;


# direct methods
.method private constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1904
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;-><init>(Lcom/explorestack/protobuf/Descriptors$1;)V

    .line 1905
    iput p4, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->index:I

    .line 1906
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    .line 1907
    iput-object p2, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 1908
    iput-object p3, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->type:Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    .line 1910
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getFullName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x2e

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->fullName:Ljava/lang/String;

    .line 1912
    invoke-static {p2}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->addSymbol(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;)V

    .line 1913
    invoke-static {p2}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->addEnumValueByNumber(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;ILcom/explorestack/protobuf/Descriptors$1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 1833
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;I)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;Ljava/lang/Integer;)V
    .registers 6

    const/4 v0, 0x0

    .line 1918
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;-><init>(Lcom/explorestack/protobuf/Descriptors$1;)V

    .line 1919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_ENUM_VALUE_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1921
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->setNumber(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p3

    const/4 v0, -0x1

    .line 1922
    iput v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->index:I

    .line 1923
    iput-object p3, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    .line 1924
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 1925
    iput-object p2, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->type:Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    .line 1926
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getFullName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->fullName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;Ljava/lang/Integer;Lcom/explorestack/protobuf/Descriptors$1;)V
    .registers 5

    .line 1833
    invoke-direct {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;-><init>(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic access$2800(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;)V
    .registers 2

    .line 1833
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->setProto(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;)V

    return-void
.end method

.method private setProto(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;)V
    .registers 2

    .line 1933
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-void
.end method


# virtual methods
.method public getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
    .registers 2

    .line 1880
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 2

    .line 1874
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .registers 2

    .line 1841
    iget v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1853
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()I
    .registers 2

    .line 1859
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getNumber()I

    move-result v0

    return v0
.end method

.method public getOptions()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;
    .registers 2

    .line 1890
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 1885
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->type:Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public toProto()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .registers 2

    .line 1847
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic toProto()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1833
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->toProto()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1864
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.explorestack.protobuf.Descriptors.FieldDescriptor (com.explorestack.protobuf.Descriptors$FieldDescriptor)
.class public final Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
.super Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;
.source "Descriptors.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldDescriptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;,
        Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;",
        "Ljava/lang/Comparable<",
        "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
        ">;",
        "Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite<",
        "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
        ">;"
    }
.end annotation


# static fields
.field private static final table:[Lcom/explorestack/protobuf/WireFormat$FieldType;


# instance fields
.field private containingOneof:Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

.field private containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private defaultValue:Ljava/lang/Object;

.field private enumType:Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

.field private final extensionScope:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private final file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

.field private final fullName:Ljava/lang/String;

.field private final index:I

.field private final isProto3Optional:Z

.field private final jsonName:Ljava/lang/String;

.field private messageType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

.field private type:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1070
    invoke-static {}, Lcom/explorestack/protobuf/WireFormat$FieldType;->values()[Lcom/explorestack/protobuf/WireFormat$FieldType;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->table:[Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 1313
    invoke-static {}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->values()[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    array-length v0, v0

    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->values()[Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_13

    return-void

    .line 1314
    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "descriptor.proto has a new declared type but Descriptors.java wasn\'t updated."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;IZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1372
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;-><init>(Lcom/explorestack/protobuf/Descriptors$1;)V

    .line 1373
    iput p4, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->index:I

    .line 1374
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 1375
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lcom/explorestack/protobuf/Descriptors;->access$1700(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->fullName:Ljava/lang/String;

    .line 1376
    iput-object p2, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 1377
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasJsonName()Z

    move-result p4

    if-eqz p4, :cond_21

    .line 1378
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getJsonName()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->jsonName:Ljava/lang/String;

    goto :goto_2b

    .line 1380
    :cond_21
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->fieldNameToJsonName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->jsonName:Ljava/lang/String;

    .line 1383
    :goto_2b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasType()Z

    move-result p4

    if-eqz p4, :cond_3b

    .line 1384
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getType()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object p4

    invoke-static {p4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->valueOf(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object p4

    iput-object p4, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->type:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1387
    :cond_3b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getProto3Optional()Z

    move-result p4

    iput-boolean p4, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isProto3Optional:Z

    .line 1389
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result p4

    if-lez p4, :cond_d6

    if-eqz p5, :cond_71

    .line 1394
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result p4

    if-eqz p4, :cond_69

    .line 1398
    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    if-eqz p3, :cond_56

    .line 1400
    iput-object p3, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->extensionScope:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    goto :goto_58

    .line 1402
    :cond_56
    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->extensionScope:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 1405
    :goto_58
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOneofIndex()Z

    move-result p1

    if-nez p1, :cond_61

    .line 1409
    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->containingOneof:Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    goto :goto_c6

    .line 1406
    :cond_61
    new-instance p1, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "FieldDescriptorProto.oneof_index set for extension field."

    invoke-direct {p1, p0, p2, v0}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw p1

    .line 1395
    :cond_69
    new-instance p1, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "FieldDescriptorProto.extendee not set for extension field."

    invoke-direct {p1, p0, p2, v0}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw p1

    .line 1411
    :cond_71
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result p4

    if-nez p4, :cond_ce

    .line 1415
    iput-object p3, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 1417
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOneofIndex()Z

    move-result p4

    if-eqz p4, :cond_c2

    .line 1418
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getOneofIndex()I

    move-result p4

    if-ltz p4, :cond_a7

    .line 1419
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getOneofIndex()I

    move-result p4

    invoke-virtual {p3}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->toProto()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object p5

    invoke-virtual {p5}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getOneofDeclCount()I

    move-result p5

    if-ge p4, p5, :cond_a7

    .line 1424
    invoke-virtual {p3}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getOneofs()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getOneofIndex()I

    move-result p1

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->containingOneof:Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    .line 1425
    invoke-static {p1}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->access$2008(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)I

    goto :goto_c4

    .line 1420
    :cond_a7
    new-instance p1, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "FieldDescriptorProto.oneof_index is out of range for type "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1422
    invoke-virtual {p3}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2, v0}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw p1

    .line 1427
    :cond_c2
    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->containingOneof:Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    .line 1429
    :goto_c4
    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->extensionScope:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 1432
    :goto_c6
    invoke-static {p2}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->addSymbol(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;)V

    return-void

    .line 1412
    :cond_ce
    new-instance p1, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "FieldDescriptorProto.extendee set for non-extension field."

    invoke-direct {p1, p0, p2, v0}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw p1

    .line 1390
    :cond_d6
    new-instance p1, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "Field numbers must be positive integers."

    invoke-direct {p1, p0, p2, v0}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;IZLcom/explorestack/protobuf/Descriptors$1;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 971
    invoke-direct/range {p0 .. p5}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;IZ)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 971
    invoke-direct {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->crossLink()V

    return-void
.end method

.method public static synthetic access$1400(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;)V
    .registers 2

    .line 971
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->setProto(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;)V

    return-void
.end method

.method public static synthetic access$3200(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z
    .registers 1

    .line 971
    iget-boolean p0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isProto3Optional:Z

    return p0
.end method

.method private crossLink()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 1437
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result v0

    const-string v1, "\" is not a message type."

    const/16 v2, 0x22

    const/4 v3, 0x0

    if-eqz v0, :cond_82

    .line 1438
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 1439
    invoke-static {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    iget-object v4, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 1440
    invoke-virtual {v4}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getExtendee()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;->TYPES_ONLY:Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;

    .line 1439
    invoke-virtual {v0, v4, p0, v5}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->lookupSymbol(Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    .line 1441
    instance-of v4, v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    if-eqz v4, :cond_64

    .line 1445
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 1447
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->isExtensionNumber(I)Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_82

    .line 1448
    :cond_36
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1451
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" does not declare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1453
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " as an extension number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0

    .line 1442
    :cond_64
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 1443
    invoke-virtual {v2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getExtendee()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0

    .line 1458
    :cond_82
    :goto_82
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasTypeName()Z

    move-result v0

    if-eqz v0, :cond_14e

    .line 1459
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 1460
    invoke-static {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    iget-object v4, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 1461
    invoke-virtual {v4}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;->TYPES_ONLY:Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;

    .line 1460
    invoke-virtual {v0, v4, p0, v5}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->lookupSymbol(Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    .line 1463
    iget-object v4, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasType()Z

    move-result v4

    if-nez v4, :cond_d6

    .line 1465
    instance-of v4, v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    if-eqz v4, :cond_ad

    .line 1466
    sget-object v4, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    iput-object v4, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->type:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    goto :goto_d6

    .line 1467
    :cond_ad
    instance-of v4, v0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    if-eqz v4, :cond_b6

    .line 1468
    sget-object v4, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    iput-object v4, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->type:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    goto :goto_d6

    .line 1470
    :cond_b6
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 1471
    invoke-virtual {v2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is not a type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0

    .line 1475
    :cond_d6
    :goto_d6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v4

    sget-object v5, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v4, v5, :cond_115

    .line 1476
    instance-of v4, v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    if-eqz v4, :cond_f7

    .line 1480
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->messageType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 1482
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue()Z

    move-result v0

    if-nez v0, :cond_ef

    goto :goto_15e

    .line 1483
    :cond_ef
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Messages can\'t have default values."

    invoke-direct {v0, p0, v1, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0

    .line 1477
    :cond_f7
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 1478
    invoke-virtual {v2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0

    .line 1485
    :cond_115
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    sget-object v4, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v1, v4, :cond_146

    .line 1486
    instance-of v1, v0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    if-eqz v1, :cond_126

    .line 1490
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->enumType:Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    goto :goto_15e

    .line 1487
    :cond_126
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 1488
    invoke-virtual {v2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is not an enum type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0

    .line 1492
    :cond_146
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Field with primitive type has type_name."

    invoke-direct {v0, p0, v1, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0

    .line 1495
    :cond_14e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_3a6

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_3a6

    .line 1502
    :goto_15e
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getPacked()Z

    move-result v0

    if-eqz v0, :cond_179

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPackable()Z

    move-result v0

    if-eqz v0, :cond_171

    goto :goto_179

    .line 1503
    :cond_171
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "[packed = true] can only be specified for repeated primitive fields."

    invoke-direct {v0, p0, v1, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0

    .line 1509
    :cond_179
    :goto_179
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue()Z

    move-result v0

    if-eqz v0, :cond_32b

    .line 1510
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_323

    .line 1516
    :try_start_187
    sget-object v0, Lcom/explorestack/protobuf/Descriptors$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_193
    .catch Ljava/lang/NumberFormatException; {:try_start_187 .. :try_end_193} :catch_1a6

    const-string v1, "nan"

    const-string v4, "-inf"

    const-string v5, "inf"

    packed-switch v0, :pswitch_data_3ae

    goto/16 :goto_363

    .line 1580
    :pswitch_19e
    :try_start_19e
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Message type had default value."

    invoke-direct {v0, p0, v1, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0

    :catch_1a6
    move-exception v0

    goto/16 :goto_303

    .line 1572
    :pswitch_1a9
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->enumType:Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->findValueByName(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    if-eqz v0, :cond_1bb

    goto/16 :goto_363

    .line 1574
    :cond_1bb
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown enum default value: \""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 1575
    invoke-virtual {v4}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0
    :try_end_1db
    .catch Ljava/lang/NumberFormatException; {:try_start_19e .. :try_end_1db} :catch_1a6

    .line 1565
    :pswitch_1db
    :try_start_1db
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/protobuf/TextFormat;->unescapeBytes(Ljava/lang/CharSequence;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;
    :try_end_1e7
    .catch Lcom/explorestack/protobuf/TextFormat$InvalidEscapeSequenceException; {:try_start_1db .. :try_end_1e7} :catch_1e9
    .catch Ljava/lang/NumberFormatException; {:try_start_1db .. :try_end_1e7} :catch_1a6

    goto/16 :goto_363

    :catch_1e9
    move-exception v0

    .line 1567
    :try_start_1ea
    new-instance v1, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t parse default value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1568
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v4, v0, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Ljava/lang/Throwable;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v1

    .line 1561
    :pswitch_205
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_363

    .line 1558
    :pswitch_20f
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_363

    .line 1547
    :pswitch_21d
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_233

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 1548
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_363

    .line 1549
    :cond_233
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_249

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 1550
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_363

    .line 1551
    :cond_249
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25f

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 1552
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_363

    .line 1554
    :cond_25f
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_363

    .line 1536
    :pswitch_26d
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_283

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 1537
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_363

    .line 1538
    :cond_283
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_299

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    .line 1539
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_363

    .line 1540
    :cond_299
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2af

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 1541
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_363

    .line 1543
    :cond_2af
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_363

    .line 1533
    :pswitch_2bd
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/protobuf/TextFormat;->parseUInt64(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_363

    .line 1529
    :pswitch_2cf
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/protobuf/TextFormat;->parseInt64(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_363

    .line 1524
    :pswitch_2e1
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/protobuf/TextFormat;->parseUInt32(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto :goto_363

    .line 1520
    :pswitch_2f2
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/protobuf/TextFormat;->parseInt32(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;
    :try_end_302
    .catch Ljava/lang/NumberFormatException; {:try_start_1ea .. :try_end_302} :catch_1a6

    goto :goto_363

    .line 1583
    :goto_303
    new-instance v1, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse default value: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 1584
    invoke-virtual {v5}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Ljava/lang/Throwable;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v1

    .line 1511
    :cond_323
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Repeated fields cannot have default values."

    invoke-direct {v0, p0, v1, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0

    .line 1588
    :cond_32b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_336

    .line 1589
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto :goto_363

    .line 1591
    :cond_336
    sget-object v0, Lcom/explorestack/protobuf/Descriptors$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$JavaType:[I

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_356

    const/4 v1, 0x2

    if-eq v0, v1, :cond_353

    .line 1601
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->access$2400(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto :goto_363

    .line 1598
    :cond_353
    iput-object v3, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto :goto_363

    .line 1595
    :cond_356
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->enumType:Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    .line 1607
    :goto_363
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-nez v0, :cond_372

    .line 1608
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->addFieldByNumber(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 1611
    :cond_372
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    if-eqz v0, :cond_3a5

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_3a5

    .line 1612
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_39d

    .line 1613
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isOptional()Z

    move-result v0

    if-eqz v0, :cond_395

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_395

    goto :goto_3a5

    .line 1614
    :cond_395
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Extensions of MessageSets must be optional messages."

    invoke-direct {v0, p0, v1, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0

    .line 1618
    :cond_39d
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "MessageSets cannot have fields, only extensions."

    invoke-direct {v0, p0, v1, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0

    :cond_3a5
    :goto_3a5
    return-void

    .line 1496
    :cond_3a6
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Field with message or enum type missing type_name."

    invoke-direct {v0, p0, v1, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0

    :pswitch_data_3ae
    .packed-switch 0x1
        :pswitch_2f2
        :pswitch_2f2
        :pswitch_2f2
        :pswitch_2e1
        :pswitch_2e1
        :pswitch_2cf
        :pswitch_2cf
        :pswitch_2cf
        :pswitch_2bd
        :pswitch_2bd
        :pswitch_26d
        :pswitch_21d
        :pswitch_20f
        :pswitch_205
        :pswitch_1db
        :pswitch_1a9
        :pswitch_19e
        :pswitch_19e
    .end packed-switch
.end method

.method private static fieldNameToJsonName(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1344
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_c
    if-ge v3, v0, :cond_30

    .line 1348
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5f

    if-ne v5, v6, :cond_18

    const/4 v4, 0x1

    goto :goto_2d

    :cond_18
    if-eqz v4, :cond_2a

    const/16 v4, 0x61

    if-gt v4, v5, :cond_25

    const/16 v4, 0x7a

    if-gt v5, v4, :cond_25

    add-int/lit8 v5, v5, -0x20

    int-to-char v5, v5

    .line 1357
    :cond_25
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v2

    goto :goto_2d

    .line 1360
    :cond_2a
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1363
    :cond_30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setProto(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;)V
    .registers 2

    .line 1626
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)I
    .registers 4

    .line 1242
    iget-object v0, p1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    if-ne v0, v1, :cond_10

    .line 1247
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    .line 1243
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptors can only be compared to other FieldDescriptors for fields of the same message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 971
    check-cast p1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->compareTo(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)I

    move-result p1

    return p1
.end method

.method public getContainingOneof()Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;
    .registers 2

    .line 1147
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->containingOneof:Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    return-object v0
.end method

.method public getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 1142
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .registers 3

    .line 1120
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_b

    .line 1124
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    return-object v0

    .line 1121
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FieldDescriptor.getDefaultValue() called on an embedded message field."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEnumType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 4

    .line 1225
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_b

    .line 1229
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->enumType:Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    return-object v0

    .line 1226
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->fullName:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 1227
    const-string v2, "This field is not of enum type. (%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getEnumType()Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .registers 2

    .line 971
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionScope()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 4

    .line 1206
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1210
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->extensionScope:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0

    .line 1207
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->fullName:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 1208
    const-string v2, "This field is not an extension. (%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
    .registers 2

    .line 1032
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 2

    .line 1007
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .registers 2

    .line 979
    iget v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->index:I

    return v0
.end method

.method public getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;
    .registers 2

    .line 1020
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->type:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    return-object v0
.end method

.method public getJsonName()Ljava/lang/String;
    .registers 2

    .line 1012
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->jsonName:Ljava/lang/String;

    return-object v0
.end method

.method public getLiteJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;
    .registers 2

    .line 1026
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getLiteType()Lcom/explorestack/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/WireFormat$FieldType;->getJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;

    move-result-object v0

    return-object v0
.end method

.method public getLiteType()Lcom/explorestack/protobuf/WireFormat$FieldType;
    .registers 3

    .line 1043
    sget-object v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->table:[Lcom/explorestack/protobuf/WireFormat$FieldType;

    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->type:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 4

    .line 1215
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_b

    .line 1219
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->messageType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0

    .line 1216
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->fullName:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 1217
    const-string v2, "This field is not of message type. (%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 991
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()I
    .registers 2

    .line 997
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getNumber()I

    move-result v0

    return v0
.end method

.method public getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
    .registers 2

    .line 1129
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public getRealContainingOneof()Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;
    .registers 2

    .line 1152
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->containingOneof:Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->isSynthetic()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->containingOneof:Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;
    .registers 2

    .line 1037
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->type:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    return-object v0
.end method

.method public hasDefaultValue()Z
    .registers 2

    .line 1111
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue()Z

    move-result v0

    return v0
.end method

.method public hasOptionalKeyword()Z
    .registers 3

    .line 1160
    iget-boolean v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isProto3Optional:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 1161
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getSyntax()Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO2:Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    if-ne v0, v1, :cond_1b

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isOptional()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingOneof()Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    move-result-object v0

    if-nez v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    return v0

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    return v0
.end method

.method public hasPresence()Z
    .registers 4

    .line 1175
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1178
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    if-eq v0, v2, :cond_2a

    .line 1179
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    if-eq v0, v2, :cond_2a

    .line 1180
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingOneof()Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    move-result-object v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 1181
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getSyntax()Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object v0

    sget-object v2, Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO2:Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    if-ne v0, v2, :cond_29

    goto :goto_2a

    :cond_29
    return v1

    :cond_2a
    :goto_2a
    const/4 v0, 0x1

    return v0
.end method

.method public internalMergeFrom(Lcom/explorestack/protobuf/MessageLite$Builder;Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 3

    .line 1634
    check-cast p1, Lcom/explorestack/protobuf/Message$Builder;

    check-cast p2, Lcom/explorestack/protobuf/Message;

    invoke-interface {p1, p2}, Lcom/explorestack/protobuf/Message$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p1

    return-object p1
.end method

.method public isExtension()Z
    .registers 2

    .line 1134
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result v0

    return v0
.end method

.method public isMapField()Z
    .registers 3

    .line 1062
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_1e

    .line 1063
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1064
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getMapEntry()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    return v0

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public isOptional()Z
    .registers 3

    .line 1079
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getLabel()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public isPackable()Z
    .registers 2

    .line 1106
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getLiteType()Lcom/explorestack/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/WireFormat$FieldType;->isPackable()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public isPacked()Z
    .registers 4

    .line 1094
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPackable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1097
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getSyntax()Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object v0

    sget-object v2, Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO2:Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    if-ne v0, v2, :cond_1d

    .line 1098
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getPacked()Z

    move-result v0

    return v0

    .line 1100
    :cond_1d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->hasPacked()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getPacked()Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_33

    :cond_32
    return v1

    :cond_33
    :goto_33
    const/4 v0, 0x1

    return v0
.end method

.method public isRepeated()Z
    .registers 3

    .line 1085
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getLabel()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_REPEATED:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public isRequired()Z
    .registers 3

    .line 1074
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getLabel()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_REQUIRED:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public needsUtf8Check()Z
    .registers 4

    .line 1048
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->type:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->STRING:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x0

    return v0

    .line 1051
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getMapEntry()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    return v1

    .line 1055
    :cond_18
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getSyntax()Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object v0

    sget-object v2, Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO3:Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    if-ne v0, v2, :cond_25

    return v1

    .line 1058
    :cond_25
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getJavaStringCheckUtf8()Z

    move-result v0

    return v0
.end method

.method public toProto()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;
    .registers 2

    .line 985
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic toProto()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 971
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->toProto()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1252
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.explorestack.protobuf.Descriptors.FieldDescriptor.JavaType (com.explorestack.protobuf.Descriptors$FieldDescriptor$JavaType)
.class public final enum Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;
.super Ljava/lang/Enum;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JavaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

.field public static final enum BOOLEAN:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

.field public static final enum BYTE_STRING:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

.field public static final enum DOUBLE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

.field public static final enum ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

.field public static final enum FLOAT:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

.field public static final enum INT:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

.field public static final enum LONG:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

.field public static final enum MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

.field public static final enum STRING:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;


# instance fields
.field private final defaultDefault:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 1320
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "INT"

    invoke-direct {v0, v3, v1, v2}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->INT:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 1321
    new-instance v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "LONG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->LONG:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 1322
    new-instance v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "FLOAT"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->FLOAT:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 1323
    new-instance v3, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v5, "DOUBLE"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v3, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->DOUBLE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 1324
    new-instance v4, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v6, "BOOLEAN"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v4, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->BOOLEAN:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 1325
    new-instance v5, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const/4 v6, 0x5

    const-string v7, ""

    const-string v8, "STRING"

    invoke-direct {v5, v8, v6, v7}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v5, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->STRING:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 1326
    new-instance v6, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const/4 v7, 0x6

    sget-object v8, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    const-string v9, "BYTE_STRING"

    invoke-direct {v6, v9, v7, v8}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v6, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->BYTE_STRING:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 1327
    new-instance v7, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v8, "ENUM"

    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v7, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 1328
    new-instance v8, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v9, "MESSAGE"

    const/16 v11, 0x8

    invoke-direct {v8, v9, v11, v10}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v8, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 1319
    filled-new-array/range {v0 .. v8}, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->$VALUES:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1330
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1331
    iput-object p3, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->defaultDefault:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$2400(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)Ljava/lang/Object;
    .registers 1

    .line 1319
    iget-object p0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->defaultDefault:Ljava/lang/Object;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;
    .registers 2

    .line 1319
    const-class v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;
    .registers 1

    .line 1319
    sget-object v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->$VALUES:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    return-object v0
.end method

###### Class com.explorestack.protobuf.Descriptors.FieldDescriptor.Type (com.explorestack.protobuf.Descriptors$FieldDescriptor$Type)
.class public final enum Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;
.super Ljava/lang/Enum;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum BOOL:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum BYTES:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum DOUBLE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum FIXED32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum FIXED64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum FLOAT:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum GROUP:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum INT32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum INT64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum SFIXED32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum SFIXED64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum SINT32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum SINT64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum STRING:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum UINT32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum UINT64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;


# instance fields
.field private javaType:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;


# direct methods
.method static constructor <clinit>()V
    .registers 21

    .line 1273
    new-instance v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    const/4 v0, 0x0

    sget-object v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->DOUBLE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v3, "DOUBLE"

    invoke-direct {v1, v3, v0, v2}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->DOUBLE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1274
    new-instance v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    const/4 v0, 0x1

    sget-object v3, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->FLOAT:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v4, "FLOAT"

    invoke-direct {v2, v4, v0, v3}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->FLOAT:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1275
    new-instance v3, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->LONG:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v4, "INT64"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v3, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->INT64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1276
    new-instance v4, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    const-string v5, "UINT64"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v4, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->UINT64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1277
    new-instance v5, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v6, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->INT:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v7, "INT32"

    const/4 v8, 0x4

    invoke-direct {v5, v7, v8, v6}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v5, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->INT32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1278
    new-instance v7, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    const-string v8, "FIXED64"

    const/4 v9, 0x5

    invoke-direct {v7, v8, v9, v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v7, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->FIXED64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-object v8, v7

    .line 1279
    new-instance v7, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    const-string v9, "FIXED32"

    const/4 v10, 0x6

    invoke-direct {v7, v9, v10, v6}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v7, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->FIXED32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-object v9, v8

    .line 1280
    new-instance v8, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    const/4 v10, 0x7

    sget-object v11, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->BOOLEAN:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v12, "BOOL"

    invoke-direct {v8, v12, v10, v11}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v8, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->BOOL:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-object v10, v9

    .line 1281
    new-instance v9, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    const/16 v11, 0x8

    sget-object v12, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->STRING:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v13, "STRING"

    invoke-direct {v9, v13, v11, v12}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v9, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->STRING:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-object v11, v10

    .line 1282
    new-instance v10, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v12, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v13, "GROUP"

    const/16 v14, 0x9

    invoke-direct {v10, v13, v14, v12}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v10, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-object v13, v11

    .line 1283
    new-instance v11, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    const-string v14, "MESSAGE"

    const/16 v15, 0xa

    invoke-direct {v11, v14, v15, v12}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v11, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1284
    new-instance v12, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    const/16 v14, 0xb

    sget-object v15, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->BYTE_STRING:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-object/from16 v16, v1

    const-string v1, "BYTES"

    invoke-direct {v12, v1, v14, v15}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v12, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->BYTES:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-object v1, v13

    .line 1285
    new-instance v13, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    const-string v14, "UINT32"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15, v6}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v13, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->UINT32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1286
    new-instance v14, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    const/16 v15, 0xd

    move-object/from16 v17, v1

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-object/from16 v18, v2

    const-string v2, "ENUM"

    invoke-direct {v14, v2, v15, v1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v14, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1287
    new-instance v15, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    const-string v1, "SFIXED32"

    const/16 v2, 0xe

    invoke-direct {v15, v1, v2, v6}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v15, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->SFIXED32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1288
    new-instance v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    const-string v2, "SFIXED64"

    move-object/from16 v19, v3

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3, v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->SFIXED64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1289
    new-instance v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    const-string v3, "SINT32"

    move-object/from16 v20, v1

    const/16 v1, 0x10

    invoke-direct {v2, v3, v1, v6}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->SINT32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1290
    new-instance v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    const-string v3, "SINT64"

    const/16 v6, 0x11

    invoke-direct {v1, v3, v6, v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->SINT64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-object/from16 v6, v17

    move-object/from16 v3, v19

    move-object/from16 v17, v2

    move-object/from16 v2, v18

    move-object/from16 v18, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v20

    .line 1272
    filled-new-array/range {v1 .. v18}, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->$VALUES:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;",
            ")V"
        }
    .end annotation

    .line 1292
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1293
    iput-object p3, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->javaType:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    return-void
.end method

.method public static valueOf(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;
    .registers 2

    .line 1307
    invoke-static {}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->values()[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->getNumber()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;
    .registers 2

    .line 1272
    const-class v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;
    .registers 1

    .line 1272
    sget-object v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->$VALUES:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    return-object v0
.end method


# virtual methods
.method public getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;
    .registers 2

    .line 1303
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->javaType:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    return-object v0
.end method

.method public toProto()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    .registers 2

    .line 1299
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->forNumber(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v0

    return-object v0
.end method

###### Class com.explorestack.protobuf.Descriptors.FileDescriptor (com.explorestack.protobuf.Descriptors$FileDescriptor)
.class public final Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
.super Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileDescriptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;,
        Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;
    }
.end annotation


# instance fields
.field private final dependencies:[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

.field private final enumTypes:[Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

.field private final extensions:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

.field private final messageTypes:[Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private final pool:Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

.field private proto:Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

.field private final publicDependencies:[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

.field private final services:[Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;


# direct methods
.method private constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$DescriptorPool;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v6, 0x0

    .line 506
    invoke-direct {p0, v6}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;-><init>(Lcom/explorestack/protobuf/Descriptors$1;)V

    .line 507
    iput-object p3, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->pool:Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    .line 508
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 509
    invoke-virtual {p2}, [Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    iput-object v3, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->dependencies:[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 510
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 511
    array-length v4, p2

    const/4 v7, 0x0

    move v5, v7

    :goto_18
    if-ge v5, v4, :cond_26

    aget-object v8, p2, v5

    .line 512
    invoke-virtual {v8}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 514
    :cond_26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v4, v7

    .line 515
    :goto_2c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getPublicDependencyCount()I

    move-result v5

    if-ge v4, v5, :cond_72

    .line 516
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getPublicDependency(I)I

    move-result v5

    if-ltz v5, :cond_6a

    .line 517
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getDependencyCount()I

    move-result v8

    if-ge v5, v8, :cond_6a

    .line 520
    invoke-virtual {p1, v5}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getDependency(I)Ljava/lang/String;

    move-result-object v5

    .line 521
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    if-nez v8, :cond_64

    if-eqz p4, :cond_4d

    goto :goto_67

    .line 524
    :cond_4d
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid public dependency: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v6}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0

    .line 528
    :cond_64
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_67
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 518
    :cond_6a
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Invalid public dependency index."

    invoke-direct {v0, p0, v1, v6}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0

    .line 531
    :cond_72
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    iput-object v3, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->publicDependencies:[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 532
    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 534
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p0}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->addPackage(Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)V

    .line 536
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageTypeCount()I

    move-result v0

    new-array v0, v0, [Lcom/explorestack/protobuf/Descriptors$Descriptor;

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->messageTypes:[Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move v4, v7

    .line 537
    :goto_8d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageTypeCount()I

    move-result v0

    if-ge v4, v0, :cond_a6

    .line 538
    iget-object v8, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->messageTypes:[Lcom/explorestack/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageType(I)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/explorestack/protobuf/Descriptors$Descriptor;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;ILcom/explorestack/protobuf/Descriptors$1;)V

    aput-object v0, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8d

    .line 541
    :cond_a6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumTypeCount()I

    move-result v0

    new-array v0, v0, [Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->enumTypes:[Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move v4, v7

    .line 542
    :goto_af
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumTypeCount()I

    move-result v0

    if-ge v4, v0, :cond_c8

    .line 543
    iget-object v8, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->enumTypes:[Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    new-instance v0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumType(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;ILcom/explorestack/protobuf/Descriptors$1;)V

    aput-object v0, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_af

    .line 546
    :cond_c8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getServiceCount()I

    move-result v0

    new-array v0, v0, [Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->services:[Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;

    move v0, v7

    .line 547
    :goto_d1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getServiceCount()I

    move-result v1

    if-ge v0, v1, :cond_e7

    .line 548
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->services:[Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;

    new-instance v3, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getService(I)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v4

    invoke-direct {v3, v4, p0, v0, v6}, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;ILcom/explorestack/protobuf/Descriptors$1;)V

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d1

    .line 551
    :cond_e7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getExtensionCount()I

    move-result v0

    new-array v0, v0, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->extensions:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move v4, v7

    .line 552
    :goto_f0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getExtensionCount()I

    move-result v0

    if-ge v4, v0, :cond_10a

    .line 553
    iget-object v7, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->extensions:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    new-instance v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getExtension(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;IZLcom/explorestack/protobuf/Descriptors$1;)V

    aput-object v0, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_f0

    :cond_10a
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$Descriptor;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 558
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;-><init>(Lcom/explorestack/protobuf/Descriptors$1;)V

    .line 559
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;-><init>([Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->pool:Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    .line 561
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->newBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".placeholder.proto"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v2

    .line 563
    invoke-virtual {v2, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->setPackage(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v2

    .line 564
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->toProto()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->addMessageType(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v2

    .line 565
    invoke-virtual {v2}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v2

    iput-object v2, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 566
    new-array v2, v1, [Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    iput-object v2, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->dependencies:[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 567
    new-array v2, v1, [Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    iput-object v2, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->publicDependencies:[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 569
    filled-new-array {p2}, [Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->messageTypes:[Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 570
    new-array v2, v1, [Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    iput-object v2, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->enumTypes:[Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    .line 571
    new-array v2, v1, [Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;

    iput-object v2, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->services:[Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;

    .line 572
    new-array v1, v1, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    iput-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->extensions:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 574
    invoke-virtual {v0, p1, p0}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->addPackage(Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)V

    .line 575
    invoke-virtual {v0, p2}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->addSymbol(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->pool:Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    return-object p0
.end method

.method public static buildFrom(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 282
    invoke-static {p0, p1, v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->buildFrom(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Z)Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static buildFrom(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Z)Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 310
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    invoke-direct {v0, p1, p2}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;-><init>([Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Z)V

    .line 311
    new-instance v1, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$DescriptorPool;Z)V

    .line 313
    invoke-direct {v1}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->crossLink()V

    return-object v1
.end method

.method private crossLink()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 580
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->messageTypes:[Lcom/explorestack/protobuf/Descriptors$Descriptor;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_f

    aget-object v4, v0, v3

    .line 581
    invoke-static {v4}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->access$800(Lcom/explorestack/protobuf/Descriptors$Descriptor;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 584
    :cond_f
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->services:[Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;

    array-length v1, v0

    move v3, v2

    :goto_13
    if-ge v3, v1, :cond_1d

    aget-object v4, v0, v3

    .line 585
    invoke-static {v4}, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->access$900(Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 588
    :cond_1d
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->extensions:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    array-length v1, v0

    :goto_20
    if-ge v2, v1, :cond_2a

    aget-object v3, v0, v2

    .line 589
    invoke-static {v3}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->access$1000(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_2a
    return-void
.end method

.method private static findDescriptors(Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/String;)[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")[",
            "Lcom/explorestack/protobuf/Descriptors$FileDescriptor;"
        }
    .end annotation

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 342
    :goto_7
    array-length v3, p1

    if-ge v2, v3, :cond_47

    .line 344
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 345
    const-string v4, "descriptor"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_24} :catch_25

    goto :goto_44

    .line 349
    :catch_25
    invoke-static {}, Lcom/explorestack/protobuf/Descriptors;->access$100()Ljava/util/logging/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Descriptors for \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p2, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" can not be found."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 352
    :cond_47
    new-array p0, v1, [Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static internalBuildGeneratedFileFrom([Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lcom/explorestack/protobuf/Descriptors$FileDescriptor;"
        }
    .end annotation

    .line 452
    invoke-static {p1, p2, p3}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->findDescriptors(Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/String;)[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    .line 454
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
    .registers 5

    .line 406
    invoke-static {p0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->latin1Cat([Ljava/lang/String;)[B

    move-result-object p0

    .line 410
    :try_start_4
    invoke-static {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->parseFrom([B)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p0
    :try_end_8
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_8} :catch_2f

    const/4 v0, 0x1

    .line 419
    :try_start_9
    invoke-static {p0, p1, v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->buildFrom(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Z)Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object p0
    :try_end_d
    .catch Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException; {:try_start_9 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p1

    .line 421
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid embedded descriptor for \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2f
    move-exception p0

    .line 412
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed to parse protocol buffer descriptor for generated code."

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static internalBuildGeneratedFileFrom([Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/explorestack/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 437
    invoke-static {p1, p2, p3}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->findDescriptors(Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/String;)[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    .line 439
    invoke-static {p0, p1, p4}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    return-void
.end method

.method public static internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 364
    const-string v0, "Failed to parse protocol buffer descriptor for generated code."

    invoke-static {p0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->latin1Cat([Ljava/lang/String;)[B

    move-result-object p0

    .line 368
    :try_start_6
    invoke-static {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->parseFrom([B)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v1
    :try_end_a
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_6 .. :try_end_a} :catch_46

    const/4 v2, 0x1

    .line 378
    :try_start_b
    invoke-static {v1, p1, v2}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->buildFrom(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Z)Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object p1
    :try_end_f
    .catch Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException; {:try_start_b .. :try_end_f} :catch_25

    .line 384
    invoke-interface {p2, p1}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;->assignDescriptors(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/ExtensionRegistry;

    move-result-object p2

    if-eqz p2, :cond_24

    .line 389
    :try_start_15
    invoke-static {p0, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p0
    :try_end_19
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_15 .. :try_end_19} :catch_1d

    .line 395
    invoke-direct {p1, p0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->setProto(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)V

    return-void

    :catch_1d
    move-exception p0

    .line 391
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_24
    return-void

    :catch_25
    move-exception p0

    .line 380
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid embedded descriptor for \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_46
    move-exception p0

    .line 370
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static internalUpdateFileDescriptor(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/ExtensionRegistry;)V
    .registers 3

    .line 464
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/AbstractMessageLite;->toByteString()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 467
    :try_start_6
    invoke-static {v0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p1
    :try_end_a
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_6 .. :try_end_a} :catch_e

    .line 472
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->setProto(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)V

    return-void

    :catch_e
    move-exception p0

    .line 469
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed to parse protocol buffer descriptor for generated code."

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static latin1Cat([Ljava/lang/String;)[B
    .registers 5

    .line 327
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_e

    .line 328
    aget-object p0, p0, v2

    sget-object v0, Lcom/explorestack/protobuf/Internal;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0

    .line 330
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    array-length v1, p0

    :goto_14
    if-ge v2, v1, :cond_1e

    aget-object v3, p0, v2

    .line 332
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 334
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/explorestack/protobuf/Internal;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method private setProto(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)V
    .registers 6

    .line 602
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v0, 0x0

    move v1, v0

    .line 604
    :goto_4
    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->messageTypes:[Lcom/explorestack/protobuf/Descriptors$Descriptor;

    array-length v3, v2

    if-ge v1, v3, :cond_15

    .line 605
    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageType(I)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->access$1100(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_15
    move v1, v0

    .line 608
    :goto_16
    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->enumTypes:[Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    array-length v3, v2

    if-ge v1, v3, :cond_27

    .line 609
    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumType(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->access$1200(Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_27
    move v1, v0

    .line 612
    :goto_28
    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->services:[Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;

    array-length v3, v2

    if-ge v1, v3, :cond_39

    .line 613
    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getService(I)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->access$1300(Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 616
    :cond_39
    :goto_39
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->extensions:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    array-length v2, v1

    if-ge v0, v2, :cond_4a

    .line 617
    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getExtension(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->access$1400(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_4a
    return-void
.end method


# virtual methods
.method public findEnumTypeByName(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 6

    const/16 v0, 0x2e

    .line 209
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_b

    return-object v3

    .line 212
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_27

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 216
    :cond_27
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->pool:Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    move-result-object p1

    .line 217
    instance-of v0, p1, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    if-eqz v0, :cond_3a

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    if-ne v0, p0, :cond_3a

    .line 218
    check-cast p1, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    return-object p1

    :cond_3a
    return-object v3
.end method

.method public findExtensionByName(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .registers 6

    const/16 v0, 0x2e

    .line 255
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_b

    return-object v3

    .line 258
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_27

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 262
    :cond_27
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->pool:Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    move-result-object p1

    .line 263
    instance-of v0, p1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    if-eqz v0, :cond_3a

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    if-ne v0, p0, :cond_3a

    .line 264
    check-cast p1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    return-object p1

    :cond_3a
    return-object v3
.end method

.method public findMessageTypeByName(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 6

    const/16 v0, 0x2e

    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_b

    return-object v3

    .line 188
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_27

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 192
    :cond_27
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->pool:Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    move-result-object p1

    .line 193
    instance-of v0, p1, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    if-eqz v0, :cond_3a

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    if-ne v0, p0, :cond_3a

    .line 194
    check-cast p1, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object p1

    :cond_3a
    return-object v3
.end method

.method public findServiceByName(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;
    .registers 6

    const/16 v0, 0x2e

    .line 233
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_b

    return-object v3

    .line 236
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_27

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 240
    :cond_27
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->pool:Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    move-result-object p1

    .line 241
    instance-of v0, p1, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;

    if-eqz v0, :cond_3a

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    if-ne v0, p0, :cond_3a

    .line 242
    check-cast p1, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;

    return-object p1

    :cond_3a
    return-object v3
.end method

.method public getDependencies()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Descriptors$FileDescriptor;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->dependencies:[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnumTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->enumTypes:[Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtensions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->extensions:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
    .registers 1

    .line 0
    return-object p0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Descriptors$Descriptor;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->messageTypes:[Lcom/explorestack/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicDependencies()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Descriptors$FileDescriptor;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->publicDependencies:[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getServices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->services:[Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSyntax()Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;
    .registers 4

    .line 170
    sget-object v0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO3:Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    invoke-static {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;->access$000(Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getSyntax()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    return-object v0

    .line 173
    :cond_13
    sget-object v0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO2:Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    return-object v0
.end method

.method public supportsUnknownEnumValue()Z
    .registers 3

    .line 622
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getSyntax()Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO3:Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public toProto()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic toProto()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 87
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->toProto()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

###### Class com.explorestack.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner (com.explorestack.protobuf.Descriptors$FileDescriptor$InternalDescriptorAssigner)
.class public interface abstract Lcom/explorestack/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
.super Ljava/lang/Object;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InternalDescriptorAssigner"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract assignDescriptors(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/ExtensionRegistry;
.end method

###### Class com.explorestack.protobuf.Descriptors.FileDescriptor.Syntax (com.explorestack.protobuf.Descriptors$FileDescriptor$Syntax)
.class public final enum Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;
.super Ljava/lang/Enum;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Syntax"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

.field public static final enum PROTO2:Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

.field public static final enum PROTO3:Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

.field public static final enum UNKNOWN:Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 157
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    const/4 v1, 0x0

    const-string v2, "unknown"

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;->UNKNOWN:Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    .line 158
    new-instance v1, Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    const/4 v2, 0x1

    const-string v3, "proto2"

    const-string v4, "PROTO2"

    invoke-direct {v1, v4, v2, v3}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO2:Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    .line 159
    new-instance v2, Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    const/4 v3, 0x2

    const-string v4, "proto3"

    const-string v5, "PROTO3"

    invoke-direct {v2, v5, v3, v4}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO3:Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    .line 156
    filled-new-array {v0, v1, v2}, [Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;->$VALUES:[Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 161
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 162
    iput-object p3, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;->name:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;)Ljava/lang/String;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;
    .registers 2

    .line 156
    const-class v0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;
    .registers 1

    .line 156
    sget-object v0, Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;->$VALUES:[Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    return-object v0
.end method

###### Class com.explorestack.protobuf.Descriptors.GenericDescriptor (com.explorestack.protobuf.Descriptors$GenericDescriptor)
.class public abstract Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;
.super Ljava/lang/Object;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "GenericDescriptor"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/Descriptors$1;)V
    .registers 2

    .line 2182
    invoke-direct {p0}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
.end method

.method public abstract getFullName()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract toProto()Lcom/explorestack/protobuf/Message;
.end method

###### Class com.explorestack.protobuf.Descriptors.MethodDescriptor (com.explorestack.protobuf.Descriptors$MethodDescriptor)
.class public final Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;
.super Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodDescriptor"
.end annotation


# instance fields
.field private final file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

.field private final fullName:Ljava/lang/String;

.field private final index:I

.field private inputType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private outputType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private proto:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

.field private final service:Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;


# direct methods
.method private constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2123
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;-><init>(Lcom/explorestack/protobuf/Descriptors$1;)V

    .line 2124
    iput p4, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->index:I

    .line 2125
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 2126
    iput-object p2, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 2127
    iput-object p3, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->service:Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;

    .line 2129
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->getFullName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x2e

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->fullName:Ljava/lang/String;

    .line 2131
    invoke-static {p2}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->addSymbol(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;ILcom/explorestack/protobuf/Descriptors$1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 2042
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;I)V

    return-void
.end method

.method public static synthetic access$3000(Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 2042
    invoke-direct {p0}, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->crossLink()V

    return-void
.end method

.method public static synthetic access$3100(Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;)V
    .registers 2

    .line 2042
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->setProto(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;)V

    return-void
.end method

.method private crossLink()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 2135
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 2136
    invoke-static {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 2137
    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getInputType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;->TYPES_ONLY:Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;

    .line 2136
    invoke-virtual {v0, v1, p0, v2}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->lookupSymbol(Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    .line 2138
    instance-of v1, v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    const/4 v3, 0x0

    const-string v4, "\" is not a message type."

    const/16 v5, 0x22

    if-eqz v1, :cond_56

    .line 2142
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->inputType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2144
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 2145
    invoke-static {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 2146
    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getOutputType()Ljava/lang/String;

    move-result-object v1

    .line 2145
    invoke-virtual {v0, v1, p0, v2}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->lookupSymbol(Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Lcom/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    .line 2147
    instance-of v1, v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    if-eqz v1, :cond_38

    .line 2151
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    iput-object v0, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->outputType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-void

    .line 2148
    :cond_38
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 2149
    invoke-virtual {v2}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getOutputType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0

    .line 2139
    :cond_56
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 2140
    invoke-virtual {v2}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getInputType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$1;)V

    throw v0
.end method

.method private setProto(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;)V
    .registers 2

    .line 2156
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-void
.end method


# virtual methods
.method public getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
    .registers 2

    .line 2075
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 2

    .line 2069
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .registers 2

    .line 2047
    iget v0, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->index:I

    return v0
.end method

.method public getInputType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 2085
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->inputType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 2059
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;
    .registers 2

    .line 2105
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public getOutputType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 2090
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->outputType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getService()Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;
    .registers 2

    .line 2080
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->service:Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;

    return-object v0
.end method

.method public isClientStreaming()Z
    .registers 2

    .line 2095
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getClientStreaming()Z

    move-result v0

    return v0
.end method

.method public isServerStreaming()Z
    .registers 2

    .line 2100
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getServerStreaming()Z

    move-result v0

    return v0
.end method

.method public toProto()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;
    .registers 2

    .line 2053
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic toProto()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2042
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->toProto()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

###### Class com.explorestack.protobuf.Descriptors.OneofDescriptor (com.explorestack.protobuf.Descriptors$OneofDescriptor)
.class public final Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;
.super Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OneofDescriptor"
.end annotation


# instance fields
.field private containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private fieldCount:I

.field private fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

.field private final file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

.field private final fullName:Ljava/lang/String;

.field private final index:I

.field private proto:Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;


# direct methods
.method private constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2713
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;-><init>(Lcom/explorestack/protobuf/Descriptors$1;)V

    .line 2714
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    .line 2715
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/explorestack/protobuf/Descriptors;->access$1700(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fullName:Ljava/lang/String;

    .line 2716
    iput-object p2, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 2717
    iput p4, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->index:I

    .line 2719
    iput-object p3, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    const/4 p1, 0x0

    .line 2720
    iput p1, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fieldCount:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;ILcom/explorestack/protobuf/Descriptors$1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 2653
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;I)V

    return-void
.end method

.method public static synthetic access$1900(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .registers 1

    .line 2653
    iget-object p0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    return-object p0
.end method

.method public static synthetic access$1902(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .registers 2

    .line 2653
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    return-object p1
.end method

.method public static synthetic access$2002(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;I)I
    .registers 2

    .line 2653
    iput p1, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fieldCount:I

    return p1
.end method

.method public static synthetic access$2008(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)I
    .registers 3

    .line 2653
    iget v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fieldCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fieldCount:I

    return v0
.end method

.method public static synthetic access$2200(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;)V
    .registers 2

    .line 2653
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->setProto(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;)V

    return-void
.end method

.method private setProto(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;)V
    .registers 2

    .line 2705
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-void
.end method


# virtual methods
.method public getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 2675
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getField(I)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .registers 3

    .line 2696
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getFieldCount()I
    .registers 2

    .line 2679
    iget v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fieldCount:I

    return v0
.end method

.method public getFields()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation

    .line 2692
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
    .registers 2

    .line 2666
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 2

    .line 2671
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .registers 2

    .line 2656
    iget v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 2661
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;
    .registers 2

    .line 2683
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    move-result-object v0

    return-object v0
.end method

.method public isSynthetic()Z
    .registers 5

    .line 2687
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->access$3200(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_10

    return v3

    :cond_10
    return v2
.end method

.method public toProto()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;
    .registers 2

    .line 2701
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic toProto()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2653
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->toProto()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    return-object v0
.end method

###### Class com.explorestack.protobuf.Descriptors.ServiceDescriptor (com.explorestack.protobuf.Descriptors$ServiceDescriptor)
.class public final Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;
.super Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceDescriptor"
.end annotation


# instance fields
.field private final file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

.field private final fullName:Ljava/lang/String;

.field private final index:I

.field private methods:[Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;

.field private proto:Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;


# direct methods
.method private constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2009
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;-><init>(Lcom/explorestack/protobuf/Descriptors$1;)V

    .line 2010
    iput p3, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->index:I

    .line 2011
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    .line 2012
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, v0, p3}, Lcom/explorestack/protobuf/Descriptors;->access$1700(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->fullName:Ljava/lang/String;

    .line 2013
    iput-object p2, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 2015
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->getMethodCount()I

    move-result p3

    new-array p3, p3, [Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;

    iput-object p3, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->methods:[Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;

    const/4 p3, 0x0

    move v4, p3

    .line 2016
    :goto_1e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->getMethodCount()I

    move-result p3

    if-ge v4, p3, :cond_37

    .line 2017
    iget-object p3, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->methods:[Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;

    new-instance v0, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;

    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->getMethod(I)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v1

    const/4 v5, 0x0

    move-object v3, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;ILcom/explorestack/protobuf/Descriptors$1;)V

    aput-object v0, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_37
    move-object v3, p0

    move-object v2, p2

    .line 2020
    invoke-static {v2}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->addSymbol(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;ILcom/explorestack/protobuf/Descriptors$1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 1940
    invoke-direct {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;I)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;)V
    .registers 2

    .line 1940
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->setProto(Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 1940
    invoke-direct {p0}, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->crossLink()V

    return-void
.end method

.method private crossLink()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 2024
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->methods:[Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 2025
    invoke-static {v3}, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->access$3000(Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method private setProto(Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;)V
    .registers 5

    .line 2031
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    const/4 v0, 0x0

    .line 2033
    :goto_3
    iget-object v1, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->methods:[Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;

    array-length v2, v1

    if-ge v0, v2, :cond_14

    .line 2034
    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->getMethod(I)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;->access$3100(Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_14
    return-void
.end method


# virtual methods
.method public findMethodByName(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;
    .registers 5

    .line 1993
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    move-result-object p1

    .line 1994
    instance-of v0, p1, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;

    if-eqz v0, :cond_27

    .line 1995
    check-cast p1, Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;

    return-object p1

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
    .registers 2

    .line 1973
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 2

    .line 1967
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .registers 2

    .line 1945
    iget v0, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->index:I

    return v0
.end method

.method public getMethods()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;",
            ">;"
        }
    .end annotation

    .line 1983
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->methods:[Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1957
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;
    .registers 2

    .line 1978
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public toProto()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .registers 2

    .line 1951
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic toProto()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1940
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;->toProto()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method
