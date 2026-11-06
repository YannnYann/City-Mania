###### Class io.bidmachine.rendering.model.PrivacySheetParams (io.bidmachine.rendering.model.PrivacySheetParams)
.class public final Lio/bidmachine/rendering/model/PrivacySheetParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/PrivacySheetParams$Action;,
        Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/PrivacySheetParams$Action;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subtitle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "footerTitle"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "footerText"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/model/PrivacySheetParams;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/model/PrivacySheetParams;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lio/bidmachine/rendering/model/PrivacySheetParams;->c:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lio/bidmachine/rendering/model/PrivacySheetParams;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lio/bidmachine/rendering/model/PrivacySheetParams;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/bidmachine/rendering/model/PrivacySheetParams;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/rendering/model/PrivacySheetParams;

    iget-object v1, p0, Lio/bidmachine/rendering/model/PrivacySheetParams;->a:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/rendering/model/PrivacySheetParams;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/bidmachine/rendering/model/PrivacySheetParams;->b:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/rendering/model/PrivacySheetParams;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lio/bidmachine/rendering/model/PrivacySheetParams;->c:Ljava/util/List;

    iget-object v3, p1, Lio/bidmachine/rendering/model/PrivacySheetParams;->c:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lio/bidmachine/rendering/model/PrivacySheetParams;->d:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/rendering/model/PrivacySheetParams;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lio/bidmachine/rendering/model/PrivacySheetParams;->e:Ljava/lang/String;

    iget-object p1, p1, Lio/bidmachine/rendering/model/PrivacySheetParams;->e:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_43

    return v2

    :cond_43
    return v0
.end method

.method public final getActions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/PrivacySheetParams$Action;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/PrivacySheetParams;->c:Ljava/util/List;

    return-object v0
.end method

.method public final getFooterText()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/PrivacySheetParams;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getFooterTitle()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/PrivacySheetParams;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubtitle()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/PrivacySheetParams;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/PrivacySheetParams;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/model/PrivacySheetParams;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/rendering/model/PrivacySheetParams;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/rendering/model/PrivacySheetParams;->c:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/rendering/model/PrivacySheetParams;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/rendering/model/PrivacySheetParams;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrivacySheetParams(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/model/PrivacySheetParams;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subtitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/model/PrivacySheetParams;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/model/PrivacySheetParams;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", footerTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/model/PrivacySheetParams;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", footerText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/model/PrivacySheetParams;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.model.PrivacySheetParams.Action (io.bidmachine.rendering.model.PrivacySheetParams$Action)
.class public final Lio/bidmachine/rendering/model/PrivacySheetParams$Action;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/PrivacySheetParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Action"
.end annotation


# instance fields
.field public final a:Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/model/PrivacySheetParams$Action;->a:Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;

    iput-object p2, p0, Lio/bidmachine/rendering/model/PrivacySheetParams$Action;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/bidmachine/rendering/model/PrivacySheetParams$Action;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/rendering/model/PrivacySheetParams$Action;-><init>(Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iput-object p4, p0, Lio/bidmachine/rendering/model/PrivacySheetParams$Action;->d:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/bidmachine/rendering/model/PrivacySheetParams$Action;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/rendering/model/PrivacySheetParams$Action;

    iget-object v1, p0, Lio/bidmachine/rendering/model/PrivacySheetParams$Action;->a:Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;

    iget-object v3, p1, Lio/bidmachine/rendering/model/PrivacySheetParams$Action;->a:Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lio/bidmachine/rendering/model/PrivacySheetParams$Action;->b:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/rendering/model/PrivacySheetParams$Action;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lio/bidmachine/rendering/model/PrivacySheetParams$Action;->c:Ljava/lang/String;

    iget-object p1, p1, Lio/bidmachine/rendering/model/PrivacySheetParams$Action;->c:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    return v2

    :cond_29
    return v0
.end method

.method public final getData()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/PrivacySheetParams$Action;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getIcon()Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/PrivacySheetParams$Action;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/PrivacySheetParams$Action;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/PrivacySheetParams$Action;->a:Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/model/PrivacySheetParams$Action;->a:Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/rendering/model/PrivacySheetParams$Action;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/rendering/model/PrivacySheetParams$Action;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/model/PrivacySheetParams$Action;->a:Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/model/PrivacySheetParams$Action;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/model/PrivacySheetParams$Action;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.model.PrivacySheetParams.ActionType (io.bidmachine.rendering.model.PrivacySheetParams$ActionType)
.class public final enum Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/PrivacySheetParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COPY_TO_CLIPBOARD:Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;

.field public static final enum REDIRECT:Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;

.field public static final synthetic a:[Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;

    const-string v1, "REDIRECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;->REDIRECT:Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;

    .line 2
    new-instance v0, Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;

    const-string v1, "COPY_TO_CLIPBOARD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;->COPY_TO_CLIPBOARD:Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;

    invoke-static {}, Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;->a()[Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;

    move-result-object v0

    sput-object v0, Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;->a:[Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic a()[Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;
    .registers 2

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;->REDIRECT:Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;

    sget-object v1, Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;->COPY_TO_CLIPBOARD:Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;

    filled-new-array {v0, v1}, [Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;->a:[Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;

    return-object v0
.end method
