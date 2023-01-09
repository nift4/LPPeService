.class public abstract Lcom/mediatek/location/lppe/lbs/LPPeLbs$LPPeLbsReceiver;
.super Ljava/lang/Object;
.source "LPPeLbs.java"

# interfaces
.implements Lcom/mediatek/socket/base/SocketUtils$ProtocolHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lcom/mediatek/socket/base/SocketUtils$UdpServerInterface;)Z
    .locals 4

    .line 163
    invoke-interface {p1}, Lcom/mediatek/socket/base/SocketUtils$UdpServerInterface;->getBuff()Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;

    move-result-object p1

    const/4 v0, 0x4

    .line 164
    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->setOffset(I)V

    .line 165
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

    const/4 v0, 0x5

    if-eq v1, v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getInt()I

    move-result p1

    .line 195
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/lbs/LPPeLbs$LPPeLbsReceiver;->updateVowifiRegistration(I)V

    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result p1

    .line 190
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/lbs/LPPeLbs$LPPeLbsReceiver;->updateNlpStatus(Z)V

    goto :goto_0

    .line 184
    :cond_2
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getInt()I

    move-result p1

    .line 185
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/lbs/LPPeLbs$LPPeLbsReceiver;->updateBatteryInfo(I)V

    goto :goto_0

    .line 179
    :cond_3
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getArrayByte()[B

    move-result-object p1

    .line 180
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/lbs/LPPeLbs$LPPeLbsReceiver;->receiveSuplInit([B)V

    goto :goto_0

    .line 173
    :cond_4
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getInt()I

    move-result v0

    .line 174
    sget-object v1, Lcom/mediatek/location/lppe/lbs/LbsCapabilities;->_instance:Lcom/mediatek/location/lppe/lbs/LbsCapabilities;

    invoke-virtual {p1, v1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)Lcom/mediatek/socket/base/SocketUtils$Codable;

    move-result-object p1

    check-cast p1, Lcom/mediatek/location/lppe/lbs/LbsCapabilities;

    .line 175
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/location/lppe/lbs/LPPeLbs$LPPeLbsReceiver;->provideCapabilities(ILcom/mediatek/location/lppe/lbs/LbsCapabilities;)V

    goto :goto_0

    .line 168
    :cond_5
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getInt()I

    move-result p1

    .line 169
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/lbs/LPPeLbs$LPPeLbsReceiver;->requestCapabilities(I)V

    :goto_0
    return v2
.end method

.method public abstract provideCapabilities(ILcom/mediatek/location/lppe/lbs/LbsCapabilities;)V
.end method

.method public abstract receiveSuplInit([B)V
.end method

.method public abstract requestCapabilities(I)V
.end method

.method public abstract updateBatteryInfo(I)V
.end method

.method public abstract updateNlpStatus(Z)V
.end method

.method public abstract updateVowifiRegistration(I)V
.end method
