###### Class io.bidmachine.internal.C4229m (io.bidmachine.internal.m)
.class public final Lio/bidmachine/internal/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/bidmachine/internal/m;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/internal/m;

    invoke-direct {v0}, Lio/bidmachine/internal/m;-><init>()V

    sput-object v0, Lio/bidmachine/internal/m;->a:Lio/bidmachine/internal/m;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;Lkotlin/jvm/functions/Function0;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .registers 7

    const-string v0, "maskedSignalsBuilder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyGroupRestrictions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyDataMasker"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    .line 2
    invoke-static {}, Lio/bidmachine/core/Utils;->getUtcOffsetMinutes()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setUtcoffset(I)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 4
    new-instance v1, Lio/bidmachine/internal/m$a;

    invoke-direct {v1, p3, v0}, Lio/bidmachine/internal/m$a;-><init>(Lkotlin/jvm/functions/Function0;Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;)V

    new-instance v2, Lio/bidmachine/internal/m$b;

    invoke-direct {v2, p3, p0, p2}, Lio/bidmachine/internal/m$b;-><init>(Lkotlin/jvm/functions/Function0;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;)V

    invoke-virtual {p1, v1, v2}, Lio/bidmachine/internal/w;->d(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 26
    const-string p0, "builder"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lio/bidmachine/TargetingParams$Data;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .registers 9

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maskedSignalsBuilder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyGroupRestrictions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyDataMasker"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    .line 28
    invoke-virtual {p1}, Lio/bidmachine/TargetingParams$Data;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "builder"

    if-eqz v1, :cond_26

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setCountry(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 29
    :cond_26
    new-instance v1, Lio/bidmachine/internal/m$c;

    invoke-direct {v1, p1, v0}, Lio/bidmachine/internal/m$c;-><init>(Lio/bidmachine/TargetingParams$Data;Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;)V

    new-instance v3, Lio/bidmachine/internal/m$d;

    invoke-direct {v3, p1, p2, p4}, Lio/bidmachine/internal/m$d;-><init>(Lio/bidmachine/TargetingParams$Data;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;)V

    invoke-virtual {p3, v1, v3}, Lio/bidmachine/internal/w;->d(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 53
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

###### Class io.bidmachine.internal.C4229m.a (io.bidmachine.internal.m$a)
.class public final Lio/bidmachine/internal/m$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/m;->a(Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;Lkotlin/jvm/functions/Function0;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function0;

.field public final synthetic b:Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/m$a;->a:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lio/bidmachine/internal/m$a;->b:Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/m$a;->a:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    if-eqz v0, :cond_2b

    iget-object v1, p0, Lio/bidmachine/internal/m$a;->b:Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 2
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setLat(F)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 3
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setLon(F)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 4
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setAccur(I)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 5
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setLastfix(J)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    :cond_2b
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/internal/m$a;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.internal.C4229m.b (io.bidmachine.internal.m$b)
.class public final Lio/bidmachine/internal/m$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/m;->a(Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;Lkotlin/jvm/functions/Function0;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function0;

.field public final synthetic b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

.field public final synthetic c:Lio/bidmachine/internal/v;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/m$b;->a:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lio/bidmachine/internal/m$b;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iput-object p3, p0, Lio/bidmachine/internal/m$b;->c:Lio/bidmachine/internal/v;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/m$b;->a:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    if-eqz v0, :cond_5d

    iget-object v1, p0, Lio/bidmachine/internal/m$b;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iget-object v2, p0, Lio/bidmachine/internal/m$b;->c:Lio/bidmachine/internal/v;

    .line 3
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v3}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(F)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v3

    .line 4
    invoke-virtual {v1, v3}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setDeviceLat(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 7
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v3}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(F)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v3

    .line 8
    invoke-virtual {v1, v3}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setDeviceLon(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 11
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v3

    .line 12
    invoke-virtual {v1, v3}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setAccuracy(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 15
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(J)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    .line 16
    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setLastfix(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    :cond_5d
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/internal/m$b;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.internal.C4229m.c (io.bidmachine.internal.m$c)
.class public final Lio/bidmachine/internal/m$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/m;->a(Lio/bidmachine/TargetingParams$Data;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/TargetingParams$Data;

.field public final synthetic b:Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;


# direct methods
.method public constructor <init>(Lio/bidmachine/TargetingParams$Data;Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/m$c;->a:Lio/bidmachine/TargetingParams$Data;

    iput-object p2, p0, Lio/bidmachine/internal/m$c;->b:Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/m$c;->a:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams$Data;->getCity()Ljava/lang/String;

    move-result-object v0

    const-string v1, "builder"

    if-eqz v0, :cond_12

    iget-object v2, p0, Lio/bidmachine/internal/m$c;->b:Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setCity(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 2
    :cond_12
    iget-object v0, p0, Lio/bidmachine/internal/m$c;->a:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams$Data;->getZip()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v2, p0, Lio/bidmachine/internal/m$c;->b:Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setZip(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 3
    :cond_22
    iget-object v0, p0, Lio/bidmachine/internal/m$c;->a:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams$Data;->getDeviceLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object v1, p0, Lio/bidmachine/internal/m$c;->b:Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 4
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setLat(F)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 5
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v0, v2

    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setLon(F)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    :cond_3c
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/internal/m$c;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.internal.C4229m.d (io.bidmachine.internal.m$d)
.class public final Lio/bidmachine/internal/m$d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/m;->a(Lio/bidmachine/TargetingParams$Data;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/TargetingParams$Data;

.field public final synthetic b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

.field public final synthetic c:Lio/bidmachine/internal/v;


# direct methods
.method public constructor <init>(Lio/bidmachine/TargetingParams$Data;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/m$d;->a:Lio/bidmachine/TargetingParams$Data;

    iput-object p2, p0, Lio/bidmachine/internal/m$d;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iput-object p3, p0, Lio/bidmachine/internal/m$d;->c:Lio/bidmachine/internal/v;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/m$d;->a:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams$Data;->getCity()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lio/bidmachine/internal/m$d;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iget-object v2, p0, Lio/bidmachine/internal/m$d;->c:Lio/bidmachine/internal/v;

    .line 2
    invoke-static {v0}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setUserCity(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4
    :cond_1b
    iget-object v0, p0, Lio/bidmachine/internal/m$d;->a:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams$Data;->getZip()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v1, p0, Lio/bidmachine/internal/m$d;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iget-object v2, p0, Lio/bidmachine/internal/m$d;->c:Lio/bidmachine/internal/v;

    .line 5
    invoke-static {v0}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setUserZip(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 7
    :cond_36
    iget-object v0, p0, Lio/bidmachine/internal/m$d;->a:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams$Data;->getDeviceLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_6a

    iget-object v1, p0, Lio/bidmachine/internal/m$d;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iget-object v2, p0, Lio/bidmachine/internal/m$d;->c:Lio/bidmachine/internal/v;

    .line 9
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v3}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(F)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v3

    .line 10
    invoke-virtual {v1, v3}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setUserLat(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 13
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float v0, v3

    invoke-static {v0}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(F)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    .line 14
    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setUserLon(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    :cond_6a
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/internal/m$d;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
