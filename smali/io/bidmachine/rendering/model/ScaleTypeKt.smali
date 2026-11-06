###### Class io.bidmachine.rendering.model.ScaleTypeKt (io.bidmachine.rendering.model.ScaleTypeKt)
.class public final Lio/bidmachine/rendering/model/ScaleTypeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/ScaleTypeKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final toImageViewScaleType(Lio/bidmachine/rendering/model/ScaleType;)Landroid/widget/ImageView$ScaleType;
    .registers 3

    const/4 v0, -0x1

    if-nez p0, :cond_5

    move p0, v0

    goto :goto_d

    .line 1
    :cond_5
    sget-object v1, Lio/bidmachine/rendering/model/ScaleTypeKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    :goto_d
    if-eq p0, v0, :cond_2a

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_27

    const/4 v0, 0x3

    if-eq p0, v0, :cond_24

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1e

    .line 20
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    return-object p0

    .line 19
    :cond_1e
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 21
    :cond_24
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    return-object p0

    .line 22
    :cond_27
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    return-object p0

    :cond_2a
    const/4 p0, 0x0

    return-object p0
.end method

###### Class io.bidmachine.rendering.model.ScaleTypeKt.WhenMappings (io.bidmachine.rendering.model.ScaleTypeKt$WhenMappings)
.class public final synthetic Lio/bidmachine/rendering/model/ScaleTypeKt$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/ScaleTypeKt;
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
    invoke-static {}, Lio/bidmachine/rendering/model/ScaleType;->values()[Lio/bidmachine/rendering/model/ScaleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/bidmachine/rendering/model/ScaleType;->None:Lio/bidmachine/rendering/model/ScaleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/bidmachine/rendering/model/ScaleType;->ToFill:Lio/bidmachine/rendering/model/ScaleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lio/bidmachine/rendering/model/ScaleType;->AspectFill:Lio/bidmachine/rendering/model/ScaleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lio/bidmachine/rendering/model/ScaleType;->AspectFit:Lio/bidmachine/rendering/model/ScaleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    sput-object v0, Lio/bidmachine/rendering/model/ScaleTypeKt$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
