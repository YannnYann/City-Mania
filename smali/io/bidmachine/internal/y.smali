###### Class io.bidmachine.internal.y (io.bidmachine.internal.y)
.class public final enum Lio/bidmachine/internal/y;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/internal/y$a;
    }
.end annotation


# static fields
.field public static final b:Lio/bidmachine/internal/y$a;

.field public static final enum c:Lio/bidmachine/internal/y;

.field public static final enum d:Lio/bidmachine/internal/y;

.field public static final enum e:Lio/bidmachine/internal/y;

.field public static final synthetic f:[Lio/bidmachine/internal/y;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/internal/y;

    const-string v1, "STRICT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/bidmachine/internal/y;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/internal/y;->c:Lio/bidmachine/internal/y;

    .line 2
    new-instance v0, Lio/bidmachine/internal/y;

    const-string v1, "MODERATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lio/bidmachine/internal/y;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/internal/y;->d:Lio/bidmachine/internal/y;

    .line 3
    new-instance v0, Lio/bidmachine/internal/y;

    const-string v1, "OPEN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lio/bidmachine/internal/y;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/internal/y;->e:Lio/bidmachine/internal/y;

    invoke-static {}, Lio/bidmachine/internal/y;->a()[Lio/bidmachine/internal/y;

    move-result-object v0

    sput-object v0, Lio/bidmachine/internal/y;->f:[Lio/bidmachine/internal/y;

    new-instance v0, Lio/bidmachine/internal/y$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/internal/y$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/internal/y;->b:Lio/bidmachine/internal/y$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/bidmachine/internal/y;->a:I

    return-void
.end method

.method public static final a(Ljava/lang/Integer;)Lio/bidmachine/internal/y;
    .registers 2

    .line 2
    sget-object v0, Lio/bidmachine/internal/y;->b:Lio/bidmachine/internal/y$a;

    invoke-virtual {v0, p0}, Lio/bidmachine/internal/y$a;->a(Ljava/lang/Integer;)Lio/bidmachine/internal/y;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a()[Lio/bidmachine/internal/y;
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/internal/y;->c:Lio/bidmachine/internal/y;

    sget-object v1, Lio/bidmachine/internal/y;->d:Lio/bidmachine/internal/y;

    sget-object v2, Lio/bidmachine/internal/y;->e:Lio/bidmachine/internal/y;

    filled-new-array {v0, v1, v2}, [Lio/bidmachine/internal/y;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/internal/y;
    .registers 2

    .line 1
    const-class v0, Lio/bidmachine/internal/y;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/internal/y;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/internal/y;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/internal/y;->f:[Lio/bidmachine/internal/y;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/internal/y;

    return-object v0
.end method


# virtual methods
.method public final b()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/internal/y;->a:I

    return v0
.end method

###### Class io.bidmachine.internal.y.a (io.bidmachine.internal.y$a)
.class public final Lio/bidmachine/internal/y$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/internal/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
    invoke-direct {p0}, Lio/bidmachine/internal/y$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)Lio/bidmachine/internal/y;
    .registers 8

    .line 1
    invoke-static {}, Lio/bidmachine/internal/y;->values()[Lio/bidmachine/internal/y;

    move-result-object v0

    .line 6
    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_1b

    aget-object v3, v0, v2

    .line 7
    invoke-virtual {v3}, Lio/bidmachine/internal/y;->b()I

    move-result v4

    if-nez p1, :cond_11

    goto :goto_18

    :cond_11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_18

    return-object v3

    :cond_18
    :goto_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1b
    const/4 p1, 0x0

    return-object p1
.end method
