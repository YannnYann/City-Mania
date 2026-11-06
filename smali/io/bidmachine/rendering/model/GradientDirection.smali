###### Class io.bidmachine.rendering.model.GradientDirection (io.bidmachine.rendering.model.GradientDirection)
.class public final enum Lio/bidmachine/rendering/model/GradientDirection;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/util/KeyHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/GradientDirection$Companion;,
        Lio/bidmachine/rendering/model/GradientDirection$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/rendering/model/GradientDirection;",
        ">;",
        "Lio/bidmachine/util/KeyHolder;"
    }
.end annotation


# static fields
.field public static final enum BottomTop:Lio/bidmachine/rendering/model/GradientDirection;

.field public static final Companion:Lio/bidmachine/rendering/model/GradientDirection$Companion;

.field public static final enum LeftRight:Lio/bidmachine/rendering/model/GradientDirection;

.field public static final enum RightLeft:Lio/bidmachine/rendering/model/GradientDirection;

.field public static final enum TopBottom:Lio/bidmachine/rendering/model/GradientDirection;

.field public static final synthetic b:[Lio/bidmachine/rendering/model/GradientDirection;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lio/bidmachine/rendering/model/GradientDirection;

    const/4 v1, 0x0

    const-string v2, "right"

    const-string v3, "LeftRight"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/GradientDirection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/GradientDirection;->LeftRight:Lio/bidmachine/rendering/model/GradientDirection;

    .line 2
    new-instance v0, Lio/bidmachine/rendering/model/GradientDirection;

    const/4 v1, 0x1

    const-string v2, "bottom"

    const-string v3, "TopBottom"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/GradientDirection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/GradientDirection;->TopBottom:Lio/bidmachine/rendering/model/GradientDirection;

    .line 3
    new-instance v0, Lio/bidmachine/rendering/model/GradientDirection;

    const/4 v1, 0x2

    const-string v2, "left"

    const-string v3, "RightLeft"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/GradientDirection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/GradientDirection;->RightLeft:Lio/bidmachine/rendering/model/GradientDirection;

    .line 4
    new-instance v0, Lio/bidmachine/rendering/model/GradientDirection;

    const/4 v1, 0x3

    const-string v2, "top"

    const-string v3, "BottomTop"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/GradientDirection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/GradientDirection;->BottomTop:Lio/bidmachine/rendering/model/GradientDirection;

    invoke-static {}, Lio/bidmachine/rendering/model/GradientDirection;->a()[Lio/bidmachine/rendering/model/GradientDirection;

    move-result-object v0

    sput-object v0, Lio/bidmachine/rendering/model/GradientDirection;->b:[Lio/bidmachine/rendering/model/GradientDirection;

    new-instance v0, Lio/bidmachine/rendering/model/GradientDirection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/model/GradientDirection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/model/GradientDirection;->Companion:Lio/bidmachine/rendering/model/GradientDirection$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/bidmachine/rendering/model/GradientDirection;->a:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()[Lio/bidmachine/rendering/model/GradientDirection;
    .registers 4

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/GradientDirection;->LeftRight:Lio/bidmachine/rendering/model/GradientDirection;

    sget-object v1, Lio/bidmachine/rendering/model/GradientDirection;->TopBottom:Lio/bidmachine/rendering/model/GradientDirection;

    sget-object v2, Lio/bidmachine/rendering/model/GradientDirection;->RightLeft:Lio/bidmachine/rendering/model/GradientDirection;

    sget-object v3, Lio/bidmachine/rendering/model/GradientDirection;->BottomTop:Lio/bidmachine/rendering/model/GradientDirection;

    filled-new-array {v0, v1, v2, v3}, [Lio/bidmachine/rendering/model/GradientDirection;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/rendering/model/GradientDirection;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/rendering/model/GradientDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/rendering/model/GradientDirection;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/rendering/model/GradientDirection;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/GradientDirection;->b:[Lio/bidmachine/rendering/model/GradientDirection;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/rendering/model/GradientDirection;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/GradientDirection;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final toDrawableGradientOrientation()Lio/bidmachine/util/gradient/GradientDrawable$Orientation;
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/GradientDirection$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_23

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    .line 15
    sget-object v0, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;->BOTTOM_TOP:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    return-object v0

    :cond_17
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 16
    :cond_1d
    sget-object v0, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;->RIGHT_LEFT:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    return-object v0

    .line 17
    :cond_20
    sget-object v0, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;->TOP_BOTTOM:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    return-object v0

    .line 18
    :cond_23
    sget-object v0, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;->LEFT_RIGHT:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    return-object v0
.end method

###### Class io.bidmachine.rendering.model.GradientDirection.Companion (io.bidmachine.rendering.model.GradientDirection$Companion)
.class public final Lio/bidmachine/rendering/model/GradientDirection$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/GradientDirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/model/GradientDirection$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Lio/bidmachine/rendering/model/GradientDirection;
    .registers 3

    .line 1
    invoke-static {}, Lio/bidmachine/rendering/model/GradientDirection;->values()[Lio/bidmachine/rendering/model/GradientDirection;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/util/KeyHolder;

    invoke-static {v0, p1}, Lio/bidmachine/util/UtilsKt;->find([Lio/bidmachine/util/KeyHolder;Ljava/lang/String;)Lio/bidmachine/util/KeyHolder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/model/GradientDirection;

    return-object p1
.end method

###### Class io.bidmachine.rendering.model.GradientDirection.WhenMappings (io.bidmachine.rendering.model.GradientDirection$WhenMappings)
.class public final synthetic Lio/bidmachine/rendering/model/GradientDirection$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/GradientDirection;
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
    invoke-static {}, Lio/bidmachine/rendering/model/GradientDirection;->values()[Lio/bidmachine/rendering/model/GradientDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/bidmachine/rendering/model/GradientDirection;->LeftRight:Lio/bidmachine/rendering/model/GradientDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/bidmachine/rendering/model/GradientDirection;->TopBottom:Lio/bidmachine/rendering/model/GradientDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lio/bidmachine/rendering/model/GradientDirection;->RightLeft:Lio/bidmachine/rendering/model/GradientDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lio/bidmachine/rendering/model/GradientDirection;->BottomTop:Lio/bidmachine/rendering/model/GradientDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    sput-object v0, Lio/bidmachine/rendering/model/GradientDirection$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
