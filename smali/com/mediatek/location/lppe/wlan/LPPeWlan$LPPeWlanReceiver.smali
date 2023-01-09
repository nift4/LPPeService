.class public abstract Lcom/mediatek/location/lppe/wlan/LPPeWlan$LPPeWlanReceiver;
.super Ljava/lang/Object;
.source "LPPeWlan.java"

# interfaces
.implements Lcom/mediatek/socket/base/SocketUtils$ProtocolHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lcom/mediatek/socket/base/SocketUtils$UdpServerInterface;)Z
    .locals 4

    .line 134
    invoke-interface {p1}, Lcom/mediatek/socket/base/SocketUtils$UdpServerInterface;->getBuff()Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;

    move-result-object p1

    const/4 v0, 0x4

    .line 135
    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->setOffset(I)V

    .line 136
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

    .line 160
    :cond_0
    sget-object v0, Lcom/mediatek/location/lppe/wlan/WlanProvideMeasurement;->_instance:Lcom/mediatek/location/lppe/wlan/WlanProvideMeasurement;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)Lcom/mediatek/socket/base/SocketUtils$Codable;

    move-result-object p1

    check-cast p1, Lcom/mediatek/location/lppe/wlan/WlanProvideMeasurement;

    .line 161
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/wlan/LPPeWlan$LPPeWlanReceiver;->provideMeasurement(Lcom/mediatek/location/lppe/wlan/WlanProvideMeasurement;)V

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/location/lppe/wlan/LPPeWlan$LPPeWlanReceiver;->stopMeasurement()V

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    .line 151
    sget-object v1, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->_instance:Lcom/mediatek/location/lppe/wlan/WlanMeasurements;

    invoke-virtual {p1, v1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)Lcom/mediatek/socket/base/SocketUtils$Codable;

    move-result-object p1

    check-cast p1, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;

    .line 152
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/location/lppe/wlan/LPPeWlan$LPPeWlanReceiver;->startMeasurement(ZLcom/mediatek/location/lppe/wlan/WlanMeasurements;)V

    goto :goto_0

    .line 144
    :cond_3
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getInt()I

    move-result v0

    .line 145
    sget-object v1, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->_instance:Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;

    invoke-virtual {p1, v1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)Lcom/mediatek/socket/base/SocketUtils$Codable;

    move-result-object p1

    check-cast p1, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;

    .line 146
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/location/lppe/wlan/LPPeWlan$LPPeWlanReceiver;->provideCapabilities(ILcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;)V

    goto :goto_0

    .line 139
    :cond_4
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getInt()I

    move-result p1

    .line 140
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/wlan/LPPeWlan$LPPeWlanReceiver;->requestCapabilities(I)V

    :goto_0
    return v2
.end method

.method public abstract provideCapabilities(ILcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;)V
.end method

.method public abstract provideMeasurement(Lcom/mediatek/location/lppe/wlan/WlanProvideMeasurement;)V
.end method

.method public abstract requestCapabilities(I)V
.end method

.method public abstract startMeasurement(ZLcom/mediatek/location/lppe/wlan/WlanMeasurements;)V
.end method

.method public abstract stopMeasurement()V
.end method
