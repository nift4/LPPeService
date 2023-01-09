.class public Lcom/mediatek/location/lppe/sensor/LPPeSensor$LPPeSensorSender;
.super Ljava/lang/Object;
.source "LPPeSensor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideCapabilities(Lcom/mediatek/socket/base/UdpClient;ILcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;)Z
    .locals 1

    .line 44
    monitor-enter p1

    .line 45
    :try_start_0
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->connect()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 46
    monitor-exit p1

    return p0

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->getBuff()Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;

    move-result-object p0

    const/16 v0, 0xcb

    .line 49
    invoke-virtual {p0, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    const/4 v0, 0x1

    .line 50
    invoke-virtual {p0, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    .line 51
    invoke-virtual {p0, p2}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    .line 52
    invoke-virtual {p0, p3}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)V

    .line 53
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->write()Z

    move-result p0

    .line 54
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->close()V

    .line 55
    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    .line 56
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public providePressureMeasurement(Lcom/mediatek/socket/base/UdpClient;Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;)Z
    .locals 1

    .line 89
    monitor-enter p1

    .line 90
    :try_start_0
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->connect()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 91
    monitor-exit p1

    return p0

    .line 93
    :cond_0
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->getBuff()Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;

    move-result-object p0

    const/16 v0, 0xcb

    .line 94
    invoke-virtual {p0, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    const/4 v0, 0x4

    .line 95
    invoke-virtual {p0, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    .line 96
    invoke-virtual {p0, p2}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)V

    .line 97
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->write()Z

    move-result p0

    .line 98
    invoke-virtual {p1}, Lcom/mediatek/socket/base/UdpClient;->close()V

    .line 99
    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    .line 100
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
