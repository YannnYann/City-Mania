###### Class org.chromium.net.httpflags.ResolvedFlags (org.chromium.net.httpflags.ResolvedFlags)
.class public final Lorg/chromium/net/httpflags/ResolvedFlags;
.super Ljava/lang/Object;
.source "ResolvedFlags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/httpflags/ResolvedFlags$Value;
    }
.end annotation


# instance fields
.field public final mFlags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/chromium/net/httpflags/ResolvedFlags$Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$smparseVersionString(Ljava/lang/String;)[I
    .registers 1

    .line 0
    invoke-static {p0}, Lorg/chromium/net/httpflags/ResolvedFlags;->parseVersionString(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/chromium/net/httpflags/ResolvedFlags$Value;",
            ">;)V"
        }
    .end annotation

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p1, p0, Lorg/chromium/net/httpflags/ResolvedFlags;->mFlags:Ljava/util/Map;

    return-void
.end method

.method public static parseVersionString(Ljava/lang/String;)[I
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "versionString"
        }
    .end annotation

    .line 248
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 251
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "."

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v1, :cond_25

    .line 254
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :catch_23
    move-exception v0

    goto :goto_2e

    :cond_25
    return-object v2

    .line 249
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Version string is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_2e} :catch_23

    .line 258
    :goto_2e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse HTTP flags version string: `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "`"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static resolve(Lorg/chromium/net/httpflags/Flags;Ljava/lang/String;Ljava/lang/String;Z)Lorg/chromium/net/httpflags/ResolvedFlags;
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "flags",
            "appId",
            "cronetVersion",
            "isTelemetryEnabled"
        }
    .end annotation

    .line 211
    const-string v0, "Cronet ResolvedFlags#resolve"

    invoke-static {v0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 212
    :try_start_6
    invoke-static {p2}, Lorg/chromium/net/httpflags/ResolvedFlags;->parseVersionString(Ljava/lang/String;)[I

    move-result-object p2

    .line 213
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 214
    invoke-virtual {p0}, Lorg/chromium/net/httpflags/Flags;->getFlagsMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_3e

    .line 218
    :try_start_27
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/chromium/net/httpflags/FlagValue;

    .line 217
    invoke-static {v3, p1, p2, p3}, Lorg/chromium/net/httpflags/ResolvedFlags$Value;->-$$Nest$smresolve(Lorg/chromium/net/httpflags/FlagValue;Ljava/lang/String;[IZ)Lorg/chromium/net/httpflags/ResolvedFlags$Value;

    move-result-object v3

    if-nez v3, :cond_34

    goto :goto_1b

    .line 223
    :cond_34
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_3d} :catch_40
    .catchall {:try_start_27 .. :try_end_3d} :catchall_3e

    goto :goto_1b

    :catchall_3e
    move-exception p0

    goto :goto_6e

    :catch_40
    move-exception p0

    .line 225
    :try_start_41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 226
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to resolve HTTP flag `"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "`"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 229
    :cond_63
    new-instance p0, Lorg/chromium/net/httpflags/ResolvedFlags;

    invoke-direct {p0, v1}, Lorg/chromium/net/httpflags/ResolvedFlags;-><init>(Ljava/util/Map;)V
    :try_end_68
    .catchall {:try_start_41 .. :try_end_68} :catchall_3e

    if-eqz v0, :cond_6d

    .line 230
    invoke-virtual {v0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    :cond_6d
    return-object p0

    :goto_6e
    if-eqz v0, :cond_78

    .line 211
    :try_start_70
    invoke-virtual {v0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_74

    goto :goto_78

    :catchall_74
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_78
    :goto_78
    throw p0
.end method


# virtual methods
.method public flags()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/chromium/net/httpflags/ResolvedFlags$Value;",
            ">;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lorg/chromium/net/httpflags/ResolvedFlags;->mFlags:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

###### Class org.chromium.net.httpflags.ResolvedFlags.AnonymousClass1 (org.chromium.net.httpflags.ResolvedFlags$1)
.class public synthetic Lorg/chromium/net/httpflags/ResolvedFlags$1;
.super Ljava/lang/Object;
.source "ResolvedFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/httpflags/ResolvedFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$org$chromium$net$httpflags$FlagValue$ConstrainedValue$ValueCase:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 79
    invoke-static {}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->values()[Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/chromium/net/httpflags/ResolvedFlags$1;->$SwitchMap$org$chromium$net$httpflags$FlagValue$ConstrainedValue$ValueCase:[I

    :try_start_9
    sget-object v1, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->BOOL_VALUE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lorg/chromium/net/httpflags/ResolvedFlags$1;->$SwitchMap$org$chromium$net$httpflags$FlagValue$ConstrainedValue$ValueCase:[I

    sget-object v1, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->INT_VALUE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lorg/chromium/net/httpflags/ResolvedFlags$1;->$SwitchMap$org$chromium$net$httpflags$FlagValue$ConstrainedValue$ValueCase:[I

    sget-object v1, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->FLOAT_VALUE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lorg/chromium/net/httpflags/ResolvedFlags$1;->$SwitchMap$org$chromium$net$httpflags$FlagValue$ConstrainedValue$ValueCase:[I

    sget-object v1, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->STRING_VALUE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lorg/chromium/net/httpflags/ResolvedFlags$1;->$SwitchMap$org$chromium$net$httpflags$FlagValue$ConstrainedValue$ValueCase:[I

    sget-object v1, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->BYTES_VALUE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lorg/chromium/net/httpflags/ResolvedFlags$1;->$SwitchMap$org$chromium$net$httpflags$FlagValue$ConstrainedValue$ValueCase:[I

    sget-object v1, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->VALUE_NOT_SET:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    return-void
.end method

###### Class org.chromium.net.httpflags.ResolvedFlags.Value (org.chromium.net.httpflags.ResolvedFlags$Value)
.class public final Lorg/chromium/net/httpflags/ResolvedFlags$Value;
.super Ljava/lang/Object;
.source "ResolvedFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/httpflags/ResolvedFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;
    }
.end annotation


# instance fields
.field public final mValue:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$smresolve(Lorg/chromium/net/httpflags/FlagValue;Ljava/lang/String;[IZ)Lorg/chromium/net/httpflags/ResolvedFlags$Value;
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/chromium/net/httpflags/ResolvedFlags$Value;->resolve(Lorg/chromium/net/httpflags/FlagValue;Ljava/lang/String;[IZ)Lorg/chromium/net/httpflags/ResolvedFlags$Value;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/httpflags/ResolvedFlags$Value;->mValue:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/httpflags/ResolvedFlags$Value;->mValue:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/ByteString;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lorg/chromium/net/httpflags/ResolvedFlags$Value;->mValue:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lorg/chromium/net/httpflags/ResolvedFlags$Value;->mValue:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/httpflags/ResolvedFlags$Value;->mValue:Ljava/lang/Object;

    return-void
.end method

.method public static fromConstrainedValue(Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;)Lorg/chromium/net/httpflags/ResolvedFlags$Value;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "constrainedValue"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->getValueCase()Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    move-result-object v0

    .line 79
    sget-object v1, Lorg/chromium/net/httpflags/ResolvedFlags$1;->$SwitchMap$org$chromium$net$httpflags$FlagValue$ConstrainedValue$ValueCase:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_5e

    .line 93
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Flag value uses unknown value type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2a
    const/4 p0, 0x0

    return-object p0

    .line 89
    :pswitch_2c
    new-instance v0, Lorg/chromium/net/httpflags/ResolvedFlags$Value;

    invoke-virtual {p0}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->getBytesValue()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/chromium/net/httpflags/ResolvedFlags$Value;-><init>(Lcom/google/protobuf/ByteString;)V

    return-object v0

    .line 87
    :pswitch_36
    new-instance v0, Lorg/chromium/net/httpflags/ResolvedFlags$Value;

    invoke-virtual {p0}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/chromium/net/httpflags/ResolvedFlags$Value;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 85
    :pswitch_40
    new-instance v0, Lorg/chromium/net/httpflags/ResolvedFlags$Value;

    invoke-virtual {p0}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->getFloatValue()F

    move-result p0

    invoke-direct {v0, p0}, Lorg/chromium/net/httpflags/ResolvedFlags$Value;-><init>(F)V

    return-object v0

    .line 83
    :pswitch_4a
    new-instance v0, Lorg/chromium/net/httpflags/ResolvedFlags$Value;

    invoke-virtual {p0}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->getIntValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/httpflags/ResolvedFlags$Value;-><init>(J)V

    return-object v0

    .line 81
    :pswitch_54
    new-instance v0, Lorg/chromium/net/httpflags/ResolvedFlags$Value;

    invoke-virtual {p0}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->getBoolValue()Z

    move-result p0

    invoke-direct {v0, p0}, Lorg/chromium/net/httpflags/ResolvedFlags$Value;-><init>(Z)V

    return-object v0

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_54
        :pswitch_4a
        :pswitch_40
        :pswitch_36
        :pswitch_2c
        :pswitch_2a
    .end packed-switch
.end method

.method public static matchesVersion([I[I)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cronetVersion",
            "minVersion"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 65
    :goto_2
    array-length v2, p0

    array-length v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_22

    .line 66
    array-length v2, p0

    if-ge v1, v2, :cond_11

    aget v2, p0, v1

    goto :goto_12

    :cond_11
    move v2, v0

    .line 67
    :goto_12
    array-length v4, p1

    if-ge v1, v4, :cond_18

    aget v4, p1, v1

    goto :goto_19

    :cond_18
    move v4, v0

    :goto_19
    if-le v2, v4, :cond_1c

    return v3

    :cond_1c
    if-ge v2, v4, :cond_1f

    return v0

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_22
    return v3
.end method

.method public static resolve(Lorg/chromium/net/httpflags/FlagValue;Ljava/lang/String;[IZ)Lorg/chromium/net/httpflags/ResolvedFlags$Value;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "flagValue",
            "appId",
            "cronetVersion",
            "isTelemetryEnabled"
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lorg/chromium/net/httpflags/FlagValue;->getConstrainedValuesList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    if-nez p3, :cond_1c

    .line 50
    invoke-virtual {v0}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->getApplyEvenIfCronetTelemetryDisabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 51
    :cond_1c
    invoke-virtual {v0}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->hasAppId()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 52
    invoke-virtual {v0}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 53
    :cond_2c
    invoke-virtual {v0}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->hasMinVersion()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 56
    invoke-virtual {v0}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->getMinVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/net/httpflags/ResolvedFlags;->-$$Nest$smparseVersionString(Ljava/lang/String;)[I

    move-result-object v1

    .line 54
    invoke-static {p2, v1}, Lorg/chromium/net/httpflags/ResolvedFlags$Value;->matchesVersion([I[I)Z

    move-result v1

    if-nez v1, :cond_41

    goto :goto_8

    .line 59
    :cond_41
    invoke-static {v0}, Lorg/chromium/net/httpflags/ResolvedFlags$Value;->fromConstrainedValue(Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;)Lorg/chromium/net/httpflags/ResolvedFlags$Value;

    move-result-object p0

    return-object p0

    :cond_46
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final checkType(Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestedType"
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Lorg/chromium/net/httpflags/ResolvedFlags$Value;->getType()Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-void

    .line 143
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to access flag value as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but actual type is "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBoolValue()Z
    .registers 2

    .line 153
    sget-object v0, Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;->BOOL:Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

    invoke-virtual {p0, v0}, Lorg/chromium/net/httpflags/ResolvedFlags$Value;->checkType(Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;)V

    .line 154
    iget-object v0, p0, Lorg/chromium/net/httpflags/ResolvedFlags$Value;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getStringValue()Ljava/lang/String;
    .registers 2

    .line 171
    sget-object v0, Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;->STRING:Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

    invoke-virtual {p0, v0}, Lorg/chromium/net/httpflags/ResolvedFlags$Value;->checkType(Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;)V

    .line 172
    iget-object v0, p0, Lorg/chromium/net/httpflags/ResolvedFlags$Value;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;
    .registers 5

    .line 124
    iget-object v0, p0, Lorg/chromium/net/httpflags/ResolvedFlags$Value;->mValue:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    .line 125
    sget-object v0, Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;->BOOL:Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

    return-object v0

    .line 126
    :cond_9
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_10

    .line 127
    sget-object v0, Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;->INT:Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

    return-object v0

    .line 128
    :cond_10
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_17

    .line 129
    sget-object v0, Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;->FLOAT:Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

    return-object v0

    .line 130
    :cond_17
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1e

    .line 131
    sget-object v0, Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;->STRING:Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

    return-object v0

    .line 132
    :cond_1e
    instance-of v0, v0, Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_25

    .line 133
    sget-object v0, Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;->BYTES:Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

    return-object v0

    .line 135
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lorg/chromium/net/httpflags/ResolvedFlags$Value;->mValue:Ljava/lang/Object;

    .line 136
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected flag value type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 183
    iget-object v0, p0, Lorg/chromium/net/httpflags/ResolvedFlags$Value;->mValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class org.chromium.net.httpflags.ResolvedFlags.Value.Type (org.chromium.net.httpflags.ResolvedFlags$Value$Type)
.class public final enum Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;
.super Ljava/lang/Enum;
.source "ResolvedFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/httpflags/ResolvedFlags$Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

.field public static final enum BOOL:Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

.field public static final enum BYTES:Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

.field public static final enum FLOAT:Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

.field public static final enum INT:Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

.field public static final enum STRING:Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;


# direct methods
.method public static synthetic $values()[Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;
    .registers 5

    .line 32
    sget-object v0, Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;->BOOL:Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

    sget-object v1, Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;->INT:Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

    sget-object v2, Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;->FLOAT:Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

    sget-object v3, Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;->STRING:Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

    sget-object v4, Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;->BYTES:Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 33
    new-instance v0, Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

    const-string v1, "BOOL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;->BOOL:Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

    .line 34
    new-instance v0, Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

    const-string v1, "INT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;->INT:Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

    .line 35
    new-instance v0, Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

    const-string v1, "FLOAT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;->FLOAT:Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

    .line 36
    new-instance v0, Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

    const-string v1, "STRING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;->STRING:Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

    .line 37
    new-instance v0, Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

    const-string v1, "BYTES"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;->BYTES:Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

    .line 32
    invoke-static {}, Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;->$values()[Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

    move-result-object v0

    sput-object v0, Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;->$VALUES:[Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 32
    const-class v0, Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

    return-object p0
.end method

.method public static values()[Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;
    .registers 1

    .line 32
    sget-object v0, Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;->$VALUES:[Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

    invoke-virtual {v0}, [Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/net/httpflags/ResolvedFlags$Value$Type;

    return-object v0
.end method
