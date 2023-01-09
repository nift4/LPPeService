.class public abstract Lcom/mediatek/location/lppe/network/LPPeNetwork$LPPeNetworkReceiver;
.super Ljava/lang/Object;
.source "LPPeNetwork.java"

# interfaces
.implements Lcom/mediatek/socket/base/SocketUtils$ProtocolHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lcom/mediatek/socket/base/SocketUtils$UdpServerInterface;)Z
    .locals 2

    .line 168
    invoke-interface {p1}, Lcom/mediatek/socket/base/SocketUtils$UdpServerInterface;->getBuff()Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;

    move-result-object p1

    const/4 v0, 0x4

    .line 169
    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->setOffset(I)V

    .line 170
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getInt()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_1

    .line 202
    :pswitch_0
    sget-object v0, Lcom/mediatek/location/lppe/network/CivicAddress;->_instance:Lcom/mediatek/location/lppe/network/CivicAddress;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)Lcom/mediatek/socket/base/SocketUtils$Codable;

    move-result-object p1

    check-cast p1, Lcom/mediatek/location/lppe/network/CivicAddress;

    .line 203
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/network/LPPeNetwork$LPPeNetworkReceiver;->provideCivicAddress(Lcom/mediatek/location/lppe/network/CivicAddress;)V

    goto :goto_0

    .line 198
    :pswitch_1
    invoke-virtual {p0}, Lcom/mediatek/location/lppe/network/LPPeNetwork$LPPeNetworkReceiver;->requestCivicAddress()V

    goto :goto_0

    .line 193
    :pswitch_2
    sget-object v0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->_instance:Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)Lcom/mediatek/socket/base/SocketUtils$Codable;

    move-result-object p1

    check-cast p1, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;

    .line 194
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/network/LPPeNetwork$LPPeNetworkReceiver;->provideMeasurement(Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;)V

    goto :goto_0

    .line 189
    :pswitch_3
    invoke-virtual {p0}, Lcom/mediatek/location/lppe/network/LPPeNetwork$LPPeNetworkReceiver;->stopMeasurement()V

    goto :goto_0

    .line 185
    :pswitch_4
    invoke-virtual {p0}, Lcom/mediatek/location/lppe/network/LPPeNetwork$LPPeNetworkReceiver;->startMeasurement()V

    goto :goto_0

    .line 178
    :pswitch_5
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getInt()I

    move-result v0

    .line 179
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v1

    .line 180
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result p1

    .line 181
    invoke-virtual {p0, v0, v1, p1}, Lcom/mediatek/location/lppe/network/LPPeNetwork$LPPeNetworkReceiver;->provideCapabilities(IZZ)V

    goto :goto_0

    .line 173
    :pswitch_6
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getInt()I

    move-result p1

    .line 174
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/network/LPPeNetwork$LPPeNetworkReceiver;->requestCapabilities(I)V

    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract provideCapabilities(IZZ)V
.end method

.method public abstract provideCivicAddress(Lcom/mediatek/location/lppe/network/CivicAddress;)V
.end method

.method public abstract provideMeasurement(Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;)V
.end method

.method public abstract requestCapabilities(I)V
.end method

.method public abstract requestCivicAddress()V
.end method

.method public abstract startMeasurement()V
.end method

.method public abstract stopMeasurement()V
.end method
