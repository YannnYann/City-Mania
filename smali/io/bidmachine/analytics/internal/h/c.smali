###### Class io.bidmachine.analytics.internal.h.InterfaceC4123c (io.bidmachine.analytics.internal.h.c)
.class public interface abstract Lio/bidmachine/analytics/internal/h/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/h/c$a;
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/util/List;)V
.end method

###### Class io.bidmachine.analytics.internal.h.InterfaceC4123c.a (io.bidmachine.analytics.internal.h.c$a)
.class public final Lio/bidmachine/analytics/internal/h/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/h/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/bidmachine/analytics/ReaderConfig$Rule;

.field private final b:Ljava/lang/String;

.field private final c:Lio/bidmachine/analytics/internal/g/h;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/ReaderConfig$Rule;Ljava/lang/String;Lio/bidmachine/analytics/internal/g/h;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/internal/h/c$a;->a:Lio/bidmachine/analytics/ReaderConfig$Rule;

    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/internal/h/c$a;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lio/bidmachine/analytics/internal/h/c$a;->c:Lio/bidmachine/analytics/internal/g/h;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/analytics/ReaderConfig$Rule;Ljava/lang/String;Lio/bidmachine/analytics/internal/g/h;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    move-object p3, v0

    .line 5
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/analytics/internal/h/c$a;-><init>(Lio/bidmachine/analytics/ReaderConfig$Rule;Ljava/lang/String;Lio/bidmachine/analytics/internal/g/h;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/h/c$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lio/bidmachine/analytics/internal/g/h;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/h/c$a;->c:Lio/bidmachine/analytics/internal/g/h;

    return-object v0
.end method

.method public final c()Lio/bidmachine/analytics/ReaderConfig$Rule;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/h/c$a;->a:Lio/bidmachine/analytics/ReaderConfig$Rule;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lio/bidmachine/analytics/internal/h/c$a;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/analytics/internal/h/c$a;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/h/c$a;->a:Lio/bidmachine/analytics/ReaderConfig$Rule;

    iget-object v3, p1, Lio/bidmachine/analytics/internal/h/c$a;->a:Lio/bidmachine/analytics/ReaderConfig$Rule;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/bidmachine/analytics/internal/h/c$a;->b:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/analytics/internal/h/c$a;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lio/bidmachine/analytics/internal/h/c$a;->c:Lio/bidmachine/analytics/internal/g/h;

    iget-object p1, p1, Lio/bidmachine/analytics/internal/h/c$a;->c:Lio/bidmachine/analytics/internal/g/h;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/h/c$a;->a:Lio/bidmachine/analytics/ReaderConfig$Rule;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/analytics/internal/h/c$a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/analytics/internal/h/c$a;->c:Lio/bidmachine/analytics/internal/g/h;

    if-nez v1, :cond_1b

    goto :goto_1f

    :cond_1b
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/g/h;->hashCode()I

    move-result v2

    :goto_1f
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data(rule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/h/c$a;->a:Lio/bidmachine/analytics/ReaderConfig$Rule;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dataHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/h/c$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/h/c$a;->c:Lio/bidmachine/analytics/internal/g/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
