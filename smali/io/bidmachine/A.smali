###### Class io.bidmachine.A (io.bidmachine.A)
.class public abstract Lio/bidmachine/A;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$00vqSnbvZi48w9UEVwA1iSmFlEo(Ljava/lang/String;Lcom/explorestack/protobuf/MessageOrBuilder;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/A;->a(Ljava/lang/String;Lcom/explorestack/protobuf/MessageOrBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "io.bidmachine"

    const-string v1, "com.explorestack"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/A;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_11

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_11

    .line 17
    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lio/bidmachine/A;->a(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0

    .line 19
    :cond_11
    sget-object v0, Lio/bidmachine/A$a;->a:[I

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_3a

    .line 34
    const-string p0, "Unsupported type"

    return-object p0

    .line 35
    :pswitch_23
    check-cast p1, Lcom/explorestack/protobuf/MessageOrBuilder;

    invoke-static {p1}, Lio/bidmachine/A;->a(Lcom/explorestack/protobuf/MessageOrBuilder;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 36
    :pswitch_2a
    check-cast p1, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 37
    :pswitch_31
    invoke-static {p1}, Lio/bidmachine/A;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_35
    .catchall {:try_start_0 .. :try_end_35} :catchall_37

    return-object p0

    :pswitch_36
    return-object p1

    .line 46
    :catchall_37
    const-string p0, "Parsing error"

    return-object p0

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_31
        :pswitch_2a
        :pswitch_23
    .end packed-switch
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 61
    instance-of v0, p0, Lcom/explorestack/protobuf/ByteString;

    if-eqz v0, :cond_b

    .line 62
    check-cast p0, Lcom/explorestack/protobuf/ByteString;

    invoke-static {p0}, Lcom/explorestack/protobuf/TextFormat;->escapeBytes(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 64
    :cond_b
    check-cast p0, [B

    invoke-static {p0}, Lcom/explorestack/protobuf/TextFormat;->escapeBytes([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/explorestack/protobuf/MessageOrBuilder;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p1}, Lio/bidmachine/A;->a(Lcom/explorestack/protobuf/MessageOrBuilder;)Lorg/json/JSONObject;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "[%s] %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/util/List;)Lorg/json/JSONArray;
    .registers 4

    .line 6
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 8
    invoke-static {p0, v1}, Lio/bidmachine/A;->a(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/A;->a(Lorg/json/JSONArray;Ljava/lang/Object;)V

    goto :goto_9

    :cond_1b
    return-object v0
.end method

.method public static a(Lcom/explorestack/protobuf/Any;)Lorg/json/JSONObject;
    .registers 7

    .line 47
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    .line 48
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 49
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 50
    sget-object v1, Lio/bidmachine/A;->a:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_40

    aget-object v4, v1, v3

    .line 52
    :try_start_17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/explorestack/protobuf/Any;->unpack(Ljava/lang/Class;)Lcom/explorestack/protobuf/Message;

    move-result-object v4

    .line 54
    invoke-static {v4}, Lio/bidmachine/A;->a(Lcom/explorestack/protobuf/MessageOrBuilder;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_3c} :catch_3d

    return-object p0

    :catch_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 58
    :cond_40
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0
.end method

.method public static a(Lcom/explorestack/protobuf/MessageOrBuilder;)Lorg/json/JSONObject;
    .registers 2

    .line 2
    instance-of v0, p0, Lcom/explorestack/protobuf/Any;

    if-eqz v0, :cond_b

    .line 3
    check-cast p0, Lcom/explorestack/protobuf/Any;

    invoke-static {p0}, Lio/bidmachine/A;->a(Lcom/explorestack/protobuf/Any;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 5
    :cond_b
    invoke-interface {p0}, Lcom/explorestack/protobuf/MessageOrBuilder;->getAllFields()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/A;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 5

    .line 9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 10
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 12
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 15
    invoke-static {v2, v1}, Lio/bidmachine/A;->a(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lio/bidmachine/A;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    :cond_2f
    return-object v0
.end method

.method public static a(Lorg/json/JSONArray;Ljava/lang/Object;)V
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 59
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public static b(Ljava/lang/String;Lcom/explorestack/protobuf/MessageOrBuilder;)V
    .registers 3

    if-eqz p1, :cond_a

    .line 1
    new-instance v0, Lio/bidmachine/A$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/A$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/explorestack/protobuf/MessageOrBuilder;)V

    invoke-static {v0}, Lio/bidmachine/core/Logger;->d(Lio/bidmachine/utils/lazy/LazyValue;)V

    :cond_a
    return-void
.end method

###### Class io.bidmachine.A.a (io.bidmachine.A$a)
.class public abstract synthetic Lio/bidmachine/A$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->values()[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/bidmachine/A$a;->a:[I

    :try_start_9
    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->INT:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/bidmachine/A$a;->a:[I

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->LONG:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/bidmachine/A$a;->a:[I

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->FLOAT:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lio/bidmachine/A$a;->a:[I

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->DOUBLE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lio/bidmachine/A$a;->a:[I

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->BOOLEAN:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lio/bidmachine/A$a;->a:[I

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->STRING:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lio/bidmachine/A$a;->a:[I

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->BYTE_STRING:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lio/bidmachine/A$a;->a:[I

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Lio/bidmachine/A$a;->a:[I

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    return-void
.end method

###### Class io.bidmachine.A$$ExternalSyntheticLambda0 (io.bidmachine.A$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/A$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/explorestack/protobuf/MessageOrBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/explorestack/protobuf/MessageOrBuilder;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/A$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lio/bidmachine/A$$ExternalSyntheticLambda0;->f$1:Lcom/explorestack/protobuf/MessageOrBuilder;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/A$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lio/bidmachine/A$$ExternalSyntheticLambda0;->f$1:Lcom/explorestack/protobuf/MessageOrBuilder;

    invoke-static {v0, v1}, Lio/bidmachine/A;->$r8$lambda$00vqSnbvZi48w9UEVwA1iSmFlEo(Ljava/lang/String;Lcom/explorestack/protobuf/MessageOrBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
