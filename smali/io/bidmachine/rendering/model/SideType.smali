###### Class io.bidmachine.rendering.model.SideType (io.bidmachine.rendering.model.SideType)
.class public final enum Lio/bidmachine/rendering/model/SideType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/util/KeyHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/SideType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/rendering/model/SideType;",
        ">;",
        "Lio/bidmachine/util/KeyHolder;"
    }
.end annotation


# static fields
.field public static final enum Bottom:Lio/bidmachine/rendering/model/SideType;

.field public static final enum CenterX:Lio/bidmachine/rendering/model/SideType;

.field public static final enum CenterY:Lio/bidmachine/rendering/model/SideType;

.field public static final Companion:Lio/bidmachine/rendering/model/SideType$Companion;

.field public static final enum Left:Lio/bidmachine/rendering/model/SideType;

.field public static final enum Right:Lio/bidmachine/rendering/model/SideType;

.field public static final enum Top:Lio/bidmachine/rendering/model/SideType;

.field public static final synthetic b:[Lio/bidmachine/rendering/model/SideType;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lio/bidmachine/rendering/model/SideType;

    const/4 v1, 0x0

    const-string v2, "left"

    const-string v3, "Left"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/SideType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/SideType;->Left:Lio/bidmachine/rendering/model/SideType;

    .line 2
    new-instance v0, Lio/bidmachine/rendering/model/SideType;

    const/4 v1, 0x1

    const-string v2, "top"

    const-string v3, "Top"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/SideType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/SideType;->Top:Lio/bidmachine/rendering/model/SideType;

    .line 3
    new-instance v0, Lio/bidmachine/rendering/model/SideType;

    const/4 v1, 0x2

    const-string v2, "right"

    const-string v3, "Right"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/SideType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/SideType;->Right:Lio/bidmachine/rendering/model/SideType;

    .line 4
    new-instance v0, Lio/bidmachine/rendering/model/SideType;

    const/4 v1, 0x3

    const-string v2, "bottom"

    const-string v3, "Bottom"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/SideType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/SideType;->Bottom:Lio/bidmachine/rendering/model/SideType;

    .line 5
    new-instance v0, Lio/bidmachine/rendering/model/SideType;

    const/4 v1, 0x4

    const-string v2, "centerX"

    const-string v3, "CenterX"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/SideType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/SideType;->CenterX:Lio/bidmachine/rendering/model/SideType;

    .line 6
    new-instance v0, Lio/bidmachine/rendering/model/SideType;

    const/4 v1, 0x5

    const-string v2, "centerY"

    const-string v3, "CenterY"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/SideType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/SideType;->CenterY:Lio/bidmachine/rendering/model/SideType;

    invoke-static {}, Lio/bidmachine/rendering/model/SideType;->a()[Lio/bidmachine/rendering/model/SideType;

    move-result-object v0

    sput-object v0, Lio/bidmachine/rendering/model/SideType;->b:[Lio/bidmachine/rendering/model/SideType;

    new-instance v0, Lio/bidmachine/rendering/model/SideType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/model/SideType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/model/SideType;->Companion:Lio/bidmachine/rendering/model/SideType$Companion;

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

    iput-object p3, p0, Lio/bidmachine/rendering/model/SideType;->a:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()[Lio/bidmachine/rendering/model/SideType;
    .registers 6

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/SideType;->Left:Lio/bidmachine/rendering/model/SideType;

    sget-object v1, Lio/bidmachine/rendering/model/SideType;->Top:Lio/bidmachine/rendering/model/SideType;

    sget-object v2, Lio/bidmachine/rendering/model/SideType;->Right:Lio/bidmachine/rendering/model/SideType;

    sget-object v3, Lio/bidmachine/rendering/model/SideType;->Bottom:Lio/bidmachine/rendering/model/SideType;

    sget-object v4, Lio/bidmachine/rendering/model/SideType;->CenterX:Lio/bidmachine/rendering/model/SideType;

    sget-object v5, Lio/bidmachine/rendering/model/SideType;->CenterY:Lio/bidmachine/rendering/model/SideType;

    filled-new-array/range {v0 .. v5}, [Lio/bidmachine/rendering/model/SideType;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/rendering/model/SideType;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/rendering/model/SideType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/rendering/model/SideType;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/rendering/model/SideType;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/SideType;->b:[Lio/bidmachine/rendering/model/SideType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/rendering/model/SideType;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/SideType;->a:Ljava/lang/String;

    return-object v0
.end method

###### Class io.bidmachine.rendering.model.SideType.Companion (io.bidmachine.rendering.model.SideType$Companion)
.class public final Lio/bidmachine/rendering/model/SideType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/SideType;
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
    invoke-direct {p0}, Lio/bidmachine/rendering/model/SideType$Companion;-><init>()V

    return-void
.end method
