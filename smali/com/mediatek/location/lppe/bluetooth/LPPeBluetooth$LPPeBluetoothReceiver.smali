.class public abstract Lcom/mediatek/location/lppe/bluetooth/LPPeBluetooth$LPPeBluetoothReceiver;
.super Ljava/lang/Object;
.source "LPPeBluetooth.java"

# interfaces
.implements Lcom/mediatek/socket/base/SocketUtils$ProtocolHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lcom/mediatek/socket/base/SocketUtils$UdpServerInterface;)Z
    .locals 4

    .line 151
    invoke-interface {p1}, Lcom/mediatek/socket/base/SocketUtils$UdpServerInterface;->getBuff()Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;

    move-result-object p1

    const/4 v0, 0x4

    .line 152
    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->setOffset(I)V

    .line 153
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getInt()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    if-eq v1, v0, :cond_1

    const/4 p1, 0x5

    if-eq v1, p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/location/lppe/bluetooth/LPPeBluetooth$LPPeBluetoothReceiver;->provideMeasurementFinished()V

    goto :goto_0

    .line 177
    :cond_1
    sget-object v0, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;->_instance:Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)Lcom/mediatek/socket/base/SocketUtils$Codable;

    move-result-object p1

    check-cast p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;

    .line 178
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/bluetooth/LPPeBluetooth$LPPeBluetoothReceiver;->provideMeasurement(Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;)V

    goto :goto_0

    .line 173
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/location/lppe/bluetooth/LPPeBluetooth$LPPeBluetoothReceiver;->stopMeasurement()V

    goto :goto_0

    .line 167
    :cond_3
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    .line 168
    sget-object v1, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;->_instance:Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;

    invoke-virtual {p1, v1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)Lcom/mediatek/socket/base/SocketUtils$Codable;

    move-result-object p1

    check-cast p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;

    .line 169
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/location/lppe/bluetooth/LPPeBluetooth$LPPeBluetoothReceiver;->startMeasurement(ZLcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;)V

    goto :goto_0

    .line 161
    :cond_4
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getInt()I

    move-result v0

    .line 162
    sget-object v1, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;->_instance:Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;

    invoke-virtual {p1, v1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)Lcom/mediatek/socket/base/SocketUtils$Codable;

    move-result-object p1

    check-cast p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;

    .line 163
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/location/lppe/bluetooth/LPPeBluetooth$LPPeBluetoothReceiver;->provideCapabilities(ILcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;)V

    goto :goto_0

    .line 156
    :cond_5
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getInt()I

    move-result p1

    .line 157
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/bluetooth/LPPeBluetooth$LPPeBluetoothReceiver;->requestCapabilities(I)V

    :goto_0
    return v2
.end method

.method public abstract provideCapabilities(ILcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;)V
.end method

.method public abstract provideMeasurement(Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;)V
.end method

.method public abstract provideMeasurementFinished()V
.end method

.method public abstract requestCapabilities(I)V
.end method

.method public abstract startMeasurement(ZLcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;)V
.end method

.method public abstract stopMeasurement()V
.end method
