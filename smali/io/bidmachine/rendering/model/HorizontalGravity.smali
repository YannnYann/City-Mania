###### Class io.bidmachine.rendering.model.HorizontalGravity (io.bidmachine.rendering.model.HorizontalGravity)
.class public final enum Lio/bidmachine/rendering/model/HorizontalGravity;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/util/KeyHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/HorizontalGravity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/rendering/model/HorizontalGravity;",
        ">;",
        "Lio/bidmachine/util/KeyHolder;"
    }
.end annotation


# static fields
.field public static final enum Center:Lio/bidmachine/rendering/model/HorizontalGravity;

.field public static final Companion:Lio/bidmachine/rendering/model/HorizontalGravity$Companion;

.field public static final enum Left:Lio/bidmachine/rendering/model/HorizontalGravity;

.field public static final enum Right:Lio/bidmachine/rendering/model/HorizontalGravity;

.field public static final synthetic c:[Lio/bidmachine/rendering/model/HorizontalGravity;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lio/bidmachine/rendering/model/HorizontalGravity;

    const-string v1, "left"

    const/4 v2, 0x3

    const-string v3, "Left"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lio/bidmachine/rendering/model/HorizontalGravity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/model/HorizontalGravity;->Left:Lio/bidmachine/rendering/model/HorizontalGravity;

    .line 2
    new-instance v0, Lio/bidmachine/rendering/model/HorizontalGravity;

    const/4 v1, 0x1

    const-string v2, "center"

    const-string v3, "Center"

    invoke-direct {v0, v3, v1, v2, v1}, Lio/bidmachine/rendering/model/HorizontalGravity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/model/HorizontalGravity;->Center:Lio/bidmachine/rendering/model/HorizontalGravity;

    .line 3
    new-instance v0, Lio/bidmachine/rendering/model/HorizontalGravity;

    const-string v1, "right"

    const/4 v2, 0x5

    const-string v3, "Right"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lio/bidmachine/rendering/model/HorizontalGravity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/model/HorizontalGravity;->Right:Lio/bidmachine/rendering/model/HorizontalGravity;

    invoke-static {}, Lio/bidmachine/rendering/model/HorizontalGravity;->a()[Lio/bidmachine/rendering/model/HorizontalGravity;

    move-result-object v0

    sput-object v0, Lio/bidmachine/rendering/model/HorizontalGravity;->c:[Lio/bidmachine/rendering/model/HorizontalGravity;

    new-instance v0, Lio/bidmachine/rendering/model/HorizontalGravity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/model/HorizontalGravity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/model/HorizontalGravity;->Companion:Lio/bidmachine/rendering/model/HorizontalGravity$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/bidmachine/rendering/model/HorizontalGravity;->a:Ljava/lang/String;

    iput p4, p0, Lio/bidmachine/rendering/model/HorizontalGravity;->b:I

    return-void
.end method

.method public static final synthetic a()[Lio/bidmachine/rendering/model/HorizontalGravity;
    .registers 3

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/HorizontalGravity;->Left:Lio/bidmachine/rendering/model/HorizontalGravity;

    sget-object v1, Lio/bidmachine/rendering/model/HorizontalGravity;->Center:Lio/bidmachine/rendering/model/HorizontalGravity;

    sget-object v2, Lio/bidmachine/rendering/model/HorizontalGravity;->Right:Lio/bidmachine/rendering/model/HorizontalGravity;

    filled-new-array {v0, v1, v2}, [Lio/bidmachine/rendering/model/HorizontalGravity;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/rendering/model/HorizontalGravity;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/rendering/model/HorizontalGravity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/rendering/model/HorizontalGravity;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/rendering/model/HorizontalGravity;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/HorizontalGravity;->c:[Lio/bidmachine/rendering/model/HorizontalGravity;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/rendering/model/HorizontalGravity;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/HorizontalGravity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/model/HorizontalGravity;->b:I

    return v0
.end method

###### Class io.bidmachine.rendering.model.HorizontalGravity.Companion (io.bidmachine.rendering.model.HorizontalGravity$Companion)
.class public final Lio/bidmachine/rendering/model/HorizontalGravity$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/HorizontalGravity;
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
    invoke-direct {p0}, Lio/bidmachine/rendering/model/HorizontalGravity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Lio/bidmachine/rendering/model/HorizontalGravity;
    .registers 3

    .line 1
    invoke-static {}, Lio/bidmachine/rendering/model/HorizontalGravity;->values()[Lio/bidmachine/rendering/model/HorizontalGravity;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/util/KeyHolder;

    invoke-static {v0, p1}, Lio/bidmachine/util/UtilsKt;->find([Lio/bidmachine/util/KeyHolder;Ljava/lang/String;)Lio/bidmachine/util/KeyHolder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/model/HorizontalGravity;

    return-object p1
.end method
