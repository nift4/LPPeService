.class public Lcom/mediatek/location/agps/apn/AgpsApn;
.super Ljava/lang/Thread;
.source "AgpsApn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;
    }
.end annotation


# static fields
.field static sThreadPoll:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private agpsApnServer:Lcom/mediatek/socket/base/UdpServer;

.field private final mAgpsNetReqs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;",
            ">;"
        }
    .end annotation
.end field

.field private mC2KApn:Lcom/mediatek/location/agps/apn/AgpsApnC2K;

.field private final mConnManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mEmptyIpv6:[B

.field private mEsuplApnMode:B

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mNIHandler:Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;

.field private final mNetInitiatedListener:Lcom/mediatek/location/agps/apn/NetInitiatedListener;

.field private mNetReqEmergency:Landroid/net/NetworkRequest;

.field private mNetReqIms:Landroid/net/NetworkRequest;

.field private mNetReqSupl:Landroid/net/NetworkRequest;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mReceiver:Lcom/mediatek/location/agps/apn/Agps2FrameworkInterface$Agps2FrameworkInterfaceReceiver;

.field private mToAgpsSender:Lcom/mediatek/location/agps/apn/Framework2AgpsInterface$Framework2AgpsInterfaceSender;

.field private mUdpClient:Lcom/mediatek/socket/base/UdpClient;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 103
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/mediatek/location/agps/apn/AgpsApn;->sThreadPoll:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 131
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mAgpsNetReqs:Ljava/util/ArrayList;

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 109
    iput-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mEmptyIpv6:[B

    .line 153
    new-instance v0, Lcom/mediatek/location/agps/apn/AgpsApn$1;

    invoke-direct {v0, p0}, Lcom/mediatek/location/agps/apn/AgpsApn$1;-><init>(Lcom/mediatek/location/agps/apn/AgpsApn;)V

    iput-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mReceiver:Lcom/mediatek/location/agps/apn/Agps2FrameworkInterface$Agps2FrameworkInterfaceReceiver;

    .line 455
    new-instance v0, Lcom/mediatek/location/agps/apn/AgpsApn$3;

    invoke-direct {v0, p0}, Lcom/mediatek/location/agps/apn/AgpsApn$3;-><init>(Lcom/mediatek/location/agps/apn/AgpsApn;)V

    iput-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mNetInitiatedListener:Lcom/mediatek/location/agps/apn/NetInitiatedListener;

    const-string v1, "AgpsApn constructor"

    .line 132
    invoke-static {v1}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 133
    iput-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 135
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mConnManager:Landroid/net/ConnectivityManager;

    .line 137
    invoke-virtual {p0}, Lcom/mediatek/location/agps/apn/AgpsApn;->setup()V

    .line 140
    new-instance v1, Lcom/mediatek/socket/base/UdpServer;

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    const-string v3, "mtk_agps2framework"

    const/16 v5, 0x926

    invoke-direct {v1, v3, v2, v5}, Lcom/mediatek/socket/base/UdpServer;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;I)V

    iput-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->agpsApnServer:Lcom/mediatek/socket/base/UdpServer;

    .line 141
    iget-object v2, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mReceiver:Lcom/mediatek/location/agps/apn/Agps2FrameworkInterface$Agps2FrameworkInterfaceReceiver;

    invoke-virtual {v1, v2}, Lcom/mediatek/socket/base/UdpServer;->setReceiver(Lcom/mediatek/socket/base/SocketUtils$ProtocolHandler;)V

    .line 144
    new-instance v1, Lcom/mediatek/location/agps/apn/Framework2AgpsInterface$Framework2AgpsInterfaceSender;

    invoke-direct {v1}, Lcom/mediatek/location/agps/apn/Framework2AgpsInterface$Framework2AgpsInterfaceSender;-><init>()V

    iput-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mToAgpsSender:Lcom/mediatek/location/agps/apn/Framework2AgpsInterface$Framework2AgpsInterfaceSender;

    .line 145
    new-instance v6, Lcom/mediatek/socket/base/UdpClient;

    sget-object v1, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    const-string v2, "mtk_framework2agps"

    const/16 v3, 0x44

    invoke-direct {v6, v2, v1, v3}, Lcom/mediatek/socket/base/UdpClient;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;I)V

    iput-object v6, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mUdpClient:Lcom/mediatek/socket/base/UdpClient;

    .line 146
    new-instance v1, Lcom/mediatek/location/agps/apn/AgpsApnC2K;

    iget-object v5, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mToAgpsSender:Lcom/mediatek/location/agps/apn/Framework2AgpsInterface$Framework2AgpsInterfaceSender;

    iget-object v7, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mHandler:Landroid/os/Handler;

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/mediatek/location/agps/apn/AgpsApnC2K;-><init>(Landroid/content/Context;Landroid/net/ConnectivityManager;Lcom/mediatek/location/agps/apn/Framework2AgpsInterface$Framework2AgpsInterfaceSender;Lcom/mediatek/socket/base/UdpClient;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mC2KApn:Lcom/mediatek/location/agps/apn/AgpsApnC2K;

    .line 148
    new-instance v1, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v0, v2}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;Lcom/mediatek/location/agps/apn/NetInitiatedListener;Z)V

    iput-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mNIHandler:Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/location/agps/apn/AgpsApn;)B
    .locals 0

    .line 77
    iget-byte p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mEsuplApnMode:B

    return p0
.end method

.method static synthetic access$002(Lcom/mediatek/location/agps/apn/AgpsApn;B)B
    .locals 0

    .line 77
    iput-byte p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mEsuplApnMode:B

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/location/agps/apn/AgpsApn;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mediatek/location/agps/apn/AgpsApn;)Lcom/mediatek/location/agps/apn/AgpsApnC2K;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mC2KApn:Lcom/mediatek/location/agps/apn/AgpsApnC2K;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mediatek/location/agps/apn/AgpsApn;)Lcom/mediatek/socket/base/UdpClient;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mUdpClient:Lcom/mediatek/socket/base/UdpClient;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mediatek/location/agps/apn/AgpsApn;)Lcom/mediatek/location/agps/apn/Framework2AgpsInterface$Framework2AgpsInterfaceSender;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mToAgpsSender:Lcom/mediatek/location/agps/apn/Framework2AgpsInterface$Framework2AgpsInterfaceSender;

    return-object p0
.end method

.method static synthetic access$500(Lcom/mediatek/location/agps/apn/AgpsApn;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mConnManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/mediatek/location/agps/apn/AgpsApn;)Landroid/net/NetworkRequest;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mNetReqEmergency:Landroid/net/NetworkRequest;

    return-object p0
.end method

.method static synthetic access$700(Lcom/mediatek/location/agps/apn/AgpsApn;)Landroid/net/NetworkRequest;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mNetReqIms:Landroid/net/NetworkRequest;

    return-object p0
.end method

.method static synthetic access$800(Lcom/mediatek/location/agps/apn/AgpsApn;)Landroid/net/NetworkRequest;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mNetReqSupl:Landroid/net/NetworkRequest;

    return-object p0
.end method

.method static synthetic access$900(Lcom/mediatek/location/agps/apn/AgpsApn;)[B
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mEmptyIpv6:[B

    return-object p0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "AgpsApn"

    .line 128
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method doReleaseNet(Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;)V
    .locals 1

    const-string v0, "doReleaseNet"

    .line 397
    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 398
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mAgpsNetReqs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 399
    invoke-virtual {p1}, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->releaseNet()V

    return-void
.end method

.method handleDnsQuery(Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;)V
    .locals 0

    .line 426
    invoke-virtual {p1}, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->queryDns()V

    return-void
.end method

.method handleNetTimeout(Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;)V
    .locals 1

    const-string v0, "handleNetTimeout"

    .line 430
    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    const/16 v0, 0x65

    .line 431
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/location/agps/apn/AgpsApn;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method handleNinotify(Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 0

    .line 452
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mNIHandler:Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;

    invoke-virtual {p0, p1}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->handleNiNotification(Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;)V

    return-void
.end method

.method handleReleaseNet(Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;)V
    .locals 1

    const-string v0, "handleReleaseNet"

    .line 435
    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 437
    invoke-virtual {p0, p1}, Lcom/mediatek/location/agps/apn/AgpsApn;->doReleaseNet(Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;)V

    goto :goto_0

    .line 439
    :cond_0
    iget-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mAgpsNetReqs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 440
    iget-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mAgpsNetReqs:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;

    invoke-virtual {p0, p1}, Lcom/mediatek/location/agps/apn/AgpsApn;->doReleaseNet(Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;)V

    :cond_1
    :goto_0
    return-void
.end method

.method handleRemoveGpsIcon()V
    .locals 0

    return-void
.end method

.method handleRequestGpsIcon()V
    .locals 0

    return-void
.end method

.method handleRequestNet(Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;)V
    .locals 0

    .line 422
    invoke-virtual {p1}, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->requestNet()V

    return-void
.end method

.method handleWaitNetReady(Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;)V
    .locals 2

    .line 403
    :goto_0
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mAgpsNetReqs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const-string v0, "remove potential leak of AgpsNetReq"

    .line 405
    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mAgpsNetReqs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;

    invoke-virtual {p0, v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->doReleaseNet(Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;)V

    goto :goto_0

    .line 408
    :cond_0
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mAgpsNetReqs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    invoke-virtual {p1}, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->waitNetReady()V

    return-void
.end method

.method handleWaitNetReadyTimeout(Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;)V
    .locals 2

    const-string v0, "handleWaitNetReadyTimeout"

    .line 413
    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 414
    iget-object v0, p1, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetReadyCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 415
    iget-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    .line 416
    iput-object v0, p1, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetReadyCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    :cond_0
    const/16 v0, 0x64

    .line 418
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/location/agps/apn/AgpsApn;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method hasIccCard()Z
    .locals 1

    .line 486
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    .line 487
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    .line 489
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method isAirplaneModeOn()Z
    .locals 2

    .line 495
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method removeMessages(ILjava/lang/Object;)V
    .locals 0

    .line 393
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method sendMessage(ILjava/lang/Object;)V
    .locals 1

    .line 384
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method sendMessageDelayed(ILjava/lang/Object;J)V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 389
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method protected setup()V
    .locals 4

    .line 319
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "MtkAgps"

    .line 321
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 322
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 323
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x0

    .line 325
    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    const/16 v3, 0xa

    .line 326
    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 327
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mNetReqEmergency:Landroid/net/NetworkRequest;

    .line 329
    invoke-virtual {v0, v3}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    const/4 v3, 0x4

    .line 330
    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 331
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mNetReqIms:Landroid/net/NetworkRequest;

    .line 333
    invoke-virtual {v0, v3}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 334
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mNetReqSupl:Landroid/net/NetworkRequest;

    .line 336
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MtkAgpsHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mHandlerThread:Landroid/os/HandlerThread;

    .line 337
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 338
    new-instance v0, Lcom/mediatek/location/agps/apn/AgpsApn$2;

    iget-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/location/agps/apn/AgpsApn$2;-><init>(Lcom/mediatek/location/agps/apn/AgpsApn;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn;->mHandler:Landroid/os/Handler;

    return-void
.end method
