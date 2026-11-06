###### Class io.bidmachine.protobuf.rendering.WatermarkLocation (io.bidmachine.protobuf.rendering.WatermarkLocation)
.class public final enum Lio/bidmachine/protobuf/rendering/WatermarkLocation;
.super Ljava/lang/Enum;
.source "WatermarkLocation.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/protobuf/rendering/WatermarkLocation;",
        ">;",
        "Lcom/explorestack/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/protobuf/rendering/WatermarkLocation;

.field public static final enum UNRECOGNIZED:Lio/bidmachine/protobuf/rendering/WatermarkLocation;

.field private static final VALUES:[Lio/bidmachine/protobuf/rendering/WatermarkLocation;

.field public static final enum WM_LOCATION_BOTTOM_CENTER:Lio/bidmachine/protobuf/rendering/WatermarkLocation;

.field public static final WM_LOCATION_BOTTOM_CENTER_VALUE:I = 0x5

.field public static final enum WM_LOCATION_BOTTOM_LEFT:Lio/bidmachine/protobuf/rendering/WatermarkLocation;

.field public static final WM_LOCATION_BOTTOM_LEFT_VALUE:I = 0x4

.field public static final enum WM_LOCATION_BOTTOM_RIGHT:Lio/bidmachine/protobuf/rendering/WatermarkLocation;

.field public static final WM_LOCATION_BOTTOM_RIGHT_VALUE:I = 0x6

.field public static final enum WM_LOCATION_TOP_CENTER:Lio/bidmachine/protobuf/rendering/WatermarkLocation;

.field public static final WM_LOCATION_TOP_CENTER_VALUE:I = 0x2

.field public static final enum WM_LOCATION_TOP_LEFT:Lio/bidmachine/protobuf/rendering/WatermarkLocation;

.field public static final WM_LOCATION_TOP_LEFT_VALUE:I = 0x1

.field public static final enum WM_LOCATION_TOP_RIGHT:Lio/bidmachine/protobuf/rendering/WatermarkLocation;

.field public static final WM_LOCATION_TOP_RIGHT_VALUE:I = 0x3

.field public static final enum WM_LOCATION_UNSPECIFIED:Lio/bidmachine/protobuf/rendering/WatermarkLocation;

.field public static final WM_LOCATION_UNSPECIFIED_VALUE:I

.field private static final internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lio/bidmachine/protobuf/rendering/WatermarkLocation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 14
    new-instance v0, Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    const-string v1, "WM_LOCATION_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/bidmachine/protobuf/rendering/WatermarkLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->WM_LOCATION_UNSPECIFIED:Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    .line 18
    new-instance v1, Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    const-string v2, "WM_LOCATION_TOP_LEFT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lio/bidmachine/protobuf/rendering/WatermarkLocation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->WM_LOCATION_TOP_LEFT:Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    .line 22
    new-instance v2, Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    const-string v3, "WM_LOCATION_TOP_CENTER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lio/bidmachine/protobuf/rendering/WatermarkLocation;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->WM_LOCATION_TOP_CENTER:Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    .line 26
    new-instance v3, Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    const-string v4, "WM_LOCATION_TOP_RIGHT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lio/bidmachine/protobuf/rendering/WatermarkLocation;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->WM_LOCATION_TOP_RIGHT:Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    .line 30
    new-instance v4, Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    const-string v5, "WM_LOCATION_BOTTOM_LEFT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lio/bidmachine/protobuf/rendering/WatermarkLocation;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->WM_LOCATION_BOTTOM_LEFT:Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    .line 34
    new-instance v5, Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    const-string v6, "WM_LOCATION_BOTTOM_CENTER"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lio/bidmachine/protobuf/rendering/WatermarkLocation;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->WM_LOCATION_BOTTOM_CENTER:Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    .line 38
    new-instance v6, Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    const-string v7, "WM_LOCATION_BOTTOM_RIGHT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lio/bidmachine/protobuf/rendering/WatermarkLocation;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->WM_LOCATION_BOTTOM_RIGHT:Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    .line 39
    new-instance v7, Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    const/4 v8, 0x7

    const/4 v9, -0x1

    const-string v10, "UNRECOGNIZED"

    invoke-direct {v7, v10, v8, v9}, Lio/bidmachine/protobuf/rendering/WatermarkLocation;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->UNRECOGNIZED:Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    .line 9
    filled-new-array/range {v0 .. v7}, [Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->$VALUES:[Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    .line 112
    new-instance v0, Lio/bidmachine/protobuf/rendering/WatermarkLocation$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/rendering/WatermarkLocation$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 136
    invoke-static {}, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->values()[Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->VALUES:[Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 153
    iput p3, p0, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/bidmachine/protobuf/rendering/WatermarkLocation;
    .registers 1

    packed-switch p0, :pswitch_data_1a

    const/4 p0, 0x0

    return-object p0

    .line 102
    :pswitch_5
    sget-object p0, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->WM_LOCATION_BOTTOM_RIGHT:Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    return-object p0

    .line 101
    :pswitch_8
    sget-object p0, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->WM_LOCATION_BOTTOM_CENTER:Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    return-object p0

    .line 100
    :pswitch_b
    sget-object p0, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->WM_LOCATION_BOTTOM_LEFT:Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    return-object p0

    .line 99
    :pswitch_e
    sget-object p0, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->WM_LOCATION_TOP_RIGHT:Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    return-object p0

    .line 98
    :pswitch_11
    sget-object p0, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->WM_LOCATION_TOP_CENTER:Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    return-object p0

    .line 97
    :pswitch_14
    sget-object p0, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->WM_LOCATION_TOP_LEFT:Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    return-object p0

    .line 96
    :pswitch_17
    sget-object p0, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->WM_LOCATION_UNSPECIFIED:Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    return-object p0

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 133
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lio/bidmachine/protobuf/rendering/WatermarkLocation;",
            ">;"
        }
    .end annotation

    .line 109
    sget-object v0, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lio/bidmachine/protobuf/rendering/WatermarkLocation;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    invoke-static {p0}, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->forNumber(I)Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lio/bidmachine/protobuf/rendering/WatermarkLocation;
    .registers 3

    .line 140
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1d

    .line 144
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 145
    sget-object p0, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->UNRECOGNIZED:Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    return-object p0

    .line 147
    :cond_14
    sget-object v0, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->VALUES:[Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 141
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/protobuf/rendering/WatermarkLocation;
    .registers 2

    .line 9
    const-class v0, Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/protobuf/rendering/WatermarkLocation;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->$VALUES:[Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    invoke-virtual {v0}, [Lio/bidmachine/protobuf/rendering/WatermarkLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 129
    invoke-static {}, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .registers 3

    .line 73
    sget-object v0, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->UNRECOGNIZED:Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    if-eq p0, v0, :cond_7

    .line 77
    iget v0, p0, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->value:I

    return v0

    .line 74
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .registers 3

    .line 121
    sget-object v0, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->UNRECOGNIZED:Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    if-eq p0, v0, :cond_17

    .line 125
    invoke-static {}, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0

    .line 122
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get the descriptor of an unrecognized enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class io.bidmachine.protobuf.rendering.WatermarkLocation.AnonymousClass1 (io.bidmachine.protobuf.rendering.WatermarkLocation$1)
.class Lio/bidmachine/protobuf/rendering/WatermarkLocation$1;
.super Ljava/lang/Object;
.source "WatermarkLocation.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/rendering/WatermarkLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
        "Lio/bidmachine/protobuf/rendering/WatermarkLocation;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/explorestack/protobuf/Internal$EnumLite;
    .registers 2

    .line 113
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/rendering/WatermarkLocation$1;->findValueByNumber(I)Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lio/bidmachine/protobuf/rendering/WatermarkLocation;
    .registers 2

    .line 115
    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/WatermarkLocation;->forNumber(I)Lio/bidmachine/protobuf/rendering/WatermarkLocation;

    move-result-object p1

    return-object p1
.end method
