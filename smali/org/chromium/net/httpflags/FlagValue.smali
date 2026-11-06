###### Class org.chromium.net.httpflags.FlagValue (org.chromium.net.httpflags.FlagValue)
.class public final Lorg/chromium/net/httpflags/FlagValue;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "FlagValue.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;,
        Lorg/chromium/net/httpflags/FlagValue$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lorg/chromium/net/httpflags/FlagValue;",
        "Lorg/chromium/net/httpflags/FlagValue$Builder;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# static fields
.field public static final DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue;

.field public static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/chromium/net/httpflags/FlagValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public constrainedValues_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lorg/chromium/net/httpflags/FlagValue;
    .registers 1

    .line 0
    sget-object v0, Lorg/chromium/net/httpflags/FlagValue;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 2098
    new-instance v0, Lorg/chromium/net/httpflags/FlagValue;

    invoke-direct {v0}, Lorg/chromium/net/httpflags/FlagValue;-><init>()V

    .line 2101
    sput-object v0, Lorg/chromium/net/httpflags/FlagValue;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue;

    .line 2102
    const-class v1, Lorg/chromium/net/httpflags/FlagValue;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 22
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/httpflags/FlagValue;->constrainedValues_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static getDefaultInstance()Lorg/chromium/net/httpflags/FlagValue;
    .registers 1

    .line 2107
    sget-object v0, Lorg/chromium/net/httpflags/FlagValue;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "arg0",
            "arg1"
        }
    .end annotation

    .line 2049
    sget-object p2, Lorg/chromium/net/httpflags/FlagValue$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_56

    .line 2091
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_12
    return-object p2

    :pswitch_13
    const/4 p1, 0x1

    .line 2085
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2070
    :pswitch_19
    sget-object p1, Lorg/chromium/net/httpflags/FlagValue;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_34

    .line 2072
    const-class p2, Lorg/chromium/net/httpflags/FlagValue;

    monitor-enter p2

    .line 2073
    :try_start_20
    sget-object p1, Lorg/chromium/net/httpflags/FlagValue;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_30

    .line 2075
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lorg/chromium/net/httpflags/FlagValue;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2078
    sput-object p1, Lorg/chromium/net/httpflags/FlagValue;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_30

    :catchall_2e
    move-exception p1

    goto :goto_32

    .line 2080
    :cond_30
    :goto_30
    monitor-exit p2

    return-object p1

    :goto_32
    monitor-exit p2
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_2e

    throw p1

    :cond_34
    return-object p1

    .line 2067
    :pswitch_35
    sget-object p1, Lorg/chromium/net/httpflags/FlagValue;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue;

    return-object p1

    .line 2057
    :pswitch_38
    const-string p1, "constrainedValues_"

    const-class p2, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 2061
    const-string p2, "\u0001\u0001\u0000\u0000\u0008\u0008\u0001\u0000\u0001\u0000\u0008\u001b"

    .line 2063
    sget-object p3, Lorg/chromium/net/httpflags/FlagValue;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2054
    :pswitch_49
    new-instance p1, Lorg/chromium/net/httpflags/FlagValue$Builder;

    invoke-direct {p1, p2}, Lorg/chromium/net/httpflags/FlagValue$Builder;-><init>(Lorg/chromium/net/httpflags/FlagValue-IA;)V

    return-object p1

    .line 2051
    :pswitch_4f
    new-instance p1, Lorg/chromium/net/httpflags/FlagValue;

    invoke-direct {p1}, Lorg/chromium/net/httpflags/FlagValue;-><init>()V

    return-object p1

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_49
        :pswitch_38
        :pswitch_35
        :pswitch_19
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public getConstrainedValuesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;",
            ">;"
        }
    .end annotation

    .line 1619
    iget-object v0, p0, Lorg/chromium/net/httpflags/FlagValue;->constrainedValues_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

###### Class org.chromium.net.httpflags.FlagValue.AnonymousClass1 (org.chromium.net.httpflags.FlagValue$1)
.class public synthetic Lorg/chromium/net/httpflags/FlagValue$1;
.super Ljava/lang/Object;
.source "FlagValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/httpflags/FlagValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1533
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->values()[Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/chromium/net/httpflags/FlagValue$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    :try_start_9
    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lorg/chromium/net/httpflags/FlagValue$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lorg/chromium/net/httpflags/FlagValue$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->BUILD_MESSAGE_INFO:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lorg/chromium/net/httpflags/FlagValue$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lorg/chromium/net/httpflags/FlagValue$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lorg/chromium/net/httpflags/FlagValue$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lorg/chromium/net/httpflags/FlagValue$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->SET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    return-void
.end method

###### Class org.chromium.net.httpflags.FlagValue.Builder (org.chromium.net.httpflags.FlagValue$Builder)
.class public final Lorg/chromium/net/httpflags/FlagValue$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "FlagValue.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/httpflags/FlagValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lorg/chromium/net/httpflags/FlagValue;",
        "Lorg/chromium/net/httpflags/FlagValue$Builder;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1864
    invoke-static {}, Lorg/chromium/net/httpflags/FlagValue;->-$$Nest$sfgetDEFAULT_INSTANCE()Lorg/chromium/net/httpflags/FlagValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/net/httpflags/FlagValue-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lorg/chromium/net/httpflags/FlagValue$Builder;-><init>()V

    return-void
.end method

###### Class org.chromium.net.httpflags.FlagValue.ConstrainedValue (org.chromium.net.httpflags.FlagValue$ConstrainedValue)
.class public final Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "FlagValue.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/httpflags/FlagValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConstrainedValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;,
        Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;",
        "Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# static fields
.field public static final DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

.field public static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public appId_:Ljava/lang/String;

.field public applyEvenIfCronetTelemetryDisabled_:Z

.field public bitField0_:I

.field public minVersion_:Ljava/lang/String;

.field public valueCase_:I

.field public value_:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;
    .registers 1

    .line 0
    sget-object v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1587
    new-instance v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-direct {v0}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;-><init>()V

    .line 1590
    sput-object v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    .line 1591
    const-class v1, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 249
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 254
    iput v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    .line 250
    const-string v0, ""

    iput-object v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->appId_:Ljava/lang/String;

    .line 251
    iput-object v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->minVersion_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "arg0",
            "arg1"
        }
    .end annotation

    .line 1533
    sget-object p2, Lorg/chromium/net/httpflags/FlagValue$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5e

    .line 1580
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_12
    return-object p2

    :pswitch_13
    const/4 p1, 0x1

    .line 1574
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1559
    :pswitch_19
    sget-object p1, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_35

    .line 1561
    const-class p2, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    monitor-enter p2

    .line 1562
    :try_start_20
    sget-object p1, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_31

    .line 1564
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1567
    sput-object p1, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_31

    :catchall_2e
    move-exception v0

    move-object p1, v0

    goto :goto_33

    .line 1569
    :cond_31
    :goto_31
    monitor-exit p2

    return-object p1

    :goto_33
    monitor-exit p2
    :try_end_34
    .catchall {:try_start_20 .. :try_end_34} :catchall_2e

    throw p1

    :cond_35
    return-object p1

    .line 1556
    :pswitch_36
    sget-object p1, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    return-object p1

    .line 1541
    :pswitch_39
    const-string v0, "value_"

    const-string v1, "valueCase_"

    const-string v2, "bitField0_"

    const-string v3, "appId_"

    const-string v4, "minVersion_"

    const-string v5, "applyEvenIfCronetTelemetryDisabled_"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    .line 1549
    const-string p2, "\u0001\u0008\u0001\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003:\u0000\u00045\u0000\u00054\u0000\u0006;\u0000\u0007=\u0000\u0008\u1007\u0002"

    .line 1552
    sget-object p3, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1538
    :pswitch_52
    new-instance p1, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;

    invoke-direct {p1, p2}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;-><init>(Lorg/chromium/net/httpflags/FlagValue-IA;)V

    return-object p1

    .line 1535
    :pswitch_58
    new-instance p1, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-direct {p1}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;-><init>()V

    return-object p1

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_58
        :pswitch_52
        :pswitch_39
        :pswitch_36
        :pswitch_19
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public getAppId()Ljava/lang/String;
    .registers 2

    .line 331
    iget-object v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->appId_:Ljava/lang/String;

    return-object v0
.end method

.method public getApplyEvenIfCronetTelemetryDisabled()Z
    .registers 2

    .line 593
    iget-boolean v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->applyEvenIfCronetTelemetryDisabled_:Z

    return v0
.end method

.method public getBoolValue()Z
    .registers 3

    .line 660
    iget v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    .line 661
    iget-object v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public getBytesValue()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 837
    iget v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_a

    .line 838
    iget-object v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0

    .line 840
    :cond_a
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getFloatValue()F
    .registers 3

    .line 736
    iget v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_e

    .line 737
    iget-object v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public getIntValue()J
    .registers 3

    .line 698
    iget v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    .line 699
    iget-object v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_e
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMinVersion()Ljava/lang/String;
    .registers 2

    .line 441
    iget-object v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->minVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .registers 3

    .line 775
    iget v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    .line 776
    iget-object v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 778
    :cond_a
    const-string v0, ""

    return-object v0
.end method

.method public getValueCase()Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;
    .registers 2

    .line 294
    iget v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    invoke-static {v0}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->forNumber(I)Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    move-result-object v0

    return-object v0
.end method

.method public hasAppId()Z
    .registers 3

    .line 317
    iget v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hasMinVersion()Z
    .registers 2

    .line 417
    iget v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

###### Class org.chromium.net.httpflags.FlagValue.ConstrainedValue.Builder (org.chromium.net.httpflags.FlagValue$ConstrainedValue$Builder)
.class public final Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "FlagValue.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;",
        "Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 959
    invoke-static {}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->-$$Nest$sfgetDEFAULT_INSTANCE()Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/net/httpflags/FlagValue-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;-><init>()V

    return-void
.end method

###### Class org.chromium.net.httpflags.FlagValue.ConstrainedValue.ValueCase (org.chromium.net.httpflags.FlagValue$ConstrainedValue$ValueCase)
.class public final enum Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;
.super Ljava/lang/Enum;
.source "FlagValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

.field public static final enum BOOL_VALUE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

.field public static final enum BYTES_VALUE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

.field public static final enum FLOAT_VALUE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

.field public static final enum INT_VALUE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

.field public static final enum STRING_VALUE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

.field public static final enum VALUE_NOT_SET:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;


# instance fields
.field public final value:I


# direct methods
.method public static synthetic $values()[Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;
    .registers 6

    .line 256
    sget-object v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->BOOL_VALUE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    sget-object v1, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->INT_VALUE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    sget-object v2, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->FLOAT_VALUE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    sget-object v3, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->STRING_VALUE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    sget-object v4, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->BYTES_VALUE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    sget-object v5, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->VALUE_NOT_SET:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    filled-new-array/range {v0 .. v5}, [Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 7

    .line 257
    new-instance v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    const-string v1, "BOOL_VALUE"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->BOOL_VALUE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    .line 258
    new-instance v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    const-string v1, "INT_VALUE"

    const/4 v4, 0x1

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->INT_VALUE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    .line 259
    new-instance v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    const-string v1, "FLOAT_VALUE"

    const/4 v4, 0x2

    const/4 v6, 0x5

    invoke-direct {v0, v1, v4, v6}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->FLOAT_VALUE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    .line 260
    new-instance v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    const-string v1, "STRING_VALUE"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v3, v4}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->STRING_VALUE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    .line 261
    new-instance v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    const-string v1, "BYTES_VALUE"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v5, v3}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->BYTES_VALUE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    .line 262
    new-instance v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    const-string v1, "VALUE_NOT_SET"

    invoke-direct {v0, v1, v6, v2}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->VALUE_NOT_SET:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    .line 256
    invoke-static {}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->$values()[Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    move-result-object v0

    sput-object v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->$VALUES:[Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 264
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 265
    iput p3, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_22

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x5

    if-eq p0, v0, :cond_19

    const/4 v0, 0x6

    if-eq p0, v0, :cond_16

    const/4 v0, 0x7

    if-eq p0, v0, :cond_13

    const/4 p0, 0x0

    return-object p0

    .line 281
    :cond_13
    sget-object p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->BYTES_VALUE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    return-object p0

    .line 280
    :cond_16
    sget-object p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->STRING_VALUE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    return-object p0

    .line 279
    :cond_19
    sget-object p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->FLOAT_VALUE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    return-object p0

    .line 278
    :cond_1c
    sget-object p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->INT_VALUE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    return-object p0

    .line 277
    :cond_1f
    sget-object p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->BOOL_VALUE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    return-object p0

    .line 282
    :cond_22
    sget-object p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->VALUE_NOT_SET:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 256
    const-class v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    return-object p0
.end method

.method public static values()[Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;
    .registers 1

    .line 256
    sget-object v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->$VALUES:[Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    invoke-virtual {v0}, [Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    return-object v0
.end method
