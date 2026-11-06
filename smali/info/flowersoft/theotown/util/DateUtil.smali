###### Class info.flowersoft.theotown.util.DateUtil (info.flowersoft.theotown.util.DateUtil)
.class public final Linfo/flowersoft/theotown/util/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.kt"


# static fields
.field public static final INSTANCE:Linfo/flowersoft/theotown/util/DateUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Linfo/flowersoft/theotown/util/DateUtil;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/DateUtil;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/util/DateUtil;->INSTANCE:Linfo/flowersoft/theotown/util/DateUtil;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkDate(III)Z
    .registers 8

    if-lez p1, :cond_3c

    if-lez p2, :cond_3c

    if-gtz p3, :cond_7

    goto :goto_3c

    .line 15
    :cond_7
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 16
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v2, 0x1

    .line 17
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr p2, v2

    invoke-virtual {v1, v3, p2, p1}, Ljava/util/Calendar;->set(III)V

    .line 18
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 19
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3, p2, p1}, Ljava/util/Calendar;->set(III)V

    .line 21
    :cond_28
    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type java.util.GregorianCalendar"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/GregorianCalendar;

    const/4 p2, 0x6

    .line 22
    invoke-virtual {p1, p2, p3}, Ljava/util/GregorianCalendar;->add(II)V

    .line 25
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3c
    :goto_3c
    const/4 p1, 0x0

    return p1
.end method
