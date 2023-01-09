.class public abstract Lcom/mediatek/location/lppe/ipaddr/LPPeIpAddress$LPPeIpAddressReceiver;
.super Ljava/lang/Object;
.source "LPPeIpAddress.java"

# interfaces
.implements Lcom/mediatek/socket/base/SocketUtils$ProtocolHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lcom/mediatek/socket/base/SocketUtils$UdpServerInterface;)Z
    .locals 3

    .line 115
    invoke-interface {p1}, Lcom/mediatek/socket/base/SocketUtils$UdpServerInterface;->getBuff()Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;

    move-result-object p1

    const/4 v0, 0x4

    .line 116
    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->setOffset(I)V

    .line 117
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getInt()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 135
    :cond_0
    sget-object v0, Lcom/mediatek/location/lppe/ipaddr/IpAddressInformation;->_instance:Lcom/mediatek/location/lppe/ipaddr/IpAddressInformation;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)Lcom/mediatek/socket/base/SocketUtils$Codable;

    move-result-object p1

    check-cast p1, Lcom/mediatek/location/lppe/ipaddr/IpAddressInformation;

    .line 136
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/ipaddr/LPPeIpAddress$LPPeIpAddressReceiver;->provideInformation(Lcom/mediatek/location/lppe/ipaddr/IpAddressInformation;)V

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/location/lppe/ipaddr/LPPeIpAddress$LPPeIpAddressReceiver;->requestInformation()V

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getInt()I

    move-result v0

    .line 126
    sget-object v2, Lcom/mediatek/location/lppe/ipaddr/IpAddressCapabilities;->_instance:Lcom/mediatek/location/lppe/ipaddr/IpAddressCapabilities;

    invoke-virtual {p1, v2}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)Lcom/mediatek/socket/base/SocketUtils$Codable;

    move-result-object p1

    check-cast p1, Lcom/mediatek/location/lppe/ipaddr/IpAddressCapabilities;

    .line 127
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/location/lppe/ipaddr/LPPeIpAddress$LPPeIpAddressReceiver;->provideCapabilities(ILcom/mediatek/location/lppe/ipaddr/IpAddressCapabilities;)V

    goto :goto_0

    .line 120
    :cond_3
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getInt()I

    move-result p1

    .line 121
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/ipaddr/LPPeIpAddress$LPPeIpAddressReceiver;->requestCapabilities(I)V

    :goto_0
    return v1
.end method

.method public abstract provideCapabilities(ILcom/mediatek/location/lppe/ipaddr/IpAddressCapabilities;)V
.end method

.method public abstract provideInformation(Lcom/mediatek/location/lppe/ipaddr/IpAddressInformation;)V
.end method

.method public abstract requestCapabilities(I)V
.end method

.method public abstract requestInformation()V
.end method
