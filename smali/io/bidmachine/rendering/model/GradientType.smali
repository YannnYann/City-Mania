###### Class io.bidmachine.rendering.model.GradientType (io.bidmachine.rendering.model.GradientType)
.class public final enum Lio/bidmachine/rendering/model/GradientType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/util/KeyHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/GradientType$Companion;,
        Lio/bidmachine/rendering/model/GradientType$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/rendering/model/GradientType;",
        ">;",
        "Lio/bidmachine/util/KeyHolder;"
    }
.end annotation


# static fields
.field public static final enum Bilinear:Lio/bidmachine/rendering/model/GradientType;

.field public static final Companion:Lio/bidmachine/rendering/model/GradientType$Companion;

.field public static final enum Linear:Lio/bidmachine/rendering/model/GradientType;

.field public static final enum Radial:Lio/bidmachine/rendering/model/GradientType;

.field public static final synthetic b:[Lio/bidmachine/rendering/model/GradientType;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lio/bidmachine/rendering/model/GradientType;

    const/4 v1, 0x0

    const-string v2, "linear"

    const-string v3, "Linear"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/GradientType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/GradientType;->Linear:Lio/bidmachine/rendering/model/GradientType;

    .line 2
    new-instance v0, Lio/bidmachine/rendering/model/GradientType;

    const/4 v1, 0x1

    const-string v2, "radial"

    const-string v3, "Radial"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/GradientType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/GradientType;->Radial:Lio/bidmachine/rendering/model/GradientType;

    .line 3
    new-instance v0, Lio/bidmachine/rendering/model/GradientType;

    const/4 v1, 0x2

    const-string v2, "bilinear"

    const-string v3, "Bilinear"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/GradientType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/GradientType;->Bilinear:Lio/bidmachine/rendering/model/GradientType;

    invoke-static {}, Lio/bidmachine/rendering/model/GradientType;->a()[Lio/bidmachine/rendering/model/GradientType;

    move-result-object v0

    sput-object v0, Lio/bidmachine/rendering/model/GradientType;->b:[Lio/bidmachine/rendering/model/GradientType;

    new-instance v0, Lio/bidmachine/rendering/model/GradientType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/model/GradientType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/model/GradientType;->Companion:Lio/bidmachine/rendering/model/GradientType$Companion;

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

    iput-object p3, p0, Lio/bidmachine/rendering/model/GradientType;->a:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()[Lio/bidmachine/rendering/model/GradientType;
    .registers 3

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/GradientType;->Linear:Lio/bidmachine/rendering/model/GradientType;

    sget-object v1, Lio/bidmachine/rendering/model/GradientType;->Radial:Lio/bidmachine/rendering/model/GradientType;

    sget-object v2, Lio/bidmachine/rendering/model/GradientType;->Bilinear:Lio/bidmachine/rendering/model/GradientType;

    filled-new-array {v0, v1, v2}, [Lio/bidmachine/rendering/model/GradientType;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/rendering/model/GradientType;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/rendering/model/GradientType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/rendering/model/GradientType;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/rendering/model/GradientType;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/GradientType;->b:[Lio/bidmachine/rendering/model/GradientType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/rendering/model/GradientType;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/GradientType;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final toDrawableGradientType()I
    .registers 4

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/GradientType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v2, 0x2

    if-eq v0, v2, :cond_18

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    return v1

    .line 11
    :cond_12
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_18
    return v1

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

###### Class io.bidmachine.rendering.model.GradientType.Companion (io.bidmachine.rendering.model.GradientType$Companion)
.class public final Lio/bidmachine/rendering/model/GradientType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/GradientType;
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
    invoke-direct {p0}, Lio/bidmachine/rendering/model/GradientType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Lio/bidmachine/rendering/model/GradientType;
    .registers 3

    .line 1
    invoke-static {}, Lio/bidmachine/rendering/model/GradientType;->values()[Lio/bidmachine/rendering/model/GradientType;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/util/KeyHolder;

    invoke-static {v0, p1}, Lio/bidmachine/util/UtilsKt;->find([Lio/bidmachine/util/KeyHolder;Ljava/lang/String;)Lio/bidmachine/util/KeyHolder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/model/GradientType;

    return-object p1
.end method

###### Class io.bidmachine.rendering.model.GradientType.WhenMappings (io.bidmachine.rendering.model.GradientType$WhenMappings)
.class public final synthetic Lio/bidmachine/rendering/model/GradientType$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/GradientType;
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
    invoke-static {}, Lio/bidmachine/rendering/model/GradientType;->values()[Lio/bidmachine/rendering/model/GradientType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/bidmachine/rendering/model/GradientType;->Linear:Lio/bidmachine/rendering/model/GradientType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/bidmachine/rendering/model/GradientType;->Radial:Lio/bidmachine/rendering/model/GradientType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lio/bidmachine/rendering/model/GradientType;->Bilinear:Lio/bidmachine/rendering/model/GradientType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    sput-object v0, Lio/bidmachine/rendering/model/GradientType$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
