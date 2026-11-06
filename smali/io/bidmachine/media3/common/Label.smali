###### Class io.bidmachine.media3.common.Label (io.bidmachine.media3.common.Label)
.class public Lio/bidmachine/media3/common/Label;
.super Ljava/lang/Object;
.source "Label.java"


# static fields
.field public static final FIELD_LANGUAGE_INDEX:Ljava/lang/String;

.field public static final FIELD_VALUE_INDEX:Ljava/lang/String;


# instance fields
.field public final language:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 69
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Label;->FIELD_LANGUAGE_INDEX:Ljava/lang/String;

    const/4 v0, 0x1

    .line 70
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Label;->FIELD_VALUE_INDEX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/common/Label;->language:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lio/bidmachine/media3/common/Label;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_29

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_29

    .line 58
    :cond_12
    check-cast p1, Lio/bidmachine/media3/common/Label;

    .line 59
    iget-object v2, p0, Lio/bidmachine/media3/common/Label;->language:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/common/Label;->language:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lio/bidmachine/media3/common/Label;->value:Ljava/lang/String;

    iget-object p1, p1, Lio/bidmachine/media3/common/Label;->value:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    return v0

    :cond_29
    :goto_29
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 64
    iget-object v0, p0, Lio/bidmachine/media3/common/Label;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 65
    iget-object v1, p0, Lio/bidmachine/media3/common/Label;->language:Ljava/lang/String;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    add-int/2addr v0, v1

    return v0
.end method
