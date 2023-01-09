.class public abstract Lcom/mediatek/location/lppe/sensor/LPPeSensor$LPPeSensorReceiver;
.super Ljava/lang/Object;
.source "LPPeSensor.java"

# interfaces
.implements Lcom/mediatek/socket/base/SocketUtils$ProtocolHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lcom/mediatek/socket/base/SocketUtils$UdpServerInterface;)Z
    .locals 4

    .line 133
    invoke-interface {p1}, Lcom/mediatek/socket/base/SocketUtils$UdpServerInterface;->getBuff()Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;

    move-result-object p1

    const/4 v0, 0x4

    .line 134
    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->setOffset(I)V

    .line 135
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getInt()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    if-eq v1, v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 158
    :cond_0
    sget-object v0, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;->_instance:Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)Lcom/mediatek/socket/base/SocketUtils$Codable;

    move-result-object p1

    check-cast p1, Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;

    .line 159
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/sensor/LPPeSensor$LPPeSensorReceiver;->providePressureMeasurement(Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;)V

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/location/lppe/sensor/LPPeSensor$LPPeSensorReceiver;->stopMeasurement()V

    goto :goto_0

    .line 149
    :cond_2
    sget-object v0, Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;->_instance:Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)Lcom/mediatek/socket/base/SocketUtils$Codable;

    move-result-object p1

    check-cast p1, Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;

    .line 150
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/sensor/LPPeSensor$LPPeSensorReceiver;->startMeasurement(Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;)V

    goto :goto_0

    .line 143
    :cond_3
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getInt()I

    move-result v0

    .line 144
    sget-object v1, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;->_instance:Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;

    invoke-virtual {p1, v1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)Lcom/mediatek/socket/base/SocketUtils$Codable;

    move-result-object p1

    check-cast p1, Lcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;

    .line 145
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/location/lppe/sensor/LPPeSensor$LPPeSensorReceiver;->provideCapabilities(ILcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;)V

    goto :goto_0

    .line 138
    :cond_4
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getInt()I

    move-result p1

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/sensor/LPPeSensor$LPPeSensorReceiver;->requestCapabilities(I)V

    :goto_0
    return v2
.end method

.method public abstract provideCapabilities(ILcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;)V
.end method

.method public abstract providePressureMeasurement(Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;)V
.end method

.method public abstract requestCapabilities(I)V
.end method

.method public abstract startMeasurement(Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;)V
.end method

.method public abstract stopMeasurement()V
.end method
