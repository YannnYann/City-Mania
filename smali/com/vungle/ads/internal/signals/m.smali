###### Class com.vungle.ads.internal.signals.m (com.vungle.ads.internal.signals.m)
.class public final Lcom/vungle/ads/internal/signals/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/signals/l;


# instance fields
.field public final a:Ljava/lang/Long;

.field public final b:J

.field public c:Ljava/lang/String;

.field public final d:J

.field public e:Ljava/lang/String;

.field public f:J

.field public g:I

.field public h:J

.field public i:J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/vungle/ads/internal/signals/l;

    .line 1
    invoke-direct {v0}, Lcom/vungle/ads/internal/signals/l;-><init>()V

    .line 2
    sput-object v0, Lcom/vungle/ads/internal/signals/m;->Companion:Lcom/vungle/ads/internal/signals/l;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;JLjava/lang/String;JI)V
    .registers 14

    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-eq v1, v0, :cond_e

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/signals/k;->a:Lcom/vungle/ads/internal/signals/k;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/signals/k;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 4
    iput-object v2, p0, Lcom/vungle/ads/internal/signals/m;->a:Ljava/lang/Long;

    iput-wide v0, p0, Lcom/vungle/ads/internal/signals/m;->b:J

    and-int/lit8 v3, p1, 0x1

    const/4 v4, 0x0

    if-nez v3, :cond_23

    iput-object v4, p0, Lcom/vungle/ads/internal/signals/m;->c:Ljava/lang/String;

    goto :goto_25

    :cond_23
    iput-object p2, p0, Lcom/vungle/ads/internal/signals/m;->c:Ljava/lang/String;

    :goto_25
    iput-wide p3, p0, Lcom/vungle/ads/internal/signals/m;->d:J

    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2e

    iput-object v4, p0, Lcom/vungle/ads/internal/signals/m;->e:Ljava/lang/String;

    goto :goto_30

    :cond_2e
    iput-object p5, p0, Lcom/vungle/ads/internal/signals/m;->e:Ljava/lang/String;

    :goto_30
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_37

    iput-wide v0, p0, Lcom/vungle/ads/internal/signals/m;->f:J

    goto :goto_39

    :cond_37
    iput-wide p6, p0, Lcom/vungle/ads/internal/signals/m;->f:J

    :goto_39
    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_41

    const/4 p1, 0x0

    iput p1, p0, Lcom/vungle/ads/internal/signals/m;->g:I

    goto :goto_43

    :cond_41
    iput p8, p0, Lcom/vungle/ads/internal/signals/m;->g:I

    :goto_43
    iput-wide v0, p0, Lcom/vungle/ads/internal/signals/m;->h:J

    iput-wide v0, p0, Lcom/vungle/ads/internal/signals/m;->i:J

    .line 30
    invoke-static {v2, v0, v1}, Lcom/vungle/ads/internal/signals/m;->a(Ljava/lang/Long;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/vungle/ads/internal/signals/m;->d:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;J)V
    .registers 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/vungle/ads/internal/signals/m;->a:Ljava/lang/Long;

    .line 34
    iput-wide p2, p0, Lcom/vungle/ads/internal/signals/m;->b:J

    .line 57
    invoke-static {p1, p2, p3}, Lcom/vungle/ads/internal/signals/m;->a(Ljava/lang/Long;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/vungle/ads/internal/signals/m;->d:J

    return-void
.end method

.method public static a(Ljava/lang/Long;J)J
    .registers 7

    const-wide/16 v0, -0x1

    if-eqz p0, :cond_11

    .line 5
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr p1, v2

    const-wide/16 v2, 0x0

    cmp-long p0, p1, v2

    if-gez p0, :cond_10

    return-wide v0

    :cond_10
    return-wide p1

    :cond_11
    return-wide v0
.end method

.method public static final a(Lcom/vungle/ads/internal/signals/m;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V
    .registers 8

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

    goto :goto_1b

    :cond_17
    iget-object v1, p0, Lcom/vungle/ads/internal/signals/m;->c:Ljava/lang/String;

    if-eqz v1, :cond_22

    :goto_1b
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lcom/vungle/ads/internal/signals/m;->c:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_22
    iget-wide v0, p0, Lcom/vungle/ads/internal/signals/m;->d:J

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_34

    :cond_30
    iget-object v1, p0, Lcom/vungle/ads/internal/signals/m;->e:Ljava/lang/String;

    if-eqz v1, :cond_3b

    :goto_34
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lcom/vungle/ads/internal/signals/m;->e:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3b
    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_43

    goto :goto_4b

    :cond_43
    iget-wide v1, p0, Lcom/vungle/ads/internal/signals/m;->f:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_50

    :goto_4b
    iget-wide v1, p0, Lcom/vungle/ads/internal/signals/m;->f:J

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_50
    const/4 v0, 0x4

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_58

    goto :goto_5c

    :cond_58
    iget v1, p0, Lcom/vungle/ads/internal/signals/m;->g:I

    if-eqz v1, :cond_61

    :goto_5c
    iget p0, p0, Lcom/vungle/ads/internal/signals/m;->g:I

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_61
    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 2

    .line 3
    iput p1, p0, Lcom/vungle/ads/internal/signals/m;->g:I

    return-void
.end method

.method public final a(J)V
    .registers 3

    .line 4
    iput-wide p1, p0, Lcom/vungle/ads/internal/signals/m;->h:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/internal/signals/m;->e:Ljava/lang/String;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/vungle/ads/internal/signals/m;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/vungle/ads/internal/signals/m;

    iget-object v1, p0, Lcom/vungle/ads/internal/signals/m;->a:Ljava/lang/Long;

    iget-object v3, p1, Lcom/vungle/ads/internal/signals/m;->a:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-wide v3, p0, Lcom/vungle/ads/internal/signals/m;->b:J

    iget-wide v5, p1, Lcom/vungle/ads/internal/signals/m;->b:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_20

    return v2

    :cond_20
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/m;->a:Ljava/lang/Long;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/vungle/ads/internal/signals/m;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "SignaledAd(lastAdLoadTime="

    invoke-static {v0}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/vungle/ads/internal/signals/m;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", loadAdTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vungle/ads/internal/signals/m;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
