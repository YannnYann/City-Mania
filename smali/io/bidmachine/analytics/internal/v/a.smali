###### Class io.bidmachine.analytics.internal.v.a (io.bidmachine.analytics.internal.v.a)
.class public final Lio/bidmachine/analytics/internal/v/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/v/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lio/bidmachine/analytics/internal/v/a$a;

.field private final c:Ljava/util/Date;

.field private final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/bidmachine/analytics/internal/v/a$a;Ljava/util/Date;Z)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/internal/v/a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/internal/v/a;->b:Lio/bidmachine/analytics/internal/v/a$a;

    .line 4
    iput-object p3, p0, Lio/bidmachine/analytics/internal/v/a;->c:Ljava/util/Date;

    .line 5
    iput-boolean p4, p0, Lio/bidmachine/analytics/internal/v/a;->d:Z

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/analytics/internal/v/a;Ljava/lang/String;Lio/bidmachine/analytics/internal/v/a$a;Ljava/util/Date;ZILjava/lang/Object;)Lio/bidmachine/analytics/internal/v/a;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    .line 2
    iget-object p1, p0, Lio/bidmachine/analytics/internal/v/a;->a:Ljava/lang/String;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lio/bidmachine/analytics/internal/v/a;->b:Lio/bidmachine/analytics/internal/v/a$a;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lio/bidmachine/analytics/internal/v/a;->c:Ljava/util/Date;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-boolean p4, p0, Lio/bidmachine/analytics/internal/v/a;->d:Z

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/analytics/internal/v/a;->a(Ljava/lang/String;Lio/bidmachine/analytics/internal/v/a$a;Ljava/util/Date;Z)Lio/bidmachine/analytics/internal/v/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lio/bidmachine/analytics/internal/v/a$a;Ljava/util/Date;Z)Lio/bidmachine/analytics/internal/v/a;
    .registers 6

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/v/a;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/bidmachine/analytics/internal/v/a;-><init>(Ljava/lang/String;Lio/bidmachine/analytics/internal/v/a$a;Ljava/util/Date;Z)V

    return-object v0
.end method

.method public final a()Ljava/util/Date;
    .registers 2

    .line 3
    iget-object v0, p0, Lio/bidmachine/analytics/internal/v/a;->c:Ljava/util/Date;

    return-object v0
.end method

.method public final b()Lio/bidmachine/analytics/internal/v/a$a;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/v/a;->b:Lio/bidmachine/analytics/internal/v/a$a;

    return-object v0
.end method

.method public final c()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/analytics/internal/v/a;->d:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lio/bidmachine/analytics/internal/v/a;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/analytics/internal/v/a;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/v/a;->a:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/analytics/internal/v/a;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/bidmachine/analytics/internal/v/a;->b:Lio/bidmachine/analytics/internal/v/a$a;

    iget-object v3, p1, Lio/bidmachine/analytics/internal/v/a;->b:Lio/bidmachine/analytics/internal/v/a$a;

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lio/bidmachine/analytics/internal/v/a;->c:Ljava/util/Date;

    iget-object v3, p1, Lio/bidmachine/analytics/internal/v/a;->c:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-boolean v1, p0, Lio/bidmachine/analytics/internal/v/a;->d:Z

    iget-boolean p1, p1, Lio/bidmachine/analytics/internal/v/a;->d:Z

    if-eq v1, p1, :cond_30

    return v2

    :cond_30
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/v/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/analytics/internal/v/a;->b:Lio/bidmachine/analytics/internal/v/a$a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/analytics/internal/v/a;->c:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lio/bidmachine/analytics/internal/v/a;->d:Z

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.v.a.EnumC1154a (io.bidmachine.analytics.internal.v.a$a)
.class public final enum Lio/bidmachine/analytics/internal/v/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/v/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lio/bidmachine/analytics/internal/v/a$a;

.field public static final enum b:Lio/bidmachine/analytics/internal/v/a$a;

.field public static final enum c:Lio/bidmachine/analytics/internal/v/a$a;

.field public static final enum d:Lio/bidmachine/analytics/internal/v/a$a;

.field private static final synthetic e:[Lio/bidmachine/analytics/internal/v/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/v/a$a;

    const-string v1, "INAPP_CONSUMABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/analytics/internal/v/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/analytics/internal/v/a$a;->a:Lio/bidmachine/analytics/internal/v/a$a;

    .line 2
    new-instance v0, Lio/bidmachine/analytics/internal/v/a$a;

    const-string v1, "INAPP_NON_CONSUMABLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/analytics/internal/v/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/analytics/internal/v/a$a;->b:Lio/bidmachine/analytics/internal/v/a$a;

    .line 3
    new-instance v0, Lio/bidmachine/analytics/internal/v/a$a;

    const-string v1, "SUBS_AUTO_RENEWABLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/analytics/internal/v/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/analytics/internal/v/a$a;->c:Lio/bidmachine/analytics/internal/v/a$a;

    .line 4
    new-instance v0, Lio/bidmachine/analytics/internal/v/a$a;

    const-string v1, "SUBS_NON_AUTO_RENEWABLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/bidmachine/analytics/internal/v/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/analytics/internal/v/a$a;->d:Lio/bidmachine/analytics/internal/v/a$a;

    invoke-static {}, Lio/bidmachine/analytics/internal/v/a$a;->a()[Lio/bidmachine/analytics/internal/v/a$a;

    move-result-object v0

    sput-object v0, Lio/bidmachine/analytics/internal/v/a$a;->e:[Lio/bidmachine/analytics/internal/v/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final synthetic a()[Lio/bidmachine/analytics/internal/v/a$a;
    .registers 4

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/v/a$a;->a:Lio/bidmachine/analytics/internal/v/a$a;

    sget-object v1, Lio/bidmachine/analytics/internal/v/a$a;->b:Lio/bidmachine/analytics/internal/v/a$a;

    sget-object v2, Lio/bidmachine/analytics/internal/v/a$a;->c:Lio/bidmachine/analytics/internal/v/a$a;

    sget-object v3, Lio/bidmachine/analytics/internal/v/a$a;->d:Lio/bidmachine/analytics/internal/v/a$a;

    filled-new-array {v0, v1, v2, v3}, [Lio/bidmachine/analytics/internal/v/a$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/analytics/internal/v/a$a;
    .registers 2

    .line 1
    const-class v0, Lio/bidmachine/analytics/internal/v/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/analytics/internal/v/a$a;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/analytics/internal/v/a$a;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/v/a$a;->e:[Lio/bidmachine/analytics/internal/v/a$a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/analytics/internal/v/a$a;

    return-object v0
.end method
