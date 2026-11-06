###### Class io.bidmachine.analytics.Filter (io.bidmachine.analytics.Filter)
.class public final Lio/bidmachine/analytics/Filter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/Filter$Expression;,
        Lio/bidmachine/analytics/Filter$Value;,
        Lio/bidmachine/analytics/Filter$Operator;,
        Lio/bidmachine/analytics/Filter$MissingBehavior;
    }
.end annotation


# instance fields
.field private final a:Lio/bidmachine/analytics/Filter$Expression;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/Filter$Expression;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/Filter;->a:Lio/bidmachine/analytics/Filter$Expression;

    return-void
.end method

.method public static synthetic copy$default(Lio/bidmachine/analytics/Filter;Lio/bidmachine/analytics/Filter$Expression;ILjava/lang/Object;)Lio/bidmachine/analytics/Filter;
    .registers 4

    .line 0
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lio/bidmachine/analytics/Filter;->a:Lio/bidmachine/analytics/Filter$Expression;

    :cond_6
    invoke-virtual {p0, p1}, Lio/bidmachine/analytics/Filter;->copy(Lio/bidmachine/analytics/Filter$Expression;)Lio/bidmachine/analytics/Filter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lio/bidmachine/analytics/Filter$Expression;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/analytics/Filter;->a:Lio/bidmachine/analytics/Filter$Expression;

    return-object v0
.end method

.method public final copy(Lio/bidmachine/analytics/Filter$Expression;)Lio/bidmachine/analytics/Filter;
    .registers 3

    .line 0
    new-instance v0, Lio/bidmachine/analytics/Filter;

    invoke-direct {v0, p1}, Lio/bidmachine/analytics/Filter;-><init>(Lio/bidmachine/analytics/Filter$Expression;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/bidmachine/analytics/Filter;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/analytics/Filter;

    iget-object v1, p0, Lio/bidmachine/analytics/Filter;->a:Lio/bidmachine/analytics/Filter$Expression;

    iget-object p1, p1, Lio/bidmachine/analytics/Filter;->a:Lio/bidmachine/analytics/Filter$Expression;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getExpression()Lio/bidmachine/analytics/Filter$Expression;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/Filter;->a:Lio/bidmachine/analytics/Filter$Expression;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/analytics/Filter;->a:Lio/bidmachine/analytics/Filter$Expression;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Filter(expression="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/analytics/Filter;->a:Lio/bidmachine/analytics/Filter$Expression;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.Filter.Expression (io.bidmachine.analytics.Filter$Expression)
.class public interface abstract Lio/bidmachine/analytics/Filter$Expression;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Expression"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/Filter$Expression$AllOf;,
        Lio/bidmachine/analytics/Filter$Expression$AnyOf;,
        Lio/bidmachine/analytics/Filter$Expression$Rule;
    }
.end annotation

###### Class io.bidmachine.analytics.Filter.Expression.AllOf (io.bidmachine.analytics.Filter$Expression$AllOf)
.class public final Lio/bidmachine/analytics/Filter$Expression$AllOf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/Filter$Expression;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/Filter$Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AllOf"
.end annotation


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/analytics/Filter$Expression;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/analytics/Filter$Expression$AllOf;->a:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lio/bidmachine/analytics/Filter$Expression$AllOf;Ljava/util/List;ILjava/lang/Object;)Lio/bidmachine/analytics/Filter$Expression$AllOf;
    .registers 4

    .line 0
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lio/bidmachine/analytics/Filter$Expression$AllOf;->a:Ljava/util/List;

    :cond_6
    invoke-virtual {p0, p1}, Lio/bidmachine/analytics/Filter$Expression$AllOf;->copy(Ljava/util/List;)Lio/bidmachine/analytics/Filter$Expression$AllOf;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/analytics/Filter$Expression;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lio/bidmachine/analytics/Filter$Expression$AllOf;->a:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/util/List;)Lio/bidmachine/analytics/Filter$Expression$AllOf;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/analytics/Filter$Expression;",
            ">;)",
            "Lio/bidmachine/analytics/Filter$Expression$AllOf;"
        }
    .end annotation

    .line 0
    new-instance v0, Lio/bidmachine/analytics/Filter$Expression$AllOf;

    invoke-direct {v0, p1}, Lio/bidmachine/analytics/Filter$Expression$AllOf;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/bidmachine/analytics/Filter$Expression$AllOf;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/analytics/Filter$Expression$AllOf;

    iget-object v1, p0, Lio/bidmachine/analytics/Filter$Expression$AllOf;->a:Ljava/util/List;

    iget-object p1, p1, Lio/bidmachine/analytics/Filter$Expression$AllOf;->a:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getExpressions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/analytics/Filter$Expression;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/Filter$Expression$AllOf;->a:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/analytics/Filter$Expression$AllOf;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AllOf(expressions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/analytics/Filter$Expression$AllOf;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.Filter.Expression.AnyOf (io.bidmachine.analytics.Filter$Expression$AnyOf)
.class public final Lio/bidmachine/analytics/Filter$Expression$AnyOf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/Filter$Expression;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/Filter$Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnyOf"
.end annotation


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/analytics/Filter$Expression;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/analytics/Filter$Expression$AnyOf;->a:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lio/bidmachine/analytics/Filter$Expression$AnyOf;Ljava/util/List;ILjava/lang/Object;)Lio/bidmachine/analytics/Filter$Expression$AnyOf;
    .registers 4

    .line 0
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lio/bidmachine/analytics/Filter$Expression$AnyOf;->a:Ljava/util/List;

    :cond_6
    invoke-virtual {p0, p1}, Lio/bidmachine/analytics/Filter$Expression$AnyOf;->copy(Ljava/util/List;)Lio/bidmachine/analytics/Filter$Expression$AnyOf;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/analytics/Filter$Expression;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lio/bidmachine/analytics/Filter$Expression$AnyOf;->a:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/util/List;)Lio/bidmachine/analytics/Filter$Expression$AnyOf;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/analytics/Filter$Expression;",
            ">;)",
            "Lio/bidmachine/analytics/Filter$Expression$AnyOf;"
        }
    .end annotation

    .line 0
    new-instance v0, Lio/bidmachine/analytics/Filter$Expression$AnyOf;

    invoke-direct {v0, p1}, Lio/bidmachine/analytics/Filter$Expression$AnyOf;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/bidmachine/analytics/Filter$Expression$AnyOf;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/analytics/Filter$Expression$AnyOf;

    iget-object v1, p0, Lio/bidmachine/analytics/Filter$Expression$AnyOf;->a:Ljava/util/List;

    iget-object p1, p1, Lio/bidmachine/analytics/Filter$Expression$AnyOf;->a:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getExpressions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/analytics/Filter$Expression;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/Filter$Expression$AnyOf;->a:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/analytics/Filter$Expression$AnyOf;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnyOf(expressions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/analytics/Filter$Expression$AnyOf;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.Filter.Expression.Rule (io.bidmachine.analytics.Filter$Expression$Rule)
.class public final Lio/bidmachine/analytics/Filter$Expression$Rule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/Filter$Expression;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/Filter$Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rule"
.end annotation


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Lio/bidmachine/analytics/Filter$Operator;

.field private final c:Ljava/util/List;

.field private final d:Lio/bidmachine/analytics/Filter$MissingBehavior;


# direct methods
.method public constructor <init>(Ljava/util/List;Lio/bidmachine/analytics/Filter$Operator;Ljava/util/List;Lio/bidmachine/analytics/Filter$MissingBehavior;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/bidmachine/analytics/Filter$Operator;",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/analytics/Filter$Value;",
            ">;",
            "Lio/bidmachine/analytics/Filter$MissingBehavior;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/Filter$Expression$Rule;->a:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/Filter$Expression$Rule;->b:Lio/bidmachine/analytics/Filter$Operator;

    .line 4
    iput-object p3, p0, Lio/bidmachine/analytics/Filter$Expression$Rule;->c:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lio/bidmachine/analytics/Filter$Expression$Rule;->d:Lio/bidmachine/analytics/Filter$MissingBehavior;

    return-void
.end method

.method public static synthetic copy$default(Lio/bidmachine/analytics/Filter$Expression$Rule;Ljava/util/List;Lio/bidmachine/analytics/Filter$Operator;Ljava/util/List;Lio/bidmachine/analytics/Filter$MissingBehavior;ILjava/lang/Object;)Lio/bidmachine/analytics/Filter$Expression$Rule;
    .registers 7

    .line 0
    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lio/bidmachine/analytics/Filter$Expression$Rule;->a:Ljava/util/List;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lio/bidmachine/analytics/Filter$Expression$Rule;->b:Lio/bidmachine/analytics/Filter$Operator;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lio/bidmachine/analytics/Filter$Expression$Rule;->c:Ljava/util/List;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lio/bidmachine/analytics/Filter$Expression$Rule;->d:Lio/bidmachine/analytics/Filter$MissingBehavior;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/analytics/Filter$Expression$Rule;->copy(Ljava/util/List;Lio/bidmachine/analytics/Filter$Operator;Ljava/util/List;Lio/bidmachine/analytics/Filter$MissingBehavior;)Lio/bidmachine/analytics/Filter$Expression$Rule;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lio/bidmachine/analytics/Filter$Expression$Rule;->a:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Lio/bidmachine/analytics/Filter$Operator;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/analytics/Filter$Expression$Rule;->b:Lio/bidmachine/analytics/Filter$Operator;

    return-object v0
.end method

.method public final component3()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/analytics/Filter$Value;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lio/bidmachine/analytics/Filter$Expression$Rule;->c:Ljava/util/List;

    return-object v0
.end method

.method public final component4()Lio/bidmachine/analytics/Filter$MissingBehavior;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/analytics/Filter$Expression$Rule;->d:Lio/bidmachine/analytics/Filter$MissingBehavior;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Lio/bidmachine/analytics/Filter$Operator;Ljava/util/List;Lio/bidmachine/analytics/Filter$MissingBehavior;)Lio/bidmachine/analytics/Filter$Expression$Rule;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/bidmachine/analytics/Filter$Operator;",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/analytics/Filter$Value;",
            ">;",
            "Lio/bidmachine/analytics/Filter$MissingBehavior;",
            ")",
            "Lio/bidmachine/analytics/Filter$Expression$Rule;"
        }
    .end annotation

    .line 0
    new-instance v0, Lio/bidmachine/analytics/Filter$Expression$Rule;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/bidmachine/analytics/Filter$Expression$Rule;-><init>(Ljava/util/List;Lio/bidmachine/analytics/Filter$Operator;Ljava/util/List;Lio/bidmachine/analytics/Filter$MissingBehavior;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/bidmachine/analytics/Filter$Expression$Rule;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/analytics/Filter$Expression$Rule;

    iget-object v1, p0, Lio/bidmachine/analytics/Filter$Expression$Rule;->a:Ljava/util/List;

    iget-object v3, p1, Lio/bidmachine/analytics/Filter$Expression$Rule;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/bidmachine/analytics/Filter$Expression$Rule;->b:Lio/bidmachine/analytics/Filter$Operator;

    iget-object v3, p1, Lio/bidmachine/analytics/Filter$Expression$Rule;->b:Lio/bidmachine/analytics/Filter$Operator;

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lio/bidmachine/analytics/Filter$Expression$Rule;->c:Ljava/util/List;

    iget-object v3, p1, Lio/bidmachine/analytics/Filter$Expression$Rule;->c:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lio/bidmachine/analytics/Filter$Expression$Rule;->d:Lio/bidmachine/analytics/Filter$MissingBehavior;

    iget-object p1, p1, Lio/bidmachine/analytics/Filter$Expression$Rule;->d:Lio/bidmachine/analytics/Filter$MissingBehavior;

    if-eq v1, p1, :cond_30

    return v2

    :cond_30
    return v0
.end method

.method public final getMissingBehavior()Lio/bidmachine/analytics/Filter$MissingBehavior;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/Filter$Expression$Rule;->d:Lio/bidmachine/analytics/Filter$MissingBehavior;

    return-object v0
.end method

.method public final getOp()Lio/bidmachine/analytics/Filter$Operator;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/Filter$Expression$Rule;->b:Lio/bidmachine/analytics/Filter$Operator;

    return-object v0
.end method

.method public final getPath()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/Filter$Expression$Rule;->a:Ljava/util/List;

    return-object v0
.end method

.method public final getValues()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/analytics/Filter$Value;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/Filter$Expression$Rule;->c:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/analytics/Filter$Expression$Rule;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/analytics/Filter$Expression$Rule;->b:Lio/bidmachine/analytics/Filter$Operator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/analytics/Filter$Expression$Rule;->c:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/analytics/Filter$Expression$Rule;->d:Lio/bidmachine/analytics/Filter$MissingBehavior;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rule(path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/analytics/Filter$Expression$Rule;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", op="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/analytics/Filter$Expression$Rule;->b:Lio/bidmachine/analytics/Filter$Operator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/analytics/Filter$Expression$Rule;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", missingBehavior="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/analytics/Filter$Expression$Rule;->d:Lio/bidmachine/analytics/Filter$MissingBehavior;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.Filter.MissingBehavior (io.bidmachine.analytics.Filter$MissingBehavior)
.class public final enum Lio/bidmachine/analytics/Filter$MissingBehavior;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MissingBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/analytics/Filter$MissingBehavior;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FAIL:Lio/bidmachine/analytics/Filter$MissingBehavior;

.field public static final enum PASS:Lio/bidmachine/analytics/Filter$MissingBehavior;

.field private static final synthetic b:[Lio/bidmachine/analytics/Filter$MissingBehavior;


# instance fields
.field private final a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/analytics/Filter$MissingBehavior;

    const-string v1, "FAIL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/bidmachine/analytics/Filter$MissingBehavior;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lio/bidmachine/analytics/Filter$MissingBehavior;->FAIL:Lio/bidmachine/analytics/Filter$MissingBehavior;

    .line 2
    new-instance v0, Lio/bidmachine/analytics/Filter$MissingBehavior;

    const-string v1, "PASS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lio/bidmachine/analytics/Filter$MissingBehavior;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lio/bidmachine/analytics/Filter$MissingBehavior;->PASS:Lio/bidmachine/analytics/Filter$MissingBehavior;

    invoke-static {}, Lio/bidmachine/analytics/Filter$MissingBehavior;->a()[Lio/bidmachine/analytics/Filter$MissingBehavior;

    move-result-object v0

    sput-object v0, Lio/bidmachine/analytics/Filter$MissingBehavior;->b:[Lio/bidmachine/analytics/Filter$MissingBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lio/bidmachine/analytics/Filter$MissingBehavior;->a:Z

    return-void
.end method

.method private static final synthetic a()[Lio/bidmachine/analytics/Filter$MissingBehavior;
    .registers 2

    .line 0
    sget-object v0, Lio/bidmachine/analytics/Filter$MissingBehavior;->FAIL:Lio/bidmachine/analytics/Filter$MissingBehavior;

    sget-object v1, Lio/bidmachine/analytics/Filter$MissingBehavior;->PASS:Lio/bidmachine/analytics/Filter$MissingBehavior;

    filled-new-array {v0, v1}, [Lio/bidmachine/analytics/Filter$MissingBehavior;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/analytics/Filter$MissingBehavior;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/analytics/Filter$MissingBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/analytics/Filter$MissingBehavior;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/analytics/Filter$MissingBehavior;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/analytics/Filter$MissingBehavior;->b:[Lio/bidmachine/analytics/Filter$MissingBehavior;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/analytics/Filter$MissingBehavior;

    return-object v0
.end method


# virtual methods
.method public final getValue()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/analytics/Filter$MissingBehavior;->a:Z

    return v0
.end method

###### Class io.bidmachine.analytics.Filter.Operator (io.bidmachine.analytics.Filter$Operator)
.class public final enum Lio/bidmachine/analytics/Filter$Operator;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/analytics/Filter$Operator;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EQ:Lio/bidmachine/analytics/Filter$Operator;

.field public static final enum EXISTS:Lio/bidmachine/analytics/Filter$Operator;

.field public static final enum GT:Lio/bidmachine/analytics/Filter$Operator;

.field public static final enum GTE:Lio/bidmachine/analytics/Filter$Operator;

.field public static final enum IN:Lio/bidmachine/analytics/Filter$Operator;

.field public static final enum LT:Lio/bidmachine/analytics/Filter$Operator;

.field public static final enum LTE:Lio/bidmachine/analytics/Filter$Operator;

.field public static final enum NEQ:Lio/bidmachine/analytics/Filter$Operator;

.field public static final enum NOT_EXISTS:Lio/bidmachine/analytics/Filter$Operator;

.field public static final enum NOT_IN:Lio/bidmachine/analytics/Filter$Operator;

.field private static final synthetic a:[Lio/bidmachine/analytics/Filter$Operator;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/analytics/Filter$Operator;

    const-string v1, "IN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/analytics/Filter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/analytics/Filter$Operator;->IN:Lio/bidmachine/analytics/Filter$Operator;

    .line 5
    new-instance v0, Lio/bidmachine/analytics/Filter$Operator;

    const-string v1, "NOT_IN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/analytics/Filter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/analytics/Filter$Operator;->NOT_IN:Lio/bidmachine/analytics/Filter$Operator;

    .line 9
    new-instance v0, Lio/bidmachine/analytics/Filter$Operator;

    const-string v1, "EQ"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/analytics/Filter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/analytics/Filter$Operator;->EQ:Lio/bidmachine/analytics/Filter$Operator;

    .line 13
    new-instance v0, Lio/bidmachine/analytics/Filter$Operator;

    const-string v1, "NEQ"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/bidmachine/analytics/Filter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/analytics/Filter$Operator;->NEQ:Lio/bidmachine/analytics/Filter$Operator;

    .line 17
    new-instance v0, Lio/bidmachine/analytics/Filter$Operator;

    const-string v1, "GT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/bidmachine/analytics/Filter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/analytics/Filter$Operator;->GT:Lio/bidmachine/analytics/Filter$Operator;

    .line 21
    new-instance v0, Lio/bidmachine/analytics/Filter$Operator;

    const-string v1, "GTE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/bidmachine/analytics/Filter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/analytics/Filter$Operator;->GTE:Lio/bidmachine/analytics/Filter$Operator;

    .line 25
    new-instance v0, Lio/bidmachine/analytics/Filter$Operator;

    const-string v1, "LT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lio/bidmachine/analytics/Filter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/analytics/Filter$Operator;->LT:Lio/bidmachine/analytics/Filter$Operator;

    .line 29
    new-instance v0, Lio/bidmachine/analytics/Filter$Operator;

    const-string v1, "LTE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lio/bidmachine/analytics/Filter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/analytics/Filter$Operator;->LTE:Lio/bidmachine/analytics/Filter$Operator;

    .line 33
    new-instance v0, Lio/bidmachine/analytics/Filter$Operator;

    const-string v1, "EXISTS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lio/bidmachine/analytics/Filter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/analytics/Filter$Operator;->EXISTS:Lio/bidmachine/analytics/Filter$Operator;

    .line 37
    new-instance v0, Lio/bidmachine/analytics/Filter$Operator;

    const-string v1, "NOT_EXISTS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lio/bidmachine/analytics/Filter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/analytics/Filter$Operator;->NOT_EXISTS:Lio/bidmachine/analytics/Filter$Operator;

    invoke-static {}, Lio/bidmachine/analytics/Filter$Operator;->a()[Lio/bidmachine/analytics/Filter$Operator;

    move-result-object v0

    sput-object v0, Lio/bidmachine/analytics/Filter$Operator;->a:[Lio/bidmachine/analytics/Filter$Operator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final synthetic a()[Lio/bidmachine/analytics/Filter$Operator;
    .registers 10

    .line 0
    sget-object v0, Lio/bidmachine/analytics/Filter$Operator;->IN:Lio/bidmachine/analytics/Filter$Operator;

    sget-object v1, Lio/bidmachine/analytics/Filter$Operator;->NOT_IN:Lio/bidmachine/analytics/Filter$Operator;

    sget-object v2, Lio/bidmachine/analytics/Filter$Operator;->EQ:Lio/bidmachine/analytics/Filter$Operator;

    sget-object v3, Lio/bidmachine/analytics/Filter$Operator;->NEQ:Lio/bidmachine/analytics/Filter$Operator;

    sget-object v4, Lio/bidmachine/analytics/Filter$Operator;->GT:Lio/bidmachine/analytics/Filter$Operator;

    sget-object v5, Lio/bidmachine/analytics/Filter$Operator;->GTE:Lio/bidmachine/analytics/Filter$Operator;

    sget-object v6, Lio/bidmachine/analytics/Filter$Operator;->LT:Lio/bidmachine/analytics/Filter$Operator;

    sget-object v7, Lio/bidmachine/analytics/Filter$Operator;->LTE:Lio/bidmachine/analytics/Filter$Operator;

    sget-object v8, Lio/bidmachine/analytics/Filter$Operator;->EXISTS:Lio/bidmachine/analytics/Filter$Operator;

    sget-object v9, Lio/bidmachine/analytics/Filter$Operator;->NOT_EXISTS:Lio/bidmachine/analytics/Filter$Operator;

    filled-new-array/range {v0 .. v9}, [Lio/bidmachine/analytics/Filter$Operator;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/analytics/Filter$Operator;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/analytics/Filter$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/analytics/Filter$Operator;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/analytics/Filter$Operator;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/analytics/Filter$Operator;->a:[Lio/bidmachine/analytics/Filter$Operator;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/analytics/Filter$Operator;

    return-object v0
.end method

###### Class io.bidmachine.analytics.Filter.Value (io.bidmachine.analytics.Filter$Value)
.class public interface abstract Lio/bidmachine/analytics/Filter$Value;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/Filter$Value$StringValue;,
        Lio/bidmachine/analytics/Filter$Value$BoolValue;,
        Lio/bidmachine/analytics/Filter$Value$NumberValue;,
        Lio/bidmachine/analytics/Filter$Value$LongValue;,
        Lio/bidmachine/analytics/Filter$Value$DoubleValue;
    }
.end annotation

###### Class io.bidmachine.analytics.Filter.Value.BoolValue (io.bidmachine.analytics.Filter$Value$BoolValue)
.class public final Lio/bidmachine/analytics/Filter$Value$BoolValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/Filter$Value;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/Filter$Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BoolValue"
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method private synthetic constructor <init>(Z)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/bidmachine/analytics/Filter$Value$BoolValue;->a:Z

    return-void
.end method

.method public static final synthetic box-impl(Z)Lio/bidmachine/analytics/Filter$Value$BoolValue;
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/analytics/Filter$Value$BoolValue;

    invoke-direct {v0, p0}, Lio/bidmachine/analytics/Filter$Value$BoolValue;-><init>(Z)V

    return-object v0
.end method

.method public static constructor-impl(Z)Z
    .registers 1

    .line 0
    return p0
.end method

.method public static equals-impl(ZLjava/lang/Object;)Z
    .registers 4

    .line 0
    instance-of v0, p1, Lio/bidmachine/analytics/Filter$Value$BoolValue;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lio/bidmachine/analytics/Filter$Value$BoolValue;

    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Value$BoolValue;->unbox-impl()Z

    move-result p1

    if-eq p0, p1, :cond_f

    return v1

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(ZZ)Z
    .registers 2

    .line 0
    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static hashCode-impl(Z)I
    .registers 1

    .line 0
    if-eqz p0, :cond_3

    const/4 p0, 0x1

    :cond_3
    return p0
.end method

.method public static toString-impl(Z)Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoolValue(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-boolean v0, p0, Lio/bidmachine/analytics/Filter$Value$BoolValue;->a:Z

    invoke-static {v0, p1}, Lio/bidmachine/analytics/Filter$Value$BoolValue;->equals-impl(ZLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getValue()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/analytics/Filter$Value$BoolValue;->a:Z

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-boolean v0, p0, Lio/bidmachine/analytics/Filter$Value$BoolValue;->a:Z

    invoke-static {v0}, Lio/bidmachine/analytics/Filter$Value$BoolValue;->hashCode-impl(Z)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 0
    iget-boolean v0, p0, Lio/bidmachine/analytics/Filter$Value$BoolValue;->a:Z

    invoke-static {v0}, Lio/bidmachine/analytics/Filter$Value$BoolValue;->toString-impl(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lio/bidmachine/analytics/Filter$Value$BoolValue;->a:Z

    return v0
.end method

###### Class io.bidmachine.analytics.Filter.Value.DoubleValue (io.bidmachine.analytics.Filter$Value$DoubleValue)
.class public final Lio/bidmachine/analytics/Filter$Value$DoubleValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/Filter$Value$NumberValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/Filter$Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DoubleValue"
.end annotation


# instance fields
.field private final a:D


# direct methods
.method private synthetic constructor <init>(D)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/bidmachine/analytics/Filter$Value$DoubleValue;->a:D

    return-void
.end method

.method public static final synthetic box-impl(D)Lio/bidmachine/analytics/Filter$Value$DoubleValue;
    .registers 3

    .line 0
    new-instance v0, Lio/bidmachine/analytics/Filter$Value$DoubleValue;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/analytics/Filter$Value$DoubleValue;-><init>(D)V

    return-object v0
.end method

.method public static constructor-impl(D)D
    .registers 2

    .line 0
    return-wide p0
.end method

.method public static equals-impl(DLjava/lang/Object;)Z
    .registers 7

    .line 0
    instance-of v0, p2, Lio/bidmachine/analytics/Filter$Value$DoubleValue;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p2, Lio/bidmachine/analytics/Filter$Value$DoubleValue;

    invoke-virtual {p2}, Lio/bidmachine/analytics/Filter$Value$DoubleValue;->unbox-impl()D

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-eqz p0, :cond_13

    return v1

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(DD)Z
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static hashCode-impl(D)I
    .registers 2

    .line 0
    invoke-static {p0, p1}, Ljava/lang/Double;->hashCode(D)I

    move-result p0

    return p0
.end method

.method public static toDouble-impl(D)D
    .registers 2

    .line 0
    return-wide p0
.end method

.method public static toString-impl(D)Ljava/lang/String;
    .registers 4

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DoubleValue(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    iget-wide v0, p0, Lio/bidmachine/analytics/Filter$Value$DoubleValue;->a:D

    invoke-static {v0, v1, p1}, Lio/bidmachine/analytics/Filter$Value$DoubleValue;->equals-impl(DLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getValue()D
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/analytics/Filter$Value$DoubleValue;->a:D

    return-wide v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-wide v0, p0, Lio/bidmachine/analytics/Filter$Value$DoubleValue;->a:D

    invoke-static {v0, v1}, Lio/bidmachine/analytics/Filter$Value$DoubleValue;->hashCode-impl(D)I

    move-result v0

    return v0
.end method

.method public toDouble()D
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/analytics/Filter$Value$DoubleValue;->a:D

    invoke-static {v0, v1}, Lio/bidmachine/analytics/Filter$Value$DoubleValue;->toDouble-impl(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    iget-wide v0, p0, Lio/bidmachine/analytics/Filter$Value$DoubleValue;->a:D

    invoke-static {v0, v1}, Lio/bidmachine/analytics/Filter$Value$DoubleValue;->toString-impl(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()D
    .registers 3

    .line 0
    iget-wide v0, p0, Lio/bidmachine/analytics/Filter$Value$DoubleValue;->a:D

    return-wide v0
.end method

###### Class io.bidmachine.analytics.Filter.Value.LongValue (io.bidmachine.analytics.Filter$Value$LongValue)
.class public final Lio/bidmachine/analytics/Filter$Value$LongValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/Filter$Value$NumberValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/Filter$Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LongValue"
.end annotation


# instance fields
.field private final a:J


# direct methods
.method private synthetic constructor <init>(J)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/bidmachine/analytics/Filter$Value$LongValue;->a:J

    return-void
.end method

.method public static final synthetic box-impl(J)Lio/bidmachine/analytics/Filter$Value$LongValue;
    .registers 3

    .line 0
    new-instance v0, Lio/bidmachine/analytics/Filter$Value$LongValue;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/analytics/Filter$Value$LongValue;-><init>(J)V

    return-object v0
.end method

.method public static constructor-impl(J)J
    .registers 2

    .line 0
    return-wide p0
.end method

.method public static equals-impl(JLjava/lang/Object;)Z
    .registers 7

    .line 0
    instance-of v0, p2, Lio/bidmachine/analytics/Filter$Value$LongValue;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p2, Lio/bidmachine/analytics/Filter$Value$LongValue;

    invoke-virtual {p2}, Lio/bidmachine/analytics/Filter$Value$LongValue;->unbox-impl()J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_11

    return v1

    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(JJ)Z
    .registers 4

    .line 0
    cmp-long p0, p0, p2

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static hashCode-impl(J)I
    .registers 2

    .line 0
    invoke-static {p0, p1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public static toDouble-impl(J)D
    .registers 2

    .line 0
    long-to-double p0, p0

    return-wide p0
.end method

.method public static toString-impl(J)Ljava/lang/String;
    .registers 4

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LongValue(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    iget-wide v0, p0, Lio/bidmachine/analytics/Filter$Value$LongValue;->a:J

    invoke-static {v0, v1, p1}, Lio/bidmachine/analytics/Filter$Value$LongValue;->equals-impl(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getValue()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/analytics/Filter$Value$LongValue;->a:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-wide v0, p0, Lio/bidmachine/analytics/Filter$Value$LongValue;->a:J

    invoke-static {v0, v1}, Lio/bidmachine/analytics/Filter$Value$LongValue;->hashCode-impl(J)I

    move-result v0

    return v0
.end method

.method public toDouble()D
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/analytics/Filter$Value$LongValue;->a:J

    invoke-static {v0, v1}, Lio/bidmachine/analytics/Filter$Value$LongValue;->toDouble-impl(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    iget-wide v0, p0, Lio/bidmachine/analytics/Filter$Value$LongValue;->a:J

    invoke-static {v0, v1}, Lio/bidmachine/analytics/Filter$Value$LongValue;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()J
    .registers 3

    .line 0
    iget-wide v0, p0, Lio/bidmachine/analytics/Filter$Value$LongValue;->a:J

    return-wide v0
.end method

###### Class io.bidmachine.analytics.Filter.Value.NumberValue (io.bidmachine.analytics.Filter$Value$NumberValue)
.class public interface abstract Lio/bidmachine/analytics/Filter$Value$NumberValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/Filter$Value;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/Filter$Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NumberValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/analytics/Filter$Value;",
        "Ljava/lang/Comparable<",
        "Lio/bidmachine/analytics/Filter$Value$NumberValue;",
        ">;"
    }
.end annotation


# virtual methods
.method public compareTo(Lio/bidmachine/analytics/Filter$Value$NumberValue;)I
    .registers 6

    .line 2
    invoke-interface {p0}, Lio/bidmachine/analytics/Filter$Value$NumberValue;->toDouble()D

    move-result-wide v0

    invoke-interface {p1}, Lio/bidmachine/analytics/Filter$Value$NumberValue;->toDouble()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/analytics/Filter$Value$NumberValue;

    invoke-interface {p0, p1}, Lio/bidmachine/analytics/Filter$Value$NumberValue;->compareTo(Lio/bidmachine/analytics/Filter$Value$NumberValue;)I

    move-result p1

    return p1
.end method

.method public abstract toDouble()D
.end method

###### Class io.bidmachine.analytics.Filter.Value.StringValue (io.bidmachine.analytics.Filter$Value$StringValue)
.class public final Lio/bidmachine/analytics/Filter$Value$StringValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/Filter$Value;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/Filter$Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringValue"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method private synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/analytics/Filter$Value$StringValue;->a:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic box-impl(Ljava/lang/String;)Lio/bidmachine/analytics/Filter$Value$StringValue;
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/analytics/Filter$Value$StringValue;

    invoke-direct {v0, p0}, Lio/bidmachine/analytics/Filter$Value$StringValue;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static constructor-impl(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static equals-impl(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 4

    .line 0
    instance-of v0, p1, Lio/bidmachine/analytics/Filter$Value$StringValue;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lio/bidmachine/analytics/Filter$Value$StringValue;

    invoke-virtual {p1}, Lio/bidmachine/analytics/Filter$Value$StringValue;->unbox-impl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    return v1

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static hashCode-impl(Ljava/lang/String;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public static toString-impl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StringValue(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/analytics/Filter$Value$StringValue;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lio/bidmachine/analytics/Filter$Value$StringValue;->equals-impl(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getValue()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/Filter$Value$StringValue;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/analytics/Filter$Value$StringValue;->a:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/analytics/Filter$Value$StringValue;->hashCode-impl(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/analytics/Filter$Value$StringValue;->a:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/analytics/Filter$Value$StringValue;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/analytics/Filter$Value$StringValue;->a:Ljava/lang/String;

    return-object v0
.end method
