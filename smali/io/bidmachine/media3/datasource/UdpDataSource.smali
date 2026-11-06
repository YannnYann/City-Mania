###### Class io.bidmachine.media3.datasource.UdpDataSource (io.bidmachine.media3.datasource.UdpDataSource)
.class public final Lio/bidmachine/media3/datasource/UdpDataSource;
.super Lio/bidmachine/media3/datasource/BaseDataSource;
.source "UdpDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/datasource/UdpDataSource$UdpDataSourceException;
    }
.end annotation


# instance fields
.field public address:Ljava/net/InetAddress;

.field public multicastSocket:Ljava/net/MulticastSocket;

.field public opened:Z

.field public final packet:Ljava/net/DatagramPacket;

.field public final packetBuffer:[B

.field public packetRemaining:I

.field public socket:Ljava/net/DatagramSocket;

.field public final socketTimeoutMillis:I

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x7d0

    .line 74
    invoke-direct {p0, v0}, Lio/bidmachine/media3/datasource/UdpDataSource;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/16 v0, 0x1f40

    .line 83
    invoke-direct {p0, p1, v0}, Lio/bidmachine/media3/datasource/UdpDataSource;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 5

    const/4 v0, 0x1

    .line 94
    invoke-direct {p0, v0}, Lio/bidmachine/media3/datasource/BaseDataSource;-><init>(Z)V

    .line 95
    iput p2, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->socketTimeoutMillis:I

    .line 96
    new-array p2, p1, [B

    iput-object p2, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->packetBuffer:[B

    .line 97
    new-instance v0, Ljava/net/DatagramPacket;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, p1}, Ljava/net/DatagramPacket;-><init>([BII)V

    iput-object v0, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->uri:Landroid/net/Uri;

    .line 166
    iget-object v1, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    if-eqz v1, :cond_14

    .line 168
    :try_start_7
    iget-object v2, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_12} :catch_12

    .line 172
    :catch_12
    iput-object v0, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    .line 174
    :cond_14
    iget-object v1, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_1d

    .line 175
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 176
    iput-object v0, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    .line 178
    :cond_1d
    iput-object v0, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->address:Ljava/net/InetAddress;

    const/4 v0, 0x0

    .line 179
    iput v0, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->packetRemaining:I

    .line 180
    iget-boolean v1, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->opened:Z

    if-eqz v1, :cond_2b

    .line 181
    iput-boolean v0, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->opened:Z

    .line 182
    invoke-virtual {p0}, Lio/bidmachine/media3/datasource/BaseDataSource;->transferEnded()V

    :cond_2b
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 160
    iget-object v0, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lio/bidmachine/media3/datasource/DataSpec;)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/datasource/UdpDataSource$UdpDataSourceException;
        }
    .end annotation

    .line 102
    iget-object v0, p1, Lio/bidmachine/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->uri:Landroid/net/Uri;

    .line 103
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v1

    .line 105
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/datasource/BaseDataSource;->transferInitializing(Lio/bidmachine/media3/datasource/DataSpec;)V

    .line 107
    :try_start_17
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->address:Ljava/net/InetAddress;

    .line 108
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-direct {v0, v2, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 109
    iget-object v1, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 110
    new-instance v1, Ljava/net/MulticastSocket;

    invoke-direct {v1, v0}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v1, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    .line 111
    iget-object v0, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-virtual {v1, v0}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    .line 112
    iget-object v0, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    iput-object v0, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    goto :goto_48

    :catch_3d
    move-exception p1

    goto :goto_58

    :catch_3f
    move-exception p1

    goto :goto_60

    .line 114
    :cond_41
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1, v0}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v1, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    .line 116
    :goto_48
    iget-object v0, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    iget v1, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->socketTimeoutMillis:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_4f
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_4f} :catch_3f
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_4f} :catch_3d

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->opened:Z

    .line 125
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/datasource/BaseDataSource;->transferStarted(Lio/bidmachine/media3/datasource/DataSpec;)V

    const-wide/16 v0, -0x1

    return-wide v0

    .line 120
    :goto_58
    new-instance v0, Lio/bidmachine/media3/datasource/UdpDataSource$UdpDataSourceException;

    const/16 v1, 0x7d1

    invoke-direct {v0, p1, v1}, Lio/bidmachine/media3/datasource/UdpDataSource$UdpDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    .line 118
    :goto_60
    new-instance v0, Lio/bidmachine/media3/datasource/UdpDataSource$UdpDataSourceException;

    const/16 v1, 0x7d6

    invoke-direct {v0, p1, v1}, Lio/bidmachine/media3/datasource/UdpDataSource$UdpDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw v0
.end method

.method public read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/datasource/UdpDataSource$UdpDataSourceException;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    .line 135
    :cond_4
    iget v0, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->packetRemaining:I

    if-nez v0, :cond_35

    .line 138
    :try_start_8
    iget-object v0, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/DatagramSocket;

    iget-object v1, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_15
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_15} :catch_23
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_15} :catch_21

    .line 146
    iget-object v0, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->packetRemaining:I

    .line 147
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/datasource/BaseDataSource;->bytesTransferred(I)V

    goto :goto_35

    :catch_21
    move-exception p1

    goto :goto_25

    :catch_23
    move-exception p1

    goto :goto_2d

    .line 143
    :goto_25
    new-instance p2, Lio/bidmachine/media3/datasource/UdpDataSource$UdpDataSourceException;

    const/16 p3, 0x7d1

    invoke-direct {p2, p1, p3}, Lio/bidmachine/media3/datasource/UdpDataSource$UdpDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw p2

    .line 140
    :goto_2d
    new-instance p2, Lio/bidmachine/media3/datasource/UdpDataSource$UdpDataSourceException;

    const/16 p3, 0x7d2

    invoke-direct {p2, p1, p3}, Lio/bidmachine/media3/datasource/UdpDataSource$UdpDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw p2

    .line 150
    :cond_35
    :goto_35
    iget-object v0, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iget v1, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->packetRemaining:I

    sub-int/2addr v0, v1

    .line 151
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 152
    iget-object v1, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->packetBuffer:[B

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iget p1, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->packetRemaining:I

    sub-int/2addr p1, p3

    iput p1, p0, Lio/bidmachine/media3/datasource/UdpDataSource;->packetRemaining:I

    return p3
.end method

###### Class io.bidmachine.media3.datasource.UdpDataSource.UdpDataSourceException (io.bidmachine.media3.datasource.UdpDataSource$UdpDataSourceException)
.class public final Lio/bidmachine/media3/datasource/UdpDataSource$UdpDataSourceException;
.super Lio/bidmachine/media3/datasource/DataSourceException;
.source "UdpDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/datasource/UdpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UdpDataSourceException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;I)V
    .registers 3

    .line 49
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;I)V

    return-void
.end method
