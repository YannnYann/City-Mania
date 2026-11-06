###### Class com.vungle.ads.fpd.FirstPartyData (com.vungle.ads.fpd.FirstPartyData)
.class public final Lcom/vungle/ads/fpd/FirstPartyData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/fpd/FirstPartyData$Companion;,
        Lcom/vungle/ads/fpd/FirstPartyData$$serializer;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/fpd/FirstPartyData$Companion;

.field public static final g:Lkotlinx/serialization/json/Json;


# instance fields
.field public final a:Ljava/lang/String;

.field public volatile b:Lcom/vungle/ads/fpd/SessionContext;

.field public volatile c:Lcom/vungle/ads/fpd/Demographic;

.field public volatile d:Lcom/vungle/ads/fpd/Location;

.field public volatile e:Lcom/vungle/ads/fpd/Revenue;

.field public f:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/vungle/ads/fpd/FirstPartyData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/fpd/FirstPartyData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/fpd/FirstPartyData;->Companion:Lcom/vungle/ads/fpd/FirstPartyData$Companion;

    .line 1
    sget-object v0, Lcom/vungle/ads/fpd/FirstPartyData$Companion$JSON$1;->INSTANCE:Lcom/vungle/ads/fpd/FirstPartyData$Companion$JSON$1;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/fpd/FirstPartyData;->g:Lkotlinx/serialization/json/Json;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, "2.0"

    iput-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->a:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/vungle/ads/fpd/SessionContext;Lcom/vungle/ads/fpd/Demographic;Lcom/vungle/ads/fpd/Location;Lcom/vungle/ads/fpd/Revenue;Ljava/util/Map;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .registers 9

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p8, p1, 0x1

    if-nez p8, :cond_9

    const-string p2, "2.0"

    :cond_9
    iput-object p2, p0, Lcom/vungle/ads/fpd/FirstPartyData;->a:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x2

    const/4 p8, 0x0

    if-nez p2, :cond_13

    iput-object p8, p0, Lcom/vungle/ads/fpd/FirstPartyData;->b:Lcom/vungle/ads/fpd/SessionContext;

    goto :goto_15

    :cond_13
    iput-object p3, p0, Lcom/vungle/ads/fpd/FirstPartyData;->b:Lcom/vungle/ads/fpd/SessionContext;

    :goto_15
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_1c

    iput-object p8, p0, Lcom/vungle/ads/fpd/FirstPartyData;->c:Lcom/vungle/ads/fpd/Demographic;

    goto :goto_1e

    :cond_1c
    iput-object p4, p0, Lcom/vungle/ads/fpd/FirstPartyData;->c:Lcom/vungle/ads/fpd/Demographic;

    :goto_1e
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_25

    iput-object p8, p0, Lcom/vungle/ads/fpd/FirstPartyData;->d:Lcom/vungle/ads/fpd/Location;

    goto :goto_27

    :cond_25
    iput-object p5, p0, Lcom/vungle/ads/fpd/FirstPartyData;->d:Lcom/vungle/ads/fpd/Location;

    :goto_27
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_2e

    iput-object p8, p0, Lcom/vungle/ads/fpd/FirstPartyData;->e:Lcom/vungle/ads/fpd/Revenue;

    goto :goto_30

    :cond_2e
    iput-object p6, p0, Lcom/vungle/ads/fpd/FirstPartyData;->e:Lcom/vungle/ads/fpd/Revenue;

    :goto_30
    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_37

    iput-object p8, p0, Lcom/vungle/ads/fpd/FirstPartyData;->f:Ljava/util/Map;

    return-void

    :cond_37
    iput-object p7, p0, Lcom/vungle/ads/fpd/FirstPartyData;->f:Ljava/util/Map;

    return-void
.end method

.method public static final write$Self(Lcom/vungle/ads/fpd/FirstPartyData;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .registers 6

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_21

    :cond_17
    iget-object v1, p0, Lcom/vungle/ads/fpd/FirstPartyData;->a:Ljava/lang/String;

    .line 6
    const-string v2, "2.0"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 7
    :goto_21
    iget-object v1, p0, Lcom/vungle/ads/fpd/FirstPartyData;->a:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_26
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_32

    :cond_2e
    iget-object v1, p0, Lcom/vungle/ads/fpd/FirstPartyData;->b:Lcom/vungle/ads/fpd/SessionContext;

    if-eqz v1, :cond_39

    :goto_32
    sget-object v1, Lcom/vungle/ads/fpd/SessionContext$$serializer;->INSTANCE:Lcom/vungle/ads/fpd/SessionContext$$serializer;

    iget-object v2, p0, Lcom/vungle/ads/fpd/FirstPartyData;->b:Lcom/vungle/ads/fpd/SessionContext;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_39
    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_41

    goto :goto_45

    :cond_41
    iget-object v1, p0, Lcom/vungle/ads/fpd/FirstPartyData;->c:Lcom/vungle/ads/fpd/Demographic;

    if-eqz v1, :cond_4c

    :goto_45
    sget-object v1, Lcom/vungle/ads/fpd/Demographic$$serializer;->INSTANCE:Lcom/vungle/ads/fpd/Demographic$$serializer;

    iget-object v2, p0, Lcom/vungle/ads/fpd/FirstPartyData;->c:Lcom/vungle/ads/fpd/Demographic;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_4c
    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_54

    goto :goto_58

    :cond_54
    iget-object v1, p0, Lcom/vungle/ads/fpd/FirstPartyData;->d:Lcom/vungle/ads/fpd/Location;

    if-eqz v1, :cond_5f

    :goto_58
    sget-object v1, Lcom/vungle/ads/fpd/Location$$serializer;->INSTANCE:Lcom/vungle/ads/fpd/Location$$serializer;

    iget-object v2, p0, Lcom/vungle/ads/fpd/FirstPartyData;->d:Lcom/vungle/ads/fpd/Location;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5f
    const/4 v0, 0x4

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_67

    goto :goto_6b

    :cond_67
    iget-object v1, p0, Lcom/vungle/ads/fpd/FirstPartyData;->e:Lcom/vungle/ads/fpd/Revenue;

    if-eqz v1, :cond_72

    :goto_6b
    sget-object v1, Lcom/vungle/ads/fpd/Revenue$$serializer;->INSTANCE:Lcom/vungle/ads/fpd/Revenue$$serializer;

    iget-object v2, p0, Lcom/vungle/ads/fpd/FirstPartyData;->e:Lcom/vungle/ads/fpd/Revenue;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_72
    const/4 v0, 0x5

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_7a

    goto :goto_7e

    :cond_7a
    iget-object v1, p0, Lcom/vungle/ads/fpd/FirstPartyData;->f:Ljava/util/Map;

    if-eqz v1, :cond_8a

    :goto_7e
    new-instance v1, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v1, v2, v2}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    iget-object p0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->f:Ljava/util/Map;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_8a
    return-void
.end method


# virtual methods
.method public final declared-synchronized clearAll()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_2
    iput-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->b:Lcom/vungle/ads/fpd/SessionContext;

    .line 2
    iput-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->c:Lcom/vungle/ads/fpd/Demographic;

    .line 3
    iput-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->e:Lcom/vungle/ads/fpd/Revenue;

    .line 4
    iput-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->d:Lcom/vungle/ads/fpd/Location;

    .line 5
    iget-object v1, p0, Lcom/vungle/ads/fpd/FirstPartyData;->f:Ljava/util/Map;

    if-eqz v1, :cond_14

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    goto :goto_14

    :catchall_12
    move-exception v0

    goto :goto_18

    .line 6
    :cond_14
    :goto_14
    iput-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->f:Ljava/util/Map;
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_12

    monitor-exit p0

    return-void

    :goto_18
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_12

    throw v0
.end method

.method public final debug()Ljava/lang/String;
    .registers 4

    .line 1
    sget-object v0, Lcom/vungle/ads/fpd/FirstPartyData;->g:Lkotlinx/serialization/json/Json;

    .line 19
    invoke-interface {v0}, Lkotlinx/serialization/SerialFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v1

    .line 20
    const-class v2, Lcom/vungle/ads/fpd/FirstPartyData;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    .line 21
    const-string v2, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-interface {v0, v1, p0}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized getCustomData()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->f:Ljava/util/Map;

    if-nez v0, :cond_f

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->f:Ljava/util/Map;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_d

    goto :goto_f

    :catchall_d
    move-exception v0

    goto :goto_11

    :cond_f
    :goto_f
    monitor-exit p0

    return-object v0

    :goto_11
    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_d

    throw v0
.end method

.method public final declared-synchronized getDemographic()Lcom/vungle/ads/fpd/Demographic;
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->c:Lcom/vungle/ads/fpd/Demographic;

    if-nez v0, :cond_f

    new-instance v0, Lcom/vungle/ads/fpd/Demographic;

    invoke-direct {v0}, Lcom/vungle/ads/fpd/Demographic;-><init>()V

    iput-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->c:Lcom/vungle/ads/fpd/Demographic;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_d

    goto :goto_f

    :catchall_d
    move-exception v0

    goto :goto_11

    :cond_f
    :goto_f
    monitor-exit p0

    return-object v0

    :goto_11
    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_d

    throw v0
.end method

.method public final declared-synchronized getLocation()Lcom/vungle/ads/fpd/Location;
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->d:Lcom/vungle/ads/fpd/Location;

    if-nez v0, :cond_f

    new-instance v0, Lcom/vungle/ads/fpd/Location;

    invoke-direct {v0}, Lcom/vungle/ads/fpd/Location;-><init>()V

    iput-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->d:Lcom/vungle/ads/fpd/Location;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_d

    goto :goto_f

    :catchall_d
    move-exception v0

    goto :goto_11

    :cond_f
    :goto_f
    monitor-exit p0

    return-object v0

    :goto_11
    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_d

    throw v0
.end method

.method public final declared-synchronized getRevenue()Lcom/vungle/ads/fpd/Revenue;
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->e:Lcom/vungle/ads/fpd/Revenue;

    if-nez v0, :cond_f

    new-instance v0, Lcom/vungle/ads/fpd/Revenue;

    invoke-direct {v0}, Lcom/vungle/ads/fpd/Revenue;-><init>()V

    iput-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->e:Lcom/vungle/ads/fpd/Revenue;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_d

    goto :goto_f

    :catchall_d
    move-exception v0

    goto :goto_11

    :cond_f
    :goto_f
    monitor-exit p0

    return-object v0

    :goto_11
    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_d

    throw v0
.end method

.method public final declared-synchronized getSessionContext()Lcom/vungle/ads/fpd/SessionContext;
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->b:Lcom/vungle/ads/fpd/SessionContext;

    if-nez v0, :cond_f

    new-instance v0, Lcom/vungle/ads/fpd/SessionContext;

    invoke-direct {v0}, Lcom/vungle/ads/fpd/SessionContext;-><init>()V

    iput-object v0, p0, Lcom/vungle/ads/fpd/FirstPartyData;->b:Lcom/vungle/ads/fpd/SessionContext;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_d

    goto :goto_f

    :catchall_d
    move-exception v0

    goto :goto_11

    :cond_f
    :goto_f
    monitor-exit p0

    return-object v0

    :goto_11
    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_d

    throw v0
.end method

###### Class com.vungle.ads.fpd.FirstPartyData.Companion (com.vungle.ads.fpd.FirstPartyData$Companion)
.class public final Lcom/vungle/ads/fpd/FirstPartyData$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/fpd/FirstPartyData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/vungle/ads/fpd/FirstPartyData$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/vungle/ads/fpd/FirstPartyData;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/ads/fpd/FirstPartyData$$serializer;->INSTANCE:Lcom/vungle/ads/fpd/FirstPartyData$$serializer;

    return-object v0
.end method

###### Class com.vungle.ads.fpd.FirstPartyData$Companion$JSON$1 (com.vungle.ads.fpd.FirstPartyData$Companion$JSON$1)
.class final Lcom/vungle/ads/fpd/FirstPartyData$Companion$JSON$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/fpd/FirstPartyData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlinx/serialization/json/JsonBuilder;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/fpd/FirstPartyData$Companion$JSON$1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/vungle/ads/fpd/FirstPartyData$Companion$JSON$1;

    invoke-direct {v0}, Lcom/vungle/ads/fpd/FirstPartyData$Companion$JSON$1;-><init>()V

    sput-object v0, Lcom/vungle/ads/fpd/FirstPartyData$Companion$JSON$1;->INSTANCE:Lcom/vungle/ads/fpd/FirstPartyData$Companion$JSON$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lkotlinx/serialization/json/JsonBuilder;

    invoke-virtual {p0, p1}, Lcom/vungle/ads/fpd/FirstPartyData$Companion$JSON$1;->invoke(Lkotlinx/serialization/json/JsonBuilder;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lkotlinx/serialization/json/JsonBuilder;)V
    .registers 3

    const-string v0, "$this$Json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lkotlinx/serialization/json/JsonBuilder;->setPrettyPrint(Z)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lkotlinx/serialization/json/JsonBuilder;->setExplicitNulls(Z)V

    .line 4
    invoke-virtual {p1, v0}, Lkotlinx/serialization/json/JsonBuilder;->setEncodeDefaults(Z)V

    return-void
.end method
