.class public Lcom/mediatek/location/agps/apn/Framework2AgpsInterface$Framework2AgpsInterfaceSender;
.super Ljava/lang/Object;
.source "Framework2AgpsInterface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public AgpsNiResponse(Lcom/mediatek/socket/base/UdpClient;ILcom/mediatek/location/agps/apn/AgpsNiResponseType;)Z
    .locals 1

    .line 139
    monitor-enter p1

    .line 140
    :try_start_0
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->connect()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 141
    monitor-exit p1

    return p0

    .line 143
    :cond_0
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->getBuff()Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;

    move-result-object p0

    const/16 v0, 0x12e

    .line 144
    invoke-virtual {p0, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    const/4 v0, 0x6

    .line 145
    invoke-virtual {p0, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    .line 146
    invoke-virtual {p0, p2}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    .line 147
    invoke-virtual {p0, p3}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)V

    .line 148
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->write()Z

    move-result p0

    .line 149
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->close()V

    .line 150
    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    .line 151
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public AirplaneModeChanged(Lcom/mediatek/socket/base/UdpClient;Z)Z
    .locals 1

    .line 124
    monitor-enter p1

    .line 125
    :try_start_0
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->connect()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 126
    monitor-exit p1

    return p0

    .line 128
    :cond_0
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->getBuff()Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;

    move-result-object p0

    const/16 v0, 0x12e

    .line 129
    invoke-virtual {p0, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    const/4 v0, 0x5

    .line 130
    invoke-virtual {p0, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    .line 131
    invoke-virtual {p0, p2}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 132
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->write()Z

    move-result p0

    .line 133
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->close()V

    .line 134
    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    .line 135
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public C2kApnClosed(Lcom/mediatek/socket/base/UdpClient;)Z
    .locals 1

    .line 110
    monitor-enter p1

    .line 111
    :try_start_0
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->connect()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 112
    monitor-exit p1

    return p0

    .line 114
    :cond_0
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->getBuff()Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;

    move-result-object p0

    const/16 v0, 0x12e

    .line 115
    invoke-virtual {p0, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    const/4 v0, 0x4

    .line 116
    invoke-virtual {p0, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    .line 117
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->write()Z

    move-result p0

    .line 118
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->close()V

    .line 119
    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    .line 120
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public C2kApnFailed(Lcom/mediatek/socket/base/UdpClient;)Z
    .locals 1

    .line 96
    monitor-enter p1

    .line 97
    :try_start_0
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->connect()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 98
    monitor-exit p1

    return p0

    .line 100
    :cond_0
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->getBuff()Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;

    move-result-object p0

    const/16 v0, 0x12e

    .line 101
    invoke-virtual {p0, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    const/4 v0, 0x3

    .line 102
    invoke-virtual {p0, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    .line 103
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->write()Z

    move-result p0

    .line 104
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->close()V

    .line 105
    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    .line 106
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public C2kApnResult(Lcom/mediatek/socket/base/UdpClient;IZIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    .line 70
    monitor-enter p1

    .line 71
    :try_start_0
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->connect()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 72
    monitor-exit p1

    return v0

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->getBuff()Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;

    move-result-object p0

    const/16 v1, 0x12e

    .line 75
    invoke-virtual {p0, v1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    const/4 v1, 0x2

    .line 76
    invoke-virtual {p0, v1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    .line 77
    invoke-virtual {p0, p2}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    .line 78
    invoke-virtual {p0, p3}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 79
    invoke-virtual {p0, p4}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    .line 80
    invoke-virtual {p0, p5}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 81
    invoke-virtual {p0, p6}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    const/16 p2, 0xa

    .line 82
    invoke-static {p7, p2, v0}, Lcom/mediatek/socket/base/SocketUtils;->assertSize(Ljava/lang/Object;II)V

    .line 83
    invoke-virtual {p0, p7}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putString(Ljava/lang/String;)V

    .line 84
    invoke-static {p8, p2, v0}, Lcom/mediatek/socket/base/SocketUtils;->assertSize(Ljava/lang/Object;II)V

    .line 85
    invoke-virtual {p0, p8}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putString(Ljava/lang/String;)V

    .line 86
    invoke-static {p9, p2, v0}, Lcom/mediatek/socket/base/SocketUtils;->assertSize(Ljava/lang/Object;II)V

    .line 87
    invoke-virtual {p0, p9}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putString(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, p10}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    .line 89
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->write()Z

    move-result p0

    .line 90
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->close()V

    .line 91
    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    .line 92
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public DnsQueryResult2(Lcom/mediatek/socket/base/UdpClient;ZZIZ[BZI)Z
    .locals 2

    .line 48
    monitor-enter p1

    .line 49
    :try_start_0
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->connect()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 50
    monitor-exit p1

    return v0

    .line 52
    :cond_0
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->getBuff()Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;

    move-result-object p0

    const/16 v1, 0x12e

    .line 53
    invoke-virtual {p0, v1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    const/4 v1, 0x1

    .line 54
    invoke-virtual {p0, v1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    .line 55
    invoke-virtual {p0, p2}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 56
    invoke-virtual {p0, p3}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 57
    invoke-virtual {p0, p4}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    .line 58
    invoke-virtual {p0, p5}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    const/16 p2, 0x10

    .line 59
    invoke-static {p6, p2, v0}, Lcom/mediatek/socket/base/SocketUtils;->assertSize(Ljava/lang/Object;II)V

    .line 60
    invoke-virtual {p0, p6}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putArrayByte([B)V

    .line 61
    invoke-virtual {p0, p7}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 62
    invoke-virtual {p0, p8}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    .line 63
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->write()Z

    move-result p0

    .line 64
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->close()V

    .line 65
    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    .line 66
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
