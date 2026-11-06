###### Class io.bidmachine.displays.mapper.PositionDataMapper (io.bidmachine.displays.mapper.PositionDataMapper)
.class public final Lio/bidmachine/displays/mapper/PositionDataMapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/displays/mapper/PositionDataMapper$WhenMappings;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final map(Lcom/explorestack/protobuf/adcom/NativeAssetPosition;)Lio/bidmachine/PositionData;
    .registers 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_5
    sget-object v0, Lio/bidmachine/displays/mapper/PositionDataMapper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_23

    const/4 v0, 0x2

    if-eq p1, v0, :cond_20

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1a

    goto :goto_26

    .line 5
    :cond_1a
    sget-object p1, Lio/bidmachine/PositionData;->BottomRight:Lio/bidmachine/PositionData;

    return-object p1

    .line 6
    :cond_1d
    sget-object p1, Lio/bidmachine/PositionData;->BottomLeft:Lio/bidmachine/PositionData;

    return-object p1

    .line 7
    :cond_20
    sget-object p1, Lio/bidmachine/PositionData;->TopRight:Lio/bidmachine/PositionData;

    return-object p1

    .line 8
    :cond_23
    sget-object p1, Lio/bidmachine/PositionData;->TopLeft:Lio/bidmachine/PositionData;
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    return-object p1

    :catchall_26
    :goto_26
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.bidmachine.displays.mapper.PositionDataMapper.WhenMappings (io.bidmachine.displays.mapper.PositionDataMapper$WhenMappings)
.class public final synthetic Lio/bidmachine/displays/mapper/PositionDataMapper$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/displays/mapper/PositionDataMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/NativeAssetPosition;->values()[Lcom/explorestack/protobuf/adcom/NativeAssetPosition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lcom/explorestack/protobuf/adcom/NativeAssetPosition;->ASSET_POSITION_TOP_LEFT:Lcom/explorestack/protobuf/adcom/NativeAssetPosition;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lcom/explorestack/protobuf/adcom/NativeAssetPosition;->ASSET_POSITION_TOP_RIGHT:Lcom/explorestack/protobuf/adcom/NativeAssetPosition;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lcom/explorestack/protobuf/adcom/NativeAssetPosition;->ASSET_POSITION_BOTTOM_LEFT:Lcom/explorestack/protobuf/adcom/NativeAssetPosition;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lcom/explorestack/protobuf/adcom/NativeAssetPosition;->ASSET_POSITION_BOTTOM_RIGHT:Lcom/explorestack/protobuf/adcom/NativeAssetPosition;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    sput-object v0, Lio/bidmachine/displays/mapper/PositionDataMapper$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
