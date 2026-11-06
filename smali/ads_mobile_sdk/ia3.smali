###### Class ads_mobile_sdk.ia3 (ads_mobile_sdk.ia3)
.class public final Lads_mobile_sdk/ia3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:J


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;J)V
    .registers 4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lads_mobile_sdk/ia3;->a:Ljava/lang/Runnable;

    .line 12
    iput-wide p2, p0, Lads_mobile_sdk/ia3;->b:J

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .registers 6

    .line 5
    check-cast p1, Lads_mobile_sdk/ia3;

    .line 6
    iget-wide v0, p0, Lads_mobile_sdk/ia3;->b:J

    iget-wide v2, p1, Lads_mobile_sdk/ia3;->b:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method
