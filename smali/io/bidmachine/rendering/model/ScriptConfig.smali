###### Class io.bidmachine.rendering.model.ScriptConfig (io.bidmachine.rendering.model.ScriptConfig)
.class public final Lio/bidmachine/rendering/model/ScriptConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/ScriptConfig$Companion;,
        Lio/bidmachine/rendering/model/ScriptConfig$Type;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/rendering/model/ScriptConfig$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Lio/bidmachine/rendering/model/ScriptConfig$Type;

.field public final d:Z

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/rendering/model/ScriptConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/model/ScriptConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/model/ScriptConfig;->Companion:Lio/bidmachine/rendering/model/ScriptConfig$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILio/bidmachine/rendering/model/ScriptConfig$Type;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string v0, "scriptId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/model/ScriptConfig;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lio/bidmachine/rendering/model/ScriptConfig;->b:I

    .line 4
    iput-object p3, p0, Lio/bidmachine/rendering/model/ScriptConfig;->c:Lio/bidmachine/rendering/model/ScriptConfig$Type;

    .line 5
    iput-boolean p4, p0, Lio/bidmachine/rendering/model/ScriptConfig;->d:Z

    .line 6
    iput-object p5, p0, Lio/bidmachine/rendering/model/ScriptConfig;->e:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lio/bidmachine/rendering/model/ScriptConfig;->f:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILio/bidmachine/rendering/model/ScriptConfig$Type;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 16

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    const/4 p6, 0x0

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 8
    invoke-direct/range {v0 .. v6}, Lio/bidmachine/rendering/model/ScriptConfig;-><init>(Ljava/lang/String;ILio/bidmachine/rendering/model/ScriptConfig$Type;ZLjava/lang/String;Ljava/lang/String;)V

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
    instance-of v1, p1, Lio/bidmachine/rendering/model/ScriptConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/rendering/model/ScriptConfig;

    iget-object v1, p0, Lio/bidmachine/rendering/model/ScriptConfig;->a:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/rendering/model/ScriptConfig;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lio/bidmachine/rendering/model/ScriptConfig;->b:I

    iget v3, p1, Lio/bidmachine/rendering/model/ScriptConfig;->b:I

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lio/bidmachine/rendering/model/ScriptConfig;->c:Lio/bidmachine/rendering/model/ScriptConfig$Type;

    iget-object v3, p1, Lio/bidmachine/rendering/model/ScriptConfig;->c:Lio/bidmachine/rendering/model/ScriptConfig$Type;

    if-eq v1, v3, :cond_25

    return v2

    :cond_25
    iget-boolean v1, p0, Lio/bidmachine/rendering/model/ScriptConfig;->d:Z

    iget-boolean v3, p1, Lio/bidmachine/rendering/model/ScriptConfig;->d:Z

    if-eq v1, v3, :cond_2c

    return v2

    :cond_2c
    iget-object v1, p0, Lio/bidmachine/rendering/model/ScriptConfig;->e:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/rendering/model/ScriptConfig;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    return v2

    :cond_37
    iget-object v1, p0, Lio/bidmachine/rendering/model/ScriptConfig;->f:Ljava/lang/String;

    iget-object p1, p1, Lio/bidmachine/rendering/model/ScriptConfig;->f:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_42

    return v2

    :cond_42
    return v0
.end method

.method public final getForMainFrameOnly()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/rendering/model/ScriptConfig;->d:Z

    return v0
.end method

.method public final getMessageHandler()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/ScriptConfig;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriority()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/model/ScriptConfig;->b:I

    return v0
.end method

.method public final getScriptId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/ScriptConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getSource()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/ScriptConfig;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lio/bidmachine/rendering/model/ScriptConfig$Type;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/ScriptConfig;->c:Lio/bidmachine/rendering/model/ScriptConfig$Type;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/model/ScriptConfig;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/bidmachine/rendering/model/ScriptConfig;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/rendering/model/ScriptConfig;->c:Lio/bidmachine/rendering/model/ScriptConfig$Type;

    const/4 v2, 0x0

    if-nez v1, :cond_18

    move v1, v2

    goto :goto_1c

    :cond_18
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lio/bidmachine/rendering/model/ScriptConfig;->d:Z

    if-eqz v1, :cond_24

    const/4 v1, 0x1

    :cond_24
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/rendering/model/ScriptConfig;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/rendering/model/ScriptConfig;->f:Ljava/lang/String;

    if-nez v1, :cond_35

    goto :goto_39

    :cond_35
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_39
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScriptConfig(scriptId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/model/ScriptConfig;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/rendering/model/ScriptConfig;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/model/ScriptConfig;->c:Lio/bidmachine/rendering/model/ScriptConfig$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", forMainFrameOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/bidmachine/rendering/model/ScriptConfig;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/model/ScriptConfig;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", messageHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/model/ScriptConfig;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.model.ScriptConfig.Companion (io.bidmachine.rendering.model.ScriptConfig$Companion)
.class public final Lio/bidmachine/rendering/model/ScriptConfig$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/ScriptConfig;
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
    invoke-direct {p0}, Lio/bidmachine/rendering/model/ScriptConfig$Companion;-><init>()V

    return-void
.end method

.method public static synthetic createInline$default(Lio/bidmachine/rendering/model/ScriptConfig$Companion;Ljava/lang/String;ILjava/lang/String;ZILjava/lang/Object;)Lio/bidmachine/rendering/model/ScriptConfig;
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    const/4 p4, 0x0

    .line 1
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/rendering/model/ScriptConfig$Companion;->createInline(Ljava/lang/String;ILjava/lang/String;Z)Lio/bidmachine/rendering/model/ScriptConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createInline(Ljava/lang/String;ILjava/lang/String;Z)Lio/bidmachine/rendering/model/ScriptConfig;
    .registers 15

    const-string v0, "scriptId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lio/bidmachine/rendering/model/ScriptConfig;

    .line 4
    sget-object v4, Lio/bidmachine/rendering/model/ScriptConfig$Type;->InlineTag:Lio/bidmachine/rendering/model/ScriptConfig$Type;

    if-eqz p4, :cond_14

    .line 7
    invoke-static {p3}, Lio/bidmachine/iab/script/ScriptWrapper;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_14
    move-object v6, p3

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v2, p1

    move v3, p2

    .line 8
    invoke-direct/range {v1 .. v9}, Lio/bidmachine/rendering/model/ScriptConfig;-><init>(Ljava/lang/String;ILio/bidmachine/rendering/model/ScriptConfig$Type;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

###### Class io.bidmachine.rendering.model.ScriptConfig.Type (io.bidmachine.rendering.model.ScriptConfig$Type)
.class public final enum Lio/bidmachine/rendering/model/ScriptConfig$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/ScriptConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/rendering/model/ScriptConfig$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DocumentEnd:Lio/bidmachine/rendering/model/ScriptConfig$Type;

.field public static final enum DocumentStart:Lio/bidmachine/rendering/model/ScriptConfig$Type;

.field public static final enum InlineTag:Lio/bidmachine/rendering/model/ScriptConfig$Type;

.field public static final enum Runtime:Lio/bidmachine/rendering/model/ScriptConfig$Type;

.field public static final synthetic a:[Lio/bidmachine/rendering/model/ScriptConfig$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/rendering/model/ScriptConfig$Type;

    const-string v1, "DocumentStart"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/model/ScriptConfig$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/model/ScriptConfig$Type;->DocumentStart:Lio/bidmachine/rendering/model/ScriptConfig$Type;

    .line 2
    new-instance v0, Lio/bidmachine/rendering/model/ScriptConfig$Type;

    const-string v1, "DocumentEnd"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/model/ScriptConfig$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/model/ScriptConfig$Type;->DocumentEnd:Lio/bidmachine/rendering/model/ScriptConfig$Type;

    .line 3
    new-instance v0, Lio/bidmachine/rendering/model/ScriptConfig$Type;

    const-string v1, "InlineTag"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/model/ScriptConfig$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/model/ScriptConfig$Type;->InlineTag:Lio/bidmachine/rendering/model/ScriptConfig$Type;

    .line 4
    new-instance v0, Lio/bidmachine/rendering/model/ScriptConfig$Type;

    const-string v1, "Runtime"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/model/ScriptConfig$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/model/ScriptConfig$Type;->Runtime:Lio/bidmachine/rendering/model/ScriptConfig$Type;

    invoke-static {}, Lio/bidmachine/rendering/model/ScriptConfig$Type;->a()[Lio/bidmachine/rendering/model/ScriptConfig$Type;

    move-result-object v0

    sput-object v0, Lio/bidmachine/rendering/model/ScriptConfig$Type;->a:[Lio/bidmachine/rendering/model/ScriptConfig$Type;

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

.method public static final synthetic a()[Lio/bidmachine/rendering/model/ScriptConfig$Type;
    .registers 4

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/ScriptConfig$Type;->DocumentStart:Lio/bidmachine/rendering/model/ScriptConfig$Type;

    sget-object v1, Lio/bidmachine/rendering/model/ScriptConfig$Type;->DocumentEnd:Lio/bidmachine/rendering/model/ScriptConfig$Type;

    sget-object v2, Lio/bidmachine/rendering/model/ScriptConfig$Type;->InlineTag:Lio/bidmachine/rendering/model/ScriptConfig$Type;

    sget-object v3, Lio/bidmachine/rendering/model/ScriptConfig$Type;->Runtime:Lio/bidmachine/rendering/model/ScriptConfig$Type;

    filled-new-array {v0, v1, v2, v3}, [Lio/bidmachine/rendering/model/ScriptConfig$Type;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/rendering/model/ScriptConfig$Type;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/rendering/model/ScriptConfig$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/rendering/model/ScriptConfig$Type;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/rendering/model/ScriptConfig$Type;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/ScriptConfig$Type;->a:[Lio/bidmachine/rendering/model/ScriptConfig$Type;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/rendering/model/ScriptConfig$Type;

    return-object v0
.end method
