###### Class io.bidmachine.media3.common.PlaybackException (io.bidmachine.media3.common.PlaybackException)
.class public Lio/bidmachine/media3/common/PlaybackException;
.super Ljava/lang/Exception;
.source "PlaybackException.java"


# static fields
.field public static final FIELD_BUNDLE_EXTRAS:Ljava/lang/String;

.field public static final FIELD_INT_ERROR_CODE:Ljava/lang/String;

.field public static final FIELD_LONG_TIMESTAMP_MS:Ljava/lang/String;

.field public static final FIELD_STRING_CAUSE_CLASS_NAME:Ljava/lang/String;

.field public static final FIELD_STRING_CAUSE_MESSAGE:Ljava/lang/String;

.field public static final FIELD_STRING_MESSAGE:Ljava/lang/String;


# instance fields
.field public final errorCode:I

.field public final extras:Landroid/os/Bundle;

.field public final timestampMs:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 571
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/PlaybackException;->FIELD_INT_ERROR_CODE:Ljava/lang/String;

    const/4 v0, 0x1

    .line 572
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/PlaybackException;->FIELD_LONG_TIMESTAMP_MS:Ljava/lang/String;

    const/4 v0, 0x2

    .line 573
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/PlaybackException;->FIELD_STRING_MESSAGE:Ljava/lang/String;

    const/4 v0, 0x3

    .line 574
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/PlaybackException;->FIELD_STRING_CAUSE_CLASS_NAME:Ljava/lang/String;

    const/4 v0, 0x4

    .line 575
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/PlaybackException;->FIELD_STRING_CAUSE_MESSAGE:Ljava/lang/String;

    const/4 v0, 0x5

    .line 576
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/PlaybackException;->FIELD_BUNDLE_EXTRAS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;ILandroid/os/Bundle;J)V
    .registers 7

    .line 533
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 534
    iput p3, p0, Lio/bidmachine/media3/common/PlaybackException;->errorCode:I

    .line 535
    iput-object p4, p0, Lio/bidmachine/media3/common/PlaybackException;->extras:Landroid/os/Bundle;

    .line 536
    iput-wide p5, p0, Lio/bidmachine/media3/common/PlaybackException;->timestampMs:J

    return-void
.end method
