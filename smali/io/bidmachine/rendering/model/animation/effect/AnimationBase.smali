###### Class io.bidmachine.rendering.model.animation.effect.AnimationBase (io.bidmachine.rendering.model.animation.effect.AnimationBase)
.class public final enum Lio/bidmachine/rendering/model/animation/effect/AnimationBase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/util/KeyHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/animation/effect/AnimationBase$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/rendering/model/animation/effect/AnimationBase;",
        ">;",
        "Lio/bidmachine/util/KeyHolder;"
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/rendering/model/animation/effect/AnimationBase$Companion;

.field public static final enum Screen:Lio/bidmachine/rendering/model/animation/effect/AnimationBase;

.field public static final enum Self:Lio/bidmachine/rendering/model/animation/effect/AnimationBase;

.field public static final synthetic b:[Lio/bidmachine/rendering/model/animation/effect/AnimationBase;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lio/bidmachine/rendering/model/animation/effect/AnimationBase;

    const/4 v1, 0x0

    const-string v2, "self"

    const-string v3, "Self"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/animation/effect/AnimationBase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/animation/effect/AnimationBase;->Self:Lio/bidmachine/rendering/model/animation/effect/AnimationBase;

    .line 2
    new-instance v0, Lio/bidmachine/rendering/model/animation/effect/AnimationBase;

    const/4 v1, 0x1

    const-string v2, "screen"

    const-string v3, "Screen"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/animation/effect/AnimationBase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/animation/effect/AnimationBase;->Screen:Lio/bidmachine/rendering/model/animation/effect/AnimationBase;

    invoke-static {}, Lio/bidmachine/rendering/model/animation/effect/AnimationBase;->a()[Lio/bidmachine/rendering/model/animation/effect/AnimationBase;

    move-result-object v0

    sput-object v0, Lio/bidmachine/rendering/model/animation/effect/AnimationBase;->b:[Lio/bidmachine/rendering/model/animation/effect/AnimationBase;

    new-instance v0, Lio/bidmachine/rendering/model/animation/effect/AnimationBase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/model/animation/effect/AnimationBase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/model/animation/effect/AnimationBase;->Companion:Lio/bidmachine/rendering/model/animation/effect/AnimationBase$Companion;

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

    iput-object p3, p0, Lio/bidmachine/rendering/model/animation/effect/AnimationBase;->a:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()[Lio/bidmachine/rendering/model/animation/effect/AnimationBase;
    .registers 2

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/animation/effect/AnimationBase;->Self:Lio/bidmachine/rendering/model/animation/effect/AnimationBase;

    sget-object v1, Lio/bidmachine/rendering/model/animation/effect/AnimationBase;->Screen:Lio/bidmachine/rendering/model/animation/effect/AnimationBase;

    filled-new-array {v0, v1}, [Lio/bidmachine/rendering/model/animation/effect/AnimationBase;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/rendering/model/animation/effect/AnimationBase;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/rendering/model/animation/effect/AnimationBase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/rendering/model/animation/effect/AnimationBase;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/rendering/model/animation/effect/AnimationBase;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/animation/effect/AnimationBase;->b:[Lio/bidmachine/rendering/model/animation/effect/AnimationBase;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/rendering/model/animation/effect/AnimationBase;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/animation/effect/AnimationBase;->a:Ljava/lang/String;

    return-object v0
.end method

###### Class io.bidmachine.rendering.model.animation.effect.AnimationBase.Companion (io.bidmachine.rendering.model.animation.effect.AnimationBase$Companion)
.class public final Lio/bidmachine/rendering/model/animation/effect/AnimationBase$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/animation/effect/AnimationBase;
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
    invoke-direct {p0}, Lio/bidmachine/rendering/model/animation/effect/AnimationBase$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Lio/bidmachine/rendering/model/animation/effect/AnimationBase;
    .registers 3

    .line 1
    invoke-static {}, Lio/bidmachine/rendering/model/animation/effect/AnimationBase;->values()[Lio/bidmachine/rendering/model/animation/effect/AnimationBase;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/util/KeyHolder;

    invoke-static {v0, p1}, Lio/bidmachine/util/UtilsKt;->find([Lio/bidmachine/util/KeyHolder;Ljava/lang/String;)Lio/bidmachine/util/KeyHolder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/model/animation/effect/AnimationBase;

    return-object p1
.end method
