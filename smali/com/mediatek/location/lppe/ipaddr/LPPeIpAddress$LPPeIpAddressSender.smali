.class public Lcom/mediatek/location/lppe/ipaddr/LPPeIpAddress$LPPeIpAddressSender;
.super Ljava/lang/Object;
.source "LPPeIpAddress.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideCapabilities(Lcom/mediatek/socket/base/UdpClient;ILcom/mediatek/location/lppe/ipaddr/IpAddressCapabilities;)Z
    .locals 1

    .line 43
    monitor-enter p1

    .line 44
    :try_start_0
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->connect()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 45
    monitor-exit p1

    return p0

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->getBuff()Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;

    move-result-object p0

    const/16 v0, 0xcd

    .line 48
    invoke-virtual {p0, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    const/4 v0, 0x1

    .line 49
    invoke-virtual {p0, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    .line 50
    invoke-virtual {p0, p2}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    .line 51
    invoke-virtual {p0, p3}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)V

    .line 52
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->write()Z

    move-result p0

    .line 53
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->close()V

    .line 54
    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    .line 55
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public provideInformation(Lcom/mediatek/socket/base/UdpClient;Lcom/mediatek/location/lppe/ipaddr/IpAddressInformation;)Z
    .locals 1

    .line 73
    monitor-enter p1

    .line 74
    :try_start_0
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->connect()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 75
    monitor-exit p1

    return p0

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->getBuff()Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;

    move-result-object p0

    const/16 v0, 0xcd

    .line 78
    invoke-virtual {p0, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    const/4 v0, 0x3

    .line 79
    invoke-virtual {p0, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    .line 80
    invoke-virtual {p0, p2}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)V

    .line 81
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->write()Z

    move-result p0

    .line 82
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->close()V

    .line 83
    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    .line 84
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
