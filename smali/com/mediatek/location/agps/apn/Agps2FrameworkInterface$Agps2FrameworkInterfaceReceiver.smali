.class public abstract Lcom/mediatek/location/agps/apn/Agps2FrameworkInterface$Agps2FrameworkInterfaceReceiver;
.super Ljava/lang/Object;
.source "Agps2FrameworkInterface.java"

# interfaces
.implements Lcom/mediatek/socket/base/SocketUtils$ProtocolHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract AgpsNiNotify(ILcom/mediatek/location/agps/apn/AgpsNiType;Lcom/mediatek/location/agps/apn/AgpsNotifyType;Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;)V
.end method

.method public abstract acquireWakeLock()V
.end method

.method public decode(Lcom/mediatek/socket/base/SocketUtils$UdpServerInterface;)Z
    .locals 9

    .line 278
    invoke-interface {p1}, Lcom/mediatek/socket/base/SocketUtils$UdpServerInterface;->getBuff()Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;

    move-result-object p1

    const/4 v0, 0x4

    .line 279
    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->setOffset(I)V

    .line 280
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getInt()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto/16 :goto_1

    .line 325
    :pswitch_0
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getInt()I

    move-result v2

    .line 326
    sget-object v0, Lcom/mediatek/location/agps/apn/AgpsNiType;->_instance:Lcom/mediatek/location/agps/apn/AgpsNiType;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)Lcom/mediatek/socket/base/SocketUtils$Codable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/mediatek/location/agps/apn/AgpsNiType;

    .line 327
    sget-object v0, Lcom/mediatek/location/agps/apn/AgpsNotifyType;->_instance:Lcom/mediatek/location/agps/apn/AgpsNotifyType;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)Lcom/mediatek/socket/base/SocketUtils$Codable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/mediatek/location/agps/apn/AgpsNotifyType;

    .line 328
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getString()Ljava/lang/String;

    move-result-object v5

    .line 329
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getString()Ljava/lang/String;

    move-result-object v6

    .line 330
    sget-object v0, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;->_instance:Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)Lcom/mediatek/socket/base/SocketUtils$Codable;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

    .line 331
    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)Lcom/mediatek/socket/base/SocketUtils$Codable;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

    move-object v1, p0

    .line 332
    invoke-virtual/range {v1 .. v8}, Lcom/mediatek/location/agps/apn/Agps2FrameworkInterface$Agps2FrameworkInterfaceReceiver;->AgpsNiNotify(ILcom/mediatek/location/agps/apn/AgpsNiType;Lcom/mediatek/location/agps/apn/AgpsNotifyType;Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;)V

    goto :goto_0

    .line 321
    :pswitch_1
    invoke-virtual {p0}, Lcom/mediatek/location/agps/apn/Agps2FrameworkInterface$Agps2FrameworkInterfaceReceiver;->releaseC2kApn()V

    goto :goto_0

    .line 315
    :pswitch_2
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getArrayByte()[B

    move-result-object v0

    .line 316
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result p1

    .line 317
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/location/agps/apn/Agps2FrameworkInterface$Agps2FrameworkInterfaceReceiver;->requestC2kApn([BZ)V

    goto :goto_0

    .line 311
    :pswitch_3
    invoke-virtual {p0}, Lcom/mediatek/location/agps/apn/Agps2FrameworkInterface$Agps2FrameworkInterfaceReceiver;->removeGpsIcon()V

    goto :goto_0

    .line 307
    :pswitch_4
    invoke-virtual {p0}, Lcom/mediatek/location/agps/apn/Agps2FrameworkInterface$Agps2FrameworkInterfaceReceiver;->requestGpsIcon()V

    goto :goto_0

    .line 303
    :pswitch_5
    invoke-virtual {p0}, Lcom/mediatek/location/agps/apn/Agps2FrameworkInterface$Agps2FrameworkInterfaceReceiver;->releaseDedicatedApn()V

    goto :goto_0

    .line 296
    :pswitch_6
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v1

    .line 298
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result p1

    .line 299
    invoke-virtual {p0, v0, v1, p1}, Lcom/mediatek/location/agps/apn/Agps2FrameworkInterface$Agps2FrameworkInterfaceReceiver;->requestDedicatedApnAndDnsQuery(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 292
    :pswitch_7
    invoke-virtual {p0}, Lcom/mediatek/location/agps/apn/Agps2FrameworkInterface$Agps2FrameworkInterfaceReceiver;->releaseWakeLock()V

    goto :goto_0

    .line 288
    :pswitch_8
    invoke-virtual {p0}, Lcom/mediatek/location/agps/apn/Agps2FrameworkInterface$Agps2FrameworkInterfaceReceiver;->acquireWakeLock()V

    goto :goto_0

    .line 283
    :pswitch_9
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getByte()B

    move-result p1

    .line 284
    invoke-virtual {p0, p1}, Lcom/mediatek/location/agps/apn/Agps2FrameworkInterface$Agps2FrameworkInterfaceReceiver;->isExist(B)V

    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract isExist(B)V
.end method

.method public abstract releaseC2kApn()V
.end method

.method public abstract releaseDedicatedApn()V
.end method

.method public abstract releaseWakeLock()V
.end method

.method public abstract removeGpsIcon()V
.end method

.method public abstract requestC2kApn([BZ)V
.end method

.method public abstract requestDedicatedApnAndDnsQuery(Ljava/lang/String;ZZ)V
.end method

.method public abstract requestGpsIcon()V
.end method
