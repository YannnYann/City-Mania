###### Class io.bidmachine.analytics.internal.g.h (io.bidmachine.analytics.internal.g.h)
.class public final Lio/bidmachine/analytics/internal/g/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/g/h$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lio/bidmachine/analytics/internal/g/h$a;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/bidmachine/analytics/internal/g/h$a;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/internal/g/h;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/internal/g/h;->b:Lio/bidmachine/analytics/internal/g/h$a;

    .line 4
    iput-object p3, p0, Lio/bidmachine/analytics/internal/g/h;->c:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lio/bidmachine/analytics/internal/g/h$a;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_6

    .line 5
    const-string p3, ""

    .line 6
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/analytics/internal/g/h;-><init>(Ljava/lang/String;Lio/bidmachine/analytics/internal/g/h$a;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/g/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/g/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lio/bidmachine/analytics/internal/g/h$a;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/g/h;->b:Lio/bidmachine/analytics/internal/g/h$a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lio/bidmachine/analytics/internal/g/h;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/analytics/internal/g/h;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/g/h;->a:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/analytics/internal/g/h;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/bidmachine/analytics/internal/g/h;->b:Lio/bidmachine/analytics/internal/g/h$a;

    iget-object v3, p1, Lio/bidmachine/analytics/internal/g/h;->b:Lio/bidmachine/analytics/internal/g/h$a;

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lio/bidmachine/analytics/internal/g/h;->c:Ljava/lang/String;

    iget-object p1, p1, Lio/bidmachine/analytics/internal/g/h;->c:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    return v2

    :cond_29
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/g/h;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/analytics/internal/g/h;->b:Lio/bidmachine/analytics/internal/g/h$a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/analytics/internal/g/h;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrackerError(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/g/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/g/h;->b:Lio/bidmachine/analytics/internal/g/h$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/g/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.g.h.a (io.bidmachine.analytics.internal.g.h$a)
.class public final enum Lio/bidmachine/analytics/internal/g/h$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/g/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lio/bidmachine/analytics/internal/g/h$a;

.field public static final enum b:Lio/bidmachine/analytics/internal/g/h$a;

.field public static final enum c:Lio/bidmachine/analytics/internal/g/h$a;

.field public static final enum d:Lio/bidmachine/analytics/internal/g/h$a;

.field public static final enum e:Lio/bidmachine/analytics/internal/g/h$a;

.field public static final enum f:Lio/bidmachine/analytics/internal/g/h$a;

.field public static final enum g:Lio/bidmachine/analytics/internal/g/h$a;

.field public static final enum h:Lio/bidmachine/analytics/internal/g/h$a;

.field private static final synthetic i:[Lio/bidmachine/analytics/internal/g/h$a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/g/h$a;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/analytics/internal/g/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/analytics/internal/g/h$a;->a:Lio/bidmachine/analytics/internal/g/h$a;

    .line 5
    new-instance v0, Lio/bidmachine/analytics/internal/g/h$a;

    const-string v1, "MONITOR_INVALID"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/analytics/internal/g/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/analytics/internal/g/h$a;->b:Lio/bidmachine/analytics/internal/g/h$a;

    .line 9
    new-instance v0, Lio/bidmachine/analytics/internal/g/h$a;

    const-string v1, "MONITOR_NO_CONTENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/analytics/internal/g/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/analytics/internal/g/h$a;->c:Lio/bidmachine/analytics/internal/g/h$a;

    .line 13
    new-instance v0, Lio/bidmachine/analytics/internal/g/h$a;

    const-string v1, "MONITOR_BAD_CONTENT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/bidmachine/analytics/internal/g/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/analytics/internal/g/h$a;->d:Lio/bidmachine/analytics/internal/g/h$a;

    .line 17
    new-instance v0, Lio/bidmachine/analytics/internal/g/h$a;

    const-string v1, "READER_INVALID"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/bidmachine/analytics/internal/g/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/analytics/internal/g/h$a;->e:Lio/bidmachine/analytics/internal/g/h$a;

    .line 21
    new-instance v0, Lio/bidmachine/analytics/internal/g/h$a;

    const-string v1, "READER_NO_CONTENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/bidmachine/analytics/internal/g/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/analytics/internal/g/h$a;->f:Lio/bidmachine/analytics/internal/g/h$a;

    .line 25
    new-instance v0, Lio/bidmachine/analytics/internal/g/h$a;

    const-string v1, "READER_BAD_CONTENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lio/bidmachine/analytics/internal/g/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/analytics/internal/g/h$a;->g:Lio/bidmachine/analytics/internal/g/h$a;

    .line 29
    new-instance v0, Lio/bidmachine/analytics/internal/g/h$a;

    const-string v1, "READER_NO_ACCESS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lio/bidmachine/analytics/internal/g/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/analytics/internal/g/h$a;->h:Lio/bidmachine/analytics/internal/g/h$a;

    invoke-static {}, Lio/bidmachine/analytics/internal/g/h$a;->a()[Lio/bidmachine/analytics/internal/g/h$a;

    move-result-object v0

    sput-object v0, Lio/bidmachine/analytics/internal/g/h$a;->i:[Lio/bidmachine/analytics/internal/g/h$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final synthetic a()[Lio/bidmachine/analytics/internal/g/h$a;
    .registers 8

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/g/h$a;->a:Lio/bidmachine/analytics/internal/g/h$a;

    sget-object v1, Lio/bidmachine/analytics/internal/g/h$a;->b:Lio/bidmachine/analytics/internal/g/h$a;

    sget-object v2, Lio/bidmachine/analytics/internal/g/h$a;->c:Lio/bidmachine/analytics/internal/g/h$a;

    sget-object v3, Lio/bidmachine/analytics/internal/g/h$a;->d:Lio/bidmachine/analytics/internal/g/h$a;

    sget-object v4, Lio/bidmachine/analytics/internal/g/h$a;->e:Lio/bidmachine/analytics/internal/g/h$a;

    sget-object v5, Lio/bidmachine/analytics/internal/g/h$a;->f:Lio/bidmachine/analytics/internal/g/h$a;

    sget-object v6, Lio/bidmachine/analytics/internal/g/h$a;->g:Lio/bidmachine/analytics/internal/g/h$a;

    sget-object v7, Lio/bidmachine/analytics/internal/g/h$a;->h:Lio/bidmachine/analytics/internal/g/h$a;

    filled-new-array/range {v0 .. v7}, [Lio/bidmachine/analytics/internal/g/h$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/analytics/internal/g/h$a;
    .registers 2

    .line 1
    const-class v0, Lio/bidmachine/analytics/internal/g/h$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/analytics/internal/g/h$a;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/analytics/internal/g/h$a;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/g/h$a;->i:[Lio/bidmachine/analytics/internal/g/h$a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/analytics/internal/g/h$a;

    return-object v0
.end method
